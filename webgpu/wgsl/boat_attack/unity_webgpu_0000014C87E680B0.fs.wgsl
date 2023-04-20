diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(32) */
  x_ScreenParams : vec4<f32>,
  /* @offset(48) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(64) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat6 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_113 : UnityPerDraw;

var<private> u_xlatu0 : vec3<u32>;

var<private> u_xlatu4 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlati2 : i32;

var<private> u_xlatu2 : u32;

var<private> u_xlati0 : i32;

var<private> u_xlatb4 : bool;

var<private> u_xlat4 : f32;

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP1 : vec4<f32>;

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> vs_INTERP3 : vec3<f32>;

@group(0) @binding(1) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var x_93 : f32;
  var x_122 : f32;
  var x_134 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_317 : f32;
  var x_329 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec3<f32> = vs_INTERP2;
  let x_59 : vec3<f32> = x_55.x_WorldSpaceCameraPos;
  let x_60 : vec3<f32> = (-(x_49) + x_59);
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_65.x, x_65.y, x_65.z), vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_70);
  let x_72 : f32 = u_xlat6;
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = (vec3<f32>(x_72, x_72, x_72) * vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_86 : f32 = x_55.unity_OrthoParams.w;
  u_xlatb6 = (x_86 == 0.0f);
  let x_91 : bool = u_xlatb6;
  if (x_91) {
    let x_98 : f32 = u_xlat0.y;
    x_93 = x_98;
  } else {
    let x_103 : f32 = x_55.unity_MatrixV[1i].z;
    x_93 = x_103;
  }
  let x_104 : f32 = x_93;
  u_xlat2.x = x_104;
  let x_108 : vec3<f32> = u_xlat2;
  let x_116 : vec4<f32> = x_113.unity_WorldToObject[1i];
  let x_118 : vec3<f32> = (vec3<f32>(x_108.x, x_108.x, x_108.x) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : bool = u_xlatb6;
  if (x_121) {
    let x_126 : f32 = u_xlat0.x;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_55.unity_MatrixV[0i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat0.x = x_131;
  let x_133 : bool = u_xlatb6;
  if (x_133) {
    let x_138 : f32 = u_xlat0.z;
    x_134 = x_138;
  } else {
    let x_142 : f32 = x_55.unity_MatrixV[2i].z;
    x_134 = x_142;
  }
  let x_143 : f32 = x_134;
  u_xlat2.x = x_143;
  let x_146 : vec4<f32> = x_113.unity_WorldToObject[0i];
  let x_148 : vec4<f32> = u_xlat0;
  let x_151 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148.x, x_148.x, x_148.x)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_154.y, x_153.y, x_153.z);
  let x_157 : vec4<f32> = x_113.unity_WorldToObject[2i];
  let x_159 : vec3<f32> = u_xlat2;
  let x_162 : vec4<f32> = u_xlat0;
  let x_164 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.x, x_159.x, x_159.x)) + vec3<f32>(x_162.x, x_162.z, x_162.w));
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_167 : vec4<f32> = u_xlat0;
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_172);
  let x_174 : f32 = u_xlat6;
  let x_176 : vec4<f32> = u_xlat0;
  let x_178 : vec3<f32> = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = x_55.x_ScreenParams;
  let x_187 : vec3<f32> = (abs(vec3<f32>(x_181.x, x_181.y, x_181.z)) * vec3<f32>(x_185.x, x_185.y, x_185.x));
  let x_188 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_193 : vec4<f32> = u_xlat0;
  u_xlatu0 = vec3<u32>(vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_199 : u32 = u_xlatu0.z;
  u_xlatu4 = (x_199 * 1025u);
  let x_203 : u32 = u_xlatu4;
  u_xlatu6 = (x_203 >> 6u);
  let x_208 : u32 = u_xlatu6;
  let x_209 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_208 ^ x_209));
  let x_212 : i32 = u_xlati4;
  u_xlatu4 = (bitcast<u32>(x_212) * 9u);
  let x_216 : u32 = u_xlatu4;
  u_xlatu6 = (x_216 >> 11u);
  let x_219 : u32 = u_xlatu6;
  let x_220 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_219 ^ x_220));
  let x_223 : i32 = u_xlati4;
  u_xlati4 = (x_223 * 32769i);
  let x_227 : i32 = u_xlati4;
  let x_230 : u32 = u_xlatu0.y;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_227) ^ x_230));
  let x_234 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_234) * 1025u);
  let x_237 : u32 = u_xlatu2;
  u_xlatu4 = (x_237 >> 6u);
  let x_239 : u32 = u_xlatu4;
  let x_240 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_239 ^ x_240));
  let x_243 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_243) * 9u);
  let x_246 : u32 = u_xlatu2;
  u_xlatu4 = (x_246 >> 11u);
  let x_248 : u32 = u_xlatu4;
  let x_249 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_248 ^ x_249));
  let x_252 : i32 = u_xlati2;
  u_xlati2 = (x_252 * 32769i);
  let x_255 : i32 = u_xlati2;
  let x_258 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_255) ^ x_258));
  let x_261 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_261) * 1025u);
  let x_266 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_266 >> 6u);
  let x_268 : u32 = u_xlatu2;
  let x_270 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_268 ^ x_270));
  let x_273 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_273) * 9u);
  let x_278 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_278 >> 11u);
  let x_280 : u32 = u_xlatu2;
  let x_282 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_280 ^ x_282));
  let x_285 : i32 = u_xlati0;
  u_xlati0 = (x_285 * 32769i);
  param = 1065353216i;
  let x_291 : i32 = u_xlati0;
  param_1 = x_291;
  param_2 = 0i;
  param_3 = 23i;
  let x_294 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat0.x = bitcast<f32>(x_294);
  let x_298 : f32 = u_xlat0.x;
  u_xlat0.x = (x_298 + -1.0f);
  let x_303 : f32 = u_xlat0.x;
  u_xlat2.x = (-(x_303) + 1.0f);
  let x_310 : f32 = x_113.unity_LODFade.x;
  u_xlatb4 = (x_310 < 0.0f);
  let x_313 : f32 = x_113.unity_LODFade.x;
  u_xlat6 = (x_313 + 1.0f);
  let x_316 : bool = u_xlatb4;
  if (x_316) {
    let x_320 : f32 = u_xlat6;
    x_317 = x_320;
  } else {
    let x_323 : f32 = x_113.unity_LODFade.x;
    x_317 = x_323;
  }
  let x_324 : f32 = x_317;
  u_xlat4 = x_324;
  let x_326 : f32 = u_xlat4;
  u_xlatb6 = (0.5f >= x_326);
  let x_328 : bool = u_xlatb6;
  if (x_328) {
    let x_333 : f32 = u_xlat0.x;
    x_329 = x_333;
  } else {
    let x_336 : f32 = u_xlat2.x;
    x_329 = x_336;
  }
  let x_337 : f32 = x_329;
  u_xlat0.x = x_337;
  let x_339 : f32 = u_xlat4;
  let x_343 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_339 * 2.0f) + -(x_343));
  let x_359 : vec4<f32> = vs_INTERP1;
  let x_362 : f32 = x_55.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_359.x, x_359.y), x_362);
  u_xlat2.x = x_363.w;
  let x_367 : f32 = u_xlat2.x;
  let x_369 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_367 * x_369) + -0.40000000596046447754f);
  let x_378 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_378 < 0.0f);
  let x_382 : bool = u_xlatb0.x;
  if (((select(0i, 1i, x_382) * -1i) != 0i)) {
    discard;
  }
  let x_393 : f32 = vs_INTERP0.w;
  u_xlatb0.x = (0.0f < x_393);
  let x_397 : f32 = x_113.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_397 >= 0.0f);
  let x_401 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_401);
  let x_405 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_405);
  let x_409 : f32 = u_xlat0.y;
  let x_411 : f32 = u_xlat0.x;
  u_xlat0.x = (x_409 * x_411);
  let x_414 : vec4<f32> = vs_INTERP0;
  let x_417 : vec3<f32> = vs_INTERP3;
  u_xlat2 = (vec3<f32>(x_414.y, x_414.z, x_414.x) * vec3<f32>(x_417.z, x_417.x, x_417.y));
  let x_420 : vec3<f32> = vs_INTERP3;
  let x_422 : vec4<f32> = vs_INTERP0;
  let x_425 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_420.y, x_420.z, x_420.x) * vec3<f32>(x_422.z, x_422.x, x_422.y)) + -(x_425));
  let x_428 : vec3<f32> = u_xlat2;
  let x_429 : vec4<f32> = u_xlat0;
  let x_431 : vec3<f32> = (x_428 * vec3<f32>(x_429.x, x_429.x, x_429.x));
  let x_432 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_439 : vec4<f32> = vs_INTERP1;
  let x_442 : f32 = x_55.x_GlobalMipBias.x;
  let x_443 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_439.x, x_439.y), x_442);
  u_xlat1 = x_443;
  let x_444 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_444 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_449 : vec4<f32> = u_xlat1;
  let x_450 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_449, x_450);
  let x_452 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_452);
  let x_454 : f32 = u_xlat6;
  let x_456 : vec4<f32> = u_xlat1;
  let x_458 : vec3<f32> = (vec3<f32>(x_454, x_454, x_454) * vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat0;
  let x_463 : vec4<f32> = u_xlat1;
  let x_465 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.y, x_463.y, x_463.y));
  let x_466 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat1;
  let x_470 : vec4<f32> = vs_INTERP0;
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : vec3<f32> = ((vec3<f32>(x_468.x, x_468.x, x_468.x) * vec3<f32>(x_470.x, x_470.y, x_470.z)) + vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec3<f32> = vs_INTERP3;
  let x_482 : vec4<f32> = u_xlat0;
  let x_484 : vec3<f32> = ((vec3<f32>(x_478.z, x_478.z, x_478.z) * x_480) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat0;
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_487.x, x_487.y, x_487.z), vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_492);
  let x_496 : f32 = u_xlat6;
  let x_498 : vec4<f32> = u_xlat0;
  let x_500 : vec3<f32> = (vec3<f32>(x_496, x_496, x_496) * vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP2_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>, @location(0) vs_INTERP0_param : vec4<f32>, @location(3) vs_INTERP3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


