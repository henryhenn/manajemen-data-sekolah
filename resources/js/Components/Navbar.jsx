import {Link} from "@inertiajs/inertia-react";
import React from "react";

const Navbar = ({auth}) => {
    return (
        <div className="navbar bg-base-100 shadow-md sticky top-0 z-[9999] ease-in-out duration-300" id="navbar">
            <div className="flex-1">
                <a className="btn btn-ghost normal-case text-xl font-extrabold" href={route('home')}>SekolahKu</a>
                <a
                    className="hover:text-sky-700 hover:underline sm:hidden md:block ease-in-out duration-300"
                    target="_blank"
                    href="https://www.tzuchi.or.id/misi/Sekolah-Cinta-Kasih-Tzu-Chi/11"
                >
                    More About Sekolah Cinta Kasih Tzu Chi
                </a>
            </div>
            <div className="flex-none gap-2">
                <div className="form-control">
                    <input type="text" placeholder="Search" className="input input-bordered"/>
                </div>
                {auth.user ? (
                    <div className="dropdown dropdown-end">
                        <label tabIndex="0" className="btn btn-ghost btn-circle avatar">
                            <div className="w-10 rounded-full">
                                <img src="https://placeimg.com/80/80/people"/>
                            </div>
                        </label>
                        <ul tabIndex="0"
                            className="mt-3 p-2 shadow menu menu-compact dropdown-content bg-base-100 rounded-box w-52">
                            <li><a href={route('dashboard')}>Dashboard</a></li>
                            <li className="sm:block md:hidden"><a href="https://www.tzuchi.or.id/misi/Sekolah-Cinta-Kasih-Tzu-Chi/11">More About Cinta Kasih Tzu Chi</a></li>
                            <li>
                                <Link href={route('logout')} method="post">Logout</Link>
                            </li>
                        </ul>
                    </div>
                ) : (
                    <ul className="menu menu-horizontal p-0">
                        <li>
                            <Link href={route('login')}>Login</Link>
                        </li>
                        <li>
                            <Link href={route('register')}>Register</Link>
                        </li>
                    </ul>
                )}
            </div>
        </div>
    )
}

export default Navbar
