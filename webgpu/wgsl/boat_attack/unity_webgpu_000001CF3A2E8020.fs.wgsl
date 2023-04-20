diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_130 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat38 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlatb1 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb13 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_494 : UnityPerDraw;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatu3 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati3 : i32;

@group(1) @binding(1) var<uniform> x_1115 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> u_xlatu38 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_406 : f32;
  var x_455 : f32;
  var x_608 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1258 : f32;
  var x_1269 : f32;
  var txVec1 : vec3<f32>;
  var x_1386 : f32;
  var x_1566 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_12, x_13);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_20);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_25);
  let x_28 : vec3<f32> = u_xlat0;
  let x_30 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_28.x, x_28.x, x_28.x) * x_30);
  let x_48 : vec4<f32> = vs_INTERP5;
  let x_58 : f32 = x_53.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_48.x, x_48.y), x_58);
  u_xlat1 = x_59;
  let x_61 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = x_65.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : vec4<f32> = vs_INTERP5;
  let x_81 : f32 = x_53.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat3 = vec4<f32>(x_82.w, x_82.x, x_82.y, x_82.z);
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_85.y, x_85.z, x_85.w, x_85.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_94 : vec4<f32> = u_xlat4;
  let x_95 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat36;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat36 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat36;
  u_xlat36 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat36;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = (vec3<f32>(x_114, x_114, x_114) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_122 : vec3<f32> = vs_INTERP8;
  let x_132 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres0;
  let x_135 : vec3<f32> = (x_122 + -(vec3<f32>(x_132.x, x_132.y, x_132.z)));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec3<f32> = vs_INTERP8;
  let x_142 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres1;
  let x_145 : vec3<f32> = (x_139 + -(vec3<f32>(x_142.x, x_142.y, x_142.z)));
  let x_146 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec3<f32> = vs_INTERP8;
  let x_152 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres2;
  let x_155 : vec3<f32> = (x_149 + -(vec3<f32>(x_152.x, x_152.y, x_152.z)));
  let x_156 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec3<f32> = vs_INTERP8;
  let x_162 : vec4<f32> = x_130.x_CascadeShadowSplitSpheres3;
  let x_165 : vec3<f32> = (x_159 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat4;
  let x_170 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec4<f32> = u_xlat5;
  let x_176 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat6;
  let x_182 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_187 : vec4<f32> = u_xlat7;
  let x_189 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_198 : vec4<f32> = u_xlat4;
  let x_201 : vec4<f32> = x_130.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_198 < x_201);
  let x_205 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_205);
  let x_210 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_210);
  let x_214 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_214);
  let x_218 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_218);
  let x_222 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_222);
  let x_227 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_227);
  let x_231 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_231);
  let x_234 : vec4<f32> = u_xlat4;
  let x_236 : vec4<f32> = u_xlat5;
  let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) + vec3<f32>(x_236.y, x_236.z, x_236.w));
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat4;
  let x_244 : vec3<f32> = max(vec3<f32>(x_241.x, x_241.y, x_241.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_245 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_245.x, x_244.x, x_244.y, x_244.z);
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat36 = dot(x_247, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_252 : f32 = u_xlat36;
  u_xlat36 = (-(x_252) + 4.0f);
  let x_257 : f32 = u_xlat36;
  u_xlatu36 = u32(x_257);
  let x_261 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_261) << bitcast<u32>(2i));
  let x_264 : vec3<f32> = vs_INTERP8;
  let x_266 : i32 = u_xlati36;
  let x_269 : i32 = u_xlati36;
  let x_273 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_266 + 1i) / 4i)][((x_269 + 1i) % 4i)];
  let x_275 : vec3<f32> = (vec3<f32>(x_264.y, x_264.y, x_264.y) * vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : i32 = u_xlati36;
  let x_280 : i32 = u_xlati36;
  let x_283 : vec4<f32> = x_130.x_MainLightWorldToShadow[(x_278 / 4i)][(x_280 % 4i)];
  let x_285 : vec3<f32> = vs_INTERP8;
  let x_288 : vec4<f32> = u_xlat4;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : i32 = u_xlati36;
  let x_296 : i32 = u_xlati36;
  let x_300 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_293 + 2i) / 4i)][((x_296 + 2i) % 4i)];
  let x_302 : vec3<f32> = vs_INTERP8;
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : i32 = u_xlati36;
  let x_315 : i32 = u_xlati36;
  let x_319 : vec4<f32> = x_130.x_MainLightWorldToShadow[((x_312 + 3i) / 4i)][((x_315 + 3i) % 4i)];
  let x_321 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_326 : vec4<f32> = u_xlat4;
  let x_327 : vec2<f32> = vec2<f32>(x_326.x, x_326.y);
  let x_329 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_327.x, x_327.y, x_329);
  let x_341 : vec3<f32> = txVec0;
  let x_343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_341.xy, x_341.z);
  u_xlat36 = x_343;
  let x_347 : f32 = x_130.x_MainLightShadowParams.x;
  u_xlat38 = (-(x_347) + 1.0f);
  let x_350 : f32 = u_xlat36;
  let x_352 : f32 = x_130.x_MainLightShadowParams.x;
  let x_354 : f32 = u_xlat38;
  u_xlat36 = ((x_350 * x_352) + x_354);
  let x_358 : f32 = u_xlat4.z;
  u_xlatb38 = (0.0f >= x_358);
  let x_361 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_361 >= 1.0f);
  let x_364 : bool = u_xlatb38;
  let x_366 : bool = u_xlatb4.x;
  u_xlatb38 = (x_364 | x_366);
  let x_368 : bool = u_xlatb38;
  let x_369 : f32 = u_xlat36;
  u_xlat36 = select(x_369, 1.0f, x_368);
  let x_371 : vec3<f32> = u_xlat0;
  let x_373 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_371, -(vec3<f32>(x_373.x, x_373.y, x_373.z)));
  let x_379 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_379, 0.0f, 1.0f);
  let x_382 : f32 = u_xlat36;
  let x_385 : vec4<f32> = x_53.x_MainLightColor;
  let x_387 : vec3<f32> = (vec3<f32>(x_382, x_382, x_382) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec3<f32> = u_xlat0;
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec3<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_395 * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_401 : f32 = u_xlat1.w;
  u_xlatb1 = (x_401 >= 0.40000000596046447754f);
  let x_404 : bool = u_xlatb1;
  if (x_404) {
    let x_410 : f32 = u_xlat1.w;
    x_406 = x_410;
  } else {
    x_406 = 0.0f;
  }
  let x_412 : f32 = x_406;
  u_xlat1.x = x_412;
  let x_416 : f32 = u_xlat1.w;
  u_xlat13.x = (x_416 + -0.40000000596046447754f);
  let x_422 : f32 = u_xlat1.w;
  u_xlat25 = dpdxCoarse(x_422);
  let x_426 : f32 = u_xlat1.w;
  u_xlat37 = dpdyCoarse(x_426);
  let x_428 : f32 = u_xlat37;
  let x_430 : f32 = u_xlat25;
  u_xlat25 = (abs(x_428) + abs(x_430));
  let x_433 : f32 = u_xlat25;
  u_xlat25 = max(x_433, 0.00009999999747378752f);
  let x_437 : f32 = u_xlat13.x;
  let x_438 : f32 = u_xlat25;
  u_xlat13.x = (x_437 / x_438);
  let x_442 : f32 = u_xlat13.x;
  u_xlat13.x = (x_442 + 0.5f);
  let x_447 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_447, 0.0f, 1.0f);
  let x_452 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb25 = !((x_452 == 0.0f));
  let x_454 : bool = u_xlatb25;
  if (x_454) {
    let x_459 : f32 = u_xlat13.x;
    x_455 = x_459;
  } else {
    let x_462 : f32 = u_xlat1.x;
    x_455 = x_462;
  }
  let x_463 : f32 = x_455;
  u_xlat1.x = x_463;
  let x_466 : f32 = u_xlat1.x;
  u_xlat13.x = (x_466 + -0.00009999999747378752f);
  let x_474 : f32 = u_xlat13.x;
  u_xlatb13.x = (x_474 < 0.0f);
  let x_478 : bool = u_xlatb13.x;
  if (((select(0i, 1i, x_478) * -1i) != 0i)) {
    discard;
  }
  let x_488 : f32 = vs_INTERP4.w;
  u_xlatb13.x = (0.0f < x_488);
  let x_496 : f32 = x_494.unity_WorldTransformParams.w;
  u_xlatb13.z = (x_496 >= 0.0f);
  let x_500 : bool = u_xlatb13.x;
  u_xlat13.x = select(-1.0f, 1.0f, x_500);
  let x_504 : bool = u_xlatb13.z;
  u_xlat13.z = select(-1.0f, 1.0f, x_504);
  let x_508 : f32 = u_xlat13.z;
  let x_510 : f32 = u_xlat13.x;
  u_xlat13.x = (x_508 * x_510);
  let x_513 : vec4<f32> = vs_INTERP4;
  let x_515 : vec3<f32> = vs_INTERP9;
  let x_517 : vec3<f32> = (vec3<f32>(x_513.y, x_513.z, x_513.x) * vec3<f32>(x_515.z, x_515.x, x_515.y));
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec3<f32> = vs_INTERP9;
  let x_522 : vec4<f32> = vs_INTERP4;
  let x_525 : vec4<f32> = u_xlat4;
  let x_528 : vec3<f32> = ((vec3<f32>(x_520.y, x_520.z, x_520.x) * vec3<f32>(x_522.z, x_522.x, x_522.y)) + -(vec3<f32>(x_525.x, x_525.y, x_525.z)));
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec3<f32> = u_xlat13;
  let x_533 : vec4<f32> = u_xlat4;
  let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.x, x_531.x) * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec3<f32> = u_xlat15;
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec3<f32> = (vec3<f32>(x_538.y, x_538.y, x_538.y) * vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec3<f32> = u_xlat15;
  let x_547 : vec4<f32> = vs_INTERP4;
  let x_550 : vec4<f32> = u_xlat4;
  let x_552 : vec3<f32> = ((vec3<f32>(x_545.x, x_545.x, x_545.x) * vec3<f32>(x_547.x, x_547.y, x_547.z)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec3<f32> = u_xlat15;
  let x_557 : vec3<f32> = vs_INTERP9;
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat15 = ((vec3<f32>(x_555.z, x_555.z, x_555.z) * x_557) + vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec3<f32> = u_xlat15;
  let x_563 : vec3<f32> = u_xlat15;
  u_xlat13.x = dot(x_562, x_563);
  let x_567 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_567);
  let x_570 : vec3<f32> = u_xlat13;
  let x_572 : vec3<f32> = u_xlat15;
  let x_573 : vec3<f32> = (vec3<f32>(x_570.x, x_570.x, x_570.x) * x_572);
  let x_574 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_578 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb13.x = (x_578 == 0.0f);
  let x_581 : vec3<f32> = vs_INTERP8;
  let x_585 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_581) + x_585);
  let x_587 : vec3<f32> = u_xlat15;
  let x_588 : vec3<f32> = u_xlat15;
  u_xlat37 = dot(x_587, x_588);
  let x_590 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_590);
  let x_592 : f32 = u_xlat37;
  let x_594 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_592, x_592, x_592) * x_594);
  let x_598 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat5.x = x_598;
  let x_601 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat5.y = x_601;
  let x_604 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat5.z = x_604;
  let x_607 : bool = u_xlatb13.x;
  if (x_607) {
    let x_611 : vec3<f32> = u_xlat15;
    x_608 = x_611;
  } else {
    let x_613 : vec4<f32> = u_xlat5;
    x_608 = vec3<f32>(x_613.x, x_613.y, x_613.z);
  }
  let x_615 : vec3<f32> = x_608;
  u_xlat15 = x_615;
  let x_617 : f32 = vs_INTERP8.y;
  let x_619 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat13.x = (x_617 * x_619);
  let x_623 : f32 = x_53.unity_MatrixV[0i].z;
  let x_625 : f32 = vs_INTERP8.x;
  let x_628 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_623 * x_625) + x_628);
  let x_632 : f32 = x_53.unity_MatrixV[2i].z;
  let x_634 : f32 = vs_INTERP8.z;
  let x_637 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_632 * x_634) + x_637);
  let x_641 : f32 = u_xlat13.x;
  let x_643 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat13.x = (x_641 + x_643);
  let x_647 : f32 = u_xlat13.x;
  let x_651 : f32 = x_53.x_ProjectionParams.y;
  u_xlat13.x = (-(x_647) + -(x_651));
  let x_656 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_656, 0.0f);
  let x_660 : f32 = u_xlat13.x;
  let x_662 : f32 = x_53.unity_FogParams.x;
  u_xlat13.x = (x_660 * x_662);
  u_xlat4.w = 1.0f;
  let x_668 : vec4<f32> = x_494.unity_SHAr;
  let x_669 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_668, x_669);
  let x_674 : vec4<f32> = x_494.unity_SHAg;
  let x_675 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_674, x_675);
  let x_680 : vec4<f32> = x_494.unity_SHAb;
  let x_681 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_680, x_681);
  let x_684 : vec4<f32> = u_xlat4;
  let x_686 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_684.y, x_684.z, x_684.z, x_684.x) * vec4<f32>(x_686.x, x_686.y, x_686.z, x_686.z));
  let x_691 : vec4<f32> = x_494.unity_SHBr;
  let x_692 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_691, x_692);
  let x_697 : vec4<f32> = x_494.unity_SHBg;
  let x_698 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_697, x_698);
  let x_703 : vec4<f32> = x_494.unity_SHBb;
  let x_704 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_703, x_704);
  let x_708 : f32 = u_xlat4.y;
  let x_710 : f32 = u_xlat4.y;
  u_xlat37 = (x_708 * x_710);
  let x_713 : f32 = u_xlat4.x;
  let x_715 : f32 = u_xlat4.x;
  let x_717 : f32 = u_xlat37;
  u_xlat37 = ((x_713 * x_715) + -(x_717));
  let x_722 : vec4<f32> = x_494.unity_SHC;
  let x_724 : f32 = u_xlat37;
  let x_727 : vec4<f32> = u_xlat7;
  let x_729 : vec3<f32> = ((vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_724, x_724, x_724)) + vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat5;
  let x_734 : vec4<f32> = u_xlat6;
  let x_736 : vec3<f32> = (vec3<f32>(x_732.x, x_732.y, x_732.z) + vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat5;
  let x_741 : vec3<f32> = max(vec3<f32>(x_739.x, x_739.y, x_739.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_742 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_745 : f32 = u_xlat3.x;
  u_xlat3.x = x_745;
  let x_748 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_748, 0.0f, 1.0f);
  let x_752 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_752, 1.0f);
  let x_755 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_755 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_760 : f32 = u_xlat3.x;
  u_xlat37 = (-(x_760) + 1.0f);
  let x_763 : f32 = u_xlat37;
  let x_764 : f32 = u_xlat37;
  u_xlat38 = (x_763 * x_764);
  let x_766 : f32 = u_xlat38;
  u_xlat38 = max(x_766, 0.0078125f);
  let x_770 : f32 = u_xlat38;
  let x_771 : f32 = u_xlat38;
  u_xlat40 = (x_770 * x_771);
  let x_774 : f32 = u_xlat3.x;
  u_xlat3.x = (x_774 + 0.04000002145767211914f);
  let x_779 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_779, 1.0f);
  let x_783 : f32 = u_xlat38;
  u_xlat41 = ((x_783 * 4.0f) + 2.0f);
  let x_787 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_787, 1.0f);
  let x_791 : vec3<f32> = vs_INTERP8;
  let x_793 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat18 = (x_791 + -(x_793));
  let x_796 : vec3<f32> = u_xlat18;
  let x_797 : vec3<f32> = u_xlat18;
  u_xlat18.x = dot(x_796, x_797);
  let x_802 : f32 = u_xlat18.x;
  let x_804 : f32 = x_130.x_MainLightShadowParams.z;
  let x_807 : f32 = x_130.x_MainLightShadowParams.w;
  u_xlat30 = ((x_802 * x_804) + x_807);
  let x_809 : f32 = u_xlat30;
  u_xlat30 = clamp(x_809, 0.0f, 1.0f);
  let x_812 : f32 = u_xlat36;
  u_xlat42 = (-(x_812) + 1.0f);
  let x_815 : f32 = u_xlat30;
  let x_816 : f32 = u_xlat42;
  let x_818 : f32 = u_xlat36;
  u_xlat36 = ((x_815 * x_816) + x_818);
  let x_820 : vec3<f32> = u_xlat15;
  let x_822 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(-(x_820), vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : f32 = u_xlat30;
  let x_826 : f32 = u_xlat30;
  u_xlat30 = (x_825 + x_826);
  let x_828 : vec4<f32> = u_xlat4;
  let x_830 : f32 = u_xlat30;
  let x_834 : vec3<f32> = u_xlat15;
  let x_836 : vec3<f32> = ((vec3<f32>(x_828.x, x_828.y, x_828.z) * -(vec3<f32>(x_830, x_830, x_830))) + -(x_834));
  let x_837 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat4;
  let x_841 : vec3<f32> = u_xlat15;
  u_xlat30 = dot(vec3<f32>(x_839.x, x_839.y, x_839.z), x_841);
  let x_843 : f32 = u_xlat30;
  u_xlat30 = clamp(x_843, 0.0f, 1.0f);
  let x_845 : f32 = u_xlat30;
  u_xlat30 = (-(x_845) + 1.0f);
  let x_848 : f32 = u_xlat30;
  let x_849 : f32 = u_xlat30;
  u_xlat30 = (x_848 * x_849);
  let x_851 : f32 = u_xlat30;
  let x_852 : f32 = u_xlat30;
  u_xlat30 = (x_851 * x_852);
  let x_854 : f32 = u_xlat37;
  u_xlat42 = ((-(x_854) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_860 : f32 = u_xlat37;
  let x_861 : f32 = u_xlat42;
  u_xlat37 = (x_860 * x_861);
  let x_863 : f32 = u_xlat37;
  u_xlat37 = (x_863 * 6.0f);
  let x_874 : vec4<f32> = u_xlat7;
  let x_876 : f32 = u_xlat37;
  let x_877 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_874.x, x_874.y, x_874.z), x_876);
  u_xlat7 = x_877;
  let x_879 : f32 = u_xlat7.w;
  u_xlat37 = (x_879 + -1.0f);
  let x_882 : f32 = x_494.unity_SpecCube0_HDR.w;
  let x_883 : f32 = u_xlat37;
  u_xlat37 = ((x_882 * x_883) + 1.0f);
  let x_886 : f32 = u_xlat37;
  u_xlat37 = max(x_886, 0.0f);
  let x_888 : f32 = u_xlat37;
  u_xlat37 = log2(x_888);
  let x_890 : f32 = u_xlat37;
  let x_892 : f32 = x_494.unity_SpecCube0_HDR.y;
  u_xlat37 = (x_890 * x_892);
  let x_894 : f32 = u_xlat37;
  u_xlat37 = exp2(x_894);
  let x_896 : f32 = u_xlat37;
  let x_898 : f32 = x_494.unity_SpecCube0_HDR.x;
  u_xlat37 = (x_896 * x_898);
  let x_900 : vec4<f32> = u_xlat7;
  let x_902 : f32 = u_xlat37;
  let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) * vec3<f32>(x_902, x_902, x_902));
  let x_905 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_909 : f32 = u_xlat38;
  let x_911 : f32 = u_xlat38;
  u_xlat8 = ((vec2<f32>(x_909, x_909) * vec2<f32>(x_911, x_911)) + vec2<f32>(-1.0f, 1.0f));
  let x_917 : f32 = u_xlat8.y;
  u_xlat37 = (1.0f / x_917);
  let x_920 : f32 = u_xlat3.x;
  u_xlat38 = (x_920 + -0.03999999910593032837f);
  let x_923 : f32 = u_xlat30;
  let x_924 : f32 = u_xlat38;
  u_xlat38 = ((x_923 * x_924) + 0.03999999910593032837f);
  let x_928 : f32 = u_xlat37;
  let x_929 : f32 = u_xlat38;
  u_xlat37 = (x_928 * x_929);
  let x_931 : f32 = u_xlat37;
  let x_933 : vec4<f32> = u_xlat7;
  let x_935 : vec3<f32> = (vec3<f32>(x_931, x_931, x_931) * vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat5;
  let x_940 : vec3<f32> = u_xlat2;
  let x_942 : vec4<f32> = u_xlat7;
  let x_944 : vec3<f32> = ((vec3<f32>(x_938.x, x_938.y, x_938.z) * x_940) + vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : f32 = u_xlat36;
  let x_949 : f32 = x_494.unity_LightData.z;
  u_xlat36 = (x_947 * x_949);
  let x_951 : vec4<f32> = u_xlat4;
  let x_954 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_951.x, x_951.y, x_951.z), vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : f32 = u_xlat37;
  u_xlat37 = clamp(x_957, 0.0f, 1.0f);
  let x_959 : f32 = u_xlat36;
  let x_960 : f32 = u_xlat37;
  u_xlat36 = (x_959 * x_960);
  let x_962 : f32 = u_xlat36;
  let x_965 : vec4<f32> = x_53.x_MainLightColor;
  let x_967 : vec3<f32> = (vec3<f32>(x_962, x_962, x_962) * vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_971 : vec3<f32> = u_xlat15;
  let x_973 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat20 = (x_971 + vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : vec3<f32> = u_xlat20;
  let x_977 : vec3<f32> = u_xlat20;
  u_xlat36 = dot(x_976, x_977);
  let x_979 : f32 = u_xlat36;
  u_xlat36 = max(x_979, 1.17549435e-38f);
  let x_982 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_982);
  let x_984 : f32 = u_xlat36;
  let x_986 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_984, x_984, x_984) * x_986);
  let x_988 : vec4<f32> = u_xlat4;
  let x_990 : vec3<f32> = u_xlat20;
  u_xlat36 = dot(vec3<f32>(x_988.x, x_988.y, x_988.z), x_990);
  let x_992 : f32 = u_xlat36;
  u_xlat36 = clamp(x_992, 0.0f, 1.0f);
  let x_995 : vec4<f32> = x_53.x_MainLightPosition;
  let x_997 : vec3<f32> = u_xlat20;
  u_xlat37 = dot(vec3<f32>(x_995.x, x_995.y, x_995.z), x_997);
  let x_999 : f32 = u_xlat37;
  u_xlat37 = clamp(x_999, 0.0f, 1.0f);
  let x_1001 : f32 = u_xlat36;
  let x_1002 : f32 = u_xlat36;
  u_xlat36 = (x_1001 * x_1002);
  let x_1004 : f32 = u_xlat36;
  let x_1006 : f32 = u_xlat8.x;
  u_xlat36 = ((x_1004 * x_1006) + 1.00001001358032226562f);
  let x_1010 : f32 = u_xlat37;
  let x_1011 : f32 = u_xlat37;
  u_xlat37 = (x_1010 * x_1011);
  let x_1013 : f32 = u_xlat36;
  let x_1014 : f32 = u_xlat36;
  u_xlat36 = (x_1013 * x_1014);
  let x_1016 : f32 = u_xlat37;
  u_xlat37 = max(x_1016, 0.10000000149011611938f);
  let x_1019 : f32 = u_xlat36;
  let x_1020 : f32 = u_xlat37;
  u_xlat36 = (x_1019 * x_1020);
  let x_1022 : f32 = u_xlat41;
  let x_1023 : f32 = u_xlat36;
  u_xlat36 = (x_1022 * x_1023);
  let x_1025 : f32 = u_xlat40;
  let x_1026 : f32 = u_xlat36;
  u_xlat36 = (x_1025 / x_1026);
  let x_1028 : f32 = u_xlat36;
  let x_1032 : vec3<f32> = u_xlat2;
  u_xlat20 = ((vec3<f32>(x_1028, x_1028, x_1028) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1032);
  let x_1034 : vec4<f32> = u_xlat7;
  let x_1036 : vec3<f32> = u_xlat20;
  let x_1037 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) * x_1036);
  let x_1038 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1041 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_1043 : f32 = x_494.unity_LightData.y;
  u_xlat36 = min(x_1041, x_1043);
  let x_1045 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1045));
  let x_1049 : f32 = u_xlat18.x;
  let x_1052 : f32 = x_130.x_AdditionalShadowFadeParams.x;
  let x_1055 : f32 = x_130.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_1049 * x_1052) + x_1055);
  let x_1057 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1057, 0.0f, 1.0f);
  u_xlat18.x = 0.0f;
  u_xlat18.y = 0.0f;
  u_xlat18.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1069 : u32 = u_xlatu_loop_1;
    let x_1070 : u32 = u_xlatu36;
    if ((x_1069 < x_1070)) {
    } else {
      break;
    }
    let x_1073 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1073 >> 2u);
    let x_1076 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1076 & 3u));
    let x_1079 : u32 = u_xlatu3;
    let x_1082 : vec4<f32> = x_494.unity_LightIndices[bitcast<i32>(x_1079)];
    let x_1092 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1097 : vec4<u32> = indexable[x_1092];
    u_xlat3.x = dot(x_1082, bitcast<vec4<f32>>(x_1097));
    let x_1103 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1103);
    let x_1105 : vec3<f32> = vs_INTERP8;
    let x_1116 : i32 = u_xlati3;
    let x_1118 : vec4<f32> = x_1115.x_AdditionalLightsPosition[x_1116];
    let x_1121 : i32 = u_xlati3;
    let x_1123 : vec4<f32> = x_1115.x_AdditionalLightsPosition[x_1121];
    u_xlat20 = ((-(x_1105) * vec3<f32>(x_1118.w, x_1118.w, x_1118.w)) + vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
    let x_1127 : vec3<f32> = u_xlat20;
    let x_1128 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1127, x_1128);
    let x_1130 : f32 = u_xlat43;
    u_xlat43 = max(x_1130, 0.00006103515625f);
    let x_1134 : f32 = u_xlat43;
    u_xlat9 = inverseSqrt(x_1134);
    let x_1137 : vec3<f32> = u_xlat20;
    let x_1138 : f32 = u_xlat9;
    u_xlat21 = (x_1137 * vec3<f32>(x_1138, x_1138, x_1138));
    let x_1142 : f32 = u_xlat43;
    u_xlat10.x = (1.0f / x_1142);
    let x_1145 : f32 = u_xlat43;
    let x_1146 : i32 = u_xlati3;
    let x_1148 : f32 = x_1115.x_AdditionalLightsAttenuation[x_1146].x;
    u_xlat43 = (x_1145 * x_1148);
    let x_1150 : f32 = u_xlat43;
    let x_1152 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1150) * x_1152) + 1.0f);
    let x_1155 : f32 = u_xlat43;
    u_xlat43 = max(x_1155, 0.0f);
    let x_1157 : f32 = u_xlat43;
    let x_1158 : f32 = u_xlat43;
    u_xlat43 = (x_1157 * x_1158);
    let x_1160 : f32 = u_xlat43;
    let x_1162 : f32 = u_xlat10.x;
    u_xlat43 = (x_1160 * x_1162);
    let x_1164 : i32 = u_xlati3;
    let x_1166 : vec4<f32> = x_1115.x_AdditionalLightsSpotDir[x_1164];
    let x_1168 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1166.x, x_1166.y, x_1166.z), x_1168);
    let x_1172 : f32 = u_xlat10.x;
    let x_1173 : i32 = u_xlati3;
    let x_1175 : f32 = x_1115.x_AdditionalLightsAttenuation[x_1173].z;
    let x_1177 : i32 = u_xlati3;
    let x_1179 : f32 = x_1115.x_AdditionalLightsAttenuation[x_1177].w;
    u_xlat10.x = ((x_1172 * x_1175) + x_1179);
    let x_1183 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1183, 0.0f, 1.0f);
    let x_1187 : f32 = u_xlat10.x;
    let x_1189 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1187 * x_1189);
    let x_1192 : f32 = u_xlat43;
    let x_1194 : f32 = u_xlat10.x;
    u_xlat43 = (x_1192 * x_1194);
    let x_1198 : i32 = u_xlati3;
    let x_1200 : f32 = x_130.x_AdditionalShadowParams[x_1198].w;
    u_xlati10 = i32(x_1200);
    let x_1203 : i32 = u_xlati10;
    u_xlatb22.x = (x_1203 >= 0i);
    let x_1207 : bool = u_xlatb22.x;
    if (x_1207) {
      let x_1211 : i32 = u_xlati3;
      let x_1213 : f32 = x_130.x_AdditionalShadowParams[x_1211].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1213, x_1213, x_1213, x_1213))));
      let x_1219 : bool = u_xlatb22.x;
      if (x_1219) {
        let x_1222 : vec3<f32> = u_xlat21;
        let x_1225 : vec3<f32> = u_xlat21;
        let x_1228 : vec4<bool> = (abs(vec4<f32>(x_1222.z, x_1222.z, x_1222.y, x_1222.y)) >= abs(vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.x)));
        u_xlatb22 = vec3<bool>(x_1228.x, x_1228.y, x_1228.z);
        let x_1231 : bool = u_xlatb22.y;
        let x_1233 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_1231 & x_1233);
        let x_1237 : vec3<f32> = u_xlat21;
        let x_1240 : vec4<bool> = (-(vec4<f32>(x_1237.z, x_1237.y, x_1237.x, x_1237.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1240.x, x_1240.y, x_1240.z);
        let x_1244 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1244);
        let x_1249 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1249);
        let x_1254 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_1254);
        let x_1257 : bool = u_xlatb22.z;
        if (x_1257) {
          let x_1262 : f32 = u_xlat11.y;
          x_1258 = x_1262;
        } else {
          let x_1264 : f32 = u_xlat34;
          x_1258 = x_1264;
        }
        let x_1265 : f32 = x_1258;
        u_xlat34 = x_1265;
        let x_1268 : bool = u_xlatb22.x;
        if (x_1268) {
          let x_1273 : f32 = u_xlat11.x;
          x_1269 = x_1273;
        } else {
          let x_1275 : f32 = u_xlat34;
          x_1269 = x_1275;
        }
        let x_1276 : f32 = x_1269;
        u_xlat22 = x_1276;
        let x_1277 : i32 = u_xlati3;
        let x_1279 : f32 = x_130.x_AdditionalShadowParams[x_1277].w;
        u_xlat34 = trunc(x_1279);
        let x_1281 : f32 = u_xlat22;
        let x_1282 : f32 = u_xlat34;
        u_xlat22 = (x_1281 + x_1282);
        let x_1284 : f32 = u_xlat22;
        u_xlati10 = i32(x_1284);
      }
      let x_1286 : i32 = u_xlati10;
      u_xlati10 = (x_1286 << bitcast<u32>(2i));
      let x_1288 : vec3<f32> = vs_INTERP8;
      let x_1291 : i32 = u_xlati10;
      let x_1294 : i32 = u_xlati10;
      let x_1298 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1291 + 1i) / 4i)][((x_1294 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1288.y, x_1288.y, x_1288.y, x_1288.y) * x_1298);
      let x_1300 : i32 = u_xlati10;
      let x_1302 : i32 = u_xlati10;
      let x_1305 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[(x_1300 / 4i)][(x_1302 % 4i)];
      let x_1306 : vec3<f32> = vs_INTERP8;
      let x_1309 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1305 * vec4<f32>(x_1306.x, x_1306.x, x_1306.x, x_1306.x)) + x_1309);
      let x_1311 : i32 = u_xlati10;
      let x_1314 : i32 = u_xlati10;
      let x_1318 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1311 + 2i) / 4i)][((x_1314 + 2i) % 4i)];
      let x_1319 : vec3<f32> = vs_INTERP8;
      let x_1322 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1318 * vec4<f32>(x_1319.z, x_1319.z, x_1319.z, x_1319.z)) + x_1322);
      let x_1324 : vec4<f32> = u_xlat11;
      let x_1325 : i32 = u_xlati10;
      let x_1328 : i32 = u_xlati10;
      let x_1332 : vec4<f32> = x_130.x_AdditionalLightsWorldToShadow[((x_1325 + 3i) / 4i)][((x_1328 + 3i) % 4i)];
      u_xlat10 = (x_1324 + x_1332);
      let x_1334 : vec4<f32> = u_xlat10;
      let x_1336 : vec4<f32> = u_xlat10;
      let x_1338 : vec3<f32> = (vec3<f32>(x_1334.x, x_1334.y, x_1334.z) / vec3<f32>(x_1336.w, x_1336.w, x_1336.w));
      let x_1339 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
      let x_1342 : vec4<f32> = u_xlat10;
      let x_1343 : vec2<f32> = vec2<f32>(x_1342.x, x_1342.y);
      let x_1345 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
      let x_1353 : vec3<f32> = txVec1;
      let x_1355 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1353.xy, x_1353.z);
      u_xlat10.x = x_1355;
      let x_1357 : i32 = u_xlati3;
      let x_1359 : f32 = x_130.x_AdditionalShadowParams[x_1357].x;
      u_xlat22 = (1.0f + -(x_1359));
      let x_1363 : f32 = u_xlat10.x;
      let x_1364 : i32 = u_xlati3;
      let x_1366 : f32 = x_130.x_AdditionalShadowParams[x_1364].x;
      let x_1368 : f32 = u_xlat22;
      u_xlat10.x = ((x_1363 * x_1366) + x_1368);
      let x_1372 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1372);
      let x_1377 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1377 >= 1.0f);
      let x_1379 : bool = u_xlatb34;
      let x_1381 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1379 | x_1381);
      let x_1385 : bool = u_xlatb22.x;
      if (x_1385) {
        x_1386 = 1.0f;
      } else {
        let x_1391 : f32 = u_xlat10.x;
        x_1386 = x_1391;
      }
      let x_1392 : f32 = x_1386;
      u_xlat10.x = x_1392;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1397 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1397) + 1.0f);
    let x_1400 : f32 = u_xlat37;
    let x_1401 : f32 = u_xlat22;
    let x_1404 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1400 * x_1401) + x_1404);
    let x_1407 : f32 = u_xlat43;
    let x_1409 : f32 = u_xlat10.x;
    u_xlat43 = (x_1407 * x_1409);
    let x_1411 : vec4<f32> = u_xlat4;
    let x_1413 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1411.x, x_1411.y, x_1411.z), x_1413);
    let x_1417 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1417, 0.0f, 1.0f);
    let x_1420 : f32 = u_xlat43;
    let x_1422 : f32 = u_xlat10.x;
    u_xlat43 = (x_1420 * x_1422);
    let x_1424 : f32 = u_xlat43;
    let x_1426 : i32 = u_xlati3;
    let x_1428 : vec4<f32> = x_1115.x_AdditionalLightsColor[x_1426];
    let x_1430 : vec3<f32> = (vec3<f32>(x_1424, x_1424, x_1424) * vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
    let x_1431 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
    let x_1433 : vec3<f32> = u_xlat20;
    let x_1434 : f32 = u_xlat9;
    let x_1437 : vec3<f32> = u_xlat15;
    u_xlat20 = ((x_1433 * vec3<f32>(x_1434, x_1434, x_1434)) + x_1437);
    let x_1439 : vec3<f32> = u_xlat20;
    let x_1440 : vec3<f32> = u_xlat20;
    u_xlat3.x = dot(x_1439, x_1440);
    let x_1444 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1444, 1.17549435e-38f);
    let x_1448 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1448);
    let x_1451 : vec4<f32> = u_xlat3;
    let x_1453 : vec3<f32> = u_xlat20;
    u_xlat20 = (vec3<f32>(x_1451.x, x_1451.x, x_1451.x) * x_1453);
    let x_1455 : vec4<f32> = u_xlat4;
    let x_1457 : vec3<f32> = u_xlat20;
    u_xlat3.x = dot(vec3<f32>(x_1455.x, x_1455.y, x_1455.z), x_1457);
    let x_1461 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1461, 0.0f, 1.0f);
    let x_1464 : vec3<f32> = u_xlat21;
    let x_1465 : vec3<f32> = u_xlat20;
    u_xlat43 = dot(x_1464, x_1465);
    let x_1467 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1467, 0.0f, 1.0f);
    let x_1470 : f32 = u_xlat3.x;
    let x_1472 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1470 * x_1472);
    let x_1476 : f32 = u_xlat3.x;
    let x_1478 : f32 = u_xlat8.x;
    u_xlat3.x = ((x_1476 * x_1478) + 1.00001001358032226562f);
    let x_1482 : f32 = u_xlat43;
    let x_1483 : f32 = u_xlat43;
    u_xlat43 = (x_1482 * x_1483);
    let x_1486 : f32 = u_xlat3.x;
    let x_1488 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1486 * x_1488);
    let x_1491 : f32 = u_xlat43;
    u_xlat43 = max(x_1491, 0.10000000149011611938f);
    let x_1494 : f32 = u_xlat3.x;
    let x_1495 : f32 = u_xlat43;
    u_xlat3.x = (x_1494 * x_1495);
    let x_1498 : f32 = u_xlat41;
    let x_1500 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1498 * x_1500);
    let x_1503 : f32 = u_xlat40;
    let x_1505 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1503 / x_1505);
    let x_1508 : vec4<f32> = u_xlat3;
    let x_1511 : vec3<f32> = u_xlat2;
    u_xlat20 = ((vec3<f32>(x_1508.x, x_1508.x, x_1508.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1511);
    let x_1513 : vec3<f32> = u_xlat20;
    let x_1514 : vec4<f32> = u_xlat10;
    let x_1517 : vec3<f32> = u_xlat18;
    u_xlat18 = ((x_1513 * vec3<f32>(x_1514.x, x_1514.y, x_1514.z)) + x_1517);

    continuing {
      let x_1519 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1519 + bitcast<u32>(1i));
    }
  }
  let x_1521 : vec4<f32> = u_xlat5;
  let x_1523 : vec4<f32> = u_xlat6;
  let x_1526 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_1521.x, x_1521.y, x_1521.z) * vec3<f32>(x_1523.x, x_1523.x, x_1523.x)) + vec3<f32>(x_1526.x, x_1526.y, x_1526.z));
  let x_1529 : vec3<f32> = u_xlat18;
  let x_1530 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1529 + x_1530);
  let x_1532 : vec4<f32> = vs_INTERP6;
  let x_1534 : vec3<f32> = u_xlat0;
  let x_1536 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_1532.w, x_1532.w, x_1532.w) * x_1534) + x_1536);
  let x_1539 : f32 = u_xlat13.x;
  let x_1541 : f32 = u_xlat13.x;
  u_xlat36 = (x_1539 * -(x_1541));
  let x_1544 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1544);
  let x_1546 : vec3<f32> = u_xlat0;
  let x_1549 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_1546 + -(vec3<f32>(x_1549.x, x_1549.y, x_1549.z)));
  let x_1555 : f32 = u_xlat36;
  let x_1557 : vec3<f32> = u_xlat0;
  let x_1560 : vec4<f32> = x_53.unity_FogColor;
  let x_1562 : vec3<f32> = ((vec3<f32>(x_1555, x_1555, x_1555) * x_1557) + vec3<f32>(x_1560.x, x_1560.y, x_1560.z));
  let x_1563 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
  let x_1565 : bool = u_xlatb25;
  if (x_1565) {
    let x_1570 : f32 = u_xlat1.x;
    x_1566 = x_1570;
  } else {
    x_1566 = 1.0f;
  }
  let x_1572 : f32 = x_1566;
  SV_Target0.w = x_1572;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


