import type { ComponentType, JSX } from "react";

import { ROUTE } from "@/constants/route";
import HomePage from "@/pages/HomePage";

interface Route {
  path: string;
  Component: ComponentType;
  title?: string;
  icon?: JSX.Element;
}

export const routes: Route[] = [
  { path: ROUTE.HOME, Component: HomePage, title: "Home" },
];
