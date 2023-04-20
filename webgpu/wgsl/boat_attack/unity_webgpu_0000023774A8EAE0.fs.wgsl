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
  /* @offset(160) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb36 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat29 : f32;

@group(1) @binding(4) var<uniform> x_388 : LightShadows;

var<private> u_xlatb29 : bool;

var<private> u_xlatb41 : bool;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati42 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_754 : AdditionalLights;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb22 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat22 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu39 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
  var x_162 : f32;
  var x_174 : f32;
  var x_186 : f32;
  var txVec0 : vec3<f32>;
  var x_414 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_901 : f32;
  var x_912 : f32;
  var txVec1 : vec3<f32>;
  var x_1029 : f32;
  var x_1175 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_82 : vec4<f32> = u_xlat2;
  let x_85 : f32 = x_45.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat36 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_105 : f32 = u_xlat36;
    x_102 = abs(x_105);
  } else {
    let x_108 : f32 = u_xlat36;
    x_102 = -(abs(x_108));
  }
  let x_111 : f32 = x_102;
  u_xlat36 = x_111;
  let x_112 : f32 = u_xlat36;
  let x_115 : f32 = x_95.unity_LODFade.x;
  u_xlat36 = (-(x_112) + x_115);
  let x_118 : f32 = u_xlat36;
  u_xlatb36 = (x_118 < 0.0f);
  let x_120 : bool = u_xlatb36;
  if (((select(0i, 1i, x_120) * -1i) != 0i)) {
    discard;
  }
  let x_131 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb36 = (x_131 == 0.0f);
  let x_135 : vec3<f32> = vs_TEXCOORD1;
  let x_140 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_141 : vec3<f32> = (-(x_135) + x_140);
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat38 = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_150);
  let x_152 : f32 = u_xlat38;
  let x_154 : vec4<f32> = u_xlat2;
  let x_156 : vec3<f32> = (vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_161 : bool = u_xlatb36;
  if (x_161) {
    let x_166 : f32 = u_xlat2.x;
    x_162 = x_166;
  } else {
    let x_170 : f32 = x_45.unity_MatrixV[0i].z;
    x_162 = x_170;
  }
  let x_171 : f32 = x_162;
  u_xlat3.x = x_171;
  let x_173 : bool = u_xlatb36;
  if (x_173) {
    let x_179 : f32 = u_xlat2.y;
    x_174 = x_179;
  } else {
    let x_182 : f32 = x_45.unity_MatrixV[1i].z;
    x_174 = x_182;
  }
  let x_183 : f32 = x_174;
  u_xlat3.y = x_183;
  let x_185 : bool = u_xlatb36;
  if (x_185) {
    let x_190 : f32 = u_xlat2.z;
    x_186 = x_190;
  } else {
    let x_193 : f32 = x_45.unity_MatrixV[2i].z;
    x_186 = x_193;
  }
  let x_194 : f32 = x_186;
  u_xlat3.z = x_194;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  let x_198 : vec3<f32> = vs_TEXCOORD2;
  u_xlat36 = dot(x_197, x_198);
  let x_200 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_200);
  let x_202 : f32 = u_xlat36;
  let x_204 : vec3<f32> = vs_TEXCOORD2;
  let x_205 : vec3<f32> = (vec3<f32>(x_202, x_202, x_202) * x_204);
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  u_xlat2.w = 1.0f;
  let x_212 : vec4<f32> = x_95.unity_SHAr;
  let x_213 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_212, x_213);
  let x_218 : vec4<f32> = x_95.unity_SHAg;
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_218, x_219);
  let x_224 : vec4<f32> = x_95.unity_SHAb;
  let x_225 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_224, x_225);
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_229.y, x_229.z, x_229.z, x_229.x) * vec4<f32>(x_231.x, x_231.y, x_231.z, x_231.z));
  let x_237 : vec4<f32> = x_95.unity_SHBr;
  let x_238 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_237, x_238);
  let x_243 : vec4<f32> = x_95.unity_SHBg;
  let x_244 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_243, x_244);
  let x_249 : vec4<f32> = x_95.unity_SHBb;
  let x_250 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_249, x_250);
  let x_254 : f32 = u_xlat2.y;
  let x_256 : f32 = u_xlat2.y;
  u_xlat36 = (x_254 * x_256);
  let x_259 : f32 = u_xlat2.x;
  let x_261 : f32 = u_xlat2.x;
  let x_263 : f32 = u_xlat36;
  u_xlat36 = ((x_259 * x_261) + -(x_263));
  let x_268 : vec4<f32> = x_95.unity_SHC;
  let x_270 : f32 = u_xlat36;
  let x_273 : vec4<f32> = u_xlat6;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270, x_270, x_270)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec3<f32> = u_xlat4;
  let x_279 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_278 + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_282, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_286 : f32 = x_58.x_Metallic;
  u_xlat36 = ((-(x_286) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_291 : f32 = u_xlat36;
  let x_294 : f32 = x_58.x_Smoothness;
  u_xlat38 = (-(x_291) + x_294);
  let x_297 : f32 = u_xlat36;
  let x_299 : vec4<f32> = u_xlat1;
  u_xlat13 = (vec3<f32>(x_297, x_297, x_297) * vec3<f32>(x_299.y, x_299.z, x_299.w));
  let x_302 : vec4<f32> = u_xlat0;
  let x_305 : vec4<f32> = x_58.x_BaseColor;
  let x_310 : vec3<f32> = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_305.x, x_305.y, x_305.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : f32 = x_58.x_Metallic;
  let x_316 : f32 = x_58.x_Metallic;
  let x_318 : f32 = x_58.x_Metallic;
  let x_319 : vec3<f32> = vec3<f32>(x_314, x_316, x_318);
  let x_324 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_324.x, x_324.y, x_324.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_333 : f32 = x_58.x_Smoothness;
  u_xlat36 = (-(x_333) + 1.0f);
  let x_337 : f32 = u_xlat36;
  let x_338 : f32 = u_xlat36;
  u_xlat39 = (x_337 * x_338);
  let x_340 : f32 = u_xlat39;
  u_xlat39 = max(x_340, 0.0078125f);
  let x_344 : f32 = u_xlat39;
  let x_345 : f32 = u_xlat39;
  u_xlat40 = (x_344 * x_345);
  let x_347 : f32 = u_xlat38;
  u_xlat38 = (x_347 + 1.0f);
  let x_349 : f32 = u_xlat38;
  u_xlat38 = clamp(x_349, 0.0f, 1.0f);
  let x_351 : f32 = u_xlat39;
  u_xlat5.x = ((x_351 * 4.0f) + 2.0f);
  let x_360 : vec4<f32> = vs_TEXCOORD6;
  let x_361 : vec2<f32> = vec2<f32>(x_360.x, x_360.y);
  let x_363 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_361.x, x_361.y, x_363);
  let x_376 : vec3<f32> = txVec0;
  let x_378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_376.xy, x_376.z);
  u_xlat17.x = x_378;
  let x_391 : f32 = x_388.x_MainLightShadowParams.x;
  u_xlat29 = (-(x_391) + 1.0f);
  let x_395 : f32 = u_xlat17.x;
  let x_397 : f32 = x_388.x_MainLightShadowParams.x;
  let x_399 : f32 = u_xlat29;
  u_xlat17.x = ((x_395 * x_397) + x_399);
  let x_404 : f32 = vs_TEXCOORD6.z;
  u_xlatb29 = (0.0f >= x_404);
  let x_408 : f32 = vs_TEXCOORD6.z;
  u_xlatb41 = (x_408 >= 1.0f);
  let x_410 : bool = u_xlatb41;
  let x_411 : bool = u_xlatb29;
  u_xlatb29 = (x_410 | x_411);
  let x_413 : bool = u_xlatb29;
  if (x_413) {
    x_414 = 1.0f;
  } else {
    let x_419 : f32 = u_xlat17.x;
    x_414 = x_419;
  }
  let x_420 : f32 = x_414;
  u_xlat17.x = x_420;
  let x_422 : vec3<f32> = vs_TEXCOORD1;
  let x_424 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_426 : vec3<f32> = (x_422 + -(x_424));
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat6;
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_435 : f32 = u_xlat29;
  let x_437 : f32 = x_388.x_MainLightShadowParams.z;
  let x_440 : f32 = x_388.x_MainLightShadowParams.w;
  u_xlat41 = ((x_435 * x_437) + x_440);
  let x_442 : f32 = u_xlat41;
  u_xlat41 = clamp(x_442, 0.0f, 1.0f);
  let x_445 : f32 = u_xlat17.x;
  u_xlat6.x = (-(x_445) + 1.0f);
  let x_449 : f32 = u_xlat41;
  let x_451 : f32 = u_xlat6.x;
  let x_454 : f32 = u_xlat17.x;
  u_xlat17.x = ((x_449 * x_451) + x_454);
  let x_457 : vec3<f32> = u_xlat3;
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat41 = dot(-(x_457), vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : f32 = u_xlat41;
  let x_463 : f32 = u_xlat41;
  u_xlat41 = (x_462 + x_463);
  let x_465 : vec4<f32> = u_xlat2;
  let x_467 : f32 = u_xlat41;
  let x_471 : vec3<f32> = u_xlat3;
  let x_473 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.y, x_465.z) * -(vec3<f32>(x_467, x_467, x_467))) + -(x_471));
  let x_474 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat2;
  let x_478 : vec3<f32> = u_xlat3;
  u_xlat41 = dot(vec3<f32>(x_476.x, x_476.y, x_476.z), x_478);
  let x_480 : f32 = u_xlat41;
  u_xlat41 = clamp(x_480, 0.0f, 1.0f);
  let x_482 : f32 = u_xlat41;
  u_xlat41 = (-(x_482) + 1.0f);
  let x_485 : f32 = u_xlat41;
  let x_486 : f32 = u_xlat41;
  u_xlat41 = (x_485 * x_486);
  let x_488 : f32 = u_xlat41;
  let x_489 : f32 = u_xlat41;
  u_xlat41 = (x_488 * x_489);
  let x_492 : f32 = u_xlat36;
  u_xlat42 = ((-(x_492) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_498 : f32 = u_xlat36;
  let x_499 : f32 = u_xlat42;
  u_xlat36 = (x_498 * x_499);
  let x_501 : f32 = u_xlat36;
  u_xlat36 = (x_501 * 6.0f);
  let x_512 : vec4<f32> = u_xlat6;
  let x_514 : f32 = u_xlat36;
  let x_515 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_512.x, x_512.y, x_512.z), x_514);
  u_xlat6 = x_515;
  let x_517 : f32 = u_xlat6.w;
  u_xlat36 = (x_517 + -1.0f);
  let x_521 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_522 : f32 = u_xlat36;
  u_xlat36 = ((x_521 * x_522) + 1.0f);
  let x_525 : f32 = u_xlat36;
  u_xlat36 = max(x_525, 0.0f);
  let x_527 : f32 = u_xlat36;
  u_xlat36 = log2(x_527);
  let x_529 : f32 = u_xlat36;
  let x_531 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_529 * x_531);
  let x_533 : f32 = u_xlat36;
  u_xlat36 = exp2(x_533);
  let x_535 : f32 = u_xlat36;
  let x_537 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_535 * x_537);
  let x_539 : vec4<f32> = u_xlat6;
  let x_541 : f32 = u_xlat36;
  let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(x_541, x_541, x_541));
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_548 : f32 = u_xlat39;
  let x_550 : f32 = u_xlat39;
  u_xlat7 = ((vec2<f32>(x_548, x_548) * vec2<f32>(x_550, x_550)) + vec2<f32>(-1.0f, 1.0f));
  let x_556 : f32 = u_xlat7.y;
  u_xlat36 = (1.0f / x_556);
  let x_559 : vec4<f32> = u_xlat0;
  let x_562 : f32 = u_xlat38;
  u_xlat19 = (-(vec3<f32>(x_559.x, x_559.y, x_559.z)) + vec3<f32>(x_562, x_562, x_562));
  let x_565 : f32 = u_xlat41;
  let x_567 : vec3<f32> = u_xlat19;
  let x_569 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_565, x_565, x_565) * x_567) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : f32 = u_xlat36;
  let x_574 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_572, x_572, x_572) * x_574);
  let x_576 : vec4<f32> = u_xlat6;
  let x_578 : vec3<f32> = u_xlat19;
  let x_579 : vec3<f32> = (vec3<f32>(x_576.x, x_576.y, x_576.z) * x_578);
  let x_580 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_582 : vec3<f32> = u_xlat4;
  let x_583 : vec3<f32> = u_xlat13;
  let x_585 : vec4<f32> = u_xlat6;
  u_xlat4 = ((x_582 * x_583) + vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_589 : f32 = u_xlat17.x;
  let x_591 : f32 = x_95.unity_LightData.z;
  u_xlat36 = (x_589 * x_591);
  let x_593 : vec4<f32> = u_xlat2;
  let x_596 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : f32 = u_xlat38;
  u_xlat38 = clamp(x_599, 0.0f, 1.0f);
  let x_601 : f32 = u_xlat36;
  let x_602 : f32 = u_xlat38;
  u_xlat36 = (x_601 * x_602);
  let x_604 : f32 = u_xlat36;
  let x_607 : vec4<f32> = x_45.x_MainLightColor;
  let x_609 : vec3<f32> = (vec3<f32>(x_604, x_604, x_604) * vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec3<f32> = u_xlat3;
  let x_614 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat19 = (x_612 + vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : vec3<f32> = u_xlat19;
  let x_618 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_617, x_618);
  let x_620 : f32 = u_xlat36;
  u_xlat36 = max(x_620, 1.17549435e-38f);
  let x_623 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat36;
  let x_627 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_625, x_625, x_625) * x_627);
  let x_629 : vec4<f32> = u_xlat2;
  let x_631 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_629.x, x_629.y, x_629.z), x_631);
  let x_633 : f32 = u_xlat36;
  u_xlat36 = clamp(x_633, 0.0f, 1.0f);
  let x_636 : vec4<f32> = x_45.x_MainLightPosition;
  let x_638 : vec3<f32> = u_xlat19;
  u_xlat38 = dot(vec3<f32>(x_636.x, x_636.y, x_636.z), x_638);
  let x_640 : f32 = u_xlat38;
  u_xlat38 = clamp(x_640, 0.0f, 1.0f);
  let x_642 : f32 = u_xlat36;
  let x_643 : f32 = u_xlat36;
  u_xlat36 = (x_642 * x_643);
  let x_645 : f32 = u_xlat36;
  let x_647 : f32 = u_xlat7.x;
  u_xlat36 = ((x_645 * x_647) + 1.00001001358032226562f);
  let x_651 : f32 = u_xlat38;
  let x_652 : f32 = u_xlat38;
  u_xlat38 = (x_651 * x_652);
  let x_654 : f32 = u_xlat36;
  let x_655 : f32 = u_xlat36;
  u_xlat36 = (x_654 * x_655);
  let x_657 : f32 = u_xlat38;
  u_xlat38 = max(x_657, 0.10000000149011611938f);
  let x_660 : f32 = u_xlat36;
  let x_661 : f32 = u_xlat38;
  u_xlat36 = (x_660 * x_661);
  let x_664 : f32 = u_xlat5.x;
  let x_665 : f32 = u_xlat36;
  u_xlat36 = (x_664 * x_665);
  let x_667 : f32 = u_xlat40;
  let x_668 : f32 = u_xlat36;
  u_xlat36 = (x_667 / x_668);
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : f32 = u_xlat36;
  let x_675 : vec3<f32> = u_xlat13;
  u_xlat19 = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672, x_672, x_672)) + x_675);
  let x_679 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_681 : f32 = x_95.unity_LightData.y;
  u_xlat36 = min(x_679, x_681);
  let x_685 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_685));
  let x_688 : f32 = u_xlat29;
  let x_691 : f32 = x_388.x_AdditionalShadowFadeParams.x;
  let x_694 : f32 = x_388.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_688 * x_691) + x_694);
  let x_696 : f32 = u_xlat38;
  u_xlat38 = clamp(x_696, 0.0f, 1.0f);
  u_xlat17.x = 0.0f;
  u_xlat17.y = 0.0f;
  u_xlat17.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_708 : u32 = u_xlatu_loop_1;
    let x_709 : u32 = u_xlatu36;
    if ((x_708 < x_709)) {
    } else {
      break;
    }
    let x_712 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_712 >> 2u);
    let x_716 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_716 & 3u));
    let x_719 : u32 = u_xlatu42;
    let x_722 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_719)];
    let x_732 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_737 : vec4<u32> = indexable[x_732];
    u_xlat42 = dot(x_722, bitcast<vec4<f32>>(x_737));
    let x_741 : f32 = u_xlat42;
    u_xlati42 = i32(x_741);
    let x_744 : vec3<f32> = vs_TEXCOORD1;
    let x_755 : i32 = u_xlati42;
    let x_757 : vec4<f32> = x_754.x_AdditionalLightsPosition[x_755];
    let x_760 : i32 = u_xlati42;
    let x_762 : vec4<f32> = x_754.x_AdditionalLightsPosition[x_760];
    u_xlat8 = ((-(x_744) * vec3<f32>(x_757.w, x_757.w, x_757.w)) + vec3<f32>(x_762.x, x_762.y, x_762.z));
    let x_766 : vec3<f32> = u_xlat8;
    let x_767 : vec3<f32> = u_xlat8;
    u_xlat44 = dot(x_766, x_767);
    let x_769 : f32 = u_xlat44;
    u_xlat44 = max(x_769, 0.00006103515625f);
    let x_773 : f32 = u_xlat44;
    u_xlat9 = inverseSqrt(x_773);
    let x_776 : vec3<f32> = u_xlat8;
    let x_777 : f32 = u_xlat9;
    u_xlat21 = (x_776 * vec3<f32>(x_777, x_777, x_777));
    let x_781 : f32 = u_xlat44;
    u_xlat10.x = (1.0f / x_781);
    let x_784 : f32 = u_xlat44;
    let x_785 : i32 = u_xlati42;
    let x_787 : f32 = x_754.x_AdditionalLightsAttenuation[x_785].x;
    u_xlat44 = (x_784 * x_787);
    let x_789 : f32 = u_xlat44;
    let x_791 : f32 = u_xlat44;
    u_xlat44 = ((-(x_789) * x_791) + 1.0f);
    let x_794 : f32 = u_xlat44;
    u_xlat44 = max(x_794, 0.0f);
    let x_796 : f32 = u_xlat44;
    let x_797 : f32 = u_xlat44;
    u_xlat44 = (x_796 * x_797);
    let x_799 : f32 = u_xlat44;
    let x_801 : f32 = u_xlat10.x;
    u_xlat44 = (x_799 * x_801);
    let x_803 : i32 = u_xlati42;
    let x_805 : vec4<f32> = x_754.x_AdditionalLightsSpotDir[x_803];
    let x_807 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), x_807);
    let x_811 : f32 = u_xlat10.x;
    let x_812 : i32 = u_xlati42;
    let x_814 : f32 = x_754.x_AdditionalLightsAttenuation[x_812].z;
    let x_816 : i32 = u_xlati42;
    let x_818 : f32 = x_754.x_AdditionalLightsAttenuation[x_816].w;
    u_xlat10.x = ((x_811 * x_814) + x_818);
    let x_822 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_822, 0.0f, 1.0f);
    let x_826 : f32 = u_xlat10.x;
    let x_828 : f32 = u_xlat10.x;
    u_xlat10.x = (x_826 * x_828);
    let x_831 : f32 = u_xlat44;
    let x_833 : f32 = u_xlat10.x;
    u_xlat44 = (x_831 * x_833);
    let x_837 : i32 = u_xlati42;
    let x_839 : f32 = x_388.x_AdditionalShadowParams[x_837].w;
    u_xlati10 = i32(x_839);
    let x_844 : i32 = u_xlati10;
    u_xlatb22.x = (x_844 >= 0i);
    let x_848 : bool = u_xlatb22.x;
    if (x_848) {
      let x_852 : i32 = u_xlati42;
      let x_854 : f32 = x_388.x_AdditionalShadowParams[x_852].z;
      u_xlatb22.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_854, x_854, x_854, x_854))));
      let x_861 : bool = u_xlatb22.x;
      if (x_861) {
        let x_864 : vec3<f32> = u_xlat21;
        let x_867 : vec3<f32> = u_xlat21;
        let x_870 : vec4<bool> = (abs(vec4<f32>(x_864.z, x_864.z, x_864.y, x_864.y)) >= abs(vec4<f32>(x_867.x, x_867.y, x_867.x, x_867.x)));
        u_xlatb22 = vec3<bool>(x_870.x, x_870.y, x_870.z);
        let x_873 : bool = u_xlatb22.y;
        let x_875 : bool = u_xlatb22.x;
        u_xlatb22.x = (x_873 & x_875);
        let x_879 : vec3<f32> = u_xlat21;
        let x_882 : vec4<bool> = (-(vec4<f32>(x_879.z, x_879.y, x_879.x, x_879.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_882.x, x_882.y, x_882.z);
        let x_886 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_886);
        let x_891 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_891);
        let x_897 : bool = u_xlatb11.z;
        u_xlat34 = select(0.0f, 1.0f, x_897);
        let x_900 : bool = u_xlatb22.z;
        if (x_900) {
          let x_905 : f32 = u_xlat11.y;
          x_901 = x_905;
        } else {
          let x_907 : f32 = u_xlat34;
          x_901 = x_907;
        }
        let x_908 : f32 = x_901;
        u_xlat34 = x_908;
        let x_911 : bool = u_xlatb22.x;
        if (x_911) {
          let x_916 : f32 = u_xlat11.x;
          x_912 = x_916;
        } else {
          let x_918 : f32 = u_xlat34;
          x_912 = x_918;
        }
        let x_919 : f32 = x_912;
        u_xlat22 = x_919;
        let x_920 : i32 = u_xlati42;
        let x_922 : f32 = x_388.x_AdditionalShadowParams[x_920].w;
        u_xlat34 = trunc(x_922);
        let x_924 : f32 = u_xlat22;
        let x_925 : f32 = u_xlat34;
        u_xlat22 = (x_924 + x_925);
        let x_927 : f32 = u_xlat22;
        u_xlati10 = i32(x_927);
      }
      let x_929 : i32 = u_xlati10;
      u_xlati10 = (x_929 << bitcast<u32>(2i));
      let x_931 : vec3<f32> = vs_TEXCOORD1;
      let x_934 : i32 = u_xlati10;
      let x_937 : i32 = u_xlati10;
      let x_941 : vec4<f32> = x_388.x_AdditionalLightsWorldToShadow[((x_934 + 1i) / 4i)][((x_937 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_931.y, x_931.y, x_931.y, x_931.y) * x_941);
      let x_943 : i32 = u_xlati10;
      let x_945 : i32 = u_xlati10;
      let x_948 : vec4<f32> = x_388.x_AdditionalLightsWorldToShadow[(x_943 / 4i)][(x_945 % 4i)];
      let x_949 : vec3<f32> = vs_TEXCOORD1;
      let x_952 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_948 * vec4<f32>(x_949.x, x_949.x, x_949.x, x_949.x)) + x_952);
      let x_954 : i32 = u_xlati10;
      let x_957 : i32 = u_xlati10;
      let x_961 : vec4<f32> = x_388.x_AdditionalLightsWorldToShadow[((x_954 + 2i) / 4i)][((x_957 + 2i) % 4i)];
      let x_962 : vec3<f32> = vs_TEXCOORD1;
      let x_965 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_961 * vec4<f32>(x_962.z, x_962.z, x_962.z, x_962.z)) + x_965);
      let x_967 : vec4<f32> = u_xlat11;
      let x_968 : i32 = u_xlati10;
      let x_971 : i32 = u_xlati10;
      let x_975 : vec4<f32> = x_388.x_AdditionalLightsWorldToShadow[((x_968 + 3i) / 4i)][((x_971 + 3i) % 4i)];
      u_xlat10 = (x_967 + x_975);
      let x_977 : vec4<f32> = u_xlat10;
      let x_979 : vec4<f32> = u_xlat10;
      let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.y, x_977.z) / vec3<f32>(x_979.w, x_979.w, x_979.w));
      let x_982 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
      let x_985 : vec4<f32> = u_xlat10;
      let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
      let x_988 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_986.x, x_986.y, x_988);
      let x_996 : vec3<f32> = txVec1;
      let x_998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_996.xy, x_996.z);
      u_xlat10.x = x_998;
      let x_1000 : i32 = u_xlati42;
      let x_1002 : f32 = x_388.x_AdditionalShadowParams[x_1000].x;
      u_xlat22 = (1.0f + -(x_1002));
      let x_1006 : f32 = u_xlat10.x;
      let x_1007 : i32 = u_xlati42;
      let x_1009 : f32 = x_388.x_AdditionalShadowParams[x_1007].x;
      let x_1011 : f32 = u_xlat22;
      u_xlat10.x = ((x_1006 * x_1009) + x_1011);
      let x_1015 : f32 = u_xlat10.z;
      u_xlatb22.x = (0.0f >= x_1015);
      let x_1020 : f32 = u_xlat10.z;
      u_xlatb34 = (x_1020 >= 1.0f);
      let x_1022 : bool = u_xlatb34;
      let x_1024 : bool = u_xlatb22.x;
      u_xlatb22.x = (x_1022 | x_1024);
      let x_1028 : bool = u_xlatb22.x;
      if (x_1028) {
        x_1029 = 1.0f;
      } else {
        let x_1034 : f32 = u_xlat10.x;
        x_1029 = x_1034;
      }
      let x_1035 : f32 = x_1029;
      u_xlat10.x = x_1035;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_1040 : f32 = u_xlat10.x;
    u_xlat22 = (-(x_1040) + 1.0f);
    let x_1043 : f32 = u_xlat38;
    let x_1044 : f32 = u_xlat22;
    let x_1047 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_1043 * x_1044) + x_1047);
    let x_1050 : f32 = u_xlat44;
    let x_1052 : f32 = u_xlat10.x;
    u_xlat44 = (x_1050 * x_1052);
    let x_1054 : vec4<f32> = u_xlat2;
    let x_1056 : vec3<f32> = u_xlat21;
    u_xlat10.x = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), x_1056);
    let x_1060 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1060, 0.0f, 1.0f);
    let x_1063 : f32 = u_xlat44;
    let x_1065 : f32 = u_xlat10.x;
    u_xlat44 = (x_1063 * x_1065);
    let x_1067 : f32 = u_xlat44;
    let x_1069 : i32 = u_xlati42;
    let x_1071 : vec4<f32> = x_754.x_AdditionalLightsColor[x_1069];
    let x_1073 : vec3<f32> = (vec3<f32>(x_1067, x_1067, x_1067) * vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
    let x_1074 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
    let x_1076 : vec3<f32> = u_xlat8;
    let x_1077 : f32 = u_xlat9;
    let x_1080 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1076 * vec3<f32>(x_1077, x_1077, x_1077)) + x_1080);
    let x_1082 : vec3<f32> = u_xlat8;
    let x_1083 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1082, x_1083);
    let x_1085 : f32 = u_xlat42;
    u_xlat42 = max(x_1085, 1.17549435e-38f);
    let x_1087 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1087);
    let x_1089 : f32 = u_xlat42;
    let x_1091 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1089, x_1089, x_1089) * x_1091);
    let x_1093 : vec4<f32> = u_xlat2;
    let x_1095 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), x_1095);
    let x_1097 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1097, 0.0f, 1.0f);
    let x_1099 : vec3<f32> = u_xlat21;
    let x_1100 : vec3<f32> = u_xlat8;
    u_xlat8.x = dot(x_1099, x_1100);
    let x_1104 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_1104, 0.0f, 1.0f);
    let x_1107 : f32 = u_xlat42;
    let x_1108 : f32 = u_xlat42;
    u_xlat42 = (x_1107 * x_1108);
    let x_1110 : f32 = u_xlat42;
    let x_1112 : f32 = u_xlat7.x;
    u_xlat42 = ((x_1110 * x_1112) + 1.00001001358032226562f);
    let x_1116 : f32 = u_xlat8.x;
    let x_1118 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1116 * x_1118);
    let x_1121 : f32 = u_xlat42;
    let x_1122 : f32 = u_xlat42;
    u_xlat42 = (x_1121 * x_1122);
    let x_1125 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_1125, 0.10000000149011611938f);
    let x_1128 : f32 = u_xlat42;
    let x_1130 : f32 = u_xlat8.x;
    u_xlat42 = (x_1128 * x_1130);
    let x_1133 : f32 = u_xlat5.x;
    let x_1134 : f32 = u_xlat42;
    u_xlat42 = (x_1133 * x_1134);
    let x_1136 : f32 = u_xlat40;
    let x_1137 : f32 = u_xlat42;
    u_xlat42 = (x_1136 / x_1137);
    let x_1139 : vec4<f32> = u_xlat0;
    let x_1141 : f32 = u_xlat42;
    let x_1144 : vec3<f32> = u_xlat13;
    u_xlat8 = ((vec3<f32>(x_1139.x, x_1139.y, x_1139.z) * vec3<f32>(x_1141, x_1141, x_1141)) + x_1144);
    let x_1146 : vec3<f32> = u_xlat8;
    let x_1147 : vec4<f32> = u_xlat10;
    let x_1150 : vec3<f32> = u_xlat17;
    u_xlat17 = ((x_1146 * vec3<f32>(x_1147.x, x_1147.y, x_1147.z)) + x_1150);

    continuing {
      let x_1152 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1152 + bitcast<u32>(1i));
    }
  }
  let x_1154 : vec3<f32> = u_xlat19;
  let x_1155 : vec4<f32> = u_xlat6;
  let x_1158 : vec3<f32> = u_xlat4;
  let x_1159 : vec3<f32> = ((x_1154 * vec3<f32>(x_1155.x, x_1155.y, x_1155.z)) + x_1158);
  let x_1160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
  let x_1164 : vec3<f32> = u_xlat17;
  let x_1165 : vec4<f32> = u_xlat0;
  let x_1167 : vec3<f32> = (x_1164 + vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1172 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_1172 == 1.0f);
  let x_1174 : bool = u_xlatb0;
  if (x_1174) {
    let x_1179 : f32 = u_xlat1.x;
    x_1175 = x_1179;
  } else {
    x_1175 = 1.0f;
  }
  let x_1181 : f32 = x_1175;
  SV_Target0.w = x_1181;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


