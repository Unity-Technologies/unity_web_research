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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat23 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb23 : bool;

var<private> u_xlat24 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_173 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD2;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat22;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_73 : vec3<f32> = u_xlat3;
  let x_76 : vec4<f32> = x_18.x_Color;
  u_xlat3 = (x_73 * vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_80 : vec3<f32> = u_xlat3;
  let x_83 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (x_80 * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_88 : vec3<f32> = vs_TEXCOORD2;
  let x_92 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat5 = (vec4<f32>(x_88.y, x_88.y, x_88.y, x_88.y) * x_92);
  let x_95 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_96 : vec3<f32> = vs_TEXCOORD2;
  let x_99 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_95 * vec4<f32>(x_96.x, x_96.x, x_96.x, x_96.x)) + x_99);
  let x_103 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_104 : vec3<f32> = vs_TEXCOORD2;
  let x_107 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_103 * vec4<f32>(x_104.z, x_104.z, x_104.z, x_104.z)) + x_107);
  let x_109 : vec4<f32> = u_xlat5;
  let x_112 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat5 = (x_109 + x_112);
  let x_121 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_121 == 1.0f);
  let x_124 : bool = u_xlatb22;
  if (x_124) {
    let x_129 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_129 == 1.0f);
    let x_132 : vec3<f32> = vs_TEXCOORD2;
    let x_136 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_138 : vec3<f32> = (vec3<f32>(x_132.y, x_132.y, x_132.y) * vec3<f32>(x_136.x, x_136.y, x_136.z));
    let x_139 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
    let x_142 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_144 : vec3<f32> = vs_TEXCOORD2;
    let x_147 : vec4<f32> = u_xlat6;
    let x_149 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
    let x_150 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
    let x_153 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_155 : vec3<f32> = vs_TEXCOORD2;
    let x_158 : vec4<f32> = u_xlat6;
    let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.z, x_155.z, x_155.z)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
    let x_161 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : vec4<f32> = u_xlat6;
    let x_166 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_168 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + vec3<f32>(x_166.x, x_166.y, x_166.z));
    let x_169 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_171 : bool = u_xlatb22;
    if (x_171) {
      let x_176 : vec4<f32> = u_xlat6;
      x_173 = vec3<f32>(x_176.x, x_176.y, x_176.z);
    } else {
      let x_179 : vec3<f32> = vs_TEXCOORD2;
      x_173 = x_179;
    }
    let x_180 : vec3<f32> = x_173;
    let x_181 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_187 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_189 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(x_187));
    let x_190 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat6;
    let x_196 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) * x_196);
    let x_198 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_198.x, x_197.x, x_197.y, x_197.z);
    let x_201 : f32 = u_xlat6.y;
    u_xlat22 = ((x_201 * 0.25f) + 0.75f);
    let x_209 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_209 * 0.5f) + 0.75f);
    let x_213 : f32 = u_xlat22;
    let x_214 : f32 = u_xlat23;
    u_xlat6.x = max(x_213, x_214);
    let x_225 : vec4<f32> = u_xlat6;
    let x_227 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_225.x, x_225.z, x_225.w));
    u_xlat6 = x_227;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_234 : vec4<f32> = u_xlat6;
  let x_236 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_234, x_236);
  let x_238 : f32 = u_xlat22;
  u_xlat22 = clamp(x_238, 0.0f, 1.0f);
  let x_243 : f32 = u_xlat5.z;
  u_xlatb23 = (0.0f < x_243);
  let x_245 : bool = u_xlatb23;
  u_xlat23 = select(0.0f, 1.0f, x_245);
  let x_247 : vec4<f32> = u_xlat5;
  let x_249 : vec4<f32> = u_xlat5;
  let x_251 : vec2<f32> = (vec2<f32>(x_247.x, x_247.y) / vec2<f32>(x_249.w, x_249.w));
  let x_252 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_251.x, x_251.y, x_252.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat6;
  let x_257 : vec2<f32> = (vec2<f32>(x_254.x, x_254.y) + vec2<f32>(0.5f, 0.5f));
  let x_258 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_257.x, x_257.y, x_258.z, x_258.w);
  let x_266 : vec4<f32> = u_xlat6;
  let x_268 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_266.x, x_266.y));
  u_xlat24 = x_268.w;
  let x_270 : f32 = u_xlat23;
  let x_271 : f32 = u_xlat24;
  u_xlat23 = (x_270 * x_271);
  let x_273 : vec4<f32> = u_xlat5;
  let x_275 : vec4<f32> = u_xlat5;
  u_xlat24 = dot(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_283 : f32 = u_xlat24;
  let x_285 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_283, x_283));
  u_xlat24 = x_285.x;
  let x_287 : f32 = u_xlat23;
  let x_288 : f32 = u_xlat24;
  u_xlat23 = (x_287 * x_288);
  let x_290 : f32 = u_xlat22;
  let x_291 : f32 = u_xlat23;
  u_xlat22 = (x_290 * x_291);
  let x_293 : f32 = u_xlat22;
  let x_297 : vec4<f32> = x_18.x_LightColor0;
  let x_299 : vec3<f32> = (vec3<f32>(x_293, x_293, x_293) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_304 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_303, x_304);
  let x_306 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_306);
  let x_308 : f32 = u_xlat22;
  let x_310 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec3<f32> = (vec3<f32>(x_308, x_308, x_308) * x_310);
  let x_312 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec3<f32> = u_xlat3;
  let x_315 : vec4<f32> = vs_COLOR0;
  u_xlat3 = ((x_314 * vec3<f32>(x_315.x, x_315.y, x_315.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_323 : f32 = x_18.x_Metallic;
  let x_325 : f32 = x_18.x_Metallic;
  let x_327 : f32 = x_18.x_Metallic;
  let x_328 : vec3<f32> = vec3<f32>(x_323, x_325, x_327);
  let x_333 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * x_333) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_339 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_339) * 0.959999979f) + 0.959999979f);
  let x_344 : f32 = u_xlat22;
  let x_346 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_344, x_344, x_344) * x_346);
  let x_350 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_350) + 1.0f);
  let x_353 : vec3<f32> = u_xlat0;
  let x_354 : f32 = u_xlat21;
  let x_357 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_353 * vec3<f32>(x_354, x_354, x_354)) + x_357);
  let x_359 : vec3<f32> = u_xlat0;
  let x_360 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_359, x_360);
  let x_362 : f32 = u_xlat21;
  u_xlat21 = max(x_362, 0.001f);
  let x_365 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_365);
  let x_367 : f32 = u_xlat21;
  let x_369 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_371 : vec4<f32> = u_xlat6;
  let x_373 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_371.x, x_371.y, x_371.z), x_373);
  let x_375 : vec4<f32> = u_xlat6;
  let x_377 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), x_377);
  let x_381 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_381, 0.0f, 1.0f);
  let x_385 : vec4<f32> = u_xlat6;
  let x_387 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), x_387);
  let x_389 : f32 = u_xlat9;
  u_xlat9 = clamp(x_389, 0.0f, 1.0f);
  let x_391 : vec3<f32> = u_xlat1;
  let x_392 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_391, x_392);
  let x_396 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_396, 0.0f, 1.0f);
  let x_401 : f32 = u_xlat0.x;
  let x_403 : f32 = u_xlat0.x;
  u_xlat7.x = (x_401 * x_403);
  let x_406 : vec3<f32> = u_xlat7;
  let x_408 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_406.x, x_406.x), vec2<f32>(x_408, x_408));
  let x_413 : f32 = u_xlat7.x;
  u_xlat7.x = (x_413 + -0.5f);
  let x_419 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_419) + 1.0f);
  let x_422 : f32 = u_xlat14;
  let x_423 : f32 = u_xlat14;
  u_xlat1.x = (x_422 * x_423);
  let x_427 : f32 = u_xlat1.x;
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = (x_427 * x_429);
  let x_432 : f32 = u_xlat14;
  let x_434 : f32 = u_xlat1.x;
  u_xlat14 = (x_432 * x_434);
  let x_437 : f32 = u_xlat7.x;
  let x_438 : f32 = u_xlat14;
  u_xlat14 = ((x_437 * x_438) + 1.0f);
  let x_441 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_441)) + 1.0f);
  let x_448 : f32 = u_xlat1.x;
  let x_450 : f32 = u_xlat1.x;
  u_xlat8 = (x_448 * x_450);
  let x_452 : f32 = u_xlat8;
  let x_453 : f32 = u_xlat8;
  u_xlat8 = (x_452 * x_453);
  let x_456 : f32 = u_xlat1.x;
  let x_457 : f32 = u_xlat8;
  u_xlat1.x = (x_456 * x_457);
  let x_461 : f32 = u_xlat7.x;
  let x_463 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_461 * x_463) + 1.0f);
  let x_468 : f32 = u_xlat7.x;
  let x_469 : f32 = u_xlat14;
  u_xlat7.x = (x_468 * x_469);
  let x_472 : f32 = u_xlat22;
  let x_473 : f32 = u_xlat22;
  u_xlat14 = (x_472 * x_473);
  let x_475 : f32 = u_xlat14;
  u_xlat14 = max(x_475, 0.002f);
  let x_478 : f32 = u_xlat14;
  u_xlat1.x = (-(x_478) + 1.0f);
  let x_482 : f32 = u_xlat21;
  let x_485 : f32 = u_xlat1.x;
  let x_487 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_482) * x_485) + x_487);
  let x_490 : f32 = u_xlat2.x;
  let x_492 : f32 = u_xlat1.x;
  let x_494 : f32 = u_xlat14;
  u_xlat1.x = ((x_490 * x_492) + x_494);
  let x_497 : f32 = u_xlat21;
  let x_500 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_497) * x_500);
  let x_503 : f32 = u_xlat2.x;
  let x_504 : f32 = u_xlat8;
  let x_506 : f32 = u_xlat21;
  u_xlat21 = ((x_503 * x_504) + x_506);
  let x_508 : f32 = u_xlat21;
  u_xlat21 = (x_508 + 0.00001f);
  let x_511 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_511);
  let x_513 : f32 = u_xlat14;
  let x_514 : f32 = u_xlat14;
  u_xlat14 = (x_513 * x_514);
  let x_516 : f32 = u_xlat9;
  let x_517 : f32 = u_xlat14;
  let x_519 : f32 = u_xlat9;
  u_xlat1.x = ((x_516 * x_517) + -(x_519));
  let x_524 : f32 = u_xlat1.x;
  let x_525 : f32 = u_xlat9;
  u_xlat1.x = ((x_524 * x_525) + 1.0f);
  let x_529 : f32 = u_xlat14;
  u_xlat14 = (x_529 * 0.318309873f);
  let x_533 : f32 = u_xlat1.x;
  let x_535 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_533 * x_535) + 0.0000001f);
  let x_540 : f32 = u_xlat14;
  let x_542 : f32 = u_xlat1.x;
  u_xlat14 = (x_540 / x_542);
  let x_544 : f32 = u_xlat14;
  let x_545 : f32 = u_xlat21;
  u_xlat7.y = (x_544 * x_545);
  let x_548 : vec3<f32> = u_xlat2;
  let x_550 : vec3<f32> = u_xlat7;
  let x_552 : vec2<f32> = (vec2<f32>(x_548.x, x_548.x) * vec2<f32>(x_550.x, x_550.y));
  let x_553 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_552.x, x_552.y, x_553.z);
  let x_556 : f32 = u_xlat7.y;
  u_xlat14 = (x_556 * 3.141592741f);
  let x_559 : f32 = u_xlat14;
  u_xlat14 = max(x_559, 0.0f);
  let x_561 : vec3<f32> = u_xlat3;
  let x_562 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_561, x_562);
  let x_565 : f32 = u_xlat21;
  u_xlatb21 = !((x_565 == 0.0f));
  let x_567 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_567);
  let x_569 : f32 = u_xlat21;
  let x_570 : f32 = u_xlat14;
  u_xlat14 = (x_569 * x_570);
  let x_572 : vec3<f32> = u_xlat7;
  let x_574 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_572.x, x_572.x, x_572.x) * vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec4<f32> = u_xlat5;
  let x_579 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_579, x_579, x_579));
  let x_583 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_583) + 1.0f);
  let x_588 : f32 = u_xlat0.x;
  let x_590 : f32 = u_xlat0.x;
  u_xlat22 = (x_588 * x_590);
  let x_592 : f32 = u_xlat22;
  let x_593 : f32 = u_xlat22;
  u_xlat22 = (x_592 * x_593);
  let x_596 : f32 = u_xlat0.x;
  let x_597 : f32 = u_xlat22;
  u_xlat0.x = (x_596 * x_597);
  let x_600 : vec3<f32> = u_xlat3;
  u_xlat2 = (-(x_600) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_604 : vec3<f32> = u_xlat2;
  let x_605 : vec3<f32> = u_xlat0;
  let x_608 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_604 * vec3<f32>(x_605.x, x_605.x, x_605.x)) + x_608);
  let x_610 : vec3<f32> = u_xlat7;
  let x_611 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_610 * x_611);
  let x_615 : vec3<f32> = u_xlat4;
  let x_616 : vec3<f32> = u_xlat1;
  let x_618 : vec3<f32> = u_xlat0;
  let x_619 : vec3<f32> = ((x_615 * x_616) + x_618);
  let x_620 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

