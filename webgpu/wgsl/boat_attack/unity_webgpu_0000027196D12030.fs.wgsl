diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_174 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlatu2 : u32;

var<private> u_xlati2 : i32;

var<private> u_xlat14 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat36 : f32;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb14 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_616 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_860 : AdditionalLights;

var<private> u_xlat42 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu14 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var x_116 : f32;
  var x_129 : f32;
  var x_141 : f32;
  var txVec0 : vec3<f32>;
  var x_511 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_995 : f32;
  var x_1006 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb13 = (x_83 == 0.0f);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat25;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_114 : bool = u_xlatb13;
  if (x_114) {
    let x_120 : f32 = u_xlat2.x;
    x_116 = x_120;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[0i].z;
    x_116 = x_125;
  }
  let x_126 : f32 = x_116;
  u_xlat3.x = x_126;
  let x_128 : bool = u_xlatb13;
  if (x_128) {
    let x_134 : f32 = u_xlat2.y;
    x_129 = x_134;
  } else {
    let x_137 : f32 = x_29.unity_MatrixV[1i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.y = x_138;
  let x_140 : bool = u_xlatb13;
  if (x_140) {
    let x_145 : f32 = u_xlat2.z;
    x_141 = x_145;
  } else {
    let x_149 : f32 = x_29.unity_MatrixV[2i].z;
    x_141 = x_149;
  }
  let x_150 : f32 = x_141;
  u_xlat3.z = x_150;
  let x_154 : vec3<f32> = vs_TEXCOORD3;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(x_154, x_155);
  let x_159 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_159);
  let x_162 : vec3<f32> = u_xlat13;
  let x_164 : vec3<f32> = vs_TEXCOORD3;
  u_xlat13 = (vec3<f32>(x_162.x, x_162.x, x_162.x) * x_164);
  let x_166 : vec3<f32> = vs_TEXCOORD7;
  let x_177 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres0;
  let x_180 : vec3<f32> = (x_166 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec3<f32> = vs_TEXCOORD7;
  let x_186 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres1;
  let x_189 : vec3<f32> = (x_184 + -(vec3<f32>(x_186.x, x_186.y, x_186.z)));
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_193 : vec3<f32> = vs_TEXCOORD7;
  let x_196 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_193 + -(vec3<f32>(x_196.x, x_196.y, x_196.z)));
  let x_201 : vec3<f32> = vs_TEXCOORD7;
  let x_203 : vec4<f32> = x_174.x_CascadeShadowSplitSpheres3;
  let x_206 : vec3<f32> = (x_201 + -(vec3<f32>(x_203.x, x_203.y, x_203.z)));
  let x_207 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat2;
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_215 : vec4<f32> = u_xlat4;
  let x_217 : vec4<f32> = u_xlat4;
  u_xlat2.y = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_221 : vec3<f32> = u_xlat5;
  let x_222 : vec3<f32> = u_xlat5;
  u_xlat2.z = dot(x_221, x_222);
  let x_225 : vec4<f32> = u_xlat6;
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat2.w = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_234 : vec4<f32> = u_xlat2;
  let x_236 : vec4<f32> = x_174.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_234 < x_236);
  let x_239 : bool = u_xlatb2.x;
  u_xlat4.x = select(0.0f, 1.0f, x_239);
  let x_244 : bool = u_xlatb2.y;
  u_xlat4.y = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb2.z;
  u_xlat4.z = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb2.w;
  u_xlat4.w = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_256);
  let x_262 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_262);
  let x_266 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_266);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat4;
  let x_273 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_271.y, x_271.z, x_271.w));
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat2;
  let x_279 : vec3<f32> = max(vec3<f32>(x_276.x, x_276.y, x_276.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_279.x, x_279.y, x_279.z);
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(x_282, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_290 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_290) + 4.0f);
  let x_297 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_297);
  let x_301 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_301) << bitcast<u32>(2i));
  let x_305 : vec3<f32> = vs_TEXCOORD7;
  let x_307 : i32 = u_xlati2;
  let x_310 : i32 = u_xlati2;
  let x_314 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_307 + 1i) / 4i)][((x_310 + 1i) % 4i)];
  u_xlat14 = (vec3<f32>(x_305.y, x_305.y, x_305.y) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : i32 = u_xlati2;
  let x_319 : i32 = u_xlati2;
  let x_322 : vec4<f32> = x_174.x_MainLightWorldToShadow[(x_317 / 4i)][(x_319 % 4i)];
  let x_324 : vec3<f32> = vs_TEXCOORD7;
  let x_327 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.x, x_324.x)) + x_327);
  let x_329 : i32 = u_xlati2;
  let x_332 : i32 = u_xlati2;
  let x_336 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_329 + 2i) / 4i)][((x_332 + 2i) % 4i)];
  let x_338 : vec3<f32> = vs_TEXCOORD7;
  let x_341 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.z, x_338.z, x_338.z)) + x_341);
  let x_343 : vec3<f32> = u_xlat14;
  let x_344 : i32 = u_xlati2;
  let x_347 : i32 = u_xlati2;
  let x_351 : vec4<f32> = x_174.x_MainLightWorldToShadow[((x_344 + 3i) / 4i)][((x_347 + 3i) % 4i)];
  let x_353 : vec3<f32> = (x_343 + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_361 : vec4<f32> = vs_TEXCOORD0;
  let x_364 : f32 = x_29.x_GlobalMipBias.x;
  let x_365 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_361.z, x_361.w), x_364);
  u_xlat4 = x_365;
  let x_370 : vec4<f32> = vs_TEXCOORD0;
  let x_373 : f32 = x_29.x_GlobalMipBias.x;
  let x_374 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_370.z, x_370.w), x_373);
  u_xlat5 = vec3<f32>(x_374.x, x_374.y, x_374.z);
  let x_376 : vec4<f32> = u_xlat4;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_384 : vec3<f32> = u_xlat13;
  let x_385 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(x_384, vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : f32 = u_xlat38;
  u_xlat38 = (x_388 + 0.5f);
  let x_391 : f32 = u_xlat38;
  let x_393 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = (vec3<f32>(x_391, x_391, x_391) * x_393);
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_398 : f32 = u_xlat4.w;
  u_xlat38 = max(x_398, 0.00009999999747378752f);
  let x_401 : vec4<f32> = u_xlat4;
  let x_403 : f32 = u_xlat38;
  let x_405 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) / vec3<f32>(x_403, x_403, x_403));
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : f32 = u_xlat1;
  u_xlat38 = ((-(x_408) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_414 : f32 = u_xlat38;
  u_xlat39 = (-(x_414) + 1.0f);
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : f32 = u_xlat38;
  u_xlat5 = (vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_419, x_419, x_419));
  let x_422 : vec4<f32> = u_xlat0;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_427 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : f32 = u_xlat1;
  let x_431 : vec4<f32> = u_xlat0;
  let x_436 : vec3<f32> = ((vec3<f32>(x_429, x_429, x_429) * vec3<f32>(x_431.x, x_431.y, x_431.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_440) + 1.0f);
  let x_443 : f32 = u_xlat1;
  let x_444 : f32 = u_xlat1;
  u_xlat38 = (x_443 * x_444);
  let x_446 : f32 = u_xlat38;
  u_xlat38 = max(x_446, 0.0078125f);
  let x_450 : f32 = u_xlat38;
  let x_451 : f32 = u_xlat38;
  u_xlat40 = (x_450 * x_451);
  let x_455 : f32 = u_xlat0.w;
  let x_456 : f32 = u_xlat39;
  u_xlat36 = (x_455 + x_456);
  let x_458 : f32 = u_xlat36;
  u_xlat36 = clamp(x_458, 0.0f, 1.0f);
  let x_460 : f32 = u_xlat38;
  u_xlat39 = ((x_460 * 4.0f) + 2.0f);
  let x_465 : vec4<f32> = u_xlat2;
  let x_466 : vec2<f32> = vec2<f32>(x_465.x, x_465.y);
  let x_468 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_466.x, x_466.y, x_468);
  let x_480 : vec3<f32> = txVec0;
  let x_482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_480.xy, x_480.z);
  u_xlat2.x = x_482;
  let x_486 : f32 = x_174.x_MainLightShadowParams.x;
  u_xlat14.x = (-(x_486) + 1.0f);
  let x_491 : f32 = u_xlat2.x;
  let x_493 : f32 = x_174.x_MainLightShadowParams.x;
  let x_496 : f32 = u_xlat14.x;
  u_xlat2.x = ((x_491 * x_493) + x_496);
  let x_501 : f32 = u_xlat2.z;
  u_xlatb14 = (0.0f >= x_501);
  let x_505 : f32 = u_xlat2.z;
  u_xlatb26 = (x_505 >= 1.0f);
  let x_507 : bool = u_xlatb26;
  let x_508 : bool = u_xlatb14;
  u_xlatb14 = (x_507 | x_508);
  let x_510 : bool = u_xlatb14;
  if (x_510) {
    x_511 = 1.0f;
  } else {
    let x_516 : f32 = u_xlat2.x;
    x_511 = x_516;
  }
  let x_517 : f32 = x_511;
  u_xlat2.x = x_517;
  let x_519 : vec3<f32> = vs_TEXCOORD7;
  let x_521 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_523 : vec3<f32> = (x_519 + -(x_521));
  let x_524 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat6;
  let x_528 : vec4<f32> = u_xlat6;
  u_xlat14.x = dot(vec3<f32>(x_526.x, x_526.y, x_526.z), vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_534 : f32 = u_xlat14.x;
  let x_536 : f32 = x_174.x_MainLightShadowParams.z;
  let x_539 : f32 = x_174.x_MainLightShadowParams.w;
  u_xlat26 = ((x_534 * x_536) + x_539);
  let x_541 : f32 = u_xlat26;
  u_xlat26 = clamp(x_541, 0.0f, 1.0f);
  let x_545 : f32 = u_xlat2.x;
  u_xlat41 = (-(x_545) + 1.0f);
  let x_548 : f32 = u_xlat26;
  let x_549 : f32 = u_xlat41;
  let x_552 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_548 * x_549) + x_552);
  let x_555 : vec3<f32> = u_xlat3;
  let x_557 : vec3<f32> = u_xlat13;
  u_xlat26 = dot(-(x_555), x_557);
  let x_559 : f32 = u_xlat26;
  let x_560 : f32 = u_xlat26;
  u_xlat26 = (x_559 + x_560);
  let x_562 : vec3<f32> = u_xlat13;
  let x_563 : f32 = u_xlat26;
  let x_567 : vec3<f32> = u_xlat3;
  let x_569 : vec3<f32> = ((x_562 * -(vec3<f32>(x_563, x_563, x_563))) + -(x_567));
  let x_570 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec3<f32> = u_xlat13;
  let x_573 : vec3<f32> = u_xlat3;
  u_xlat26 = dot(x_572, x_573);
  let x_575 : f32 = u_xlat26;
  u_xlat26 = clamp(x_575, 0.0f, 1.0f);
  let x_577 : f32 = u_xlat26;
  u_xlat26 = (-(x_577) + 1.0f);
  let x_580 : f32 = u_xlat26;
  let x_581 : f32 = u_xlat26;
  u_xlat26 = (x_580 * x_581);
  let x_583 : f32 = u_xlat26;
  let x_584 : f32 = u_xlat26;
  u_xlat26 = (x_583 * x_584);
  let x_586 : f32 = u_xlat1;
  u_xlat41 = ((-(x_586) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_592 : f32 = u_xlat1;
  let x_593 : f32 = u_xlat41;
  u_xlat1 = (x_592 * x_593);
  let x_595 : f32 = u_xlat1;
  u_xlat1 = (x_595 * 6.0f);
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : f32 = u_xlat1;
  let x_609 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_606.x, x_606.y, x_606.z), x_608);
  u_xlat6 = x_609;
  let x_611 : f32 = u_xlat6.w;
  u_xlat1 = (x_611 + -1.0f);
  let x_618 : f32 = x_616.unity_SpecCube0_HDR.w;
  let x_619 : f32 = u_xlat1;
  u_xlat1 = ((x_618 * x_619) + 1.0f);
  let x_622 : f32 = u_xlat1;
  u_xlat1 = max(x_622, 0.0f);
  let x_624 : f32 = u_xlat1;
  u_xlat1 = log2(x_624);
  let x_626 : f32 = u_xlat1;
  let x_628 : f32 = x_616.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_626 * x_628);
  let x_630 : f32 = u_xlat1;
  u_xlat1 = exp2(x_630);
  let x_632 : f32 = u_xlat1;
  let x_634 : f32 = x_616.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_632 * x_634);
  let x_636 : vec4<f32> = u_xlat6;
  let x_638 : f32 = u_xlat1;
  let x_640 : vec3<f32> = (vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(x_638, x_638, x_638));
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_645 : f32 = u_xlat38;
  let x_647 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_645, x_645) * vec2<f32>(x_647, x_647)) + vec2<f32>(-1.0f, 1.0f));
  let x_653 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_653);
  let x_656 : vec4<f32> = u_xlat0;
  let x_659 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_656.x, x_656.y, x_656.z)) + vec3<f32>(x_659, x_659, x_659));
  let x_662 : f32 = u_xlat26;
  let x_664 : vec3<f32> = u_xlat19;
  let x_666 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_662, x_662, x_662) * x_664) + vec3<f32>(x_666.x, x_666.y, x_666.z));
  let x_669 : f32 = u_xlat1;
  let x_671 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_669, x_669, x_669) * x_671);
  let x_673 : vec4<f32> = u_xlat6;
  let x_675 : vec3<f32> = u_xlat19;
  let x_676 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) * x_675);
  let x_677 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat4;
  let x_681 : vec3<f32> = u_xlat5;
  let x_683 : vec4<f32> = u_xlat6;
  let x_685 : vec3<f32> = ((vec3<f32>(x_679.x, x_679.y, x_679.z) * x_681) + vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_689 : f32 = u_xlat2.x;
  let x_691 : f32 = x_616.unity_LightData.z;
  u_xlat36 = (x_689 * x_691);
  let x_693 : vec3<f32> = u_xlat13;
  let x_695 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_693, vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : f32 = u_xlat1;
  u_xlat1 = clamp(x_698, 0.0f, 1.0f);
  let x_700 : f32 = u_xlat36;
  let x_701 : f32 = u_xlat1;
  u_xlat36 = (x_700 * x_701);
  let x_703 : f32 = u_xlat36;
  let x_706 : vec4<f32> = x_29.x_MainLightColor;
  let x_708 : vec3<f32> = (vec3<f32>(x_703, x_703, x_703) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_708.x, x_709.y, x_708.y, x_708.z);
  let x_711 : vec3<f32> = u_xlat3;
  let x_713 : vec4<f32> = x_29.x_MainLightPosition;
  let x_715 : vec3<f32> = (x_711 + vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat6;
  let x_720 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_718.x, x_718.y, x_718.z), vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : f32 = u_xlat36;
  u_xlat36 = max(x_723, 1.17549435e-38f);
  let x_726 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_726);
  let x_728 : f32 = u_xlat36;
  let x_730 : vec4<f32> = u_xlat6;
  let x_732 : vec3<f32> = (vec3<f32>(x_728, x_728, x_728) * vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec3<f32> = u_xlat13;
  let x_736 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_735, vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : f32 = u_xlat36;
  u_xlat36 = clamp(x_739, 0.0f, 1.0f);
  let x_742 : vec4<f32> = x_29.x_MainLightPosition;
  let x_744 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : f32 = u_xlat1;
  u_xlat1 = clamp(x_747, 0.0f, 1.0f);
  let x_749 : f32 = u_xlat36;
  let x_750 : f32 = u_xlat36;
  u_xlat36 = (x_749 * x_750);
  let x_752 : f32 = u_xlat36;
  let x_754 : f32 = u_xlat7.x;
  u_xlat36 = ((x_752 * x_754) + 1.00001001358032226562f);
  let x_758 : f32 = u_xlat1;
  let x_759 : f32 = u_xlat1;
  u_xlat1 = (x_758 * x_759);
  let x_761 : f32 = u_xlat36;
  let x_762 : f32 = u_xlat36;
  u_xlat36 = (x_761 * x_762);
  let x_764 : f32 = u_xlat1;
  u_xlat1 = max(x_764, 0.10000000149011611938f);
  let x_767 : f32 = u_xlat36;
  let x_768 : f32 = u_xlat1;
  u_xlat36 = (x_767 * x_768);
  let x_770 : f32 = u_xlat39;
  let x_771 : f32 = u_xlat36;
  u_xlat36 = (x_770 * x_771);
  let x_773 : f32 = u_xlat40;
  let x_774 : f32 = u_xlat36;
  u_xlat36 = (x_773 / x_774);
  let x_776 : vec4<f32> = u_xlat0;
  let x_778 : f32 = u_xlat36;
  let x_781 : vec3<f32> = u_xlat5;
  let x_782 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(x_778, x_778, x_778)) + x_781);
  let x_783 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_786 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_788 : f32 = x_616.unity_LightData.y;
  u_xlat36 = min(x_786, x_788);
  let x_791 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_791));
  let x_795 : f32 = u_xlat14.x;
  let x_798 : f32 = x_174.x_AdditionalShadowFadeParams.x;
  let x_801 : f32 = x_174.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_795 * x_798) + x_801);
  let x_803 : f32 = u_xlat1;
  u_xlat1 = clamp(x_803, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_815 : u32 = u_xlatu_loop_1;
    let x_816 : u32 = u_xlatu36;
    if ((x_815 < x_816)) {
    } else {
      break;
    }
    let x_819 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_819 >> 2u);
    let x_822 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_822 & 3u));
    let x_825 : u32 = u_xlatu41;
    let x_828 : vec4<f32> = x_616.unity_LightIndices[bitcast<i32>(x_825)];
    let x_838 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_843 : vec4<u32> = indexable[x_838];
    u_xlat41 = dot(x_828, bitcast<vec4<f32>>(x_843));
    let x_847 : f32 = u_xlat41;
    u_xlati41 = i32(x_847);
    let x_850 : vec3<f32> = vs_TEXCOORD7;
    let x_861 : i32 = u_xlati41;
    let x_863 : vec4<f32> = x_860.x_AdditionalLightsPosition[x_861];
    let x_866 : i32 = u_xlati41;
    let x_868 : vec4<f32> = x_860.x_AdditionalLightsPosition[x_866];
    u_xlat8 = ((-(x_850) * vec3<f32>(x_863.w, x_863.w, x_863.w)) + vec3<f32>(x_868.x, x_868.y, x_868.z));
    let x_872 : vec3<f32> = u_xlat8;
    let x_873 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_872, x_873);
    let x_875 : f32 = u_xlat42;
    u_xlat42 = max(x_875, 0.00006103515625f);
    let x_879 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_879);
    let x_882 : f32 = u_xlat44;
    let x_884 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_882, x_882, x_882) * x_884);
    let x_887 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_887);
    let x_889 : f32 = u_xlat42;
    let x_890 : i32 = u_xlati41;
    let x_892 : f32 = x_860.x_AdditionalLightsAttenuation[x_890].x;
    u_xlat42 = (x_889 * x_892);
    let x_894 : f32 = u_xlat42;
    let x_896 : f32 = u_xlat42;
    u_xlat42 = ((-(x_894) * x_896) + 1.0f);
    let x_899 : f32 = u_xlat42;
    u_xlat42 = max(x_899, 0.0f);
    let x_901 : f32 = u_xlat42;
    let x_902 : f32 = u_xlat42;
    u_xlat42 = (x_901 * x_902);
    let x_904 : f32 = u_xlat42;
    let x_905 : f32 = u_xlat45;
    u_xlat42 = (x_904 * x_905);
    let x_907 : i32 = u_xlati41;
    let x_909 : vec4<f32> = x_860.x_AdditionalLightsSpotDir[x_907];
    let x_911 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_909.x, x_909.y, x_909.z), x_911);
    let x_913 : f32 = u_xlat45;
    let x_914 : i32 = u_xlati41;
    let x_916 : f32 = x_860.x_AdditionalLightsAttenuation[x_914].z;
    let x_918 : i32 = u_xlati41;
    let x_920 : f32 = x_860.x_AdditionalLightsAttenuation[x_918].w;
    u_xlat45 = ((x_913 * x_916) + x_920);
    let x_922 : f32 = u_xlat45;
    u_xlat45 = clamp(x_922, 0.0f, 1.0f);
    let x_924 : f32 = u_xlat45;
    let x_925 : f32 = u_xlat45;
    u_xlat45 = (x_924 * x_925);
    let x_927 : f32 = u_xlat42;
    let x_928 : f32 = u_xlat45;
    u_xlat42 = (x_927 * x_928);
    let x_932 : i32 = u_xlati41;
    let x_934 : f32 = x_174.x_AdditionalShadowParams[x_932].w;
    u_xlati45 = i32(x_934);
    let x_939 : i32 = u_xlati45;
    u_xlatb10.x = (x_939 >= 0i);
    let x_943 : bool = u_xlatb10.x;
    if (x_943) {
      let x_947 : i32 = u_xlati41;
      let x_949 : f32 = x_174.x_AdditionalShadowParams[x_947].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_949, x_949, x_949, x_949))));
      let x_955 : bool = u_xlatb10.x;
      if (x_955) {
        let x_958 : vec3<f32> = u_xlat9;
        let x_961 : vec3<f32> = u_xlat9;
        let x_964 : vec4<bool> = (abs(vec4<f32>(x_958.z, x_958.z, x_958.y, x_958.z)) >= abs(vec4<f32>(x_961.x, x_961.y, x_961.x, x_961.x)));
        u_xlatb10 = vec3<bool>(x_964.x, x_964.y, x_964.z);
        let x_967 : bool = u_xlatb10.y;
        let x_969 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_967 & x_969);
        let x_973 : vec3<f32> = u_xlat9;
        let x_976 : vec4<bool> = (-(vec4<f32>(x_973.z, x_973.y, x_973.x, x_973.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_976.x, x_976.y, x_976.z);
        let x_980 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_980);
        let x_985 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_985);
        let x_990 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_990);
        let x_994 : bool = u_xlatb10.z;
        if (x_994) {
          let x_999 : f32 = u_xlat22.z;
          x_995 = x_999;
        } else {
          let x_1001 : f32 = u_xlat11;
          x_995 = x_1001;
        }
        let x_1002 : f32 = x_995;
        u_xlat34 = x_1002;
        let x_1005 : bool = u_xlatb10.x;
        if (x_1005) {
          let x_1010 : f32 = u_xlat22.x;
          x_1006 = x_1010;
        } else {
          let x_1012 : f32 = u_xlat34;
          x_1006 = x_1012;
        }
        let x_1013 : f32 = x_1006;
        u_xlat10.x = x_1013;
        let x_1015 : i32 = u_xlati41;
        let x_1017 : f32 = x_174.x_AdditionalShadowParams[x_1015].w;
        u_xlat22.x = trunc(x_1017);
        let x_1021 : f32 = u_xlat10.x;
        let x_1023 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1021 + x_1023);
        let x_1027 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1027);
      }
      let x_1029 : i32 = u_xlati45;
      u_xlati45 = (x_1029 << bitcast<u32>(2i));
      let x_1031 : vec3<f32> = vs_TEXCOORD7;
      let x_1034 : i32 = u_xlati45;
      let x_1037 : i32 = u_xlati45;
      let x_1041 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_1034 + 1i) / 4i)][((x_1037 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1031.y, x_1031.y, x_1031.y, x_1031.y) * x_1041);
      let x_1043 : i32 = u_xlati45;
      let x_1045 : i32 = u_xlati45;
      let x_1048 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[(x_1043 / 4i)][(x_1045 % 4i)];
      let x_1049 : vec3<f32> = vs_TEXCOORD7;
      let x_1052 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1048 * vec4<f32>(x_1049.x, x_1049.x, x_1049.x, x_1049.x)) + x_1052);
      let x_1054 : i32 = u_xlati45;
      let x_1057 : i32 = u_xlati45;
      let x_1061 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_1054 + 2i) / 4i)][((x_1057 + 2i) % 4i)];
      let x_1062 : vec3<f32> = vs_TEXCOORD7;
      let x_1065 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1061 * vec4<f32>(x_1062.z, x_1062.z, x_1062.z, x_1062.z)) + x_1065);
      let x_1067 : vec4<f32> = u_xlat10;
      let x_1068 : i32 = u_xlati45;
      let x_1071 : i32 = u_xlati45;
      let x_1075 : vec4<f32> = x_174.x_AdditionalLightsWorldToShadow[((x_1068 + 3i) / 4i)][((x_1071 + 3i) % 4i)];
      u_xlat10 = (x_1067 + x_1075);
      let x_1077 : vec4<f32> = u_xlat10;
      let x_1079 : vec4<f32> = u_xlat10;
      let x_1081 : vec3<f32> = (vec3<f32>(x_1077.x, x_1077.y, x_1077.z) / vec3<f32>(x_1079.w, x_1079.w, x_1079.w));
      let x_1082 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
      let x_1085 : vec4<f32> = u_xlat10;
      let x_1086 : vec2<f32> = vec2<f32>(x_1085.x, x_1085.y);
      let x_1088 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
      let x_1096 : vec3<f32> = txVec1;
      let x_1098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1096.xy, x_1096.z);
      u_xlat45 = x_1098;
      let x_1099 : i32 = u_xlati41;
      let x_1101 : f32 = x_174.x_AdditionalShadowParams[x_1099].x;
      u_xlat10.x = (1.0f + -(x_1101));
      let x_1105 : f32 = u_xlat45;
      let x_1106 : i32 = u_xlati41;
      let x_1108 : f32 = x_174.x_AdditionalShadowParams[x_1106].x;
      let x_1111 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1105 * x_1108) + x_1111);
      let x_1114 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1114);
      let x_1119 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1119 >= 1.0f);
      let x_1121 : bool = u_xlatb22;
      let x_1123 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1121 | x_1123);
      let x_1127 : bool = u_xlatb10.x;
      let x_1128 : f32 = u_xlat45;
      u_xlat45 = select(x_1128, 1.0f, x_1127);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1131 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1131) + 1.0f);
    let x_1135 : f32 = u_xlat1;
    let x_1137 : f32 = u_xlat10.x;
    let x_1139 : f32 = u_xlat45;
    u_xlat45 = ((x_1135 * x_1137) + x_1139);
    let x_1141 : f32 = u_xlat42;
    let x_1142 : f32 = u_xlat45;
    u_xlat42 = (x_1141 * x_1142);
    let x_1144 : vec3<f32> = u_xlat13;
    let x_1145 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1144, x_1145);
    let x_1147 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1147, 0.0f, 1.0f);
    let x_1149 : f32 = u_xlat42;
    let x_1150 : f32 = u_xlat45;
    u_xlat42 = (x_1149 * x_1150);
    let x_1152 : f32 = u_xlat42;
    let x_1154 : i32 = u_xlati41;
    let x_1156 : vec4<f32> = x_860.x_AdditionalLightsColor[x_1154];
    let x_1158 : vec3<f32> = (vec3<f32>(x_1152, x_1152, x_1152) * vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
    let x_1159 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
    let x_1161 : vec3<f32> = u_xlat8;
    let x_1162 : f32 = u_xlat44;
    let x_1165 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1161 * vec3<f32>(x_1162, x_1162, x_1162)) + x_1165);
    let x_1167 : vec3<f32> = u_xlat8;
    let x_1168 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1167, x_1168);
    let x_1170 : f32 = u_xlat41;
    u_xlat41 = max(x_1170, 1.17549435e-38f);
    let x_1172 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1172);
    let x_1174 : f32 = u_xlat41;
    let x_1176 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1174, x_1174, x_1174) * x_1176);
    let x_1178 : vec3<f32> = u_xlat13;
    let x_1179 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_1178, x_1179);
    let x_1181 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1181, 0.0f, 1.0f);
    let x_1183 : vec3<f32> = u_xlat9;
    let x_1184 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1183, x_1184);
    let x_1186 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1186, 0.0f, 1.0f);
    let x_1188 : f32 = u_xlat41;
    let x_1189 : f32 = u_xlat41;
    u_xlat41 = (x_1188 * x_1189);
    let x_1191 : f32 = u_xlat41;
    let x_1193 : f32 = u_xlat7.x;
    u_xlat41 = ((x_1191 * x_1193) + 1.00001001358032226562f);
    let x_1196 : f32 = u_xlat42;
    let x_1197 : f32 = u_xlat42;
    u_xlat42 = (x_1196 * x_1197);
    let x_1199 : f32 = u_xlat41;
    let x_1200 : f32 = u_xlat41;
    u_xlat41 = (x_1199 * x_1200);
    let x_1202 : f32 = u_xlat42;
    u_xlat42 = max(x_1202, 0.10000000149011611938f);
    let x_1204 : f32 = u_xlat41;
    let x_1205 : f32 = u_xlat42;
    u_xlat41 = (x_1204 * x_1205);
    let x_1207 : f32 = u_xlat39;
    let x_1208 : f32 = u_xlat41;
    u_xlat41 = (x_1207 * x_1208);
    let x_1210 : f32 = u_xlat40;
    let x_1211 : f32 = u_xlat41;
    u_xlat41 = (x_1210 / x_1211);
    let x_1213 : vec4<f32> = u_xlat0;
    let x_1215 : f32 = u_xlat41;
    let x_1218 : vec3<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_1213.x, x_1213.y, x_1213.z) * vec3<f32>(x_1215, x_1215, x_1215)) + x_1218);
    let x_1220 : vec3<f32> = u_xlat8;
    let x_1221 : vec4<f32> = u_xlat10;
    let x_1224 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1220 * vec3<f32>(x_1221.x, x_1221.y, x_1221.z)) + x_1224);

    continuing {
      let x_1226 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1226 + bitcast<u32>(1i));
    }
  }
  let x_1228 : vec4<f32> = u_xlat6;
  let x_1230 : vec4<f32> = u_xlat2;
  let x_1233 : vec4<f32> = u_xlat4;
  let x_1235 : vec3<f32> = ((vec3<f32>(x_1228.x, x_1228.y, x_1228.z) * vec3<f32>(x_1230.x, x_1230.z, x_1230.w)) + vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1240 : vec3<f32> = u_xlat19;
  let x_1241 : vec4<f32> = u_xlat0;
  let x_1243 : vec3<f32> = (x_1240 + vec3<f32>(x_1241.x, x_1241.y, x_1241.z));
  let x_1244 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


