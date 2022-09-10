import React from 'react'

export default function Footer() {
    return (
        <footer className="p-6 bottom-0 flex flex-wrap flex-col text-center bg-sky-600 text-white">
            <div className="text-md font-semibold">Copyright&copy; 2022 by Henry Salim</div>
            <small className="block mt-4">Designed with <a href="https://tailwindcss.com/" target="_blank" className="underline hover:text-blue-300 ease-in-out duration-150">TailwindCSS</a>. Crafted with <a
                href="https://laravel.com/" target="_blank" className="underline hover:text-blue-300 ease-in-out duration-150">Laravel</a> &  <a
                href="https://inertiajs.com/" target="_blank" className="underline hover:text-blue-300 ease-in-out duration-150">Inertia.js</a></small>
        </footer>
    )
}
