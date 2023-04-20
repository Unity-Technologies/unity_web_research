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

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat6 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat2 : f32;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_111 : UnityPerDraw;

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

@group(0) @binding(1) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> vs_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

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
  var x_92 : f32;
  var x_118 : f32;
  var x_131 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_311 : f32;
  var x_323 : f32;
  var x_420 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec3<f32> = vs_INTERP1;
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
  let x_90 : bool = u_xlatb6;
  if (x_90) {
    let x_97 : f32 = u_xlat0.y;
    x_92 = x_97;
  } else {
    let x_102 : f32 = x_55.unity_MatrixV[1i].z;
    x_92 = x_102;
  }
  let x_103 : f32 = x_92;
  u_xlat2 = x_103;
  let x_106 : f32 = u_xlat2;
  let x_114 : vec4<f32> = x_111.unity_WorldToObject[1i];
  u_xlat1 = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : bool = u_xlatb6;
  if (x_117) {
    let x_123 : f32 = u_xlat0.x;
    x_118 = x_123;
  } else {
    let x_127 : f32 = x_55.unity_MatrixV[0i].z;
    x_118 = x_127;
  }
  let x_128 : f32 = x_118;
  u_xlat0.x = x_128;
  let x_130 : bool = u_xlatb6;
  if (x_130) {
    let x_135 : f32 = u_xlat0.z;
    x_131 = x_135;
  } else {
    let x_139 : f32 = x_55.unity_MatrixV[2i].z;
    x_131 = x_139;
  }
  let x_140 : f32 = x_131;
  u_xlat2 = x_140;
  let x_142 : vec4<f32> = x_111.unity_WorldToObject[0i];
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = u_xlat1;
  let x_148 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + x_147);
  let x_149 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_148.x, x_149.y, x_148.y, x_148.z);
  let x_152 : vec4<f32> = x_111.unity_WorldToObject[2i];
  let x_154 : f32 = u_xlat2;
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154, x_154, x_154)) + vec3<f32>(x_157.x, x_157.z, x_157.w));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_162 : vec4<f32> = u_xlat0;
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_162.x, x_162.y, x_162.z), vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_167);
  let x_169 : f32 = u_xlat6;
  let x_171 : vec4<f32> = u_xlat0;
  let x_173 : vec3<f32> = (vec3<f32>(x_169, x_169, x_169) * vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = x_55.x_ScreenParams;
  let x_182 : vec3<f32> = (abs(vec3<f32>(x_176.x, x_176.y, x_176.z)) * vec3<f32>(x_180.x, x_180.y, x_180.x));
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_188 : vec4<f32> = u_xlat0;
  u_xlatu0 = vec3<u32>(vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_194 : u32 = u_xlatu0.z;
  u_xlatu4 = (x_194 * 1025u);
  let x_198 : u32 = u_xlatu4;
  u_xlatu6 = (x_198 >> 6u);
  let x_203 : u32 = u_xlatu6;
  let x_204 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_203 ^ x_204));
  let x_207 : i32 = u_xlati4;
  u_xlatu4 = (bitcast<u32>(x_207) * 9u);
  let x_211 : u32 = u_xlatu4;
  u_xlatu6 = (x_211 >> 11u);
  let x_214 : u32 = u_xlatu6;
  let x_215 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_214 ^ x_215));
  let x_218 : i32 = u_xlati4;
  u_xlati4 = (x_218 * 32769i);
  let x_222 : i32 = u_xlati4;
  let x_225 : u32 = u_xlatu0.y;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_222) ^ x_225));
  let x_229 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_229) * 1025u);
  let x_232 : u32 = u_xlatu2;
  u_xlatu4 = (x_232 >> 6u);
  let x_234 : u32 = u_xlatu4;
  let x_235 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_234 ^ x_235));
  let x_238 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_238) * 9u);
  let x_241 : u32 = u_xlatu2;
  u_xlatu4 = (x_241 >> 11u);
  let x_243 : u32 = u_xlatu4;
  let x_244 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_243 ^ x_244));
  let x_247 : i32 = u_xlati2;
  u_xlati2 = (x_247 * 32769i);
  let x_250 : i32 = u_xlati2;
  let x_253 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_250) ^ x_253));
  let x_256 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_256) * 1025u);
  let x_261 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_261 >> 6u);
  let x_263 : u32 = u_xlatu2;
  let x_265 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_263 ^ x_265));
  let x_268 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_268) * 9u);
  let x_273 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_273 >> 11u);
  let x_275 : u32 = u_xlatu2;
  let x_277 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_275 ^ x_277));
  let x_280 : i32 = u_xlati0;
  u_xlati0 = (x_280 * 32769i);
  param = 1065353216i;
  let x_286 : i32 = u_xlati0;
  param_1 = x_286;
  param_2 = 0i;
  param_3 = 23i;
  let x_289 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat0.x = bitcast<f32>(x_289);
  let x_293 : f32 = u_xlat0.x;
  u_xlat0.x = (x_293 + -1.0f);
  let x_298 : f32 = u_xlat0.x;
  u_xlat2 = (-(x_298) + 1.0f);
  let x_304 : f32 = x_111.unity_LODFade.x;
  u_xlatb4 = (x_304 < 0.0f);
  let x_307 : f32 = x_111.unity_LODFade.x;
  u_xlat6 = (x_307 + 1.0f);
  let x_310 : bool = u_xlatb4;
  if (x_310) {
    let x_314 : f32 = u_xlat6;
    x_311 = x_314;
  } else {
    let x_317 : f32 = x_111.unity_LODFade.x;
    x_311 = x_317;
  }
  let x_318 : f32 = x_311;
  u_xlat4 = x_318;
  let x_320 : f32 = u_xlat4;
  u_xlatb6 = (0.5f >= x_320);
  let x_322 : bool = u_xlatb6;
  if (x_322) {
    let x_327 : f32 = u_xlat0.x;
    x_323 = x_327;
  } else {
    let x_329 : f32 = u_xlat2;
    x_323 = x_329;
  }
  let x_330 : f32 = x_323;
  u_xlat0.x = x_330;
  let x_332 : f32 = u_xlat4;
  let x_336 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_332 * 2.0f) + -(x_336));
  let x_352 : vec4<f32> = vs_INTERP0;
  let x_355 : f32 = x_55.x_GlobalMipBias.x;
  let x_356 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_352.x, x_352.y), x_355);
  u_xlat2 = x_356.w;
  let x_358 : f32 = u_xlat2;
  let x_360 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_358 * x_360) + -0.40000000596046447754f);
  let x_367 : f32 = u_xlat0.x;
  u_xlatb0 = (x_367 < 0.0f);
  let x_369 : bool = u_xlatb0;
  if (((select(0i, 1i, x_369) * -1i) != 0i)) {
    discard;
  }
  let x_380 : f32 = vs_PREVIOUS_CLIP_POSITION_NO_JITTER0.z;
  u_xlat0.x = (1.0f / x_380);
  let x_383 : vec4<f32> = u_xlat0;
  let x_385 : vec3<f32> = vs_PREVIOUS_CLIP_POSITION_NO_JITTER0;
  let x_387 : vec2<f32> = (vec2<f32>(x_383.x, x_383.x) * vec2<f32>(x_385.x, x_385.y));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
  let x_392 : f32 = vs_CLIP_POSITION_NO_JITTER0.z;
  u_xlat4 = (1.0f / x_392);
  let x_394 : vec3<f32> = vs_CLIP_POSITION_NO_JITTER0;
  let x_396 : f32 = u_xlat4;
  let x_399 : vec4<f32> = u_xlat0;
  let x_402 : vec2<f32> = ((vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_396, x_396)) + -(vec2<f32>(x_399.x, x_399.y)));
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat0;
  let x_409 : vec2<f32> = (vec2<f32>(x_405.x, x_405.y) * vec2<f32>(0.5f, -0.5f));
  let x_410 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
  let x_414 : f32 = x_111.unity_MotionVectorsParams.y;
  u_xlatb4 = !((x_414 == 0.0f));
  let x_418 : bool = u_xlatb4;
  if (x_418) {
    let x_423 : vec4<f32> = u_xlat0;
    x_420 = vec2<f32>(x_423.x, x_423.y);
  } else {
    x_420 = vec2<f32>(0.0f, 0.0f);
  }
  let x_427 : vec2<f32> = x_420;
  let x_428 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  let x_430 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_430.x, x_430.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP0_param : vec4<f32>, @location(1) vs_PREVIOUS_CLIP_POSITION_NO_JITTER0_param : vec3<f32>, @location(0) vs_CLIP_POSITION_NO_JITTER0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = vs_PREVIOUS_CLIP_POSITION_NO_JITTER0_param;
  vs_CLIP_POSITION_NO_JITTER0 = vs_CLIP_POSITION_NO_JITTER0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


