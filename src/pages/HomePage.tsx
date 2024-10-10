import { Button } from "@/components/ui/button";

const HomePage = () => {
  return (
    <div className="w-screen h-screen text-xl flex flex-col gap-4 items-center justify-center text-black">
      <p>Hello world</p>
      <Button>Click me</Button>
    </div>
  );
};

export default HomePage;
