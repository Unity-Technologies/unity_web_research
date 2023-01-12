struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Specular : texture_2d<f32>;

@group(0) @binding(9) var sampler_Specular : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var u_xlat6 : vec4<f32>;
  var x_222 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_52 : vec2<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_52);
  u_xlat2 = x_53;
  let x_55 : vec4<f32> = u_xlat2;
  let x_59 : vec4<f32> = x_18.x_Color;
  u_xlat3 = (x_55 * x_59);
  let x_67 : vec2<f32> = vs_TEXCOORD0;
  let x_68 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_67);
  let x_69 : vec2<f32> = vec2<f32>(x_68.x, x_68.w);
  let x_70 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_76 : f32 = u_xlat4.x;
  let x_80 : f32 = x_18.x_Metallic;
  u_xlat22 = (x_76 * x_80);
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_87);
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_89.x, x_90.y, x_89.y, x_89.z);
  let x_94 : f32 = u_xlat4.w;
  let x_96 : f32 = u_xlat4.x;
  u_xlat4.x = (x_94 * x_96);
  let x_100 : vec4<f32> = u_xlat4;
  let x_107 : vec2<f32> = ((vec2<f32>(x_100.x, x_100.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_108 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_107.x, x_107.y, x_108.z);
  let x_111 : vec3<f32> = u_xlat5;
  let x_113 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_111.x, x_111.y), vec2<f32>(x_113.x, x_113.y));
  let x_116 : f32 = u_xlat23;
  u_xlat23 = min(x_116, 1.0f);
  let x_119 : f32 = u_xlat23;
  u_xlat23 = (-(x_119) + 1.0f);
  let x_122 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_122);
  let x_126 : vec3<f32> = vs_TEXCOORD4;
  let x_131 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_133 : vec2<f32> = (vec2<f32>(x_126.y, x_126.y) * vec2<f32>(x_131.x, x_131.y));
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_133.x, x_134.y, x_133.y, x_134.w);
  let x_137 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_139 : vec3<f32> = vs_TEXCOORD4;
  let x_142 : vec4<f32> = u_xlat4;
  let x_144 : vec2<f32> = ((vec2<f32>(x_137.x, x_137.y) * vec2<f32>(x_139.x, x_139.x)) + vec2<f32>(x_142.x, x_142.z));
  let x_145 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_144.x, x_145.y, x_144.y, x_145.w);
  let x_149 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_151 : vec3<f32> = vs_TEXCOORD4;
  let x_154 : vec4<f32> = u_xlat4;
  let x_156 : vec2<f32> = ((vec2<f32>(x_149.x, x_149.y) * vec2<f32>(x_151.z, x_151.z)) + vec2<f32>(x_154.x, x_154.z));
  let x_157 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_156.x, x_157.y, x_156.y, x_157.w);
  let x_159 : vec4<f32> = u_xlat4;
  let x_163 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.z) + vec2<f32>(x_163.x, x_163.y));
  let x_166 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_165.x, x_166.y, x_165.y, x_166.w);
  let x_172 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_172 == 1.0f);
  let x_174 : bool = u_xlatb23;
  if (x_174) {
    let x_179 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_179 == 1.0f);
    let x_182 : vec3<f32> = vs_TEXCOORD4;
    let x_186 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_188 : vec3<f32> = (vec3<f32>(x_182.y, x_182.y, x_182.y) * vec3<f32>(x_186.x, x_186.y, x_186.z));
    let x_189 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
    let x_192 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_194 : vec3<f32> = vs_TEXCOORD4;
    let x_197 : vec4<f32> = u_xlat6;
    let x_199 : vec3<f32> = ((vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_194.x, x_194.x, x_194.x)) + vec3<f32>(x_197.x, x_197.y, x_197.z));
    let x_200 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
    let x_203 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_205 : vec3<f32> = vs_TEXCOORD4;
    let x_208 : vec4<f32> = u_xlat6;
    let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.y, x_203.z) * vec3<f32>(x_205.z, x_205.z, x_205.z)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
    let x_211 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
    let x_213 : vec4<f32> = u_xlat6;
    let x_216 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_218 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) + vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : bool = u_xlatb23;
    if (x_221) {
      let x_225 : vec4<f32> = u_xlat6;
      x_222 = vec3<f32>(x_225.x, x_225.y, x_225.z);
    } else {
      let x_228 : vec3<f32> = vs_TEXCOORD4;
      x_222 = x_228;
    }
    let x_229 : vec3<f32> = x_222;
    let x_230 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_232 : vec4<f32> = u_xlat6;
    let x_236 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_238 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) + -(x_236));
    let x_239 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
    let x_241 : vec4<f32> = u_xlat6;
    let x_245 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_246 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) * x_245);
    let x_247 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_247.x, x_246.x, x_246.y, x_246.z);
    let x_250 : f32 = u_xlat6.y;
    u_xlat23 = ((x_250 * 0.25f) + 0.75f);
    let x_257 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat25 = ((x_257 * 0.5f) + 0.75f);
    let x_261 : f32 = u_xlat23;
    let x_262 : f32 = u_xlat25;
    u_xlat6.x = max(x_261, x_262);
    let x_273 : vec4<f32> = u_xlat6;
    let x_275 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_273.x, x_273.z, x_273.w));
    u_xlat6 = x_275;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_281 : vec4<f32> = u_xlat6;
  let x_283 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_281, x_283);
  let x_285 : f32 = u_xlat23;
  u_xlat23 = clamp(x_285, 0.0f, 1.0f);
  let x_293 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_293.x, x_293.z));
  u_xlat4.x = x_295.w;
  let x_298 : f32 = u_xlat23;
  let x_300 : f32 = u_xlat4.x;
  u_xlat23 = (x_298 * x_300);
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_304 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_303, x_304);
  let x_308 : vec3<f32> = vs_TEXCOORD2;
  let x_309 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_308, x_309);
  let x_313 : vec3<f32> = vs_TEXCOORD3;
  let x_314 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_313, x_314);
  let x_317 : vec4<f32> = u_xlat6;
  let x_319 : vec4<f32> = u_xlat6;
  u_xlat4.x = dot(vec3<f32>(x_317.x, x_317.y, x_317.z), vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_324 : f32 = u_xlat4.x;
  u_xlat4.x = inverseSqrt(x_324);
  let x_327 : vec4<f32> = u_xlat4;
  let x_329 : vec4<f32> = u_xlat6;
  let x_331 : vec3<f32> = (vec3<f32>(x_327.x, x_327.x, x_327.x) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_331.x, x_332.y, x_331.y, x_331.z);
  let x_334 : f32 = u_xlat23;
  let x_338 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_334, x_334, x_334) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat2;
  let x_344 : vec4<f32> = x_18.x_Color;
  let x_349 : vec3<f32> = ((vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_344.x, x_344.y, x_344.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : f32 = u_xlat22;
  let x_354 : vec4<f32> = u_xlat2;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352, x_352, x_352) * vec3<f32>(x_354.x, x_354.y, x_354.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : f32 = u_xlat22;
  u_xlat22 = ((-(x_362) * 0.959999979f) + 0.959999979f);
  let x_367 : f32 = u_xlat22;
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec3<f32> = (vec3<f32>(x_367, x_367, x_367) * vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : f32 = u_xlat4.y;
  let x_379 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_375) * x_379) + 1.0f);
  let x_382 : vec3<f32> = u_xlat0;
  let x_383 : f32 = u_xlat21;
  let x_387 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_382 * vec3<f32>(x_383, x_383, x_383)) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec3<f32> = u_xlat0;
  let x_391 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_390, x_391);
  let x_393 : f32 = u_xlat21;
  u_xlat21 = max(x_393, 0.001f);
  let x_396 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_396);
  let x_398 : f32 = u_xlat21;
  let x_400 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_398, x_398, x_398) * x_400);
  let x_402 : vec4<f32> = u_xlat4;
  let x_404 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(vec3<f32>(x_402.x, x_402.z, x_402.w), x_404);
  let x_406 : vec4<f32> = u_xlat4;
  let x_409 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_406.x, x_406.z, x_406.w), vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_414 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_414, 0.0f, 1.0f);
  let x_418 : vec4<f32> = u_xlat4;
  let x_420 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(vec3<f32>(x_418.x, x_418.z, x_418.w), x_420);
  let x_422 : f32 = u_xlat8;
  u_xlat8 = clamp(x_422, 0.0f, 1.0f);
  let x_425 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_427 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_425.x, x_425.y, x_425.z), x_427);
  let x_431 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_431, 0.0f, 1.0f);
  let x_436 : f32 = u_xlat0.x;
  let x_438 : f32 = u_xlat0.x;
  u_xlat7.x = (x_436 * x_438);
  let x_441 : vec3<f32> = u_xlat7;
  let x_443 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_441.x, x_441.x), vec2<f32>(x_443, x_443));
  let x_448 : f32 = u_xlat7.x;
  u_xlat7.x = (x_448 + -0.5f);
  let x_454 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_454) + 1.0f);
  let x_458 : f32 = u_xlat14;
  let x_459 : f32 = u_xlat14;
  u_xlat15 = (x_458 * x_459);
  let x_461 : f32 = u_xlat15;
  let x_462 : f32 = u_xlat15;
  u_xlat15 = (x_461 * x_462);
  let x_464 : f32 = u_xlat14;
  let x_465 : f32 = u_xlat15;
  u_xlat14 = (x_464 * x_465);
  let x_468 : f32 = u_xlat7.x;
  let x_469 : f32 = u_xlat14;
  u_xlat14 = ((x_468 * x_469) + 1.0f);
  let x_472 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_472)) + 1.0f);
  let x_476 : f32 = u_xlat15;
  let x_477 : f32 = u_xlat15;
  u_xlat23 = (x_476 * x_477);
  let x_479 : f32 = u_xlat23;
  let x_480 : f32 = u_xlat23;
  u_xlat23 = (x_479 * x_480);
  let x_482 : f32 = u_xlat15;
  let x_483 : f32 = u_xlat23;
  u_xlat15 = (x_482 * x_483);
  let x_486 : f32 = u_xlat7.x;
  let x_487 : f32 = u_xlat15;
  u_xlat7.x = ((x_486 * x_487) + 1.0f);
  let x_492 : f32 = u_xlat7.x;
  let x_493 : f32 = u_xlat14;
  u_xlat7.x = (x_492 * x_493);
  let x_496 : f32 = u_xlat22;
  let x_497 : f32 = u_xlat22;
  u_xlat14 = (x_496 * x_497);
  let x_499 : f32 = u_xlat14;
  u_xlat14 = max(x_499, 0.002f);
  let x_502 : f32 = u_xlat14;
  u_xlat15 = (-(x_502) + 1.0f);
  let x_505 : f32 = u_xlat21;
  let x_507 : f32 = u_xlat15;
  let x_509 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_505) * x_507) + x_509);
  let x_512 : f32 = u_xlat1.x;
  let x_513 : f32 = u_xlat15;
  let x_515 : f32 = u_xlat14;
  u_xlat15 = ((x_512 * x_513) + x_515);
  let x_517 : f32 = u_xlat21;
  let x_519 : f32 = u_xlat15;
  u_xlat21 = (abs(x_517) * x_519);
  let x_522 : f32 = u_xlat1.x;
  let x_523 : f32 = u_xlat22;
  let x_525 : f32 = u_xlat21;
  u_xlat21 = ((x_522 * x_523) + x_525);
  let x_527 : f32 = u_xlat21;
  u_xlat21 = (x_527 + 0.00001f);
  let x_530 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_530);
  let x_532 : f32 = u_xlat14;
  let x_533 : f32 = u_xlat14;
  u_xlat14 = (x_532 * x_533);
  let x_535 : f32 = u_xlat8;
  let x_536 : f32 = u_xlat14;
  let x_538 : f32 = u_xlat8;
  u_xlat15 = ((x_535 * x_536) + -(x_538));
  let x_541 : f32 = u_xlat15;
  let x_542 : f32 = u_xlat8;
  u_xlat8 = ((x_541 * x_542) + 1.0f);
  let x_545 : f32 = u_xlat14;
  u_xlat14 = (x_545 * 0.318309873f);
  let x_548 : f32 = u_xlat8;
  let x_549 : f32 = u_xlat8;
  u_xlat8 = ((x_548 * x_549) + 0.0000001f);
  let x_553 : f32 = u_xlat14;
  let x_554 : f32 = u_xlat8;
  u_xlat14 = (x_553 / x_554);
  let x_556 : f32 = u_xlat14;
  let x_557 : f32 = u_xlat21;
  u_xlat7.y = (x_556 * x_557);
  let x_560 : vec3<f32> = u_xlat1;
  let x_562 : vec3<f32> = u_xlat7;
  let x_564 : vec2<f32> = (vec2<f32>(x_560.x, x_560.x) * vec2<f32>(x_562.x, x_562.y));
  let x_565 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_564.x, x_564.y, x_565.z);
  let x_568 : f32 = u_xlat7.y;
  u_xlat14 = (x_568 * 3.141592741f);
  let x_571 : f32 = u_xlat14;
  u_xlat14 = max(x_571, 0.0f);
  let x_573 : vec4<f32> = u_xlat2;
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_573.x, x_573.y, x_573.z), vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_579 : f32 = u_xlat21;
  u_xlatb21 = !((x_579 == 0.0f));
  let x_581 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_581);
  let x_583 : f32 = u_xlat21;
  let x_584 : f32 = u_xlat14;
  u_xlat14 = (x_583 * x_584);
  let x_586 : vec3<f32> = u_xlat7;
  let x_588 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_586.x, x_586.x, x_586.x) * x_588);
  let x_590 : vec3<f32> = u_xlat5;
  let x_591 : f32 = u_xlat14;
  u_xlat7 = (x_590 * vec3<f32>(x_591, x_591, x_591));
  let x_595 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_595) + 1.0f);
  let x_600 : f32 = u_xlat0.x;
  let x_602 : f32 = u_xlat0.x;
  u_xlat22 = (x_600 * x_602);
  let x_604 : f32 = u_xlat22;
  let x_605 : f32 = u_xlat22;
  u_xlat22 = (x_604 * x_605);
  let x_608 : f32 = u_xlat0.x;
  let x_609 : f32 = u_xlat22;
  u_xlat0.x = (x_608 * x_609);
  let x_612 : vec4<f32> = u_xlat2;
  let x_616 : vec3<f32> = (-(vec3<f32>(x_612.x, x_612.y, x_612.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec3<f32> = u_xlat0;
  let x_624 : vec4<f32> = u_xlat2;
  let x_626 : vec3<f32> = ((vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(x_621.x, x_621.x, x_621.x)) + vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec3<f32> = u_xlat7;
  let x_630 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_629 * vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_635 : vec4<f32> = u_xlat3;
  let x_637 : vec3<f32> = u_xlat1;
  let x_639 : vec3<f32> = u_xlat0;
  let x_640 : vec3<f32> = ((vec3<f32>(x_635.x, x_635.y, x_635.z) * x_637) + x_639);
  let x_641 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_644 : f32 = u_xlat3.w;
  SV_Target0.w = x_644;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

