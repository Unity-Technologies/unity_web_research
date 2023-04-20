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

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

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

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb12 : vec2<bool>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(1) @binding(5) var<uniform> x_420 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_537 : UnityPerDraw;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu24 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlat24 : f32;

var<private> u_xlati24 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_656 : AdditionalLights;

var<private> u_xlat34 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlati35 : i32;

var<private> u_xlatb36 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlati36 : i32;

var<private> u_xlati7 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb17 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb24 : bool;

var<private> u_xlatu33 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_504 : f32;
  var x_515 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_787 : f32;
  var x_798 : f32;
  var txVec1 : vec3<f32>;
  var x_1245 : f32;
  var x_1258 : f32;
  var x_1316 : f32;
  var x_1327 : vec3<f32>;
  var x_1399 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_36 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_40.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_44.w, x_44.x, x_44.y, x_44.z));
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec3<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_66 : vec3<f32> = vs_TEXCOORD1;
  let x_77 : vec4<f32> = x_75.x_CascadeShadowSplitSpheres0;
  let x_80 : vec3<f32> = (x_66 + -(vec3<f32>(x_77.x, x_77.y, x_77.z)));
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
  let x_276 : vec2<f32> = vs_TEXCOORD7;
  let x_278 : f32 = x_27.x_GlobalMipBias.x;
  let x_279 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_276, x_278);
  u_xlat3 = x_279;
  let x_284 : vec2<f32> = vs_TEXCOORD7;
  let x_286 : f32 = x_27.x_GlobalMipBias.x;
  let x_287 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_284, x_286);
  let x_288 : vec3<f32> = vec3<f32>(x_287.x, x_287.y, x_287.z);
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat3;
  let x_295 : vec3<f32> = (vec3<f32>(x_291.x, x_291.y, x_291.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec3<f32> = u_xlat1;
  let x_299 : vec4<f32> = u_xlat3;
  u_xlat31 = dot(x_298, vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : f32 = u_xlat31;
  u_xlat31 = (x_302 + 0.5f);
  let x_305 : f32 = u_xlat31;
  let x_307 : vec4<f32> = u_xlat4;
  let x_309 : vec3<f32> = (vec3<f32>(x_305, x_305, x_305) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : f32 = u_xlat3.w;
  u_xlat31 = max(x_313, 0.00009999999747378752f);
  let x_316 : vec4<f32> = u_xlat3;
  let x_318 : f32 = u_xlat31;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) / vec3<f32>(x_318, x_318, x_318));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_325 : vec4<f32> = u_xlat2;
  let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
  let x_328 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_326.x, x_326.y, x_328);
  let x_340 : vec3<f32> = txVec0;
  let x_342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_340.xy, x_340.z);
  u_xlat31 = x_342;
  let x_345 : f32 = x_75.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_345) + 1.0f);
  let x_349 : f32 = u_xlat31;
  let x_351 : f32 = x_75.x_MainLightShadowParams.x;
  let x_354 : f32 = u_xlat2.x;
  u_xlat31 = ((x_349 * x_351) + x_354);
  let x_357 : f32 = u_xlat2.z;
  u_xlatb2.x = (0.0f >= x_357);
  let x_364 : f32 = u_xlat2.z;
  u_xlatb12.x = (x_364 >= 1.0f);
  let x_368 : bool = u_xlatb12.x;
  let x_370 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_368 | x_370);
  let x_374 : bool = u_xlatb2.x;
  let x_375 : f32 = u_xlat31;
  u_xlat31 = select(x_375, 1.0f, x_374);
  let x_377 : vec3<f32> = vs_TEXCOORD1;
  let x_380 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_382 : vec3<f32> = (x_377 + -(x_380));
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_393 : f32 = u_xlat2.x;
  let x_395 : f32 = x_75.x_MainLightShadowParams.z;
  let x_398 : f32 = x_75.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_393 * x_395) + x_398);
  let x_402 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_402, 0.0f, 1.0f);
  let x_406 : f32 = u_xlat31;
  u_xlat22 = (-(x_406) + 1.0f);
  let x_410 : f32 = u_xlat12.x;
  let x_411 : f32 = u_xlat22;
  let x_413 : f32 = u_xlat31;
  u_xlat31 = ((x_410 * x_411) + x_413);
  let x_422 : f32 = x_420.x_MainLightCookieTextureFormat;
  u_xlatb12.x = !((x_422 == -1.0f));
  let x_426 : bool = u_xlatb12.x;
  if (x_426) {
    let x_429 : vec3<f32> = vs_TEXCOORD1;
    let x_432 : vec4<f32> = x_420.x_MainLightWorldToLight[1i];
    let x_434 : vec2<f32> = (vec2<f32>(x_429.y, x_429.y) * vec2<f32>(x_432.x, x_432.y));
    let x_435 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_434.x, x_434.y, x_435.z);
    let x_438 : vec4<f32> = x_420.x_MainLightWorldToLight[0i];
    let x_440 : vec3<f32> = vs_TEXCOORD1;
    let x_443 : vec3<f32> = u_xlat12;
    let x_445 : vec2<f32> = ((vec2<f32>(x_438.x, x_438.y) * vec2<f32>(x_440.x, x_440.x)) + vec2<f32>(x_443.x, x_443.y));
    let x_446 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_445.x, x_445.y, x_446.z);
    let x_449 : vec4<f32> = x_420.x_MainLightWorldToLight[2i];
    let x_451 : vec3<f32> = vs_TEXCOORD1;
    let x_454 : vec3<f32> = u_xlat12;
    let x_456 : vec2<f32> = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_451.z, x_451.z)) + vec2<f32>(x_454.x, x_454.y));
    let x_457 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_456.x, x_456.y, x_457.z);
    let x_459 : vec3<f32> = u_xlat12;
    let x_462 : vec4<f32> = x_420.x_MainLightWorldToLight[3i];
    let x_464 : vec2<f32> = (vec2<f32>(x_459.x, x_459.y) + vec2<f32>(x_462.x, x_462.y));
    let x_465 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_464.x, x_464.y, x_465.z);
    let x_467 : vec3<f32> = u_xlat12;
    let x_471 : vec2<f32> = ((vec2<f32>(x_467.x, x_467.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_472 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_471.x, x_471.y, x_472.z);
    let x_479 : vec3<f32> = u_xlat12;
    let x_482 : f32 = x_27.x_GlobalMipBias.x;
    let x_483 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_479.x, x_479.y), x_482);
    u_xlat4 = x_483;
    let x_485 : f32 = x_420.x_MainLightCookieTextureFormat;
    let x_487 : f32 = x_420.x_MainLightCookieTextureFormat;
    let x_489 : f32 = x_420.x_MainLightCookieTextureFormat;
    let x_491 : f32 = x_420.x_MainLightCookieTextureFormat;
    let x_492 : vec4<f32> = vec4<f32>(x_485, x_487, x_489, x_491);
    let x_499 : vec4<bool> = (vec4<f32>(x_492.x, x_492.y, x_492.z, x_492.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb12 = vec2<bool>(x_499.x, x_499.y);
    let x_502 : bool = u_xlatb12.y;
    if (x_502) {
      let x_508 : f32 = u_xlat4.w;
      x_504 = x_508;
    } else {
      let x_511 : f32 = u_xlat4.x;
      x_504 = x_511;
    }
    let x_512 : f32 = x_504;
    u_xlat22 = x_512;
    let x_514 : bool = u_xlatb12.x;
    if (x_514) {
      let x_518 : vec4<f32> = u_xlat4;
      x_515 = vec3<f32>(x_518.x, x_518.y, x_518.z);
    } else {
      let x_521 : f32 = u_xlat22;
      x_515 = vec3<f32>(x_521, x_521, x_521);
    }
    let x_523 : vec3<f32> = x_515;
    u_xlat12 = x_523;
  } else {
    u_xlat12.x = 1.0f;
    u_xlat12.y = 1.0f;
    u_xlat12.z = 1.0f;
  }
  let x_528 : vec3<f32> = u_xlat12;
  let x_530 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat12 = (x_528 * vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : f32 = u_xlat31;
  let x_539 : f32 = x_537.unity_LightData.z;
  u_xlat31 = (x_533 * x_539);
  let x_541 : f32 = u_xlat31;
  let x_543 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_541, x_541, x_541) * x_543);
  let x_545 : vec3<f32> = u_xlat1;
  let x_547 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat31 = dot(x_545, vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_550 : f32 = u_xlat31;
  u_xlat31 = clamp(x_550, 0.0f, 1.0f);
  let x_552 : f32 = u_xlat31;
  let x_554 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_552, x_552, x_552) * x_554);
  let x_556 : vec4<f32> = u_xlat0;
  let x_558 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_556.y, x_556.z, x_556.w) * x_558);
  let x_561 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_563 : f32 = x_537.unity_LightData.y;
  u_xlat31 = min(x_561, x_563);
  let x_565 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_565));
  let x_569 : f32 = u_xlat2.x;
  let x_572 : f32 = x_75.x_AdditionalShadowFadeParams.x;
  let x_575 : f32 = x_75.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_569 * x_572) + x_575);
  let x_579 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_579, 0.0f, 1.0f);
  let x_584 : f32 = x_420.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_586 : f32 = x_420.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_588 : f32 = x_420.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_590 : f32 = x_420.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_591 : vec4<f32> = vec4<f32>(x_584, x_586, x_588, x_590);
  let x_597 : vec4<bool> = (vec4<f32>(x_591.x, x_591.y, x_591.z, x_591.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_597.x, x_597.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_609 : u32 = u_xlatu_loop_1;
    let x_610 : u32 = u_xlatu31;
    if ((x_609 < x_610)) {
    } else {
      break;
    }
    let x_613 : u32 = u_xlatu_loop_1;
    u_xlatu24 = (x_613 >> 2u);
    let x_616 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_616 & 3u));
    let x_621 : u32 = u_xlatu24;
    let x_624 : vec4<f32> = x_537.unity_LightIndices[bitcast<i32>(x_621)];
    let x_634 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_639 : vec4<u32> = indexable[x_634];
    u_xlat24 = dot(x_624, bitcast<vec4<f32>>(x_639));
    let x_643 : f32 = u_xlat24;
    u_xlati24 = i32(x_643);
    let x_646 : vec3<f32> = vs_TEXCOORD1;
    let x_657 : i32 = u_xlati24;
    let x_659 : vec4<f32> = x_656.x_AdditionalLightsPosition[x_657];
    let x_662 : i32 = u_xlati24;
    let x_664 : vec4<f32> = x_656.x_AdditionalLightsPosition[x_662];
    u_xlat6 = ((-(x_646) * vec3<f32>(x_659.w, x_659.w, x_659.w)) + vec3<f32>(x_664.x, x_664.y, x_664.z));
    let x_668 : vec3<f32> = u_xlat6;
    let x_669 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_668, x_669);
    let x_671 : f32 = u_xlat34;
    u_xlat34 = max(x_671, 0.00006103515625f);
    let x_675 : f32 = u_xlat34;
    u_xlat35 = inverseSqrt(x_675);
    let x_677 : f32 = u_xlat35;
    let x_679 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_677, x_677, x_677) * x_679);
    let x_681 : f32 = u_xlat34;
    u_xlat35 = (1.0f / x_681);
    let x_683 : f32 = u_xlat34;
    let x_684 : i32 = u_xlati24;
    let x_686 : f32 = x_656.x_AdditionalLightsAttenuation[x_684].x;
    u_xlat34 = (x_683 * x_686);
    let x_688 : f32 = u_xlat34;
    let x_690 : f32 = u_xlat34;
    u_xlat34 = ((-(x_688) * x_690) + 1.0f);
    let x_693 : f32 = u_xlat34;
    u_xlat34 = max(x_693, 0.0f);
    let x_695 : f32 = u_xlat34;
    let x_696 : f32 = u_xlat34;
    u_xlat34 = (x_695 * x_696);
    let x_698 : f32 = u_xlat34;
    let x_699 : f32 = u_xlat35;
    u_xlat34 = (x_698 * x_699);
    let x_701 : i32 = u_xlati24;
    let x_703 : vec4<f32> = x_656.x_AdditionalLightsSpotDir[x_701];
    let x_705 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(vec3<f32>(x_703.x, x_703.y, x_703.z), x_705);
    let x_707 : f32 = u_xlat35;
    let x_708 : i32 = u_xlati24;
    let x_710 : f32 = x_656.x_AdditionalLightsAttenuation[x_708].z;
    let x_712 : i32 = u_xlati24;
    let x_714 : f32 = x_656.x_AdditionalLightsAttenuation[x_712].w;
    u_xlat35 = ((x_707 * x_710) + x_714);
    let x_716 : f32 = u_xlat35;
    u_xlat35 = clamp(x_716, 0.0f, 1.0f);
    let x_718 : f32 = u_xlat35;
    let x_719 : f32 = u_xlat35;
    u_xlat35 = (x_718 * x_719);
    let x_721 : f32 = u_xlat34;
    let x_722 : f32 = u_xlat35;
    u_xlat34 = (x_721 * x_722);
    let x_726 : i32 = u_xlati24;
    let x_728 : f32 = x_75.x_AdditionalShadowParams[x_726].w;
    u_xlati35 = i32(x_728);
    let x_731 : i32 = u_xlati35;
    u_xlatb36 = (x_731 >= 0i);
    let x_733 : bool = u_xlatb36;
    if (x_733) {
      let x_737 : i32 = u_xlati24;
      let x_739 : f32 = x_75.x_AdditionalShadowParams[x_737].z;
      u_xlatb36 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_739, x_739, x_739, x_739))));
      let x_743 : bool = u_xlatb36;
      if (x_743) {
        let x_747 : vec3<f32> = u_xlat6;
        let x_750 : vec3<f32> = u_xlat6;
        let x_753 : vec4<bool> = (abs(vec4<f32>(x_747.z, x_747.z, x_747.y, x_747.z)) >= abs(vec4<f32>(x_750.x, x_750.y, x_750.x, x_750.x)));
        let x_755 : vec3<bool> = vec3<bool>(x_753.x, x_753.y, x_753.z);
        let x_756 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_755.x, x_755.y, x_755.z, x_756.w);
        let x_759 : bool = u_xlatb7.y;
        let x_761 : bool = u_xlatb7.x;
        u_xlatb36 = (x_759 & x_761);
        let x_763 : vec3<f32> = u_xlat6;
        let x_766 : vec4<bool> = (-(vec4<f32>(x_763.z, x_763.y, x_763.z, x_763.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_767 : vec3<bool> = vec3<bool>(x_766.x, x_766.y, x_766.w);
        let x_768 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_767.x, x_767.y, x_768.z, x_767.z);
        let x_772 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_772);
        let x_777 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_777);
        let x_782 : bool = u_xlatb7.w;
        u_xlat37 = select(0.0f, 1.0f, x_782);
        let x_786 : bool = u_xlatb7.z;
        if (x_786) {
          let x_791 : f32 = u_xlat7.y;
          x_787 = x_791;
        } else {
          let x_793 : f32 = u_xlat37;
          x_787 = x_793;
        }
        let x_794 : f32 = x_787;
        u_xlat17.x = x_794;
        let x_797 : bool = u_xlatb36;
        if (x_797) {
          let x_802 : f32 = u_xlat7.x;
          x_798 = x_802;
        } else {
          let x_805 : f32 = u_xlat17.x;
          x_798 = x_805;
        }
        let x_806 : f32 = x_798;
        u_xlat36 = x_806;
        let x_807 : i32 = u_xlati24;
        let x_809 : f32 = x_75.x_AdditionalShadowParams[x_807].w;
        u_xlat7.x = trunc(x_809);
        let x_812 : f32 = u_xlat36;
        let x_814 : f32 = u_xlat7.x;
        u_xlat36 = (x_812 + x_814);
        let x_816 : f32 = u_xlat36;
        u_xlati35 = i32(x_816);
      }
      let x_818 : i32 = u_xlati35;
      u_xlati35 = (x_818 << bitcast<u32>(2i));
      let x_820 : vec3<f32> = vs_TEXCOORD1;
      let x_823 : i32 = u_xlati35;
      let x_826 : i32 = u_xlati35;
      let x_830 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_823 + 1i) / 4i)][((x_826 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_820.y, x_820.y, x_820.y, x_820.y) * x_830);
      let x_832 : i32 = u_xlati35;
      let x_834 : i32 = u_xlati35;
      let x_837 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[(x_832 / 4i)][(x_834 % 4i)];
      let x_838 : vec3<f32> = vs_TEXCOORD1;
      let x_841 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_837 * vec4<f32>(x_838.x, x_838.x, x_838.x, x_838.x)) + x_841);
      let x_843 : i32 = u_xlati35;
      let x_846 : i32 = u_xlati35;
      let x_850 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_843 + 2i) / 4i)][((x_846 + 2i) % 4i)];
      let x_851 : vec3<f32> = vs_TEXCOORD1;
      let x_854 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_850 * vec4<f32>(x_851.z, x_851.z, x_851.z, x_851.z)) + x_854);
      let x_856 : vec4<f32> = u_xlat7;
      let x_857 : i32 = u_xlati35;
      let x_860 : i32 = u_xlati35;
      let x_864 : vec4<f32> = x_75.x_AdditionalLightsWorldToShadow[((x_857 + 3i) / 4i)][((x_860 + 3i) % 4i)];
      u_xlat7 = (x_856 + x_864);
      let x_866 : vec4<f32> = u_xlat7;
      let x_868 : vec4<f32> = u_xlat7;
      let x_870 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) / vec3<f32>(x_868.w, x_868.w, x_868.w));
      let x_871 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
      let x_874 : vec4<f32> = u_xlat7;
      let x_875 : vec2<f32> = vec2<f32>(x_874.x, x_874.y);
      let x_877 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_875.x, x_875.y, x_877);
      let x_885 : vec3<f32> = txVec1;
      let x_887 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_885.xy, x_885.z);
      u_xlat35 = x_887;
      let x_888 : i32 = u_xlati24;
      let x_890 : f32 = x_75.x_AdditionalShadowParams[x_888].x;
      u_xlat36 = (1.0f + -(x_890));
      let x_893 : f32 = u_xlat35;
      let x_894 : i32 = u_xlati24;
      let x_896 : f32 = x_75.x_AdditionalShadowParams[x_894].x;
      let x_898 : f32 = u_xlat36;
      u_xlat35 = ((x_893 * x_896) + x_898);
      let x_901 : f32 = u_xlat7.z;
      u_xlatb36 = (0.0f >= x_901);
      let x_904 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_904 >= 1.0f);
      let x_907 : bool = u_xlatb36;
      let x_909 : bool = u_xlatb7.x;
      u_xlatb36 = (x_907 | x_909);
      let x_911 : bool = u_xlatb36;
      let x_912 : f32 = u_xlat35;
      u_xlat35 = select(x_912, 1.0f, x_911);
    } else {
      u_xlat35 = 1.0f;
    }
    let x_915 : f32 = u_xlat35;
    u_xlat36 = (-(x_915) + 1.0f);
    let x_919 : f32 = u_xlat2.x;
    let x_920 : f32 = u_xlat36;
    let x_922 : f32 = u_xlat35;
    u_xlat35 = ((x_919 * x_920) + x_922);
    let x_925 : i32 = u_xlati24;
    u_xlati36 = (1i << bitcast<u32>((x_925 & 31i)));
    let x_929 : i32 = u_xlati36;
    let x_932 : f32 = x_420.x_AdditionalLightsCookieEnableBits;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_929) & bitcast<u32>(x_932)));
    let x_936 : i32 = u_xlati36;
    if ((x_936 != 0i)) {
      let x_940 : i32 = u_xlati24;
      let x_942 : f32 = x_420.x_AdditionalLightsLightTypes[x_940].el;
      u_xlati36 = i32(x_942);
      let x_945 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_945 != 0i));
      let x_949 : i32 = u_xlati24;
      u_xlati17 = (x_949 << bitcast<u32>(2i));
      let x_951 : i32 = u_xlati7;
      if ((x_951 != 0i)) {
        let x_955 : vec3<f32> = vs_TEXCOORD1;
        let x_957 : i32 = u_xlati17;
        let x_960 : i32 = u_xlati17;
        let x_964 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[((x_957 + 1i) / 4i)][((x_960 + 1i) % 4i)];
        let x_966 : vec3<f32> = (vec3<f32>(x_955.y, x_955.y, x_955.y) * vec3<f32>(x_964.x, x_964.y, x_964.w));
        let x_967 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_966.x, x_967.y, x_966.y, x_966.z);
        let x_969 : i32 = u_xlati17;
        let x_971 : i32 = u_xlati17;
        let x_974 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[(x_969 / 4i)][(x_971 % 4i)];
        let x_976 : vec3<f32> = vs_TEXCOORD1;
        let x_979 : vec4<f32> = u_xlat7;
        let x_981 : vec3<f32> = ((vec3<f32>(x_974.x, x_974.y, x_974.w) * vec3<f32>(x_976.x, x_976.x, x_976.x)) + vec3<f32>(x_979.x, x_979.z, x_979.w));
        let x_982 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_981.x, x_982.y, x_981.y, x_981.z);
        let x_984 : i32 = u_xlati17;
        let x_987 : i32 = u_xlati17;
        let x_991 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[((x_984 + 2i) / 4i)][((x_987 + 2i) % 4i)];
        let x_993 : vec3<f32> = vs_TEXCOORD1;
        let x_996 : vec4<f32> = u_xlat7;
        let x_998 : vec3<f32> = ((vec3<f32>(x_991.x, x_991.y, x_991.w) * vec3<f32>(x_993.z, x_993.z, x_993.z)) + vec3<f32>(x_996.x, x_996.z, x_996.w));
        let x_999 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_998.x, x_999.y, x_998.y, x_998.z);
        let x_1001 : vec4<f32> = u_xlat7;
        let x_1003 : i32 = u_xlati17;
        let x_1006 : i32 = u_xlati17;
        let x_1010 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[((x_1003 + 3i) / 4i)][((x_1006 + 3i) % 4i)];
        let x_1012 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.z, x_1001.w) + vec3<f32>(x_1010.x, x_1010.y, x_1010.w));
        let x_1013 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1012.z);
        let x_1015 : vec4<f32> = u_xlat7;
        let x_1017 : vec4<f32> = u_xlat7;
        let x_1019 : vec2<f32> = (vec2<f32>(x_1015.x, x_1015.z) / vec2<f32>(x_1017.w, x_1017.w));
        let x_1020 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1019.x, x_1020.y, x_1019.y, x_1020.w);
        let x_1022 : vec4<f32> = u_xlat7;
        let x_1025 : vec2<f32> = ((vec2<f32>(x_1022.x, x_1022.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1026 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1025.x, x_1026.y, x_1025.y, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat7;
        let x_1032 : vec2<f32> = clamp(vec2<f32>(x_1028.x, x_1028.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1033 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1032.x, x_1033.y, x_1032.y, x_1033.w);
        let x_1035 : i32 = u_xlati24;
        let x_1037 : vec4<f32> = x_420.x_AdditionalLightsCookieAtlasUVRects[x_1035];
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1042 : i32 = u_xlati24;
        let x_1044 : vec4<f32> = x_420.x_AdditionalLightsCookieAtlasUVRects[x_1042];
        let x_1046 : vec2<f32> = ((vec2<f32>(x_1037.x, x_1037.y) * vec2<f32>(x_1039.x, x_1039.z)) + vec2<f32>(x_1044.z, x_1044.w));
        let x_1047 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1046.x, x_1047.y, x_1046.y, x_1047.w);
      } else {
        let x_1050 : i32 = u_xlati36;
        u_xlatb36 = (x_1050 == 1i);
        let x_1052 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_1052);
        let x_1054 : i32 = u_xlati36;
        if ((x_1054 != 0i)) {
          let x_1059 : vec3<f32> = vs_TEXCOORD1;
          let x_1061 : i32 = u_xlati17;
          let x_1064 : i32 = u_xlati17;
          let x_1068 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[((x_1061 + 1i) / 4i)][((x_1064 + 1i) % 4i)];
          let x_1070 : vec2<f32> = (vec2<f32>(x_1059.y, x_1059.y) * vec2<f32>(x_1068.x, x_1068.y));
          let x_1071 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1071.w);
          let x_1073 : i32 = u_xlati17;
          let x_1075 : i32 = u_xlati17;
          let x_1078 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[(x_1073 / 4i)][(x_1075 % 4i)];
          let x_1080 : vec3<f32> = vs_TEXCOORD1;
          let x_1083 : vec4<f32> = u_xlat8;
          let x_1085 : vec2<f32> = ((vec2<f32>(x_1078.x, x_1078.y) * vec2<f32>(x_1080.x, x_1080.x)) + vec2<f32>(x_1083.x, x_1083.y));
          let x_1086 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
          let x_1088 : i32 = u_xlati17;
          let x_1091 : i32 = u_xlati17;
          let x_1095 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[((x_1088 + 2i) / 4i)][((x_1091 + 2i) % 4i)];
          let x_1097 : vec3<f32> = vs_TEXCOORD1;
          let x_1100 : vec4<f32> = u_xlat8;
          let x_1102 : vec2<f32> = ((vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(x_1097.z, x_1097.z)) + vec2<f32>(x_1100.x, x_1100.y));
          let x_1103 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
          let x_1105 : vec4<f32> = u_xlat8;
          let x_1107 : i32 = u_xlati17;
          let x_1110 : i32 = u_xlati17;
          let x_1114 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[((x_1107 + 3i) / 4i)][((x_1110 + 3i) % 4i)];
          let x_1116 : vec2<f32> = (vec2<f32>(x_1105.x, x_1105.y) + vec2<f32>(x_1114.x, x_1114.y));
          let x_1117 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
          let x_1119 : vec4<f32> = u_xlat8;
          let x_1122 : vec2<f32> = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1123 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
          let x_1125 : vec4<f32> = u_xlat8;
          let x_1127 : vec2<f32> = fract(vec2<f32>(x_1125.x, x_1125.y));
          let x_1128 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
          let x_1130 : i32 = u_xlati24;
          let x_1132 : vec4<f32> = x_420.x_AdditionalLightsCookieAtlasUVRects[x_1130];
          let x_1134 : vec4<f32> = u_xlat8;
          let x_1137 : i32 = u_xlati24;
          let x_1139 : vec4<f32> = x_420.x_AdditionalLightsCookieAtlasUVRects[x_1137];
          let x_1141 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1134.x, x_1134.y)) + vec2<f32>(x_1139.z, x_1139.w));
          let x_1142 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1142.w);
        } else {
          let x_1145 : vec3<f32> = vs_TEXCOORD1;
          let x_1147 : i32 = u_xlati17;
          let x_1150 : i32 = u_xlati17;
          let x_1154 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[((x_1147 + 1i) / 4i)][((x_1150 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1145.y, x_1145.y, x_1145.y, x_1145.y) * x_1154);
          let x_1156 : i32 = u_xlati17;
          let x_1158 : i32 = u_xlati17;
          let x_1161 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[(x_1156 / 4i)][(x_1158 % 4i)];
          let x_1162 : vec3<f32> = vs_TEXCOORD1;
          let x_1165 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1161 * vec4<f32>(x_1162.x, x_1162.x, x_1162.x, x_1162.x)) + x_1165);
          let x_1167 : i32 = u_xlati17;
          let x_1170 : i32 = u_xlati17;
          let x_1174 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[((x_1167 + 2i) / 4i)][((x_1170 + 2i) % 4i)];
          let x_1175 : vec3<f32> = vs_TEXCOORD1;
          let x_1178 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1174 * vec4<f32>(x_1175.z, x_1175.z, x_1175.z, x_1175.z)) + x_1178);
          let x_1180 : vec4<f32> = u_xlat8;
          let x_1181 : i32 = u_xlati17;
          let x_1184 : i32 = u_xlati17;
          let x_1188 : vec4<f32> = x_420.x_AdditionalLightsWorldToLights[((x_1181 + 3i) / 4i)][((x_1184 + 3i) % 4i)];
          u_xlat8 = (x_1180 + x_1188);
          let x_1190 : vec4<f32> = u_xlat8;
          let x_1192 : vec4<f32> = u_xlat8;
          let x_1194 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) / vec3<f32>(x_1192.w, x_1192.w, x_1192.w));
          let x_1195 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
          let x_1197 : vec4<f32> = u_xlat8;
          let x_1199 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_1197.x, x_1197.y, x_1197.z), vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
          let x_1202 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1202);
          let x_1204 : f32 = u_xlat36;
          let x_1206 : vec4<f32> = u_xlat8;
          let x_1208 : vec3<f32> = (vec3<f32>(x_1204, x_1204, x_1204) * vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
          let x_1209 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
          let x_1211 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_1211.x, x_1211.y, x_1211.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1216 : f32 = u_xlat36;
          u_xlat36 = max(x_1216, 0.00000099999999747524f);
          let x_1219 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1219);
          let x_1222 : f32 = u_xlat36;
          let x_1224 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1222, x_1222, x_1222) * vec3<f32>(x_1224.z, x_1224.x, x_1224.y));
          let x_1228 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1228);
          let x_1232 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1232, 0.0f, 1.0f);
          let x_1237 : vec3<f32> = u_xlat9;
          let x_1239 : vec4<bool> = (vec4<f32>(x_1237.y, x_1237.y, x_1237.z, x_1237.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1240 : vec2<bool> = vec2<bool>(x_1239.x, x_1239.z);
          let x_1241 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_1240.x, x_1241.y, x_1240.y);
          let x_1244 : bool = u_xlatb17.x;
          if (x_1244) {
            let x_1249 : f32 = u_xlat9.x;
            x_1245 = x_1249;
          } else {
            let x_1252 : f32 = u_xlat9.x;
            x_1245 = -(x_1252);
          }
          let x_1254 : f32 = x_1245;
          u_xlat17.x = x_1254;
          let x_1257 : bool = u_xlatb17.z;
          if (x_1257) {
            let x_1262 : f32 = u_xlat9.x;
            x_1258 = x_1262;
          } else {
            let x_1265 : f32 = u_xlat9.x;
            x_1258 = -(x_1265);
          }
          let x_1267 : f32 = x_1258;
          u_xlat17.z = x_1267;
          let x_1269 : vec4<f32> = u_xlat8;
          let x_1271 : f32 = u_xlat36;
          let x_1274 : vec3<f32> = u_xlat17;
          let x_1276 : vec2<f32> = ((vec2<f32>(x_1269.x, x_1269.y) * vec2<f32>(x_1271, x_1271)) + vec2<f32>(x_1274.x, x_1274.z));
          let x_1277 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1276.x, x_1277.y, x_1276.y);
          let x_1279 : vec3<f32> = u_xlat17;
          let x_1282 : vec2<f32> = ((vec2<f32>(x_1279.x, x_1279.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1283 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1282.x, x_1283.y, x_1282.y);
          let x_1285 : vec3<f32> = u_xlat17;
          let x_1289 : vec2<f32> = clamp(vec2<f32>(x_1285.x, x_1285.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1290 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1289.x, x_1290.y, x_1289.y);
          let x_1292 : i32 = u_xlati24;
          let x_1294 : vec4<f32> = x_420.x_AdditionalLightsCookieAtlasUVRects[x_1292];
          let x_1296 : vec3<f32> = u_xlat17;
          let x_1299 : i32 = u_xlati24;
          let x_1301 : vec4<f32> = x_420.x_AdditionalLightsCookieAtlasUVRects[x_1299];
          let x_1303 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1296.x, x_1296.z)) + vec2<f32>(x_1301.z, x_1301.w));
          let x_1304 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1303.x, x_1304.y, x_1303.y, x_1304.w);
        }
      }
      let x_1311 : vec4<f32> = u_xlat7;
      let x_1313 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1311.x, x_1311.z), 0.0f);
      u_xlat7 = x_1313;
      let x_1315 : bool = u_xlatb4.y;
      if (x_1315) {
        let x_1320 : f32 = u_xlat7.w;
        x_1316 = x_1320;
      } else {
        let x_1323 : f32 = u_xlat7.x;
        x_1316 = x_1323;
      }
      let x_1324 : f32 = x_1316;
      u_xlat36 = x_1324;
      let x_1326 : bool = u_xlatb4.x;
      if (x_1326) {
        let x_1330 : vec4<f32> = u_xlat7;
        x_1327 = vec3<f32>(x_1330.x, x_1330.y, x_1330.z);
      } else {
        let x_1333 : f32 = u_xlat36;
        x_1327 = vec3<f32>(x_1333, x_1333, x_1333);
      }
      let x_1335 : vec3<f32> = x_1327;
      let x_1336 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1342 : vec4<f32> = u_xlat7;
    let x_1344 : i32 = u_xlati24;
    let x_1346 : vec4<f32> = x_656.x_AdditionalLightsColor[x_1344];
    let x_1348 : vec3<f32> = (vec3<f32>(x_1342.x, x_1342.y, x_1342.z) * vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
    let x_1349 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
    let x_1351 : f32 = u_xlat34;
    let x_1352 : f32 = u_xlat35;
    u_xlat24 = (x_1351 * x_1352);
    let x_1354 : f32 = u_xlat24;
    let x_1356 : vec4<f32> = u_xlat7;
    let x_1358 : vec3<f32> = (vec3<f32>(x_1354, x_1354, x_1354) * vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
    let x_1359 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
    let x_1361 : vec3<f32> = u_xlat1;
    let x_1362 : vec3<f32> = u_xlat6;
    u_xlat24 = dot(x_1361, x_1362);
    let x_1364 : f32 = u_xlat24;
    u_xlat24 = clamp(x_1364, 0.0f, 1.0f);
    let x_1366 : f32 = u_xlat24;
    let x_1368 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1366, x_1366, x_1366) * vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
    let x_1371 : vec3<f32> = u_xlat6;
    let x_1372 : vec4<f32> = u_xlat0;
    let x_1375 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1371 * vec3<f32>(x_1372.y, x_1372.z, x_1372.w)) + x_1375);

    continuing {
      let x_1377 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1377 + bitcast<u32>(1i));
    }
  }
  let x_1380 : vec4<f32> = u_xlat3;
  let x_1382 : vec4<f32> = u_xlat0;
  let x_1385 : vec3<f32> = u_xlat12;
  u_xlat10 = ((vec3<f32>(x_1380.x, x_1380.y, x_1380.z) * vec3<f32>(x_1382.y, x_1382.z, x_1382.w)) + x_1385);
  let x_1389 : vec3<f32> = u_xlat5;
  let x_1390 : vec3<f32> = u_xlat10;
  let x_1391 : vec3<f32> = (x_1389 + x_1390);
  let x_1392 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1396 : f32 = x_40.x_Surface;
  u_xlatb10 = (x_1396 == 1.0f);
  let x_1398 : bool = u_xlatb10;
  if (x_1398) {
    let x_1403 : f32 = u_xlat0.x;
    x_1399 = x_1403;
  } else {
    x_1399 = 1.0f;
  }
  let x_1405 : f32 = x_1399;
  SV_Target0.w = x_1405;
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


