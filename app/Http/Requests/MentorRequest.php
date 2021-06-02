<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MentorRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'string|required',
            'whatsapp' => 'nullable|numeric',
            'birth_date' => 'nullable',
            'sertifikasi' => 'nullable|string',
            'gender' => 'nullable',
            'facebook' => 'nullable|string',
            'email' => 'nullable|email',
            'website' => 'nullable|string',
            'twiter' => 'nullable|string',
            'content' => 'nullable|string',
            'instagram' => 'nullable|string',
            'profession' => 'string|required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2000',
        ];
    }
}
