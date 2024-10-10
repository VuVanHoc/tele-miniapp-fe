import { retrieveLaunchParams } from "@telegram-apps/sdk-react";
import axios from "axios";

const axiosInstance = axios.create({
  baseURL: import.meta.env.VITE_BASE_URL,
});

axiosInstance.interceptors.request.use((config) => {
  const { initDataRaw } = retrieveLaunchParams();
  config.headers.authorization = `Bearer ${initDataRaw}`;
  return config;
});

axiosInstance.interceptors.response.use(
  (res) => {
    return res;
  },
  async (err) => {
    return Promise.reject(err);
  }
);

export default axiosInstance;
