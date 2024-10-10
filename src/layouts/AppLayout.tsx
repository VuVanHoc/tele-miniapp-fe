import { PropsWithChildren, Suspense } from "react";
import { Toaster } from "react-hot-toast";

const AppLayout = ({ children }: PropsWithChildren) => {
  return (
    <Suspense>
      <div>{children}</div>
      <Toaster />
    </Suspense>
  );
};

export default AppLayout;
