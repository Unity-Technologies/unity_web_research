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

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat6 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat2 : f32;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_110 : UnityPerDraw;

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

var<private> SV_TARGET0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_378 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

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
  var x_119 : f32;
  var x_132 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_313 : f32;
  var x_325 : f32;
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
  let x_105 : f32 = u_xlat2;
  let x_113 : vec4<f32> = x_110.unity_WorldToObject[1i];
  let x_115 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_118 : bool = u_xlatb6;
  if (x_118) {
    let x_124 : f32 = u_xlat0.x;
    x_119 = x_124;
  } else {
    let x_128 : f32 = x_55.unity_MatrixV[0i].z;
    x_119 = x_128;
  }
  let x_129 : f32 = x_119;
  u_xlat0.x = x_129;
  let x_131 : bool = u_xlatb6;
  if (x_131) {
    let x_136 : f32 = u_xlat0.z;
    x_132 = x_136;
  } else {
    let x_140 : f32 = x_55.unity_MatrixV[2i].z;
    x_132 = x_140;
  }
  let x_141 : f32 = x_132;
  u_xlat2 = x_141;
  let x_143 : vec4<f32> = x_110.unity_WorldToObject[0i];
  let x_145 : vec4<f32> = u_xlat0;
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : vec3<f32> = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145.x, x_145.x, x_145.x)) + vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_150.x, x_151.y, x_150.y, x_150.z);
  let x_154 : vec4<f32> = x_110.unity_WorldToObject[2i];
  let x_156 : f32 = u_xlat2;
  let x_159 : vec4<f32> = u_xlat0;
  let x_161 : vec3<f32> = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(x_156, x_156, x_156)) + vec3<f32>(x_159.x, x_159.z, x_159.w));
  let x_162 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_164.x, x_164.y, x_164.z), vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_169);
  let x_171 : f32 = u_xlat6;
  let x_173 : vec4<f32> = u_xlat0;
  let x_175 : vec3<f32> = (vec3<f32>(x_171, x_171, x_171) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_178 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = x_55.x_ScreenParams;
  let x_184 : vec3<f32> = (abs(vec3<f32>(x_178.x, x_178.y, x_178.z)) * vec3<f32>(x_182.x, x_182.y, x_182.x));
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_190 : vec4<f32> = u_xlat0;
  u_xlatu0 = vec3<u32>(vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_196 : u32 = u_xlatu0.z;
  u_xlatu4 = (x_196 * 1025u);
  let x_200 : u32 = u_xlatu4;
  u_xlatu6 = (x_200 >> 6u);
  let x_205 : u32 = u_xlatu6;
  let x_206 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_205 ^ x_206));
  let x_209 : i32 = u_xlati4;
  u_xlatu4 = (bitcast<u32>(x_209) * 9u);
  let x_213 : u32 = u_xlatu4;
  u_xlatu6 = (x_213 >> 11u);
  let x_216 : u32 = u_xlatu6;
  let x_217 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_216 ^ x_217));
  let x_220 : i32 = u_xlati4;
  u_xlati4 = (x_220 * 32769i);
  let x_224 : i32 = u_xlati4;
  let x_227 : u32 = u_xlatu0.y;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_224) ^ x_227));
  let x_231 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_231) * 1025u);
  let x_234 : u32 = u_xlatu2;
  u_xlatu4 = (x_234 >> 6u);
  let x_236 : u32 = u_xlatu4;
  let x_237 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_236 ^ x_237));
  let x_240 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_240) * 9u);
  let x_243 : u32 = u_xlatu2;
  u_xlatu4 = (x_243 >> 11u);
  let x_245 : u32 = u_xlatu4;
  let x_246 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_245 ^ x_246));
  let x_249 : i32 = u_xlati2;
  u_xlati2 = (x_249 * 32769i);
  let x_252 : i32 = u_xlati2;
  let x_255 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_252) ^ x_255));
  let x_258 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_258) * 1025u);
  let x_263 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_263 >> 6u);
  let x_265 : u32 = u_xlatu2;
  let x_267 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_265 ^ x_267));
  let x_270 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_270) * 9u);
  let x_275 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_275 >> 11u);
  let x_277 : u32 = u_xlatu2;
  let x_279 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_277 ^ x_279));
  let x_282 : i32 = u_xlati0;
  u_xlati0 = (x_282 * 32769i);
  param = 1065353216i;
  let x_288 : i32 = u_xlati0;
  param_1 = x_288;
  param_2 = 0i;
  param_3 = 23i;
  let x_291 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat0.x = bitcast<f32>(x_291);
  let x_295 : f32 = u_xlat0.x;
  u_xlat0.x = (x_295 + -1.0f);
  let x_300 : f32 = u_xlat0.x;
  u_xlat2 = (-(x_300) + 1.0f);
  let x_306 : f32 = x_110.unity_LODFade.x;
  u_xlatb4 = (x_306 < 0.0f);
  let x_309 : f32 = x_110.unity_LODFade.x;
  u_xlat6 = (x_309 + 1.0f);
  let x_312 : bool = u_xlatb4;
  if (x_312) {
    let x_316 : f32 = u_xlat6;
    x_313 = x_316;
  } else {
    let x_319 : f32 = x_110.unity_LODFade.x;
    x_313 = x_319;
  }
  let x_320 : f32 = x_313;
  u_xlat4 = x_320;
  let x_322 : f32 = u_xlat4;
  u_xlatb6 = (0.5f >= x_322);
  let x_324 : bool = u_xlatb6;
  if (x_324) {
    let x_329 : f32 = u_xlat0.x;
    x_325 = x_329;
  } else {
    let x_331 : f32 = u_xlat2;
    x_325 = x_331;
  }
  let x_332 : f32 = x_325;
  u_xlat0.x = x_332;
  let x_334 : f32 = u_xlat4;
  let x_338 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_334 * 2.0f) + -(x_338));
  let x_354 : vec4<f32> = vs_INTERP0;
  let x_357 : f32 = x_55.x_GlobalMipBias.x;
  let x_358 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_354.x, x_354.y), x_357);
  u_xlat1 = x_358;
  let x_360 : f32 = u_xlat1.w;
  let x_362 : f32 = u_xlat0.x;
  u_xlat2 = ((x_360 * x_362) + -0.40000000596046447754f);
  let x_367 : f32 = u_xlat0.x;
  let x_369 : f32 = u_xlat1.w;
  u_xlat0.x = (x_367 * x_369);
  let x_374 : vec4<f32> = u_xlat1;
  let x_380 : vec4<f32> = x_378.Color_C30C7CA3;
  let x_382 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = u_xlat0.x;
  SV_TARGET0.w = x_386;
  let x_390 : f32 = u_xlat2;
  u_xlatb0 = (x_390 < 0.0f);
  let x_392 : bool = u_xlatb0;
  if (((select(0i, 1i, x_392) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}


