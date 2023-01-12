struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var x_213 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_81.x, x_81.y));
  u_xlat2 = vec3<f32>(x_83.x, x_83.y, x_83.w);
  let x_88 : f32 = u_xlat2.z;
  let x_91 : f32 = u_xlat2.x;
  u_xlat2.x = (x_88 * x_91);
  let x_94 : vec3<f32> = u_xlat2;
  let x_101 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_102 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_101.x, x_101.y, x_102.z);
  let x_105 : vec3<f32> = u_xlat2;
  let x_107 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_105.x, x_105.y), vec2<f32>(x_107.x, x_107.y));
  let x_110 : f32 = u_xlat22;
  u_xlat22 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_116);
  let x_119 : vec3<f32> = u_xlat2;
  let x_122 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_119.y, x_119.y, x_119.y) * vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_126 : vec4<f32> = vs_TEXCOORD2;
  let x_128 : vec3<f32> = u_xlat2;
  let x_131 : vec3<f32> = u_xlat9;
  u_xlat2 = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_128.x, x_128.x, x_128.x)) + x_131);
  let x_134 : vec4<f32> = vs_TEXCOORD4;
  let x_136 : f32 = u_xlat22;
  let x_139 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_136, x_136, x_136)) + x_139);
  let x_146 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_146 == 1.0f);
  let x_148 : bool = u_xlatb22;
  if (x_148) {
    let x_153 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_153 == 1.0f);
    let x_157 : vec4<f32> = vs_TEXCOORD3;
    let x_162 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_164 : vec3<f32> = (vec3<f32>(x_157.w, x_157.w, x_157.w) * vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_169 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_171 : vec4<f32> = vs_TEXCOORD2;
    let x_174 : vec4<f32> = u_xlat3;
    let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.w, x_171.w, x_171.w)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_181 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_183 : vec4<f32> = vs_TEXCOORD4;
    let x_186 : vec4<f32> = u_xlat3;
    let x_188 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183.w, x_183.w, x_183.w)) + vec3<f32>(x_186.x, x_186.y, x_186.z));
    let x_189 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
    let x_191 : vec4<f32> = u_xlat3;
    let x_195 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_197 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + vec3<f32>(x_195.x, x_195.y, x_195.z));
    let x_198 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
    let x_204 : f32 = vs_TEXCOORD2.w;
    u_xlat11.x = x_204;
    let x_207 : f32 = vs_TEXCOORD3.w;
    u_xlat11.y = x_207;
    let x_210 : f32 = vs_TEXCOORD4.w;
    u_xlat11.z = x_210;
    let x_212 : bool = u_xlatb22;
    if (x_212) {
      let x_216 : vec4<f32> = u_xlat3;
      x_213 = vec3<f32>(x_216.x, x_216.y, x_216.z);
    } else {
      let x_219 : vec3<f32> = u_xlat11;
      x_213 = x_219;
    }
    let x_220 : vec3<f32> = x_213;
    let x_221 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
    let x_223 : vec4<f32> = u_xlat3;
    let x_228 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_230 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) + -(x_228));
    let x_231 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_233 : vec4<f32> = u_xlat3;
    let x_237 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_238 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) * x_237);
    let x_239 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_239.x, x_238.x, x_238.y, x_238.z);
    let x_242 : f32 = u_xlat3.y;
    u_xlat22 = ((x_242 * 0.25f) + 0.75f);
    let x_249 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_249 * 0.5f) + 0.75f);
    let x_253 : f32 = u_xlat22;
    let x_254 : f32 = u_xlat23;
    u_xlat3.x = max(x_253, x_254);
    let x_265 : vec4<f32> = u_xlat3;
    let x_267 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_265.x, x_265.z, x_265.w));
    u_xlat3 = x_267;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_273 : vec4<f32> = u_xlat3;
  let x_275 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_273, x_275);
  let x_277 : f32 = u_xlat22;
  u_xlat22 = clamp(x_277, 0.0f, 1.0f);
  let x_285 : vec4<f32> = vs_TEXCOORD0;
  let x_287 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_285.x, x_285.y));
  u_xlat23 = x_287.y;
  let x_291 : f32 = x_33.x_Glossiness;
  let x_293 : f32 = x_33.x_Glossiness;
  let x_294 : vec2<f32> = vec2<f32>(x_291, x_293);
  let x_300 : vec2<f32> = (-(vec2<f32>(x_294.x, x_294.y)) + vec2<f32>(1.0f, 1.0f));
  let x_301 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_300.x, x_301.y, x_301.z, x_300.y);
  let x_305 : vec4<f32> = vs_TEXCOORD1;
  let x_307 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_305.x, x_305.y, x_305.z), x_307);
  let x_311 : f32 = u_xlat4.x;
  let x_313 : f32 = u_xlat4.x;
  u_xlat4.x = (x_311 + x_313);
  let x_316 : vec3<f32> = u_xlat2;
  let x_317 : vec4<f32> = u_xlat4;
  let x_321 : vec4<f32> = vs_TEXCOORD1;
  let x_323 : vec3<f32> = ((x_316 * -(vec3<f32>(x_317.x, x_317.x, x_317.x))) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : f32 = u_xlat22;
  let x_331 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_327, x_327, x_327) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_335 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_335) * 0.699999988f) + 1.700000048f);
  let x_341 : f32 = u_xlat22;
  let x_343 : f32 = u_xlat3.x;
  u_xlat22 = (x_341 * x_343);
  let x_345 : f32 = u_xlat22;
  u_xlat22 = (x_345 * 6.0f);
  let x_356 : vec4<f32> = u_xlat4;
  let x_358 : f32 = u_xlat22;
  let x_359 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_356.x, x_356.y, x_356.z), x_358);
  u_xlat4 = x_359;
  let x_361 : f32 = u_xlat4.w;
  u_xlat22 = (x_361 + -1.0f);
  let x_364 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_365 : f32 = u_xlat22;
  u_xlat22 = ((x_364 * x_365) + 1.0f);
  let x_368 : f32 = u_xlat22;
  u_xlat22 = log2(x_368);
  let x_370 : f32 = u_xlat22;
  let x_372 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat22 = (x_370 * x_372);
  let x_374 : f32 = u_xlat22;
  u_xlat22 = exp2(x_374);
  let x_376 : f32 = u_xlat22;
  let x_378 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat22 = (x_376 * x_378);
  let x_380 : vec4<f32> = u_xlat4;
  let x_382 : f32 = u_xlat22;
  let x_384 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382, x_382, x_382));
  let x_385 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : f32 = u_xlat23;
  let x_389 : vec4<f32> = u_xlat4;
  let x_391 : vec3<f32> = (vec3<f32>(x_387, x_387, x_387) * vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = vs_TEXCOORD1;
  let x_397 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(-(vec3<f32>(x_394.x, x_394.y, x_394.z)), x_397);
  let x_399 : f32 = u_xlat22;
  let x_400 : f32 = u_xlat22;
  u_xlat23 = (x_399 + x_400);
  let x_403 : vec3<f32> = u_xlat2;
  let x_404 : f32 = u_xlat23;
  let x_408 : vec4<f32> = vs_TEXCOORD1;
  u_xlat6 = ((x_403 * -(vec3<f32>(x_404, x_404, x_404))) + -(vec3<f32>(x_408.x, x_408.y, x_408.z)));
  let x_412 : vec3<f32> = u_xlat2;
  let x_414 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_412, vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_419 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_419, 0.0f, 1.0f);
  let x_422 : f32 = u_xlat22;
  u_xlat22 = x_422;
  let x_423 : f32 = u_xlat22;
  u_xlat22 = clamp(x_423, 0.0f, 1.0f);
  let x_425 : vec3<f32> = u_xlat6;
  let x_427 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6.x = dot(x_425, vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_431 : f32 = u_xlat22;
  u_xlat6.y = (-(x_431) + 1.0f);
  let x_435 : vec3<f32> = u_xlat6;
  let x_437 : vec3<f32> = u_xlat6;
  let x_439 : vec2<f32> = (vec2<f32>(x_435.x, x_435.y) * vec2<f32>(x_437.x, x_437.y));
  let x_440 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_439.x, x_439.y, x_440.z);
  let x_442 : vec3<f32> = u_xlat9;
  let x_444 : vec3<f32> = u_xlat9;
  let x_446 : vec2<f32> = (vec2<f32>(x_442.x, x_442.y) * vec2<f32>(x_444.x, x_444.y));
  let x_447 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_447.x, x_446.x, x_446.y, x_447.w);
  let x_449 : f32 = u_xlat21;
  let x_452 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_449) + x_452);
  let x_454 : f32 = u_xlat22;
  u_xlat22 = (x_454 + 1.0f);
  let x_456 : f32 = u_xlat22;
  u_xlat22 = clamp(x_456, 0.0f, 1.0f);
  let x_463 : vec4<f32> = u_xlat3;
  let x_465 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_463.y, x_463.w));
  u_xlat9.x = x_465.x;
  let x_469 : f32 = u_xlat9.x;
  u_xlat9.x = (x_469 * 16.0f);
  let x_473 : vec3<f32> = u_xlat0;
  let x_474 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_473 * vec3<f32>(x_474.x, x_474.x, x_474.x));
  let x_477 : vec3<f32> = u_xlat1;
  let x_478 : f32 = u_xlat21;
  let x_481 : vec3<f32> = u_xlat9;
  u_xlat1 = ((x_477 * vec3<f32>(x_478, x_478, x_478)) + x_481);
  let x_483 : vec3<f32> = u_xlat2;
  let x_485 : vec3<f32> = u_xlat5;
  u_xlat2 = (vec3<f32>(x_483.x, x_483.x, x_483.x) * x_485);
  let x_487 : vec3<f32> = u_xlat0;
  let x_489 : f32 = u_xlat22;
  let x_491 : vec3<f32> = (-(x_487) + vec3<f32>(x_489, x_489, x_489));
  let x_492 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_491.z);
  let x_494 : vec4<f32> = u_xlat3;
  let x_496 : vec4<f32> = u_xlat3;
  let x_499 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_494.z, x_494.z, x_494.z) * vec3<f32>(x_496.x, x_496.y, x_496.w)) + x_499);
  let x_501 : vec3<f32> = u_xlat0;
  let x_502 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_501 * vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec3<f32> = u_xlat1;
  let x_506 : vec3<f32> = u_xlat2;
  let x_508 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_505 * x_506) + x_508);
  let x_511 : f32 = vs_TEXCOORD1.w;
  u_xlat21 = x_511;
  let x_512 : f32 = u_xlat21;
  u_xlat21 = clamp(x_512, 0.0f, 1.0f);
  let x_514 : vec3<f32> = u_xlat0;
  let x_516 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_514 + -(vec3<f32>(x_516.x, x_516.y, x_516.z)));
  let x_522 : f32 = u_xlat21;
  let x_524 : vec3<f32> = u_xlat0;
  let x_527 : vec4<f32> = x_33.unity_FogColor;
  let x_529 : vec3<f32> = ((vec3<f32>(x_522, x_522, x_522) * x_524) + vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

