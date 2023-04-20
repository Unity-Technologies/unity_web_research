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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_75 : LightShadows;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> u_xlat31 : f32;

var<private> u_xlatu31 : u32;

var<private> u_xlati31 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat32 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlatb22 : vec2<bool>;

var<private> u_xlat22 : vec2<f32>;

@group(1) @binding(5) var<uniform> x_465 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_572 : UnityPerDraw;

var<private> u_xlat33 : f32;

var<private> u_xlatu33 : u32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_703 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb17 : bool;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb28 : vec2<bool>;

var<private> u_xlat28 : vec2<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu24 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_415 : f32;
  var x_533 : f32;
  var x_544 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_837 : f32;
  var x_849 : f32;
  var txVec1 : vec3<f32>;
  var x_1313 : f32;
  var x_1326 : f32;
  var x_1384 : f32;
  var x_1395 : vec3<f32>;
  var x_1492 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  let x_53 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_52, x_53);
  let x_58 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_58);
  let x_61 : vec3<f32> = u_xlat1;
  let x_63 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63);
  let x_67 : vec3<f32> = vs_TEXCOORD1;
  let x_77 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres0;
  let x_80 : vec3<f32> = (x_67 + -(vec3<f32>(x_77.x, x_77.y, x_77.z)));
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec3<f32> = vs_TEXCOORD1;
  let x_87 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres1;
  let x_90 : vec3<f32> = (x_84 + -(vec3<f32>(x_87.x, x_87.y, x_87.z)));
  let x_91 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_94 : vec3<f32> = vs_TEXCOORD1;
  let x_97 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres2;
  let x_100 : vec3<f32> = (x_94 + -(vec3<f32>(x_97.x, x_97.y, x_97.z)));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_104 : vec3<f32> = vs_TEXCOORD1;
  let x_107 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_104 + -(vec3<f32>(x_107.x, x_107.y, x_107.z)));
  let x_111 : vec4<f32> = u_xlat2;
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_117 : vec4<f32> = u_xlat3;
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_117.x, x_117.y, x_117.z), vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_124 : vec4<f32> = u_xlat4;
  let x_126 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : vec3<f32> = u_xlat5;
  let x_132 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_131, x_132);
  let x_140 : vec4<f32> = u_xlat2;
  let x_143 : vec4<f32> = x_75.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_140 < x_143);
  let x_147 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_147);
  let x_153 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_153);
  let x_157 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_157);
  let x_161 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_161);
  let x_165 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_165);
  let x_171 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_171);
  let x_175 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_175);
  let x_178 : vec4<f32> = u_xlat2;
  let x_180 : vec4<f32> = u_xlat3;
  let x_182 : vec3<f32> = (vec3<f32>(x_178.x, x_178.y, x_178.z) + vec3<f32>(x_180.y, x_180.z, x_180.w));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat2;
  let x_188 : vec3<f32> = max(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_189.x, x_188.x, x_188.y, x_188.z);
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat31 = dot(x_192, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_198 : f32 = u_xlat31;
  u_xlat31 = (-(x_198) + 4.0f);
  let x_203 : f32 = u_xlat31;
  u_xlatu31 = u32(x_203);
  let x_207 : u32 = u_xlatu31;
  u_xlati31 = (bitcast<i32>(x_207) << bitcast<u32>(2i));
  let x_210 : vec3<f32> = vs_TEXCOORD1;
  let x_212 : i32 = u_xlati31;
  let x_215 : i32 = u_xlati31;
  let x_219 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_212 + 1i) / 4i)][((x_215 + 1i) % 4i)];
  let x_221 : vec3<f32> = (vec3<f32>(x_210.y, x_210.y, x_210.y) * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : i32 = u_xlati31;
  let x_226 : i32 = u_xlati31;
  let x_229 : vec4<f32> = x_75.x_MainLightWorldToShadow[(x_224 / 4i)][(x_226 % 4i)];
  let x_231 : vec3<f32> = vs_TEXCOORD1;
  let x_234 : vec4<f32> = u_xlat2;
  let x_236 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.x, x_231.x, x_231.x)) + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : i32 = u_xlati31;
  let x_242 : i32 = u_xlati31;
  let x_246 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_239 + 2i) / 4i)][((x_242 + 2i) % 4i)];
  let x_248 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec3<f32> = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(x_248.z, x_248.z, x_248.z)) + vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat2;
  let x_258 : i32 = u_xlati31;
  let x_261 : i32 = u_xlati31;
  let x_265 : vec4<f32> = x_75.x_MainLightWorldToShadow[((x_258 + 3i) / 4i)][((x_261 + 3i) % 4i)];
  let x_267 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_272 : f32 = vs_TEXCOORD1.y;
  let x_275 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat31 = (x_272 * x_275);
  let x_278 : f32 = x_28.unity_MatrixV[0i].z;
  let x_280 : f32 = vs_TEXCOORD1.x;
  let x_282 : f32 = u_xlat31;
  u_xlat31 = ((x_278 * x_280) + x_282);
  let x_285 : f32 = x_28.unity_MatrixV[2i].z;
  let x_287 : f32 = vs_TEXCOORD1.z;
  let x_289 : f32 = u_xlat31;
  u_xlat31 = ((x_285 * x_287) + x_289);
  let x_291 : f32 = u_xlat31;
  let x_293 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat31 = (x_291 + x_293);
  let x_295 : f32 = u_xlat31;
  let x_298 : f32 = x_28.x_ProjectionParams.y;
  u_xlat31 = (-(x_295) + -(x_298));
  let x_301 : f32 = u_xlat31;
  u_xlat31 = max(x_301, 0.0f);
  let x_303 : f32 = u_xlat31;
  let x_306 : f32 = x_28.unity_FogParams.x;
  u_xlat31 = (x_303 * x_306);
  let x_314 : vec2<f32> = vs_TEXCOORD7;
  let x_316 : f32 = x_28.x_GlobalMipBias.x;
  let x_317 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_314, x_316);
  u_xlat3 = x_317;
  let x_322 : vec2<f32> = vs_TEXCOORD7;
  let x_324 : f32 = x_28.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_322, x_324);
  let x_326 : vec3<f32> = vec3<f32>(x_325.x, x_325.y, x_325.z);
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_337 : vec3<f32> = u_xlat1;
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat32 = dot(x_337, vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : f32 = u_xlat32;
  u_xlat32 = (x_341 + 0.5f);
  let x_344 : f32 = u_xlat32;
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : vec3<f32> = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : f32 = u_xlat3.w;
  u_xlat32 = max(x_352, 0.00009999999747378752f);
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : f32 = u_xlat32;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) / vec3<f32>(x_357, x_357, x_357));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_364 : vec4<f32> = u_xlat2;
  let x_365 : vec2<f32> = vec2<f32>(x_364.x, x_364.y);
  let x_367 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_365.x, x_365.y, x_367);
  let x_379 : vec3<f32> = txVec0;
  let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
  u_xlat2.x = x_381;
  let x_385 : f32 = x_75.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_385) + 1.0f);
  let x_390 : f32 = u_xlat2.x;
  let x_392 : f32 = x_75.x_MainLightShadowParams.x;
  let x_395 : f32 = u_xlat12.x;
  u_xlat2.x = ((x_390 * x_392) + x_395);
  let x_400 : f32 = u_xlat2.z;
  u_xlatb12 = (0.0f >= x_400);
  let x_406 : f32 = u_xlat2.z;
  u_xlatb22.x = (x_406 >= 1.0f);
  let x_410 : bool = u_xlatb22.x;
  let x_411 : bool = u_xlatb12;
  u_xlatb12 = (x_410 | x_411);
  let x_413 : bool = u_xlatb12;
  if (x_413) {
    x_415 = 1.0f;
  } else {
    let x_420 : f32 = u_xlat2.x;
    x_415 = x_420;
  }
  let x_421 : f32 = x_415;
  u_xlat2.x = x_421;
  let x_423 : vec3<f32> = vs_TEXCOORD1;
  let x_426 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat12 = (x_423 + -(x_426));
  let x_429 : vec3<f32> = u_xlat12;
  let x_430 : vec3<f32> = u_xlat12;
  u_xlat12.x = dot(x_429, x_430);
  let x_436 : f32 = u_xlat12.x;
  let x_438 : f32 = x_75.x_MainLightShadowParams.z;
  let x_441 : f32 = x_75.x_MainLightShadowParams.w;
  u_xlat22.x = ((x_436 * x_438) + x_441);
  let x_445 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_445, 0.0f, 1.0f);
  let x_449 : f32 = u_xlat2.x;
  u_xlat32 = (-(x_449) + 1.0f);
  let x_453 : f32 = u_xlat22.x;
  let x_454 : f32 = u_xlat32;
  let x_457 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_453 * x_454) + x_457);
  let x_467 : f32 = x_465.x_MainLightCookieTextureFormat;
  u_xlatb22.x = !((x_467 == -1.0f));
  let x_471 : bool = u_xlatb22.x;
  if (x_471) {
    let x_474 : vec3<f32> = vs_TEXCOORD1;
    let x_477 : vec4<f32> = x_465.x_MainLightWorldToLight[1i];
    u_xlat22 = (vec2<f32>(x_474.y, x_474.y) * vec2<f32>(x_477.x, x_477.y));
    let x_481 : vec4<f32> = x_465.x_MainLightWorldToLight[0i];
    let x_483 : vec3<f32> = vs_TEXCOORD1;
    let x_486 : vec2<f32> = u_xlat22;
    u_xlat22 = ((vec2<f32>(x_481.x, x_481.y) * vec2<f32>(x_483.x, x_483.x)) + x_486);
    let x_489 : vec4<f32> = x_465.x_MainLightWorldToLight[2i];
    let x_491 : vec3<f32> = vs_TEXCOORD1;
    let x_494 : vec2<f32> = u_xlat22;
    u_xlat22 = ((vec2<f32>(x_489.x, x_489.y) * vec2<f32>(x_491.z, x_491.z)) + x_494);
    let x_496 : vec2<f32> = u_xlat22;
    let x_498 : vec4<f32> = x_465.x_MainLightWorldToLight[3i];
    u_xlat22 = (x_496 + vec2<f32>(x_498.x, x_498.y));
    let x_501 : vec2<f32> = u_xlat22;
    u_xlat22 = ((x_501 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_510 : vec2<f32> = u_xlat22;
    let x_512 : f32 = x_28.x_GlobalMipBias.x;
    let x_513 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_510, x_512);
    u_xlat4 = x_513;
    let x_515 : f32 = x_465.x_MainLightCookieTextureFormat;
    let x_517 : f32 = x_465.x_MainLightCookieTextureFormat;
    let x_519 : f32 = x_465.x_MainLightCookieTextureFormat;
    let x_521 : f32 = x_465.x_MainLightCookieTextureFormat;
    let x_522 : vec4<f32> = vec4<f32>(x_515, x_517, x_519, x_521);
    let x_529 : vec4<bool> = (vec4<f32>(x_522.x, x_522.y, x_522.z, x_522.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb22 = vec2<bool>(x_529.x, x_529.y);
    let x_532 : bool = u_xlatb22.y;
    if (x_532) {
      let x_537 : f32 = u_xlat4.w;
      x_533 = x_537;
    } else {
      let x_540 : f32 = u_xlat4.x;
      x_533 = x_540;
    }
    let x_541 : f32 = x_533;
    u_xlat32 = x_541;
    let x_543 : bool = u_xlatb22.x;
    if (x_543) {
      let x_547 : vec4<f32> = u_xlat4;
      x_544 = vec3<f32>(x_547.x, x_547.y, x_547.z);
    } else {
      let x_550 : f32 = u_xlat32;
      x_544 = vec3<f32>(x_550, x_550, x_550);
    }
    let x_552 : vec3<f32> = x_544;
    let x_553 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_559 : vec4<f32> = u_xlat4;
  let x_562 : vec4<f32> = x_28.x_MainLightColor;
  let x_564 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_568 : f32 = u_xlat2.x;
  let x_574 : f32 = x_572.unity_LightData.z;
  u_xlat2.x = (x_568 * x_574);
  let x_577 : vec4<f32> = u_xlat2;
  let x_579 : vec4<f32> = u_xlat4;
  let x_581 : vec3<f32> = (vec3<f32>(x_577.x, x_577.x, x_577.x) * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_581.x, x_582.y, x_581.y, x_581.z);
  let x_585 : vec3<f32> = u_xlat1;
  let x_587 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat33 = dot(x_585, vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : f32 = u_xlat33;
  u_xlat33 = clamp(x_590, 0.0f, 1.0f);
  let x_592 : vec4<f32> = u_xlat2;
  let x_594 : f32 = u_xlat33;
  let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.z, x_592.w) * vec3<f32>(x_594, x_594, x_594));
  let x_597 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_596.x, x_597.y, x_596.y, x_596.z);
  let x_599 : vec4<f32> = u_xlat0;
  let x_601 : vec4<f32> = u_xlat2;
  let x_603 : vec3<f32> = (vec3<f32>(x_599.y, x_599.z, x_599.w) * vec3<f32>(x_601.x, x_601.z, x_601.w));
  let x_604 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_603.x, x_604.y, x_603.y, x_603.z);
  let x_607 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_609 : f32 = x_572.unity_LightData.y;
  u_xlat33 = min(x_607, x_609);
  let x_612 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_612));
  let x_616 : f32 = u_xlat12.x;
  let x_619 : f32 = x_75.x_AdditionalShadowFadeParams.x;
  let x_622 : f32 = x_75.x_AdditionalShadowFadeParams.y;
  u_xlat12.x = ((x_616 * x_619) + x_622);
  let x_626 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_626, 0.0f, 1.0f);
  let x_631 : f32 = x_465.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_633 : f32 = x_465.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_635 : f32 = x_465.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_637 : f32 = x_465.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_638 : vec4<f32> = vec4<f32>(x_631, x_633, x_635, x_637);
  let x_645 : vec4<bool> = (vec4<f32>(x_638.x, x_638.y, x_638.z, x_638.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_645.x, x_645.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_657 : u32 = u_xlatu_loop_1;
    let x_658 : u32 = u_xlatu33;
    if ((x_657 < x_658)) {
    } else {
      break;
    }
    let x_661 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_661 >> 2u);
    let x_664 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_664 & 3u));
    let x_668 : u32 = u_xlatu34;
    let x_671 : vec4<f32> = x_572.unity_LightIndices[bitcast<i32>(x_668)];
    let x_681 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_686 : vec4<u32> = indexable[x_681];
    u_xlat34 = dot(x_671, bitcast<vec4<f32>>(x_686));
    let x_690 : f32 = u_xlat34;
    u_xlati34 = i32(x_690);
    let x_693 : vec3<f32> = vs_TEXCOORD1;
    let x_704 : i32 = u_xlati34;
    let x_706 : vec4<f32> = x_703.x_AdditionalLightsPosition[x_704];
    let x_709 : i32 = u_xlati34;
    let x_711 : vec4<f32> = x_703.x_AdditionalLightsPosition[x_709];
    u_xlat6 = ((-(x_693) * vec3<f32>(x_706.w, x_706.w, x_706.w)) + vec3<f32>(x_711.x, x_711.y, x_711.z));
    let x_715 : vec3<f32> = u_xlat6;
    let x_716 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_715, x_716);
    let x_718 : f32 = u_xlat35;
    u_xlat35 = max(x_718, 0.00006103515625f);
    let x_722 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_722);
    let x_724 : f32 = u_xlat36;
    let x_726 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_724, x_724, x_724) * x_726);
    let x_728 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_728);
    let x_730 : f32 = u_xlat35;
    let x_731 : i32 = u_xlati34;
    let x_733 : f32 = x_703.x_AdditionalLightsAttenuation[x_731].x;
    u_xlat35 = (x_730 * x_733);
    let x_735 : f32 = u_xlat35;
    let x_737 : f32 = u_xlat35;
    u_xlat35 = ((-(x_735) * x_737) + 1.0f);
    let x_740 : f32 = u_xlat35;
    u_xlat35 = max(x_740, 0.0f);
    let x_742 : f32 = u_xlat35;
    let x_743 : f32 = u_xlat35;
    u_xlat35 = (x_742 * x_743);
    let x_745 : f32 = u_xlat35;
    let x_746 : f32 = u_xlat36;
    u_xlat35 = (x_745 * x_746);
    let x_748 : i32 = u_xlati34;
    let x_750 : vec4<f32> = x_703.x_AdditionalLightsSpotDir[x_748];
    let x_752 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_750.x, x_750.y, x_750.z), x_752);
    let x_754 : f32 = u_xlat36;
    let x_755 : i32 = u_xlati34;
    let x_757 : f32 = x_703.x_AdditionalLightsAttenuation[x_755].z;
    let x_759 : i32 = u_xlati34;
    let x_761 : f32 = x_703.x_AdditionalLightsAttenuation[x_759].w;
    u_xlat36 = ((x_754 * x_757) + x_761);
    let x_763 : f32 = u_xlat36;
    u_xlat36 = clamp(x_763, 0.0f, 1.0f);
    let x_765 : f32 = u_xlat36;
    let x_766 : f32 = u_xlat36;
    u_xlat36 = (x_765 * x_766);
    let x_768 : f32 = u_xlat35;
    let x_769 : f32 = u_xlat36;
    u_xlat35 = (x_768 * x_769);
    let x_773 : i32 = u_xlati34;
    let x_775 : f32 = x_75.x_AdditionalShadowParams[x_773].w;
    u_xlati36 = i32(x_775);
    let x_780 : i32 = u_xlati36;
    u_xlatb7.x = (x_780 >= 0i);
    let x_784 : bool = u_xlatb7.x;
    if (x_784) {
      let x_788 : i32 = u_xlati34;
      let x_790 : f32 = x_75.x_AdditionalShadowParams[x_788].z;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_790, x_790, x_790, x_790))));
      let x_796 : bool = u_xlatb7.x;
      if (x_796) {
        let x_799 : vec3<f32> = u_xlat6;
        let x_802 : vec3<f32> = u_xlat6;
        let x_805 : vec4<bool> = (abs(vec4<f32>(x_799.z, x_799.z, x_799.y, x_799.z)) >= abs(vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.x)));
        u_xlatb7 = vec3<bool>(x_805.x, x_805.y, x_805.z);
        let x_808 : bool = u_xlatb7.y;
        let x_810 : bool = u_xlatb7.x;
        u_xlatb7.x = (x_808 & x_810);
        let x_814 : vec3<f32> = u_xlat6;
        let x_817 : vec4<bool> = (-(vec4<f32>(x_814.z, x_814.y, x_814.x, x_814.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb8 = vec3<bool>(x_817.x, x_817.y, x_817.z);
        let x_821 : bool = u_xlatb8.x;
        u_xlat17.x = select(4.0f, 5.0f, x_821);
        let x_826 : bool = u_xlatb8.y;
        u_xlat17.z = select(2.0f, 3.0f, x_826);
        let x_831 : bool = u_xlatb8.z;
        u_xlat8.x = select(0.0f, 1.0f, x_831);
        let x_836 : bool = u_xlatb7.z;
        if (x_836) {
          let x_841 : f32 = u_xlat17.z;
          x_837 = x_841;
        } else {
          let x_844 : f32 = u_xlat8.x;
          x_837 = x_844;
        }
        let x_845 : f32 = x_837;
        u_xlat27 = x_845;
        let x_848 : bool = u_xlatb7.x;
        if (x_848) {
          let x_853 : f32 = u_xlat17.x;
          x_849 = x_853;
        } else {
          let x_855 : f32 = u_xlat27;
          x_849 = x_855;
        }
        let x_856 : f32 = x_849;
        u_xlat7.x = x_856;
        let x_858 : i32 = u_xlati34;
        let x_860 : f32 = x_75.x_AdditionalShadowParams[x_858].w;
        u_xlat17.x = trunc(x_860);
        let x_864 : f32 = u_xlat7.x;
        let x_866 : f32 = u_xlat17.x;
        u_xlat7.x = (x_864 + x_866);
        let x_870 : f32 = u_xlat7.x;
        u_xlati36 = i32(x_870);
      }
      let x_872 : i32 = u_xlati36;
      u_xlati36 = (x_872 << bitcast<u32>(2i));
      let x_874 : vec3<f32> = vs_TEXCOORD1;
      let x_877 : i32 = u_xlati36;
      let x_880 : i32 = u_xlati36;
      let x_884 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_877 + 1i) / 4i)][((x_880 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_874.y, x_874.y, x_874.y, x_874.y) * x_884);
      let x_886 : i32 = u_xlati36;
      let x_888 : i32 = u_xlati36;
      let x_891 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[(x_886 / 4i)][(x_888 % 4i)];
      let x_892 : vec3<f32> = vs_TEXCOORD1;
      let x_895 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_891 * vec4<f32>(x_892.x, x_892.x, x_892.x, x_892.x)) + x_895);
      let x_897 : i32 = u_xlati36;
      let x_900 : i32 = u_xlati36;
      let x_904 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_897 + 2i) / 4i)][((x_900 + 2i) % 4i)];
      let x_905 : vec3<f32> = vs_TEXCOORD1;
      let x_908 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_904 * vec4<f32>(x_905.z, x_905.z, x_905.z, x_905.z)) + x_908);
      let x_910 : vec4<f32> = u_xlat7;
      let x_911 : i32 = u_xlati36;
      let x_914 : i32 = u_xlati36;
      let x_918 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_911 + 3i) / 4i)][((x_914 + 3i) % 4i)];
      u_xlat7 = (x_910 + x_918);
      let x_920 : vec4<f32> = u_xlat7;
      let x_922 : vec4<f32> = u_xlat7;
      let x_924 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) / vec3<f32>(x_922.w, x_922.w, x_922.w));
      let x_925 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
      let x_928 : vec4<f32> = u_xlat7;
      let x_929 : vec2<f32> = vec2<f32>(x_928.x, x_928.y);
      let x_931 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_929.x, x_929.y, x_931);
      let x_939 : vec3<f32> = txVec1;
      let x_941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_939.xy, x_939.z);
      u_xlat36 = x_941;
      let x_942 : i32 = u_xlati34;
      let x_944 : f32 = x_75.x_AdditionalShadowParams[x_942].x;
      u_xlat7.x = (1.0f + -(x_944));
      let x_948 : f32 = u_xlat36;
      let x_949 : i32 = u_xlati34;
      let x_951 : f32 = x_75.x_AdditionalShadowParams[x_949].x;
      let x_954 : f32 = u_xlat7.x;
      u_xlat36 = ((x_948 * x_951) + x_954);
      let x_957 : f32 = u_xlat7.z;
      u_xlatb7.x = (0.0f >= x_957);
      let x_962 : f32 = u_xlat7.z;
      u_xlatb17 = (x_962 >= 1.0f);
      let x_964 : bool = u_xlatb17;
      let x_966 : bool = u_xlatb7.x;
      u_xlatb7.x = (x_964 | x_966);
      let x_970 : bool = u_xlatb7.x;
      let x_971 : f32 = u_xlat36;
      u_xlat36 = select(x_971, 1.0f, x_970);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_974 : f32 = u_xlat36;
    u_xlat7.x = (-(x_974) + 1.0f);
    let x_979 : f32 = u_xlat12.x;
    let x_981 : f32 = u_xlat7.x;
    let x_983 : f32 = u_xlat36;
    u_xlat36 = ((x_979 * x_981) + x_983);
    let x_986 : i32 = u_xlati34;
    u_xlati7 = (1i << bitcast<u32>((x_986 & 31i)));
    let x_990 : i32 = u_xlati7;
    let x_993 : f32 = x_465.x_AdditionalLightsCookieEnableBits;
    u_xlati7 = bitcast<i32>((bitcast<u32>(x_990) & bitcast<u32>(x_993)));
    let x_997 : i32 = u_xlati7;
    if ((x_997 != 0i)) {
      let x_1001 : i32 = u_xlati34;
      let x_1003 : f32 = x_465.x_AdditionalLightsLightTypes[x_1001].el;
      u_xlati7 = i32(x_1003);
      let x_1006 : i32 = u_xlati7;
      u_xlati17 = select(1i, 0i, (x_1006 != 0i));
      let x_1010 : i32 = u_xlati34;
      u_xlati27 = (x_1010 << bitcast<u32>(2i));
      let x_1012 : i32 = u_xlati17;
      if ((x_1012 != 0i)) {
        let x_1016 : vec3<f32> = vs_TEXCOORD1;
        let x_1018 : i32 = u_xlati27;
        let x_1021 : i32 = u_xlati27;
        let x_1025 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[((x_1018 + 1i) / 4i)][((x_1021 + 1i) % 4i)];
        let x_1027 : vec3<f32> = (vec3<f32>(x_1016.y, x_1016.y, x_1016.y) * vec3<f32>(x_1025.x, x_1025.y, x_1025.w));
        let x_1028 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
        let x_1030 : i32 = u_xlati27;
        let x_1032 : i32 = u_xlati27;
        let x_1035 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[(x_1030 / 4i)][(x_1032 % 4i)];
        let x_1037 : vec3<f32> = vs_TEXCOORD1;
        let x_1040 : vec4<f32> = u_xlat8;
        let x_1042 : vec3<f32> = ((vec3<f32>(x_1035.x, x_1035.y, x_1035.w) * vec3<f32>(x_1037.x, x_1037.x, x_1037.x)) + vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
        let x_1045 : i32 = u_xlati27;
        let x_1048 : i32 = u_xlati27;
        let x_1052 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[((x_1045 + 2i) / 4i)][((x_1048 + 2i) % 4i)];
        let x_1054 : vec3<f32> = vs_TEXCOORD1;
        let x_1057 : vec4<f32> = u_xlat8;
        let x_1059 : vec3<f32> = ((vec3<f32>(x_1052.x, x_1052.y, x_1052.w) * vec3<f32>(x_1054.z, x_1054.z, x_1054.z)) + vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat8;
        let x_1064 : i32 = u_xlati27;
        let x_1067 : i32 = u_xlati27;
        let x_1071 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[((x_1064 + 3i) / 4i)][((x_1067 + 3i) % 4i)];
        let x_1073 : vec3<f32> = (vec3<f32>(x_1062.x, x_1062.y, x_1062.z) + vec3<f32>(x_1071.x, x_1071.y, x_1071.w));
        let x_1074 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
        let x_1076 : vec4<f32> = u_xlat8;
        let x_1078 : vec4<f32> = u_xlat8;
        let x_1080 : vec2<f32> = (vec2<f32>(x_1076.x, x_1076.y) / vec2<f32>(x_1078.z, x_1078.z));
        let x_1081 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1080.x, x_1081.y, x_1080.y);
        let x_1083 : vec3<f32> = u_xlat17;
        let x_1086 : vec2<f32> = ((vec2<f32>(x_1083.x, x_1083.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1087 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1086.x, x_1087.y, x_1086.y);
        let x_1089 : vec3<f32> = u_xlat17;
        let x_1093 : vec2<f32> = clamp(vec2<f32>(x_1089.x, x_1089.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1094 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1093.x, x_1094.y, x_1093.y);
        let x_1096 : i32 = u_xlati34;
        let x_1098 : vec4<f32> = x_465.x_AdditionalLightsCookieAtlasUVRects[x_1096];
        let x_1100 : vec3<f32> = u_xlat17;
        let x_1103 : i32 = u_xlati34;
        let x_1105 : vec4<f32> = x_465.x_AdditionalLightsCookieAtlasUVRects[x_1103];
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1100.x, x_1100.z)) + vec2<f32>(x_1105.z, x_1105.w));
        let x_1108 : vec3<f32> = u_xlat17;
        u_xlat17 = vec3<f32>(x_1107.x, x_1108.y, x_1107.y);
      } else {
        let x_1111 : i32 = u_xlati7;
        u_xlatb7.x = (x_1111 == 1i);
        let x_1115 : bool = u_xlatb7.x;
        u_xlati7 = select(0i, 1i, x_1115);
        let x_1117 : i32 = u_xlati7;
        if ((x_1117 != 0i)) {
          let x_1121 : vec3<f32> = vs_TEXCOORD1;
          let x_1123 : i32 = u_xlati27;
          let x_1126 : i32 = u_xlati27;
          let x_1130 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[((x_1123 + 1i) / 4i)][((x_1126 + 1i) % 4i)];
          let x_1132 : vec2<f32> = (vec2<f32>(x_1121.y, x_1121.y) * vec2<f32>(x_1130.x, x_1130.y));
          let x_1133 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
          let x_1135 : i32 = u_xlati27;
          let x_1137 : i32 = u_xlati27;
          let x_1140 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[(x_1135 / 4i)][(x_1137 % 4i)];
          let x_1142 : vec3<f32> = vs_TEXCOORD1;
          let x_1145 : vec4<f32> = u_xlat8;
          let x_1147 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1142.x, x_1142.x)) + vec2<f32>(x_1145.x, x_1145.y));
          let x_1148 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1147.x, x_1147.y, x_1148.z, x_1148.w);
          let x_1150 : i32 = u_xlati27;
          let x_1153 : i32 = u_xlati27;
          let x_1157 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[((x_1150 + 2i) / 4i)][((x_1153 + 2i) % 4i)];
          let x_1159 : vec3<f32> = vs_TEXCOORD1;
          let x_1162 : vec4<f32> = u_xlat8;
          let x_1164 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(x_1159.z, x_1159.z)) + vec2<f32>(x_1162.x, x_1162.y));
          let x_1165 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
          let x_1167 : vec4<f32> = u_xlat8;
          let x_1169 : i32 = u_xlati27;
          let x_1172 : i32 = u_xlati27;
          let x_1176 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[((x_1169 + 3i) / 4i)][((x_1172 + 3i) % 4i)];
          let x_1178 : vec2<f32> = (vec2<f32>(x_1167.x, x_1167.y) + vec2<f32>(x_1176.x, x_1176.y));
          let x_1179 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
          let x_1181 : vec4<f32> = u_xlat8;
          let x_1184 : vec2<f32> = ((vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1185 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
          let x_1187 : vec4<f32> = u_xlat8;
          let x_1189 : vec2<f32> = fract(vec2<f32>(x_1187.x, x_1187.y));
          let x_1190 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
          let x_1192 : i32 = u_xlati34;
          let x_1194 : vec4<f32> = x_465.x_AdditionalLightsCookieAtlasUVRects[x_1192];
          let x_1196 : vec4<f32> = u_xlat8;
          let x_1199 : i32 = u_xlati34;
          let x_1201 : vec4<f32> = x_465.x_AdditionalLightsCookieAtlasUVRects[x_1199];
          let x_1203 : vec2<f32> = ((vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1201.z, x_1201.w));
          let x_1204 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1203.x, x_1204.y, x_1203.y);
        } else {
          let x_1207 : vec3<f32> = vs_TEXCOORD1;
          let x_1209 : i32 = u_xlati27;
          let x_1212 : i32 = u_xlati27;
          let x_1216 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[((x_1209 + 1i) / 4i)][((x_1212 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1207.y, x_1207.y, x_1207.y, x_1207.y) * x_1216);
          let x_1218 : i32 = u_xlati27;
          let x_1220 : i32 = u_xlati27;
          let x_1223 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[(x_1218 / 4i)][(x_1220 % 4i)];
          let x_1224 : vec3<f32> = vs_TEXCOORD1;
          let x_1227 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1223 * vec4<f32>(x_1224.x, x_1224.x, x_1224.x, x_1224.x)) + x_1227);
          let x_1229 : i32 = u_xlati27;
          let x_1232 : i32 = u_xlati27;
          let x_1236 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[((x_1229 + 2i) / 4i)][((x_1232 + 2i) % 4i)];
          let x_1237 : vec3<f32> = vs_TEXCOORD1;
          let x_1240 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1236 * vec4<f32>(x_1237.z, x_1237.z, x_1237.z, x_1237.z)) + x_1240);
          let x_1242 : vec4<f32> = u_xlat8;
          let x_1243 : i32 = u_xlati27;
          let x_1246 : i32 = u_xlati27;
          let x_1250 : vec4<f32> = x_465.x_AdditionalLightsWorldToLights[((x_1243 + 3i) / 4i)][((x_1246 + 3i) % 4i)];
          u_xlat8 = (x_1242 + x_1250);
          let x_1252 : vec4<f32> = u_xlat8;
          let x_1254 : vec4<f32> = u_xlat8;
          let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) / vec3<f32>(x_1254.w, x_1254.w, x_1254.w));
          let x_1257 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
          let x_1259 : vec4<f32> = u_xlat8;
          let x_1261 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(vec3<f32>(x_1259.x, x_1259.y, x_1259.z), vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
          let x_1266 : f32 = u_xlat7.x;
          u_xlat7.x = inverseSqrt(x_1266);
          let x_1269 : vec4<f32> = u_xlat7;
          let x_1271 : vec4<f32> = u_xlat8;
          let x_1273 : vec3<f32> = (vec3<f32>(x_1269.x, x_1269.x, x_1269.x) * vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
          let x_1274 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
          let x_1276 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(abs(vec3<f32>(x_1276.x, x_1276.y, x_1276.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1283 : f32 = u_xlat7.x;
          u_xlat7.x = max(x_1283, 0.00000099999999747524f);
          let x_1288 : f32 = u_xlat7.x;
          u_xlat7.x = (1.0f / x_1288);
          let x_1292 : vec4<f32> = u_xlat7;
          let x_1294 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1292.x, x_1292.x, x_1292.x) * vec3<f32>(x_1294.z, x_1294.x, x_1294.y));
          let x_1298 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1298);
          let x_1302 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1302, 0.0f, 1.0f);
          let x_1306 : vec3<f32> = u_xlat9;
          let x_1308 : vec4<bool> = (vec4<f32>(x_1306.y, x_1306.z, x_1306.y, x_1306.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb28 = vec2<bool>(x_1308.x, x_1308.y);
          let x_1312 : bool = u_xlatb28.x;
          if (x_1312) {
            let x_1317 : f32 = u_xlat9.x;
            x_1313 = x_1317;
          } else {
            let x_1320 : f32 = u_xlat9.x;
            x_1313 = -(x_1320);
          }
          let x_1322 : f32 = x_1313;
          u_xlat28.x = x_1322;
          let x_1325 : bool = u_xlatb28.y;
          if (x_1325) {
            let x_1330 : f32 = u_xlat9.x;
            x_1326 = x_1330;
          } else {
            let x_1333 : f32 = u_xlat9.x;
            x_1326 = -(x_1333);
          }
          let x_1335 : f32 = x_1326;
          u_xlat28.y = x_1335;
          let x_1337 : vec4<f32> = u_xlat8;
          let x_1339 : vec4<f32> = u_xlat7;
          let x_1342 : vec2<f32> = u_xlat28;
          let x_1343 : vec2<f32> = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1339.x, x_1339.x)) + x_1342);
          let x_1344 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1343.x, x_1344.y, x_1343.y, x_1344.w);
          let x_1346 : vec4<f32> = u_xlat7;
          let x_1349 : vec2<f32> = ((vec2<f32>(x_1346.x, x_1346.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1350 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1349.x, x_1350.y, x_1349.y, x_1350.w);
          let x_1352 : vec4<f32> = u_xlat7;
          let x_1356 : vec2<f32> = clamp(vec2<f32>(x_1352.x, x_1352.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1357 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1356.x, x_1357.y, x_1356.y, x_1357.w);
          let x_1359 : i32 = u_xlati34;
          let x_1361 : vec4<f32> = x_465.x_AdditionalLightsCookieAtlasUVRects[x_1359];
          let x_1363 : vec4<f32> = u_xlat7;
          let x_1366 : i32 = u_xlati34;
          let x_1368 : vec4<f32> = x_465.x_AdditionalLightsCookieAtlasUVRects[x_1366];
          let x_1370 : vec2<f32> = ((vec2<f32>(x_1361.x, x_1361.y) * vec2<f32>(x_1363.x, x_1363.z)) + vec2<f32>(x_1368.z, x_1368.w));
          let x_1371 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1370.x, x_1371.y, x_1370.y);
        }
      }
      let x_1378 : vec3<f32> = u_xlat17;
      let x_1380 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1378.x, x_1378.z), 0.0f);
      u_xlat7 = x_1380;
      let x_1383 : bool = u_xlatb4.y;
      if (x_1383) {
        let x_1388 : f32 = u_xlat7.w;
        x_1384 = x_1388;
      } else {
        let x_1391 : f32 = u_xlat7.x;
        x_1384 = x_1391;
      }
      let x_1392 : f32 = x_1384;
      u_xlat37 = x_1392;
      let x_1394 : bool = u_xlatb4.x;
      if (x_1394) {
        let x_1398 : vec4<f32> = u_xlat7;
        x_1395 = vec3<f32>(x_1398.x, x_1398.y, x_1398.z);
      } else {
        let x_1401 : f32 = u_xlat37;
        x_1395 = vec3<f32>(x_1401, x_1401, x_1401);
      }
      let x_1403 : vec3<f32> = x_1395;
      let x_1404 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1410 : vec4<f32> = u_xlat7;
    let x_1412 : i32 = u_xlati34;
    let x_1414 : vec4<f32> = x_703.x_AdditionalLightsColor[x_1412];
    let x_1416 : vec3<f32> = (vec3<f32>(x_1410.x, x_1410.y, x_1410.z) * vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
    let x_1417 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
    let x_1419 : f32 = u_xlat35;
    let x_1420 : f32 = u_xlat36;
    u_xlat34 = (x_1419 * x_1420);
    let x_1422 : f32 = u_xlat34;
    let x_1424 : vec4<f32> = u_xlat7;
    let x_1426 : vec3<f32> = (vec3<f32>(x_1422, x_1422, x_1422) * vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
    let x_1427 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
    let x_1429 : vec3<f32> = u_xlat1;
    let x_1430 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_1429, x_1430);
    let x_1432 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1432, 0.0f, 1.0f);
    let x_1434 : f32 = u_xlat34;
    let x_1436 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1434, x_1434, x_1434) * vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : vec3<f32> = u_xlat6;
    let x_1440 : vec4<f32> = u_xlat0;
    let x_1443 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1439 * vec3<f32>(x_1440.y, x_1440.z, x_1440.w)) + x_1443);

    continuing {
      let x_1445 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1445 + bitcast<u32>(1i));
    }
  }
  let x_1448 : vec4<f32> = u_xlat3;
  let x_1450 : vec4<f32> = u_xlat0;
  let x_1453 : vec4<f32> = u_xlat2;
  u_xlat10 = ((vec3<f32>(x_1448.x, x_1448.y, x_1448.z) * vec3<f32>(x_1450.y, x_1450.z, x_1450.w)) + vec3<f32>(x_1453.x, x_1453.z, x_1453.w));
  let x_1456 : vec3<f32> = u_xlat5;
  let x_1457 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1456 + x_1457);
  let x_1459 : f32 = u_xlat31;
  let x_1460 : f32 = u_xlat31;
  u_xlat1.x = (x_1459 * -(x_1460));
  let x_1465 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1465);
  let x_1468 : vec3<f32> = u_xlat10;
  let x_1471 : vec4<f32> = x_28.unity_FogColor;
  u_xlat10 = (x_1468 + -(vec3<f32>(x_1471.x, x_1471.y, x_1471.z)));
  let x_1477 : vec3<f32> = u_xlat1;
  let x_1479 : vec3<f32> = u_xlat10;
  let x_1482 : vec4<f32> = x_28.unity_FogColor;
  let x_1484 : vec3<f32> = ((vec3<f32>(x_1477.x, x_1477.x, x_1477.x) * x_1479) + vec3<f32>(x_1482.x, x_1482.y, x_1482.z));
  let x_1485 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1484.x, x_1484.y, x_1484.z, x_1485.w);
  let x_1489 : f32 = x_41.x_Surface;
  u_xlatb10 = (x_1489 == 1.0f);
  let x_1491 : bool = u_xlatb10;
  if (x_1491) {
    let x_1496 : f32 = u_xlat0.x;
    x_1492 = x_1496;
  } else {
    x_1492 = 1.0f;
  }
  let x_1498 : f32 = x_1492;
  SV_Target0.w = x_1498;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


