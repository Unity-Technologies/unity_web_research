struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
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
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat27 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat3 : vec2<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat29 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(12) var sampler_Noise : sampler;

var<private> u_xlat21 : f32;

var<private> u_xlatb21 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(13) var sampler_Normal : sampler;

var<private> u_xlat32 : f32;

var<private> u_xlatb28 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb29 : bool;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(6) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb27 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_421 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat28;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_71);
  u_xlat3 = vec2<f32>(x_72.x, x_72.w);
  let x_75 : vec3<f32> = vs_TEXCOORD4;
  let x_79 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat4 = (vec3<f32>(x_75.z, x_75.y, x_75.x) + -(vec3<f32>(x_79.z, x_79.y, x_79.x)));
  let x_85 : vec3<f32> = u_xlat4;
  let x_89 : vec2<f32> = (vec2<f32>(x_85.x, x_85.z) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_90 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_90.x, x_89.x, x_90.z, x_89.y);
  let x_95 : f32 = x_18.x_Cutoff;
  let x_97 : f32 = x_18.x_Cutoff;
  u_xlat28 = (x_95 + x_97);
  let x_102 : f32 = u_xlat4.y;
  let x_105 : f32 = u_xlat28;
  u_xlat5.x = ((x_102 * 2.0f) + x_105);
  let x_111 : f32 = u_xlat4.y;
  let x_115 : f32 = x_18.x_Cutoff;
  u_xlat6.x = ((x_111 * 4.0f) + x_115);
  let x_120 : f32 = x_18.x_bounds.y;
  u_xlat28 = (x_120 + 0.200000003f);
  let x_128 : vec4<f32> = u_xlat5;
  let x_130 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_128.x, x_128.y));
  u_xlat29 = x_130.x;
  let x_134 : f32 = u_xlat5.w;
  u_xlat6.y = x_134;
  let x_140 : vec3<f32> = u_xlat6;
  let x_142 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_140.x, x_140.y));
  u_xlat21 = x_142.x;
  let x_144 : f32 = u_xlat29;
  let x_146 : f32 = u_xlat21;
  u_xlat29 = dot(vec2<f32>(x_144, x_144), vec2<f32>(x_146, x_146));
  let x_149 : f32 = u_xlat28;
  u_xlat21 = (x_149 * 0.5f);
  let x_153 : f32 = x_18.x_Cutoff;
  let x_154 : f32 = u_xlat28;
  let x_156 : f32 = u_xlat21;
  u_xlat28 = ((x_153 * x_154) + -(x_156));
  let x_163 : f32 = u_xlat4.y;
  let x_164 : f32 = u_xlat28;
  u_xlatb21 = (x_163 >= x_164);
  let x_167 : f32 = u_xlat28;
  let x_170 : f32 = x_18.x_EdgeSizeBot;
  u_xlat30 = (x_167 + -(x_170));
  let x_173 : f32 = u_xlat28;
  let x_174 : f32 = u_xlat30;
  u_xlat4.x = (x_173 + -(x_174));
  let x_178 : f32 = u_xlat30;
  let x_181 : f32 = u_xlat4.y;
  u_xlat30 = (-(x_178) + x_181);
  let x_185 : f32 = u_xlat4.x;
  u_xlat4.x = (1.0f / x_185);
  let x_188 : f32 = u_xlat30;
  let x_190 : f32 = u_xlat4.x;
  u_xlat30 = (x_188 * x_190);
  let x_192 : f32 = u_xlat30;
  u_xlat30 = clamp(x_192, 0.0f, 1.0f);
  let x_195 : f32 = u_xlat30;
  u_xlat4.x = ((x_195 * -2.0f) + 3.0f);
  let x_201 : f32 = u_xlat30;
  let x_202 : f32 = u_xlat30;
  u_xlat30 = (x_201 * x_202);
  let x_205 : f32 = u_xlat28;
  let x_208 : f32 = x_18.x_EdgeSizeTop;
  u_xlat22 = (x_205 + x_208);
  let x_210 : f32 = u_xlat28;
  let x_211 : f32 = u_xlat22;
  u_xlat28 = (x_210 + -(x_211));
  let x_215 : f32 = u_xlat22;
  let x_218 : f32 = u_xlat4.y;
  u_xlat13.x = (-(x_215) + x_218);
  let x_221 : f32 = u_xlat28;
  u_xlat28 = (1.0f / x_221);
  let x_223 : f32 = u_xlat28;
  let x_225 : f32 = u_xlat13.x;
  u_xlat28 = (x_223 * x_225);
  let x_227 : f32 = u_xlat28;
  u_xlat28 = clamp(x_227, 0.0f, 1.0f);
  let x_229 : f32 = u_xlat28;
  u_xlat13.x = ((x_229 * -2.0f) + 3.0f);
  let x_233 : f32 = u_xlat28;
  let x_234 : f32 = u_xlat28;
  u_xlat28 = (x_233 * x_234);
  let x_236 : f32 = u_xlat28;
  let x_238 : f32 = u_xlat13.x;
  u_xlat28 = (x_236 * x_238);
  let x_245 : vec2<f32> = vs_TEXCOORD0;
  let x_246 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_245);
  u_xlat13 = vec3<f32>(x_246.x, x_246.y, x_246.z);
  let x_248 : vec3<f32> = u_xlat13;
  let x_251 : vec4<f32> = x_18.x_Color;
  let x_253 : vec3<f32> = (x_248 * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_261 : vec2<f32> = vs_TEXCOORD0;
  let x_262 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_261);
  u_xlat6 = vec3<f32>(x_262.x, x_262.y, x_262.w);
  let x_266 : f32 = u_xlat6.z;
  let x_268 : f32 = u_xlat6.x;
  u_xlat6.x = (x_266 * x_268);
  let x_271 : vec3<f32> = u_xlat6;
  let x_277 : vec2<f32> = ((vec2<f32>(x_271.x, x_271.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_278 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_277.x, x_277.y, x_278.z);
  let x_281 : vec3<f32> = u_xlat6;
  let x_283 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(vec2<f32>(x_281.x, x_281.y), vec2<f32>(x_283.x, x_283.y));
  let x_286 : f32 = u_xlat32;
  u_xlat32 = min(x_286, 1.0f);
  let x_288 : f32 = u_xlat32;
  u_xlat32 = (-(x_288) + 1.0f);
  let x_291 : f32 = u_xlat32;
  u_xlat6.z = sqrt(x_291);
  let x_294 : vec2<f32> = u_xlat3;
  let x_297 : f32 = x_18.x_Metallic;
  let x_300 : f32 = x_18.x_Glossiness;
  u_xlat3 = (x_294 * vec2<f32>(x_297, x_300));
  let x_304 : f32 = u_xlat4.x;
  let x_306 : f32 = u_xlat30;
  u_xlat30 = ((-(x_304) * x_306) + 1.0f);
  let x_309 : f32 = u_xlat30;
  let x_311 : f32 = u_xlat3.x;
  u_xlat3.x = (x_309 * x_311);
  let x_314 : bool = u_xlatb21;
  u_xlat21 = select(1.0f, 0.0f, x_314);
  let x_316 : f32 = u_xlat29;
  let x_317 : f32 = u_xlat28;
  let x_319 : f32 = u_xlat21;
  u_xlat28 = ((x_316 * x_317) + x_319);
  let x_321 : f32 = u_xlat28;
  let x_323 : f32 = x_18.x_Cutoff;
  u_xlat28 = (x_321 + -(x_323));
  let x_326 : f32 = u_xlat28;
  let x_329 : f32 = x_18.x_Cutoff2;
  u_xlat28 = (x_326 + -(x_329));
  let x_333 : f32 = u_xlat28;
  u_xlatb28 = (x_333 < 0.0f);
  let x_335 : bool = u_xlatb28;
  if (((select(0i, 1i, x_335) * -1i) != 0i)) {
    discard;
  }
  let x_344 : vec3<f32> = vs_TEXCOORD4;
  let x_348 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec4<f32>(x_344.y, x_344.y, x_344.y, x_344.y) * x_348);
  let x_351 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_352 : vec3<f32> = vs_TEXCOORD4;
  let x_355 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_351 * vec4<f32>(x_352.x, x_352.x, x_352.x, x_352.x)) + x_355);
  let x_359 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_360 : vec3<f32> = vs_TEXCOORD4;
  let x_363 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_359 * vec4<f32>(x_360.z, x_360.z, x_360.z, x_360.z)) + x_363);
  let x_365 : vec4<f32> = u_xlat7;
  let x_367 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_365 + x_367);
  let x_371 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb28 = (x_371 == 1.0f);
  let x_373 : bool = u_xlatb28;
  if (x_373) {
    let x_377 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb28 = (x_377 == 1.0f);
    let x_380 : vec3<f32> = vs_TEXCOORD4;
    let x_384 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_386 : vec3<f32> = (vec3<f32>(x_380.y, x_380.y, x_380.y) * vec3<f32>(x_384.x, x_384.y, x_384.z));
    let x_387 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
    let x_390 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_392 : vec3<f32> = vs_TEXCOORD4;
    let x_395 : vec4<f32> = u_xlat8;
    let x_397 : vec3<f32> = ((vec3<f32>(x_390.x, x_390.y, x_390.z) * vec3<f32>(x_392.x, x_392.x, x_392.x)) + vec3<f32>(x_395.x, x_395.y, x_395.z));
    let x_398 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
    let x_401 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_403 : vec3<f32> = vs_TEXCOORD4;
    let x_406 : vec4<f32> = u_xlat8;
    let x_408 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_403.z, x_403.z, x_403.z)) + vec3<f32>(x_406.x, x_406.y, x_406.z));
    let x_409 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_411 : vec4<f32> = u_xlat8;
    let x_414 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_416 : vec3<f32> = (vec3<f32>(x_411.x, x_411.y, x_411.z) + vec3<f32>(x_414.x, x_414.y, x_414.z));
    let x_417 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
    let x_419 : bool = u_xlatb28;
    if (x_419) {
      let x_424 : vec4<f32> = u_xlat8;
      x_421 = vec3<f32>(x_424.x, x_424.y, x_424.z);
    } else {
      let x_427 : vec3<f32> = vs_TEXCOORD4;
      x_421 = x_427;
    }
    let x_428 : vec3<f32> = x_421;
    let x_429 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
    let x_431 : vec4<f32> = u_xlat8;
    let x_435 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_437 : vec3<f32> = (vec3<f32>(x_431.x, x_431.y, x_431.z) + -(x_435));
    let x_438 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
    let x_440 : vec4<f32> = u_xlat8;
    let x_444 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_445 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) * x_444);
    let x_446 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_446.x, x_445.x, x_445.y, x_445.z);
    let x_449 : f32 = u_xlat8.y;
    u_xlat28 = ((x_449 * 0.25f) + 0.75f);
    let x_455 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat29 = ((x_455 * 0.5f) + 0.75f);
    let x_458 : f32 = u_xlat28;
    let x_459 : f32 = u_xlat29;
    u_xlat8.x = max(x_458, x_459);
    let x_470 : vec4<f32> = u_xlat8;
    let x_472 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_470.x, x_470.z, x_470.w));
    u_xlat8 = x_472;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_478 : vec4<f32> = u_xlat8;
  let x_480 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat28 = dot(x_478, x_480);
  let x_482 : f32 = u_xlat28;
  u_xlat28 = clamp(x_482, 0.0f, 1.0f);
  let x_486 : f32 = u_xlat7.z;
  u_xlatb29 = (0.0f < x_486);
  let x_488 : bool = u_xlatb29;
  u_xlat29 = select(0.0f, 1.0f, x_488);
  let x_490 : vec4<f32> = u_xlat7;
  let x_492 : vec4<f32> = u_xlat7;
  let x_494 : vec2<f32> = (vec2<f32>(x_490.x, x_490.y) / vec2<f32>(x_492.w, x_492.w));
  let x_495 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat8;
  let x_500 : vec2<f32> = (vec2<f32>(x_497.x, x_497.y) + vec2<f32>(0.5f, 0.5f));
  let x_501 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_500.x, x_500.y, x_501.z, x_501.w);
  let x_508 : vec4<f32> = u_xlat8;
  let x_510 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_508.x, x_508.y));
  u_xlat21 = x_510.w;
  let x_512 : f32 = u_xlat29;
  let x_513 : f32 = u_xlat21;
  u_xlat29 = (x_512 * x_513);
  let x_515 : vec4<f32> = u_xlat7;
  let x_517 : vec4<f32> = u_xlat7;
  u_xlat21 = dot(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_525 : f32 = u_xlat21;
  let x_527 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_525, x_525));
  u_xlat21 = x_527.x;
  let x_529 : f32 = u_xlat29;
  let x_530 : f32 = u_xlat21;
  u_xlat29 = (x_529 * x_530);
  let x_532 : f32 = u_xlat28;
  let x_533 : f32 = u_xlat29;
  u_xlat28 = (x_532 * x_533);
  let x_536 : vec3<f32> = vs_TEXCOORD1;
  let x_537 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_536, x_537);
  let x_541 : vec3<f32> = vs_TEXCOORD2;
  let x_542 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_541, x_542);
  let x_546 : vec3<f32> = vs_TEXCOORD3;
  let x_547 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_546, x_547);
  let x_550 : vec4<f32> = u_xlat7;
  let x_552 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_555);
  let x_557 : f32 = u_xlat29;
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat6 = (vec3<f32>(x_557, x_557, x_557) * vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : f32 = u_xlat28;
  let x_566 : vec4<f32> = x_18.x_LightColor0;
  let x_568 : vec3<f32> = (vec3<f32>(x_562, x_562, x_562) * vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec3<f32> = u_xlat13;
  let x_573 : vec4<f32> = x_18.x_Color;
  u_xlat4 = ((x_571 * vec3<f32>(x_573.x, x_573.y, x_573.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_579 : vec2<f32> = u_xlat3;
  let x_581 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_579.x, x_579.x, x_579.x) * x_581) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_587 : f32 = u_xlat3.x;
  u_xlat28 = ((-(x_587) * 0.959999979f) + 0.959999979f);
  let x_592 : f32 = u_xlat28;
  let x_594 : vec4<f32> = u_xlat5;
  let x_596 : vec3<f32> = (vec3<f32>(x_592, x_592, x_592) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_600 : f32 = u_xlat3.y;
  let x_602 : f32 = u_xlat30;
  u_xlat28 = ((-(x_600) * x_602) + 1.0f);
  let x_605 : vec3<f32> = u_xlat0;
  let x_606 : f32 = u_xlat27;
  let x_609 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_605 * vec3<f32>(x_606, x_606, x_606)) + x_609);
  let x_611 : vec3<f32> = u_xlat0;
  let x_612 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_611, x_612);
  let x_614 : f32 = u_xlat27;
  u_xlat27 = max(x_614, 0.001f);
  let x_617 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_617);
  let x_619 : f32 = u_xlat27;
  let x_621 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_619, x_619, x_619) * x_621);
  let x_623 : vec3<f32> = u_xlat6;
  let x_624 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(x_623, x_624);
  let x_626 : vec3<f32> = u_xlat6;
  let x_627 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_626, x_627);
  let x_631 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_631, 0.0f, 1.0f);
  let x_635 : vec3<f32> = u_xlat6;
  let x_636 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(x_635, x_636);
  let x_638 : f32 = u_xlat11;
  u_xlat11 = clamp(x_638, 0.0f, 1.0f);
  let x_640 : vec3<f32> = u_xlat1;
  let x_641 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_640, x_641);
  let x_645 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_645, 0.0f, 1.0f);
  let x_650 : f32 = u_xlat0.x;
  let x_652 : f32 = u_xlat0.x;
  u_xlat9.x = (x_650 * x_652);
  let x_655 : vec3<f32> = u_xlat9;
  let x_657 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_655.x, x_655.x), vec2<f32>(x_657, x_657));
  let x_662 : f32 = u_xlat9.x;
  u_xlat9.x = (x_662 + -0.5f);
  let x_668 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_668) + 1.0f);
  let x_671 : f32 = u_xlat18;
  let x_672 : f32 = u_xlat18;
  u_xlat1.x = (x_671 * x_672);
  let x_676 : f32 = u_xlat1.x;
  let x_678 : f32 = u_xlat1.x;
  u_xlat1.x = (x_676 * x_678);
  let x_681 : f32 = u_xlat18;
  let x_683 : f32 = u_xlat1.x;
  u_xlat18 = (x_681 * x_683);
  let x_686 : f32 = u_xlat9.x;
  let x_687 : f32 = u_xlat18;
  u_xlat18 = ((x_686 * x_687) + 1.0f);
  let x_690 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_690)) + 1.0f);
  let x_697 : f32 = u_xlat1.x;
  let x_699 : f32 = u_xlat1.x;
  u_xlat10 = (x_697 * x_699);
  let x_701 : f32 = u_xlat10;
  let x_702 : f32 = u_xlat10;
  u_xlat10 = (x_701 * x_702);
  let x_705 : f32 = u_xlat1.x;
  let x_706 : f32 = u_xlat10;
  u_xlat1.x = (x_705 * x_706);
  let x_710 : f32 = u_xlat9.x;
  let x_712 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_710 * x_712) + 1.0f);
  let x_717 : f32 = u_xlat9.x;
  let x_718 : f32 = u_xlat18;
  u_xlat9.x = (x_717 * x_718);
  let x_721 : f32 = u_xlat28;
  let x_722 : f32 = u_xlat28;
  u_xlat18 = (x_721 * x_722);
  let x_724 : f32 = u_xlat18;
  u_xlat18 = max(x_724, 0.002f);
  let x_727 : f32 = u_xlat18;
  u_xlat1.x = (-(x_727) + 1.0f);
  let x_731 : f32 = u_xlat27;
  let x_734 : f32 = u_xlat1.x;
  let x_736 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_731) * x_734) + x_736);
  let x_739 : f32 = u_xlat2.x;
  let x_741 : f32 = u_xlat1.x;
  let x_743 : f32 = u_xlat18;
  u_xlat1.x = ((x_739 * x_741) + x_743);
  let x_746 : f32 = u_xlat27;
  let x_749 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_746) * x_749);
  let x_752 : f32 = u_xlat2.x;
  let x_753 : f32 = u_xlat10;
  let x_755 : f32 = u_xlat27;
  u_xlat27 = ((x_752 * x_753) + x_755);
  let x_757 : f32 = u_xlat27;
  u_xlat27 = (x_757 + 0.00001f);
  let x_760 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_760);
  let x_762 : f32 = u_xlat18;
  let x_763 : f32 = u_xlat18;
  u_xlat18 = (x_762 * x_763);
  let x_765 : f32 = u_xlat11;
  let x_766 : f32 = u_xlat18;
  let x_768 : f32 = u_xlat11;
  u_xlat1.x = ((x_765 * x_766) + -(x_768));
  let x_773 : f32 = u_xlat1.x;
  let x_774 : f32 = u_xlat11;
  u_xlat1.x = ((x_773 * x_774) + 1.0f);
  let x_778 : f32 = u_xlat18;
  u_xlat18 = (x_778 * 0.318309873f);
  let x_782 : f32 = u_xlat1.x;
  let x_784 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_782 * x_784) + 0.0000001f);
  let x_789 : f32 = u_xlat18;
  let x_791 : f32 = u_xlat1.x;
  u_xlat18 = (x_789 / x_791);
  let x_793 : f32 = u_xlat18;
  let x_794 : f32 = u_xlat27;
  u_xlat9.y = (x_793 * x_794);
  let x_797 : vec3<f32> = u_xlat2;
  let x_799 : vec3<f32> = u_xlat9;
  let x_801 : vec2<f32> = (vec2<f32>(x_797.x, x_797.x) * vec2<f32>(x_799.x, x_799.y));
  let x_802 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_801.x, x_801.y, x_802.z);
  let x_805 : f32 = u_xlat9.y;
  u_xlat18 = (x_805 * 3.141592741f);
  let x_808 : f32 = u_xlat18;
  u_xlat18 = max(x_808, 0.0f);
  let x_810 : vec3<f32> = u_xlat4;
  let x_811 : vec3<f32> = u_xlat4;
  u_xlat27 = dot(x_810, x_811);
  let x_814 : f32 = u_xlat27;
  u_xlatb27 = !((x_814 == 0.0f));
  let x_816 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_816);
  let x_818 : f32 = u_xlat27;
  let x_819 : f32 = u_xlat18;
  u_xlat18 = (x_818 * x_819);
  let x_821 : vec3<f32> = u_xlat9;
  let x_823 : vec4<f32> = u_xlat7;
  u_xlat1 = (vec3<f32>(x_821.x, x_821.x, x_821.x) * vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : vec4<f32> = u_xlat7;
  let x_828 : f32 = u_xlat18;
  u_xlat9 = (vec3<f32>(x_826.x, x_826.y, x_826.z) * vec3<f32>(x_828, x_828, x_828));
  let x_832 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_832) + 1.0f);
  let x_837 : f32 = u_xlat0.x;
  let x_839 : f32 = u_xlat0.x;
  u_xlat28 = (x_837 * x_839);
  let x_841 : f32 = u_xlat28;
  let x_842 : f32 = u_xlat28;
  u_xlat28 = (x_841 * x_842);
  let x_845 : f32 = u_xlat0.x;
  let x_846 : f32 = u_xlat28;
  u_xlat0.x = (x_845 * x_846);
  let x_849 : vec3<f32> = u_xlat4;
  u_xlat2 = (-(x_849) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_853 : vec3<f32> = u_xlat2;
  let x_854 : vec3<f32> = u_xlat0;
  let x_857 : vec3<f32> = u_xlat4;
  u_xlat2 = ((x_853 * vec3<f32>(x_854.x, x_854.x, x_854.x)) + x_857);
  let x_859 : vec3<f32> = u_xlat9;
  let x_860 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_859 * x_860);
  let x_864 : vec4<f32> = u_xlat5;
  let x_866 : vec3<f32> = u_xlat1;
  let x_868 : vec3<f32> = u_xlat0;
  let x_869 : vec3<f32> = ((vec3<f32>(x_864.x, x_864.y, x_864.z) * x_866) + x_868);
  let x_870 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  SV_Target0.w = 1.0f;
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

