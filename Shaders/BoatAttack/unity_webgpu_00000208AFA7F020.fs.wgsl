struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_94 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1804 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2280 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2390 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu21 : u32;
  var u_xlati21 : i32;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat24 : f32;
  var u_xlat60 : f32;
  var u_xlat44 : f32;
  var u_xlatb64 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlatb65 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat65 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb41 : vec2<bool>;
  var u_xlatb61 : bool;
  var x_1751 : f32;
  var u_xlat41 : vec2<f32>;
  var u_xlat61 : f32;
  var x_1871 : f32;
  var x_1882 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat66 : f32;
  var u_xlatu66 : u32;
  var u_xlati67 : i32;
  var u_xlati66 : i32;
  var u_xlati68 : i32;
  var u_xlatb66 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb51 : vec2<bool>;
  var x_2683 : f32;
  var x_2696 : f32;
  var x_2748 : f32;
  var x_2759 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_49);
  u_xlat0 = x_50;
  let x_57 : vec4<f32> = vs_TEXCOORD0;
  let x_60 : f32 = x_43.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1.x = x_61.x;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat21.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_75);
  let x_79 : vec3<f32> = u_xlat21;
  let x_81 : vec4<f32> = vs_TEXCOORD3;
  let x_83 : vec3<f32> = (vec3<f32>(x_79.x, x_79.x, x_79.x) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_97 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres0;
  u_xlat21 = (x_88 + -(vec3<f32>(x_97.x, x_97.y, x_97.z)));
  let x_102 : vec3<f32> = vs_TEXCOORD7;
  let x_105 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres1;
  u_xlat3 = (x_102 + -(vec3<f32>(x_105.x, x_105.y, x_105.z)));
  let x_110 : vec3<f32> = vs_TEXCOORD7;
  let x_113 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres2;
  let x_116 : vec3<f32> = (x_110 + -(vec3<f32>(x_113.x, x_113.y, x_113.z)));
  let x_117 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_120 : vec3<f32> = vs_TEXCOORD7;
  let x_123 : vec4<f32> = x_94.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_120 + -(vec3<f32>(x_123.x, x_123.y, x_123.z)));
  let x_128 : vec3<f32> = u_xlat21;
  let x_129 : vec3<f32> = u_xlat21;
  u_xlat6.x = dot(x_128, x_129);
  let x_132 : vec3<f32> = u_xlat3;
  let x_133 : vec3<f32> = u_xlat3;
  u_xlat6.y = dot(x_132, x_133);
  let x_137 : vec4<f32> = u_xlat4;
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_144 : vec3<f32> = u_xlat5;
  let x_145 : vec3<f32> = u_xlat5;
  u_xlat6.w = dot(x_144, x_145);
  let x_152 : vec4<f32> = u_xlat6;
  let x_155 : vec4<f32> = x_94.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_152 < x_155);
  let x_159 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_159);
  let x_164 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb3.x;
  u_xlat21.x = select(-0.0f, -1.0f, x_176);
  let x_182 : bool = u_xlatb3.y;
  u_xlat21.y = select(-0.0f, -1.0f, x_182);
  let x_186 : bool = u_xlatb3.z;
  u_xlat21.z = select(-0.0f, -1.0f, x_186);
  let x_189 : vec3<f32> = u_xlat21;
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat21 = (x_189 + vec3<f32>(x_190.y, x_190.z, x_190.w));
  let x_193 : vec3<f32> = u_xlat21;
  let x_195 : vec3<f32> = max(x_193, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_196.x, x_195.x, x_195.y, x_195.z);
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat21.x = dot(x_198, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_206 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_206) + 4.0f);
  let x_213 : f32 = u_xlat21.x;
  u_xlatu21 = u32(x_213);
  let x_217 : u32 = u_xlatu21;
  u_xlati21 = (bitcast<i32>(x_217) << bitcast<u32>(2i));
  let x_220 : vec3<f32> = vs_TEXCOORD7;
  let x_223 : i32 = u_xlati21;
  let x_226 : i32 = u_xlati21;
  let x_230 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_223 + 1i) / 4i)][((x_226 + 1i) % 4i)];
  u_xlat3 = (vec3<f32>(x_220.y, x_220.y, x_220.y) * vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : i32 = u_xlati21;
  let x_235 : i32 = u_xlati21;
  let x_238 : vec4<f32> = x_94.x_MainLightWorldToShadow[(x_233 / 4i)][(x_235 % 4i)];
  let x_240 : vec3<f32> = vs_TEXCOORD7;
  let x_243 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + x_243);
  let x_245 : i32 = u_xlati21;
  let x_248 : i32 = u_xlati21;
  let x_252 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_245 + 2i) / 4i)][((x_248 + 2i) % 4i)];
  let x_254 : vec3<f32> = vs_TEXCOORD7;
  let x_257 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(x_254.z, x_254.z, x_254.z)) + x_257);
  let x_259 : vec3<f32> = u_xlat3;
  let x_260 : i32 = u_xlati21;
  let x_263 : i32 = u_xlati21;
  let x_267 : vec4<f32> = x_94.x_MainLightWorldToShadow[((x_260 + 3i) / 4i)][((x_263 + 3i) % 4i)];
  u_xlat21 = (x_259 + vec3<f32>(x_267.x, x_267.y, x_267.z));
  u_xlat2.w = 1.0f;
  let x_277 : vec4<f32> = x_274.unity_SHAr;
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_277, x_278);
  let x_283 : vec4<f32> = x_274.unity_SHAg;
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_283, x_284);
  let x_289 : vec4<f32> = x_274.unity_SHAb;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_289, x_290);
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_293.y, x_293.z, x_293.z, x_293.x) * vec4<f32>(x_295.x, x_295.y, x_295.z, x_295.z));
  let x_300 : vec4<f32> = x_274.unity_SHBr;
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_300, x_301);
  let x_306 : vec4<f32> = x_274.unity_SHBg;
  let x_307 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_306, x_307);
  let x_312 : vec4<f32> = x_274.unity_SHBb;
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_312, x_313);
  let x_318 : f32 = u_xlat2.y;
  let x_320 : f32 = u_xlat2.y;
  u_xlat62 = (x_318 * x_320);
  let x_323 : f32 = u_xlat2.x;
  let x_325 : f32 = u_xlat2.x;
  let x_327 : f32 = u_xlat62;
  u_xlat62 = ((x_323 * x_325) + -(x_327));
  let x_332 : vec4<f32> = x_274.unity_SHC;
  let x_334 : f32 = u_xlat62;
  let x_337 : vec3<f32> = u_xlat5;
  let x_338 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334, x_334, x_334)) + x_337);
  let x_339 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec3<f32> = u_xlat3;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_341 + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_345, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_349 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
  let x_354 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_350.x, x_350.y));
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_354.x, x_354.y, x_355.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat4;
  let x_359 : vec4<f32> = hlslcc_FragCoord;
  let x_361 : vec2<f32> = (vec2<f32>(x_357.x, x_357.y) * vec2<f32>(x_359.x, x_359.y));
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
  let x_365 : f32 = u_xlat4.y;
  let x_368 : f32 = x_43.x_ScaleBiasRt.x;
  let x_371 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat62 = ((x_365 * x_368) + x_371);
  let x_373 : f32 = u_xlat62;
  u_xlat4.z = (-(x_373) + 1.0f);
  let x_378 : f32 = u_xlat1.x;
  u_xlat62 = ((-(x_378) * 0.959999979f) + 0.959999979f);
  let x_384 : f32 = u_xlat62;
  u_xlat63 = (-(x_384) + 1.0f);
  let x_387 : vec4<f32> = u_xlat0;
  let x_389 : f32 = u_xlat62;
  u_xlat5 = (vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389, x_389, x_389));
  let x_392 : vec4<f32> = u_xlat0;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec4<f32> = u_xlat0;
  let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.x, x_399.x) * vec3<f32>(x_401.x, x_401.y, x_401.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_410) + 1.0f);
  let x_415 : f32 = u_xlat1.x;
  let x_417 : f32 = u_xlat1.x;
  u_xlat62 = (x_415 * x_417);
  let x_419 : f32 = u_xlat62;
  u_xlat62 = max(x_419, 0.0078125f);
  let x_423 : f32 = u_xlat62;
  let x_424 : f32 = u_xlat62;
  u_xlat24 = (x_423 * x_424);
  let x_428 : f32 = u_xlat0.w;
  let x_429 : f32 = u_xlat63;
  u_xlat60 = (x_428 + x_429);
  let x_431 : f32 = u_xlat60;
  u_xlat60 = clamp(x_431, 0.0f, 1.0f);
  let x_433 : f32 = u_xlat62;
  u_xlat63 = ((x_433 * 4.0f) + 2.0f);
  let x_441 : vec4<f32> = u_xlat4;
  let x_444 : f32 = x_43.x_GlobalMipBias.x;
  let x_445 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_441.x, x_441.z), x_444);
  u_xlat4.x = x_445.x;
  let x_450 : f32 = u_xlat4.x;
  u_xlat44 = (x_450 + -1.0f);
  let x_453 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_454 : f32 = u_xlat44;
  u_xlat44 = ((x_453 * x_454) + 1.0f);
  let x_458 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_458, 1.0f);
  let x_464 : f32 = x_94.x_MainLightShadowParams.y;
  u_xlatb64 = (0.0f < x_464);
  let x_466 : bool = u_xlatb64;
  if (x_466) {
    let x_470 : f32 = x_94.x_MainLightShadowParams.y;
    u_xlatb64 = (x_470 == 1.0f);
    let x_472 : bool = u_xlatb64;
    if (x_472) {
      let x_475 : vec3<f32> = u_xlat21;
      let x_479 : vec4<f32> = x_94.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_475.x, x_475.y, x_475.x, x_475.y) + x_479);
      let x_482 : vec4<f32> = u_xlat6;
      let x_483 : vec2<f32> = vec2<f32>(x_482.x, x_482.y);
      let x_485 : f32 = u_xlat21.z;
      txVec0 = vec3<f32>(x_483.x, x_483.y, x_485);
      let x_498 : vec3<f32> = txVec0;
      let x_500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_498.xy, x_498.z);
      u_xlat7.x = x_500;
      let x_503 : vec4<f32> = u_xlat6;
      let x_504 : vec2<f32> = vec2<f32>(x_503.z, x_503.w);
      let x_506 : f32 = u_xlat21.z;
      txVec1 = vec3<f32>(x_504.x, x_504.y, x_506);
      let x_513 : vec3<f32> = txVec1;
      let x_515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_513.xy, x_513.z);
      u_xlat7.y = x_515;
      let x_517 : vec3<f32> = u_xlat21;
      let x_520 : vec4<f32> = x_94.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) + x_520);
      let x_523 : vec4<f32> = u_xlat6;
      let x_524 : vec2<f32> = vec2<f32>(x_523.x, x_523.y);
      let x_526 : f32 = u_xlat21.z;
      txVec2 = vec3<f32>(x_524.x, x_524.y, x_526);
      let x_533 : vec3<f32> = txVec2;
      let x_535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_533.xy, x_533.z);
      u_xlat7.z = x_535;
      let x_538 : vec4<f32> = u_xlat6;
      let x_539 : vec2<f32> = vec2<f32>(x_538.z, x_538.w);
      let x_541 : f32 = u_xlat21.z;
      txVec3 = vec3<f32>(x_539.x, x_539.y, x_541);
      let x_548 : vec3<f32> = txVec3;
      let x_550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_548.xy, x_548.z);
      u_xlat7.w = x_550;
      let x_553 : vec4<f32> = u_xlat7;
      u_xlat64 = dot(x_553, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_560 : f32 = x_94.x_MainLightShadowParams.y;
      u_xlatb65 = (x_560 == 2.0f);
      let x_562 : bool = u_xlatb65;
      if (x_562) {
        let x_565 : vec3<f32> = u_xlat21;
        let x_569 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_574 : vec2<f32> = ((vec2<f32>(x_565.x, x_565.y) * vec2<f32>(x_569.z, x_569.w)) + vec2<f32>(0.5f, 0.5f));
        let x_575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
        let x_577 : vec4<f32> = u_xlat6;
        let x_579 : vec2<f32> = floor(vec2<f32>(x_577.x, x_577.y));
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_579.x, x_579.y, x_580.z, x_580.w);
        let x_584 : vec3<f32> = u_xlat21;
        let x_587 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_590 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_584.x, x_584.y) * vec2<f32>(x_587.z, x_587.w)) + -(vec2<f32>(x_590.x, x_590.y)));
        let x_594 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_594.x, x_594.x, x_594.y, x_594.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_599 : vec4<f32> = u_xlat7;
        let x_601 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_599.x, x_599.x, x_599.z, x_599.z) * vec4<f32>(x_601.x, x_601.x, x_601.z, x_601.z));
        let x_604 : vec4<f32> = u_xlat8;
        let x_608 : vec2<f32> = (vec2<f32>(x_604.y, x_604.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_609 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_608.x, x_609.y, x_608.y, x_609.w);
        let x_611 : vec4<f32> = u_xlat8;
        let x_614 : vec2<f32> = u_xlat46;
        let x_616 : vec2<f32> = ((vec2<f32>(x_611.x, x_611.z) * vec2<f32>(0.5f, 0.5f)) + -(x_614));
        let x_617 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_620) + vec2<f32>(1.0f, 1.0f));
        let x_624 : vec2<f32> = u_xlat46;
        let x_626 : vec2<f32> = min(x_624, vec2<f32>(0.0f, 0.0f));
        let x_627 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
        let x_629 : vec4<f32> = u_xlat9;
        let x_632 : vec4<f32> = u_xlat9;
        let x_635 : vec2<f32> = u_xlat48;
        let x_636 : vec2<f32> = ((-(vec2<f32>(x_629.x, x_629.y)) * vec2<f32>(x_632.x, x_632.y)) + x_635);
        let x_637 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_639, vec2<f32>(0.0f, 0.0f));
        let x_641 : vec2<f32> = u_xlat46;
        let x_643 : vec2<f32> = u_xlat46;
        let x_645 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_641) * x_643) + vec2<f32>(x_645.y, x_645.w));
        let x_648 : vec4<f32> = u_xlat9;
        let x_650 : vec2<f32> = (vec2<f32>(x_648.x, x_648.y) + vec2<f32>(1.0f, 1.0f));
        let x_651 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_653 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_653 + vec2<f32>(1.0f, 1.0f));
        let x_656 : vec4<f32> = u_xlat8;
        let x_660 : vec2<f32> = (vec2<f32>(x_656.x, x_656.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_661 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
        let x_663 : vec2<f32> = u_xlat48;
        let x_664 : vec2<f32> = (x_663 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_665 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec4<f32> = u_xlat9;
        let x_669 : vec2<f32> = (vec2<f32>(x_667.x, x_667.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_670 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_673 : vec2<f32> = u_xlat46;
        let x_674 : vec2<f32> = (x_673 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_675 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
        let x_677 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_677.y, x_677.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_681 : f32 = u_xlat9.x;
        u_xlat10.z = x_681;
        let x_684 : f32 = u_xlat46.x;
        u_xlat10.w = x_684;
        let x_687 : f32 = u_xlat11.x;
        u_xlat8.z = x_687;
        let x_690 : f32 = u_xlat7.x;
        u_xlat8.w = x_690;
        let x_693 : vec4<f32> = u_xlat8;
        let x_695 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_693.z, x_693.w, x_693.x, x_693.z) + vec4<f32>(x_695.z, x_695.w, x_695.x, x_695.z));
        let x_699 : f32 = u_xlat10.y;
        u_xlat9.z = x_699;
        let x_702 : f32 = u_xlat46.y;
        u_xlat9.w = x_702;
        let x_705 : f32 = u_xlat8.y;
        u_xlat11.z = x_705;
        let x_708 : f32 = u_xlat7.z;
        u_xlat11.w = x_708;
        let x_710 : vec4<f32> = u_xlat9;
        let x_712 : vec4<f32> = u_xlat11;
        let x_714 : vec3<f32> = (vec3<f32>(x_710.z, x_710.y, x_710.w) + vec3<f32>(x_712.z, x_712.y, x_712.w));
        let x_715 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
        let x_717 : vec4<f32> = u_xlat8;
        let x_719 : vec4<f32> = u_xlat12;
        let x_721 : vec3<f32> = (vec3<f32>(x_717.x, x_717.z, x_717.w) / vec3<f32>(x_719.z, x_719.w, x_719.y));
        let x_722 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
        let x_724 : vec4<f32> = u_xlat8;
        let x_730 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_731 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat11;
        let x_735 : vec4<f32> = u_xlat7;
        let x_737 : vec3<f32> = (vec3<f32>(x_733.z, x_733.y, x_733.w) / vec3<f32>(x_735.x, x_735.y, x_735.z));
        let x_738 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
        let x_740 : vec4<f32> = u_xlat9;
        let x_742 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_743 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
        let x_745 : vec4<f32> = u_xlat8;
        let x_748 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_750 : vec3<f32> = (vec3<f32>(x_745.y, x_745.x, x_745.z) * vec3<f32>(x_748.x, x_748.x, x_748.x));
        let x_751 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
        let x_753 : vec4<f32> = u_xlat9;
        let x_756 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_758 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_756.y, x_756.y, x_756.y));
        let x_759 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
        let x_762 : f32 = u_xlat9.x;
        u_xlat8.w = x_762;
        let x_764 : vec4<f32> = u_xlat6;
        let x_767 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_770 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y) * vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.y)) + vec4<f32>(x_770.y, x_770.w, x_770.x, x_770.w));
        let x_773 : vec4<f32> = u_xlat6;
        let x_776 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_779 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_773.x, x_773.y) * vec2<f32>(x_776.x, x_776.y)) + vec2<f32>(x_779.z, x_779.w));
        let x_783 : f32 = u_xlat8.y;
        u_xlat9.w = x_783;
        let x_785 : vec4<f32> = u_xlat9;
        let x_786 : vec2<f32> = vec2<f32>(x_785.y, x_785.z);
        let x_787 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_787.x, x_786.x, x_787.z, x_786.y);
        let x_789 : vec4<f32> = u_xlat6;
        let x_792 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_795 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y) * vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y)) + vec4<f32>(x_795.x, x_795.y, x_795.z, x_795.y));
        let x_798 : vec4<f32> = u_xlat6;
        let x_801 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_804 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y) * vec4<f32>(x_801.x, x_801.y, x_801.x, x_801.y)) + vec4<f32>(x_804.w, x_804.y, x_804.w, x_804.z));
        let x_807 : vec4<f32> = u_xlat6;
        let x_810 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_813 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_807.x, x_807.y, x_807.x, x_807.y) * vec4<f32>(x_810.x, x_810.y, x_810.x, x_810.y)) + vec4<f32>(x_813.x, x_813.w, x_813.z, x_813.w));
        let x_817 : vec4<f32> = u_xlat7;
        let x_819 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_817.x, x_817.x, x_817.x, x_817.y) * vec4<f32>(x_819.z, x_819.w, x_819.y, x_819.z));
        let x_823 : vec4<f32> = u_xlat7;
        let x_825 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_823.y, x_823.y, x_823.z, x_823.z) * x_825);
        let x_829 : f32 = u_xlat7.z;
        let x_831 : f32 = u_xlat12.y;
        u_xlat65 = (x_829 * x_831);
        let x_834 : vec4<f32> = u_xlat10;
        let x_835 : vec2<f32> = vec2<f32>(x_834.x, x_834.y);
        let x_837 : f32 = u_xlat21.z;
        txVec4 = vec3<f32>(x_835.x, x_835.y, x_837);
        let x_844 : vec3<f32> = txVec4;
        let x_846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_844.xy, x_844.z);
        u_xlat6.x = x_846;
        let x_849 : vec4<f32> = u_xlat10;
        let x_850 : vec2<f32> = vec2<f32>(x_849.z, x_849.w);
        let x_852 : f32 = u_xlat21.z;
        txVec5 = vec3<f32>(x_850.x, x_850.y, x_852);
        let x_860 : vec3<f32> = txVec5;
        let x_862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_860.xy, x_860.z);
        u_xlat26 = x_862;
        let x_863 : f32 = u_xlat26;
        let x_865 : f32 = u_xlat13.y;
        u_xlat26 = (x_863 * x_865);
        let x_868 : f32 = u_xlat13.x;
        let x_870 : f32 = u_xlat6.x;
        let x_872 : f32 = u_xlat26;
        u_xlat6.x = ((x_868 * x_870) + x_872);
        let x_876 : vec2<f32> = u_xlat46;
        let x_878 : f32 = u_xlat21.z;
        txVec6 = vec3<f32>(x_876.x, x_876.y, x_878);
        let x_885 : vec3<f32> = txVec6;
        let x_887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_885.xy, x_885.z);
        u_xlat26 = x_887;
        let x_889 : f32 = u_xlat13.z;
        let x_890 : f32 = u_xlat26;
        let x_893 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_889 * x_890) + x_893);
        let x_897 : vec4<f32> = u_xlat9;
        let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
        let x_900 : f32 = u_xlat21.z;
        txVec7 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_907 : vec3<f32> = txVec7;
        let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_907.xy, x_907.z);
        u_xlat26 = x_909;
        let x_911 : f32 = u_xlat13.w;
        let x_912 : f32 = u_xlat26;
        let x_915 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_911 * x_912) + x_915);
        let x_919 : vec4<f32> = u_xlat11;
        let x_920 : vec2<f32> = vec2<f32>(x_919.x, x_919.y);
        let x_922 : f32 = u_xlat21.z;
        txVec8 = vec3<f32>(x_920.x, x_920.y, x_922);
        let x_929 : vec3<f32> = txVec8;
        let x_931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_929.xy, x_929.z);
        u_xlat26 = x_931;
        let x_933 : f32 = u_xlat14.x;
        let x_934 : f32 = u_xlat26;
        let x_937 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_933 * x_934) + x_937);
        let x_941 : vec4<f32> = u_xlat11;
        let x_942 : vec2<f32> = vec2<f32>(x_941.z, x_941.w);
        let x_944 : f32 = u_xlat21.z;
        txVec9 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec9;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_951.xy, x_951.z);
        u_xlat26 = x_953;
        let x_955 : f32 = u_xlat14.y;
        let x_956 : f32 = u_xlat26;
        let x_959 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_955 * x_956) + x_959);
        let x_963 : vec4<f32> = u_xlat9;
        let x_964 : vec2<f32> = vec2<f32>(x_963.z, x_963.w);
        let x_966 : f32 = u_xlat21.z;
        txVec10 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec10;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_973.xy, x_973.z);
        u_xlat26 = x_975;
        let x_977 : f32 = u_xlat14.z;
        let x_978 : f32 = u_xlat26;
        let x_981 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_977 * x_978) + x_981);
        let x_985 : vec4<f32> = u_xlat8;
        let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
        let x_988 : f32 = u_xlat21.z;
        txVec11 = vec3<f32>(x_986.x, x_986.y, x_988);
        let x_995 : vec3<f32> = txVec11;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_995.xy, x_995.z);
        u_xlat26 = x_997;
        let x_999 : f32 = u_xlat14.w;
        let x_1000 : f32 = u_xlat26;
        let x_1003 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_999 * x_1000) + x_1003);
        let x_1007 : vec4<f32> = u_xlat8;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.z, x_1007.w);
        let x_1010 : f32 = u_xlat21.z;
        txVec12 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec12;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
        u_xlat26 = x_1019;
        let x_1020 : f32 = u_xlat65;
        let x_1021 : f32 = u_xlat26;
        let x_1024 : f32 = u_xlat6.x;
        u_xlat64 = ((x_1020 * x_1021) + x_1024);
      } else {
        let x_1027 : vec3<f32> = u_xlat21;
        let x_1030 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.z, x_1030.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1034 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat6;
        let x_1038 : vec2<f32> = floor(vec2<f32>(x_1036.x, x_1036.y));
        let x_1039 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1041 : vec3<f32> = u_xlat21;
        let x_1044 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1047 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1041.x, x_1041.y) * vec2<f32>(x_1044.z, x_1044.w)) + -(vec2<f32>(x_1047.x, x_1047.y)));
        let x_1051 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1051.x, x_1051.x, x_1051.y, x_1051.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1054 : vec4<f32> = u_xlat7;
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1054.x, x_1054.x, x_1054.z, x_1054.z) * vec4<f32>(x_1056.x, x_1056.x, x_1056.z, x_1056.z));
        let x_1059 : vec4<f32> = u_xlat8;
        let x_1063 : vec2<f32> = (vec2<f32>(x_1059.y, x_1059.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1064 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1063.x, x_1064.z, x_1063.y);
        let x_1066 : vec4<f32> = u_xlat8;
        let x_1069 : vec2<f32> = u_xlat46;
        let x_1071 : vec2<f32> = ((vec2<f32>(x_1066.x, x_1066.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1069));
        let x_1072 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1072.w);
        let x_1074 : vec2<f32> = u_xlat46;
        let x_1076 : vec2<f32> = (-(x_1074) + vec2<f32>(1.0f, 1.0f));
        let x_1077 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1076.x, x_1076.y, x_1077.z, x_1077.w);
        let x_1079 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1079, vec2<f32>(0.0f, 0.0f));
        let x_1081 : vec2<f32> = u_xlat48;
        let x_1083 : vec2<f32> = u_xlat48;
        let x_1085 : vec4<f32> = u_xlat8;
        let x_1087 : vec2<f32> = ((-(x_1081) * x_1083) + vec2<f32>(x_1085.x, x_1085.y));
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1088.w);
        let x_1090 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1090, vec2<f32>(0.0f, 0.0f));
        let x_1093 : vec2<f32> = u_xlat48;
        let x_1095 : vec2<f32> = u_xlat48;
        let x_1097 : vec4<f32> = u_xlat7;
        let x_1099 : vec2<f32> = ((-(x_1093) * x_1095) + vec2<f32>(x_1097.y, x_1097.w));
        let x_1100 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1099.x, x_1100.y, x_1099.y);
        let x_1102 : vec4<f32> = u_xlat8;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1102.x, x_1102.y) + vec2<f32>(2.0f, 2.0f));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1108 : vec3<f32> = u_xlat27;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1108.x, x_1108.z) + vec2<f32>(2.0f, 2.0f));
        let x_1111 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1111.x, x_1110.x, x_1111.z, x_1110.y);
        let x_1114 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1114 * 0.081632003f);
        let x_1118 : vec4<f32> = u_xlat7;
        let x_1121 : vec3<f32> = (vec3<f32>(x_1118.z, x_1118.x, x_1118.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1122 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat8;
        let x_1127 : vec2<f32> = (vec2<f32>(x_1124.x, x_1124.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1128 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1131 : f32 = u_xlat11.y;
        u_xlat10.x = x_1131;
        let x_1133 : vec2<f32> = u_xlat46;
        let x_1140 : vec2<f32> = ((vec2<f32>(x_1133.x, x_1133.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1141 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1141.x, x_1140.x, x_1141.z, x_1140.y);
        let x_1143 : vec2<f32> = u_xlat46;
        let x_1147 : vec2<f32> = ((vec2<f32>(x_1143.x, x_1143.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1148 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1147.x, x_1148.y, x_1147.y, x_1148.w);
        let x_1151 : f32 = u_xlat7.x;
        u_xlat8.y = x_1151;
        let x_1154 : f32 = u_xlat9.y;
        u_xlat8.w = x_1154;
        let x_1156 : vec4<f32> = u_xlat8;
        let x_1157 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1156 + x_1157);
        let x_1159 : vec2<f32> = u_xlat46;
        let x_1162 : vec2<f32> = ((vec2<f32>(x_1159.y, x_1159.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1163 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1163.x, x_1162.x, x_1163.z, x_1162.y);
        let x_1165 : vec2<f32> = u_xlat46;
        let x_1168 : vec2<f32> = ((vec2<f32>(x_1165.y, x_1165.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1169.w);
        let x_1172 : f32 = u_xlat7.y;
        u_xlat9.y = x_1172;
        let x_1174 : vec4<f32> = u_xlat9;
        let x_1175 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1174 + x_1175);
        let x_1177 : vec4<f32> = u_xlat8;
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1177 / x_1178);
        let x_1180 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1180 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1186 : vec4<f32> = u_xlat9;
        let x_1187 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1186 / x_1187);
        let x_1189 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1189 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1191 : vec4<f32> = u_xlat8;
        let x_1194 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1191.w, x_1191.x, x_1191.y, x_1191.z) * vec4<f32>(x_1194.x, x_1194.x, x_1194.x, x_1194.x));
        let x_1197 : vec4<f32> = u_xlat9;
        let x_1200 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1197.x, x_1197.w, x_1197.y, x_1197.z) * vec4<f32>(x_1200.y, x_1200.y, x_1200.y, x_1200.y));
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1204 : vec3<f32> = vec3<f32>(x_1203.y, x_1203.z, x_1203.w);
        let x_1205 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1204.x, x_1205.y, x_1204.y, x_1204.z);
        let x_1208 : f32 = u_xlat9.x;
        u_xlat11.y = x_1208;
        let x_1210 : vec4<f32> = u_xlat6;
        let x_1213 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1216 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y) * vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.y)) + vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1216.y));
        let x_1219 : vec4<f32> = u_xlat6;
        let x_1222 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1225 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1219.x, x_1219.y) * vec2<f32>(x_1222.x, x_1222.y)) + vec2<f32>(x_1225.w, x_1225.y));
        let x_1229 : f32 = u_xlat11.y;
        u_xlat8.y = x_1229;
        let x_1232 : f32 = u_xlat9.z;
        u_xlat11.y = x_1232;
        let x_1234 : vec4<f32> = u_xlat6;
        let x_1237 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y) * vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y)) + vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1240.y));
        let x_1243 : vec4<f32> = u_xlat6;
        let x_1246 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1251 : vec2<f32> = ((vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(x_1246.x, x_1246.y)) + vec2<f32>(x_1249.w, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1251.x, x_1251.y, x_1252.z, x_1252.w);
        let x_1255 : f32 = u_xlat11.y;
        u_xlat8.z = x_1255;
        let x_1258 : vec4<f32> = u_xlat6;
        let x_1261 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1264 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y) * vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y)) + vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.z));
        let x_1268 : f32 = u_xlat9.w;
        u_xlat11.y = x_1268;
        let x_1271 : vec4<f32> = u_xlat6;
        let x_1274 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1277 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y) * vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y)) + vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1277.y));
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1284 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1284.x, x_1284.y)) + vec2<f32>(x_1287.w, x_1287.y));
        let x_1291 : f32 = u_xlat11.y;
        u_xlat8.w = x_1291;
        let x_1294 : vec4<f32> = u_xlat6;
        let x_1297 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1300 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1294.x, x_1294.y) * vec2<f32>(x_1297.x, x_1297.y)) + vec2<f32>(x_1300.x, x_1300.w));
        let x_1303 : vec4<f32> = u_xlat11;
        let x_1304 : vec3<f32> = vec3<f32>(x_1303.x, x_1303.z, x_1303.w);
        let x_1305 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1304.x, x_1305.y, x_1304.y, x_1304.z);
        let x_1307 : vec4<f32> = u_xlat6;
        let x_1310 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y) * vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y)) + vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1313.y));
        let x_1317 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(x_1323.w, x_1323.y));
        let x_1327 : f32 = u_xlat8.x;
        u_xlat9.x = x_1327;
        let x_1329 : vec4<f32> = u_xlat6;
        let x_1332 : vec4<f32> = x_94.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat9;
        let x_1337 : vec2<f32> = ((vec2<f32>(x_1329.x, x_1329.y) * vec2<f32>(x_1332.x, x_1332.y)) + vec2<f32>(x_1335.x, x_1335.y));
        let x_1338 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1341 : vec4<f32> = u_xlat7;
        let x_1343 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1341.x, x_1341.x, x_1341.x, x_1341.x) * x_1343);
        let x_1346 : vec4<f32> = u_xlat7;
        let x_1348 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1346.y, x_1346.y, x_1346.y, x_1346.y) * x_1348);
        let x_1351 : vec4<f32> = u_xlat7;
        let x_1353 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1351.z, x_1351.z, x_1351.z, x_1351.z) * x_1353);
        let x_1355 : vec4<f32> = u_xlat7;
        let x_1357 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1355.w, x_1355.w, x_1355.w, x_1355.w) * x_1357);
        let x_1360 : vec4<f32> = u_xlat12;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.x, x_1360.y);
        let x_1363 : f32 = u_xlat21.z;
        txVec13 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec13;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1370.xy, x_1370.z);
        u_xlat65 = x_1372;
        let x_1374 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = vec2<f32>(x_1374.z, x_1374.w);
        let x_1377 : f32 = u_xlat21.z;
        txVec14 = vec3<f32>(x_1375.x, x_1375.y, x_1377);
        let x_1384 : vec3<f32> = txVec14;
        let x_1386 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1384.xy, x_1384.z);
        u_xlat8.x = x_1386;
        let x_1389 : f32 = u_xlat8.x;
        let x_1391 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1389 * x_1391);
        let x_1395 : f32 = u_xlat17.x;
        let x_1396 : f32 = u_xlat65;
        let x_1399 : f32 = u_xlat8.x;
        u_xlat65 = ((x_1395 * x_1396) + x_1399);
        let x_1402 : vec2<f32> = u_xlat46;
        let x_1404 : f32 = u_xlat21.z;
        txVec15 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec15;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat46.x = x_1413;
        let x_1416 : f32 = u_xlat17.z;
        let x_1418 : f32 = u_xlat46.x;
        let x_1420 : f32 = u_xlat65;
        u_xlat65 = ((x_1416 * x_1418) + x_1420);
        let x_1423 : vec4<f32> = u_xlat15;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.x, x_1423.y);
        let x_1426 : f32 = u_xlat21.z;
        txVec16 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec16;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1433.xy, x_1433.z);
        u_xlat46.x = x_1435;
        let x_1438 : f32 = u_xlat17.w;
        let x_1440 : f32 = u_xlat46.x;
        let x_1442 : f32 = u_xlat65;
        u_xlat65 = ((x_1438 * x_1440) + x_1442);
        let x_1445 : vec4<f32> = u_xlat13;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = u_xlat21.z;
        txVec17 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec17;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat46.x = x_1457;
        let x_1460 : f32 = u_xlat18.x;
        let x_1462 : f32 = u_xlat46.x;
        let x_1464 : f32 = u_xlat65;
        u_xlat65 = ((x_1460 * x_1462) + x_1464);
        let x_1467 : vec4<f32> = u_xlat13;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.z, x_1467.w);
        let x_1470 : f32 = u_xlat21.z;
        txVec18 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec18;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1477.xy, x_1477.z);
        u_xlat46.x = x_1479;
        let x_1482 : f32 = u_xlat18.y;
        let x_1484 : f32 = u_xlat46.x;
        let x_1486 : f32 = u_xlat65;
        u_xlat65 = ((x_1482 * x_1484) + x_1486);
        let x_1489 : vec4<f32> = u_xlat14;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = u_xlat21.z;
        txVec19 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec19;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1499.xy, x_1499.z);
        u_xlat46.x = x_1501;
        let x_1504 : f32 = u_xlat18.z;
        let x_1506 : f32 = u_xlat46.x;
        let x_1508 : f32 = u_xlat65;
        u_xlat65 = ((x_1504 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat15;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = u_xlat21.z;
        txVec20 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec20;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1521.xy, x_1521.z);
        u_xlat46.x = x_1523;
        let x_1526 : f32 = u_xlat18.w;
        let x_1528 : f32 = u_xlat46.x;
        let x_1530 : f32 = u_xlat65;
        u_xlat65 = ((x_1526 * x_1528) + x_1530);
        let x_1533 : vec4<f32> = u_xlat16;
        let x_1534 : vec2<f32> = vec2<f32>(x_1533.x, x_1533.y);
        let x_1536 : f32 = u_xlat21.z;
        txVec21 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec21;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1543.xy, x_1543.z);
        u_xlat46.x = x_1545;
        let x_1548 : f32 = u_xlat19.x;
        let x_1550 : f32 = u_xlat46.x;
        let x_1552 : f32 = u_xlat65;
        u_xlat65 = ((x_1548 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat16;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.z, x_1555.w);
        let x_1558 : f32 = u_xlat21.z;
        txVec22 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec22;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
        u_xlat46.x = x_1567;
        let x_1570 : f32 = u_xlat19.y;
        let x_1572 : f32 = u_xlat46.x;
        let x_1574 : f32 = u_xlat65;
        u_xlat65 = ((x_1570 * x_1572) + x_1574);
        let x_1577 : vec2<f32> = u_xlat28;
        let x_1579 : f32 = u_xlat21.z;
        txVec23 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec23;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat46.x = x_1588;
        let x_1591 : f32 = u_xlat19.z;
        let x_1593 : f32 = u_xlat46.x;
        let x_1595 : f32 = u_xlat65;
        u_xlat65 = ((x_1591 * x_1593) + x_1595);
        let x_1598 : vec2<f32> = u_xlat54;
        let x_1600 : f32 = u_xlat21.z;
        txVec24 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec24;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1607.xy, x_1607.z);
        u_xlat46.x = x_1609;
        let x_1612 : f32 = u_xlat19.w;
        let x_1614 : f32 = u_xlat46.x;
        let x_1616 : f32 = u_xlat65;
        u_xlat65 = ((x_1612 * x_1614) + x_1616);
        let x_1619 : vec4<f32> = u_xlat11;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
        let x_1622 : f32 = u_xlat21.z;
        txVec25 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec25;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1629.xy, x_1629.z);
        u_xlat46.x = x_1631;
        let x_1634 : f32 = u_xlat7.x;
        let x_1636 : f32 = u_xlat46.x;
        let x_1638 : f32 = u_xlat65;
        u_xlat65 = ((x_1634 * x_1636) + x_1638);
        let x_1641 : vec4<f32> = u_xlat11;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.z, x_1641.w);
        let x_1644 : f32 = u_xlat21.z;
        txVec26 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec26;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat46.x = x_1653;
        let x_1656 : f32 = u_xlat7.y;
        let x_1658 : f32 = u_xlat46.x;
        let x_1660 : f32 = u_xlat65;
        u_xlat65 = ((x_1656 * x_1658) + x_1660);
        let x_1663 : vec2<f32> = u_xlat49;
        let x_1665 : f32 = u_xlat21.z;
        txVec27 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec27;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1672.xy, x_1672.z);
        u_xlat46.x = x_1674;
        let x_1677 : f32 = u_xlat7.z;
        let x_1679 : f32 = u_xlat46.x;
        let x_1681 : f32 = u_xlat65;
        u_xlat65 = ((x_1677 * x_1679) + x_1681);
        let x_1684 : vec4<f32> = u_xlat6;
        let x_1685 : vec2<f32> = vec2<f32>(x_1684.x, x_1684.y);
        let x_1687 : f32 = u_xlat21.z;
        txVec28 = vec3<f32>(x_1685.x, x_1685.y, x_1687);
        let x_1694 : vec3<f32> = txVec28;
        let x_1696 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1694.xy, x_1694.z);
        u_xlat6.x = x_1696;
        let x_1699 : f32 = u_xlat7.w;
        let x_1701 : f32 = u_xlat6.x;
        let x_1703 : f32 = u_xlat65;
        u_xlat64 = ((x_1699 * x_1701) + x_1703);
      }
    }
  } else {
    let x_1707 : vec3<f32> = u_xlat21;
    let x_1708 : vec2<f32> = vec2<f32>(x_1707.x, x_1707.y);
    let x_1710 : f32 = u_xlat21.z;
    txVec29 = vec3<f32>(x_1708.x, x_1708.y, x_1710);
    let x_1717 : vec3<f32> = txVec29;
    let x_1719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1717.xy, x_1717.z);
    u_xlat64 = x_1719;
  }
  let x_1721 : f32 = x_94.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1721) + 1.0f);
  let x_1725 : f32 = u_xlat64;
  let x_1727 : f32 = x_94.x_MainLightShadowParams.x;
  let x_1730 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_1725 * x_1727) + x_1730);
  let x_1737 : f32 = u_xlat21.z;
  u_xlatb41.x = (0.0f >= x_1737);
  let x_1742 : f32 = u_xlat21.z;
  u_xlatb61 = (x_1742 >= 1.0f);
  let x_1744 : bool = u_xlatb61;
  let x_1746 : bool = u_xlatb41.x;
  u_xlatb41.x = (x_1744 | x_1746);
  let x_1750 : bool = u_xlatb41.x;
  if (x_1750) {
    x_1751 = 1.0f;
  } else {
    let x_1756 : f32 = u_xlat21.x;
    x_1751 = x_1756;
  }
  let x_1757 : f32 = x_1751;
  u_xlat21.x = x_1757;
  let x_1759 : vec3<f32> = vs_TEXCOORD7;
  let x_1762 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1764 : vec3<f32> = (x_1759 + -(x_1762));
  let x_1765 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1768 : vec4<f32> = u_xlat6;
  let x_1770 : vec4<f32> = u_xlat6;
  u_xlat41.x = dot(vec3<f32>(x_1768.x, x_1768.y, x_1768.z), vec3<f32>(x_1770.x, x_1770.y, x_1770.z));
  let x_1775 : f32 = u_xlat41.x;
  let x_1777 : f32 = x_94.x_MainLightShadowParams.z;
  let x_1780 : f32 = x_94.x_MainLightShadowParams.w;
  u_xlat41.x = ((x_1775 * x_1777) + x_1780);
  let x_1784 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_1784, 0.0f, 1.0f);
  let x_1789 : f32 = u_xlat21.x;
  u_xlat61 = (-(x_1789) + 1.0f);
  let x_1793 : f32 = u_xlat41.x;
  let x_1794 : f32 = u_xlat61;
  let x_1797 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_1793 * x_1794) + x_1797);
  let x_1806 : f32 = x_1804.x_MainLightCookieTextureFormat;
  u_xlatb41.x = !((x_1806 == -1.0f));
  let x_1810 : bool = u_xlatb41.x;
  if (x_1810) {
    let x_1813 : vec3<f32> = vs_TEXCOORD7;
    let x_1816 : vec4<f32> = x_1804.x_MainLightWorldToLight[1i];
    u_xlat41 = (vec2<f32>(x_1813.y, x_1813.y) * vec2<f32>(x_1816.x, x_1816.y));
    let x_1820 : vec4<f32> = x_1804.x_MainLightWorldToLight[0i];
    let x_1822 : vec3<f32> = vs_TEXCOORD7;
    let x_1825 : vec2<f32> = u_xlat41;
    u_xlat41 = ((vec2<f32>(x_1820.x, x_1820.y) * vec2<f32>(x_1822.x, x_1822.x)) + x_1825);
    let x_1828 : vec4<f32> = x_1804.x_MainLightWorldToLight[2i];
    let x_1830 : vec3<f32> = vs_TEXCOORD7;
    let x_1833 : vec2<f32> = u_xlat41;
    u_xlat41 = ((vec2<f32>(x_1828.x, x_1828.y) * vec2<f32>(x_1830.z, x_1830.z)) + x_1833);
    let x_1835 : vec2<f32> = u_xlat41;
    let x_1837 : vec4<f32> = x_1804.x_MainLightWorldToLight[3i];
    u_xlat41 = (x_1835 + vec2<f32>(x_1837.x, x_1837.y));
    let x_1840 : vec2<f32> = u_xlat41;
    u_xlat41 = ((x_1840 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1848 : vec2<f32> = u_xlat41;
    let x_1850 : f32 = x_43.x_GlobalMipBias.x;
    let x_1851 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1848, x_1850);
    u_xlat6 = x_1851;
    let x_1853 : f32 = x_1804.x_MainLightCookieTextureFormat;
    let x_1855 : f32 = x_1804.x_MainLightCookieTextureFormat;
    let x_1857 : f32 = x_1804.x_MainLightCookieTextureFormat;
    let x_1859 : f32 = x_1804.x_MainLightCookieTextureFormat;
    let x_1860 : vec4<f32> = vec4<f32>(x_1853, x_1855, x_1857, x_1859);
    let x_1867 : vec4<bool> = (vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1860.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb41 = vec2<bool>(x_1867.x, x_1867.y);
    let x_1870 : bool = u_xlatb41.y;
    if (x_1870) {
      let x_1875 : f32 = u_xlat6.w;
      x_1871 = x_1875;
    } else {
      let x_1878 : f32 = u_xlat6.x;
      x_1871 = x_1878;
    }
    let x_1879 : f32 = x_1871;
    u_xlat61 = x_1879;
    let x_1881 : bool = u_xlatb41.x;
    if (x_1881) {
      let x_1885 : vec4<f32> = u_xlat6;
      x_1882 = vec3<f32>(x_1885.x, x_1885.y, x_1885.z);
    } else {
      let x_1888 : f32 = u_xlat61;
      x_1882 = vec3<f32>(x_1888, x_1888, x_1888);
    }
    let x_1890 : vec3<f32> = x_1882;
    let x_1891 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1897 : vec4<f32> = u_xlat6;
  let x_1900 : vec4<f32> = x_43.x_MainLightColor;
  let x_1902 : vec3<f32> = (vec3<f32>(x_1897.x, x_1897.y, x_1897.z) * vec3<f32>(x_1900.x, x_1900.y, x_1900.z));
  let x_1903 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
  let x_1905 : f32 = u_xlat44;
  let x_1907 : vec4<f32> = u_xlat6;
  let x_1909 : vec3<f32> = (vec3<f32>(x_1905, x_1905, x_1905) * vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
  let x_1910 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
  let x_1913 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1913;
  let x_1917 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1917;
  let x_1921 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1921;
  let x_1923 : vec4<f32> = u_xlat7;
  let x_1926 : vec4<f32> = u_xlat2;
  u_xlat41.x = dot(-(vec3<f32>(x_1923.x, x_1923.y, x_1923.z)), vec3<f32>(x_1926.x, x_1926.y, x_1926.z));
  let x_1931 : f32 = u_xlat41.x;
  let x_1933 : f32 = u_xlat41.x;
  u_xlat41.x = (x_1931 + x_1933);
  let x_1936 : vec4<f32> = u_xlat2;
  let x_1938 : vec2<f32> = u_xlat41;
  let x_1942 : vec4<f32> = u_xlat7;
  let x_1945 : vec3<f32> = ((vec3<f32>(x_1936.x, x_1936.y, x_1936.z) * -(vec3<f32>(x_1938.x, x_1938.x, x_1938.x))) + -(vec3<f32>(x_1942.x, x_1942.y, x_1942.z)));
  let x_1946 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
  let x_1948 : vec4<f32> = u_xlat2;
  let x_1950 : vec4<f32> = u_xlat7;
  u_xlat41.x = dot(vec3<f32>(x_1948.x, x_1948.y, x_1948.z), vec3<f32>(x_1950.x, x_1950.y, x_1950.z));
  let x_1955 : f32 = u_xlat41.x;
  u_xlat41.x = clamp(x_1955, 0.0f, 1.0f);
  let x_1959 : f32 = u_xlat41.x;
  u_xlat41.x = (-(x_1959) + 1.0f);
  let x_1964 : f32 = u_xlat41.x;
  let x_1966 : f32 = u_xlat41.x;
  u_xlat1.z = (x_1964 * x_1966);
  let x_1970 : f32 = u_xlat1.x;
  u_xlat1.w = ((-(x_1970) * 0.699999988f) + 1.700000048f);
  let x_1977 : vec4<f32> = u_xlat1;
  let x_1979 : vec4<f32> = u_xlat1;
  let x_1981 : vec2<f32> = (vec2<f32>(x_1977.w, x_1977.z) * vec2<f32>(x_1979.x, x_1979.z));
  let x_1982 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1981.x, x_1982.y, x_1981.y, x_1982.w);
  let x_1985 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1985 * 6.0f);
  let x_1997 : vec4<f32> = u_xlat8;
  let x_2000 : f32 = u_xlat1.x;
  let x_2001 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1997.x, x_1997.y, x_1997.z), x_2000);
  u_xlat8 = x_2001;
  let x_2003 : f32 = u_xlat8.w;
  u_xlat1.x = (x_2003 + -1.0f);
  let x_2007 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_2009 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2007 * x_2009) + 1.0f);
  let x_2014 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2014, 0.0f);
  let x_2018 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2018);
  let x_2022 : f32 = u_xlat1.x;
  let x_2024 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2022 * x_2024);
  let x_2028 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2028);
  let x_2032 : f32 = u_xlat1.x;
  let x_2034 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2032 * x_2034);
  let x_2037 : vec4<f32> = u_xlat8;
  let x_2039 : vec4<f32> = u_xlat1;
  let x_2041 : vec3<f32> = (vec3<f32>(x_2037.x, x_2037.y, x_2037.z) * vec3<f32>(x_2039.x, x_2039.x, x_2039.x));
  let x_2042 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
  let x_2044 : f32 = u_xlat62;
  let x_2046 : f32 = u_xlat62;
  let x_2050 : vec2<f32> = ((vec2<f32>(x_2044, x_2044) * vec2<f32>(x_2046, x_2046)) + vec2<f32>(-1.0f, 1.0f));
  let x_2051 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2050.x, x_2051.y, x_2051.z, x_2050.y);
  let x_2054 : f32 = u_xlat1.w;
  u_xlat61 = (1.0f / x_2054);
  let x_2056 : vec4<f32> = u_xlat0;
  let x_2059 : f32 = u_xlat60;
  let x_2061 : vec3<f32> = (-(vec3<f32>(x_2056.x, x_2056.y, x_2056.z)) + vec3<f32>(x_2059, x_2059, x_2059));
  let x_2062 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2061.x, x_2061.y, x_2061.z, x_2062.w);
  let x_2064 : vec4<f32> = u_xlat1;
  let x_2066 : vec4<f32> = u_xlat9;
  let x_2069 : vec4<f32> = u_xlat0;
  let x_2071 : vec3<f32> = ((vec3<f32>(x_2064.z, x_2064.z, x_2064.z) * vec3<f32>(x_2066.x, x_2066.y, x_2066.z)) + vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
  let x_2072 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
  let x_2074 : f32 = u_xlat61;
  let x_2076 : vec4<f32> = u_xlat9;
  let x_2078 : vec3<f32> = (vec3<f32>(x_2074, x_2074, x_2074) * vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
  let x_2079 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
  let x_2081 : vec4<f32> = u_xlat8;
  let x_2083 : vec4<f32> = u_xlat9;
  let x_2085 : vec3<f32> = (vec3<f32>(x_2081.x, x_2081.y, x_2081.z) * vec3<f32>(x_2083.x, x_2083.y, x_2083.z));
  let x_2086 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2085.x, x_2085.y, x_2085.z, x_2086.w);
  let x_2088 : vec3<f32> = u_xlat3;
  let x_2089 : vec3<f32> = u_xlat5;
  let x_2091 : vec4<f32> = u_xlat8;
  u_xlat3 = ((x_2088 * x_2089) + vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
  let x_2095 : f32 = u_xlat21.x;
  let x_2097 : f32 = x_274.unity_LightData.z;
  u_xlat60 = (x_2095 * x_2097);
  let x_2099 : vec4<f32> = u_xlat2;
  let x_2102 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat21.x = dot(vec3<f32>(x_2099.x, x_2099.y, x_2099.z), vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
  let x_2107 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_2107, 0.0f, 1.0f);
  let x_2110 : f32 = u_xlat60;
  let x_2112 : f32 = u_xlat21.x;
  u_xlat60 = (x_2110 * x_2112);
  let x_2114 : f32 = u_xlat60;
  let x_2116 : vec4<f32> = u_xlat6;
  u_xlat21 = (vec3<f32>(x_2114, x_2114, x_2114) * vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
  let x_2119 : vec4<f32> = u_xlat7;
  let x_2122 : vec4<f32> = x_43.x_MainLightPosition;
  let x_2124 : vec3<f32> = (vec3<f32>(x_2119.x, x_2119.y, x_2119.z) + vec3<f32>(x_2122.x, x_2122.y, x_2122.z));
  let x_2125 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
  let x_2127 : vec4<f32> = u_xlat6;
  let x_2129 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(vec3<f32>(x_2127.x, x_2127.y, x_2127.z), vec3<f32>(x_2129.x, x_2129.y, x_2129.z));
  let x_2132 : f32 = u_xlat60;
  u_xlat60 = max(x_2132, 1.17549435e-37f);
  let x_2135 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2135);
  let x_2137 : f32 = u_xlat60;
  let x_2139 : vec4<f32> = u_xlat6;
  let x_2141 : vec3<f32> = (vec3<f32>(x_2137, x_2137, x_2137) * vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2142 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
  let x_2144 : vec4<f32> = u_xlat2;
  let x_2146 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(vec3<f32>(x_2144.x, x_2144.y, x_2144.z), vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2149 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2149, 0.0f, 1.0f);
  let x_2152 : vec4<f32> = x_43.x_MainLightPosition;
  let x_2154 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(vec3<f32>(x_2152.x, x_2152.y, x_2152.z), vec3<f32>(x_2154.x, x_2154.y, x_2154.z));
  let x_2157 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2157, 0.0f, 1.0f);
  let x_2159 : f32 = u_xlat60;
  let x_2160 : f32 = u_xlat60;
  u_xlat60 = (x_2159 * x_2160);
  let x_2162 : f32 = u_xlat60;
  let x_2164 : f32 = u_xlat1.x;
  u_xlat60 = ((x_2162 * x_2164) + 1.000010014f);
  let x_2168 : f32 = u_xlat62;
  let x_2169 : f32 = u_xlat62;
  u_xlat62 = (x_2168 * x_2169);
  let x_2171 : f32 = u_xlat60;
  let x_2172 : f32 = u_xlat60;
  u_xlat60 = (x_2171 * x_2172);
  let x_2174 : f32 = u_xlat62;
  u_xlat62 = max(x_2174, 0.100000001f);
  let x_2177 : f32 = u_xlat60;
  let x_2178 : f32 = u_xlat62;
  u_xlat60 = (x_2177 * x_2178);
  let x_2180 : f32 = u_xlat63;
  let x_2181 : f32 = u_xlat60;
  u_xlat60 = (x_2180 * x_2181);
  let x_2183 : f32 = u_xlat24;
  let x_2184 : f32 = u_xlat60;
  u_xlat60 = (x_2183 / x_2184);
  let x_2186 : vec4<f32> = u_xlat0;
  let x_2188 : f32 = u_xlat60;
  let x_2191 : vec3<f32> = u_xlat5;
  let x_2192 : vec3<f32> = ((vec3<f32>(x_2186.x, x_2186.y, x_2186.z) * vec3<f32>(x_2188, x_2188, x_2188)) + x_2191);
  let x_2193 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2192.x, x_2192.y, x_2192.z, x_2193.w);
  let x_2195 : vec3<f32> = u_xlat21;
  let x_2196 : vec4<f32> = u_xlat6;
  u_xlat21 = (x_2195 * vec3<f32>(x_2196.x, x_2196.y, x_2196.z));
  let x_2200 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_2202 : f32 = x_274.unity_LightData.y;
  u_xlat60 = min(x_2200, x_2202);
  let x_2205 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2205));
  let x_2210 : f32 = x_1804.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2212 : f32 = x_1804.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2214 : f32 = x_1804.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2216 : f32 = x_1804.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2217 : vec4<f32> = vec4<f32>(x_2210, x_2212, x_2214, x_2216);
  let x_2224 : vec4<bool> = (vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2217.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2224.x, x_2224.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2235 : u32 = u_xlatu_loop_1;
    let x_2236 : u32 = u_xlatu60;
    if ((x_2235 < x_2236)) {
    } else {
      break;
    }
    let x_2239 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_2239 >> 2u);
    let x_2242 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2242 & 3u));
    let x_2245 : u32 = u_xlatu64;
    let x_2248 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_2245)];
    let x_2258 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2263 : vec4<u32> = indexable[x_2258];
    u_xlat64 = dot(x_2248, bitcast<vec4<f32>>(x_2263));
    let x_2266 : f32 = u_xlat64;
    u_xlatu64 = bitcast<u32>(i32(x_2266));
    let x_2269 : vec3<f32> = vs_TEXCOORD7;
    let x_2281 : u32 = u_xlatu64;
    let x_2284 : vec4<f32> = x_2280.x_AdditionalLightsPosition[bitcast<i32>(x_2281)];
    let x_2287 : u32 = u_xlatu64;
    let x_2290 : vec4<f32> = x_2280.x_AdditionalLightsPosition[bitcast<i32>(x_2287)];
    let x_2292 : vec3<f32> = ((-(x_2269) * vec3<f32>(x_2284.w, x_2284.w, x_2284.w)) + vec3<f32>(x_2290.x, x_2290.y, x_2290.z));
    let x_2293 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
    let x_2295 : vec4<f32> = u_xlat9;
    let x_2297 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2295.x, x_2295.y, x_2295.z), vec3<f32>(x_2297.x, x_2297.y, x_2297.z));
    let x_2300 : f32 = u_xlat65;
    u_xlat65 = max(x_2300, 6.10351562e-05f);
    let x_2303 : f32 = u_xlat65;
    u_xlat46.x = inverseSqrt(x_2303);
    let x_2306 : vec2<f32> = u_xlat46;
    let x_2308 : vec4<f32> = u_xlat9;
    let x_2310 : vec3<f32> = (vec3<f32>(x_2306.x, x_2306.x, x_2306.x) * vec3<f32>(x_2308.x, x_2308.y, x_2308.z));
    let x_2311 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
    let x_2314 : f32 = u_xlat65;
    u_xlat66 = (1.0f / x_2314);
    let x_2316 : f32 = u_xlat65;
    let x_2317 : u32 = u_xlatu64;
    let x_2320 : f32 = x_2280.x_AdditionalLightsAttenuation[bitcast<i32>(x_2317)].x;
    u_xlat65 = (x_2316 * x_2320);
    let x_2322 : f32 = u_xlat65;
    let x_2324 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2322) * x_2324) + 1.0f);
    let x_2327 : f32 = u_xlat65;
    u_xlat65 = max(x_2327, 0.0f);
    let x_2329 : f32 = u_xlat65;
    let x_2330 : f32 = u_xlat65;
    u_xlat65 = (x_2329 * x_2330);
    let x_2332 : f32 = u_xlat65;
    let x_2333 : f32 = u_xlat66;
    u_xlat65 = (x_2332 * x_2333);
    let x_2335 : u32 = u_xlatu64;
    let x_2338 : vec4<f32> = x_2280.x_AdditionalLightsSpotDir[bitcast<i32>(x_2335)];
    let x_2340 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2338.x, x_2338.y, x_2338.z), vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
    let x_2343 : f32 = u_xlat66;
    let x_2344 : u32 = u_xlatu64;
    let x_2347 : f32 = x_2280.x_AdditionalLightsAttenuation[bitcast<i32>(x_2344)].z;
    let x_2349 : u32 = u_xlatu64;
    let x_2352 : f32 = x_2280.x_AdditionalLightsAttenuation[bitcast<i32>(x_2349)].w;
    u_xlat66 = ((x_2343 * x_2347) + x_2352);
    let x_2354 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2354, 0.0f, 1.0f);
    let x_2356 : f32 = u_xlat66;
    let x_2357 : f32 = u_xlat66;
    u_xlat66 = (x_2356 * x_2357);
    let x_2359 : f32 = u_xlat65;
    let x_2360 : f32 = u_xlat66;
    u_xlat65 = (x_2359 * x_2360);
    let x_2363 : u32 = u_xlatu64;
    u_xlatu66 = (x_2363 >> 5u);
    let x_2366 : u32 = u_xlatu64;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2366) & 31i)));
    let x_2372 : i32 = u_xlati67;
    let x_2374 : u32 = u_xlatu66;
    let x_2377 : f32 = x_1804.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2374)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2372) & bitcast<u32>(x_2377)));
    let x_2381 : i32 = u_xlati66;
    if ((x_2381 != 0i)) {
      let x_2391 : u32 = u_xlatu64;
      let x_2394 : f32 = x_2390.x_AdditionalLightsLightTypes[bitcast<i32>(x_2391)].el;
      u_xlati66 = i32(x_2394);
      let x_2396 : i32 = u_xlati66;
      u_xlati67 = select(1i, 0i, (x_2396 != 0i));
      let x_2400 : u32 = u_xlatu64;
      u_xlati68 = (bitcast<i32>(x_2400) << bitcast<u32>(2i));
      let x_2403 : i32 = u_xlati67;
      if ((x_2403 != 0i)) {
        let x_2407 : vec3<f32> = vs_TEXCOORD7;
        let x_2409 : i32 = u_xlati68;
        let x_2412 : i32 = u_xlati68;
        let x_2416 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[((x_2409 + 1i) / 4i)][((x_2412 + 1i) % 4i)];
        let x_2418 : vec3<f32> = (vec3<f32>(x_2407.y, x_2407.y, x_2407.y) * vec3<f32>(x_2416.x, x_2416.y, x_2416.w));
        let x_2419 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
        let x_2421 : i32 = u_xlati68;
        let x_2423 : i32 = u_xlati68;
        let x_2426 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[(x_2421 / 4i)][(x_2423 % 4i)];
        let x_2428 : vec3<f32> = vs_TEXCOORD7;
        let x_2431 : vec4<f32> = u_xlat11;
        let x_2433 : vec3<f32> = ((vec3<f32>(x_2426.x, x_2426.y, x_2426.w) * vec3<f32>(x_2428.x, x_2428.x, x_2428.x)) + vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
        let x_2434 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
        let x_2436 : i32 = u_xlati68;
        let x_2439 : i32 = u_xlati68;
        let x_2443 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[((x_2436 + 2i) / 4i)][((x_2439 + 2i) % 4i)];
        let x_2445 : vec3<f32> = vs_TEXCOORD7;
        let x_2448 : vec4<f32> = u_xlat11;
        let x_2450 : vec3<f32> = ((vec3<f32>(x_2443.x, x_2443.y, x_2443.w) * vec3<f32>(x_2445.z, x_2445.z, x_2445.z)) + vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
        let x_2451 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2451.w);
        let x_2453 : vec4<f32> = u_xlat11;
        let x_2455 : i32 = u_xlati68;
        let x_2458 : i32 = u_xlati68;
        let x_2462 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[((x_2455 + 3i) / 4i)][((x_2458 + 3i) % 4i)];
        let x_2464 : vec3<f32> = (vec3<f32>(x_2453.x, x_2453.y, x_2453.z) + vec3<f32>(x_2462.x, x_2462.y, x_2462.w));
        let x_2465 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
        let x_2467 : vec4<f32> = u_xlat11;
        let x_2469 : vec4<f32> = u_xlat11;
        let x_2471 : vec2<f32> = (vec2<f32>(x_2467.x, x_2467.y) / vec2<f32>(x_2469.z, x_2469.z));
        let x_2472 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2471.x, x_2471.y, x_2472.z, x_2472.w);
        let x_2474 : vec4<f32> = u_xlat11;
        let x_2477 : vec2<f32> = ((vec2<f32>(x_2474.x, x_2474.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2478 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2477.x, x_2477.y, x_2478.z, x_2478.w);
        let x_2480 : vec4<f32> = u_xlat11;
        let x_2484 : vec2<f32> = clamp(vec2<f32>(x_2480.x, x_2480.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2485 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2484.x, x_2484.y, x_2485.z, x_2485.w);
        let x_2487 : u32 = u_xlatu64;
        let x_2490 : vec4<f32> = x_2390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2487)];
        let x_2492 : vec4<f32> = u_xlat11;
        let x_2495 : u32 = u_xlatu64;
        let x_2498 : vec4<f32> = x_2390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2495)];
        let x_2500 : vec2<f32> = ((vec2<f32>(x_2490.x, x_2490.y) * vec2<f32>(x_2492.x, x_2492.y)) + vec2<f32>(x_2498.z, x_2498.w));
        let x_2501 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2500.x, x_2500.y, x_2501.z, x_2501.w);
      } else {
        let x_2505 : i32 = u_xlati66;
        u_xlatb66 = (x_2505 == 1i);
        let x_2507 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2507);
        let x_2509 : i32 = u_xlati66;
        if ((x_2509 != 0i)) {
          let x_2514 : vec3<f32> = vs_TEXCOORD7;
          let x_2516 : i32 = u_xlati68;
          let x_2519 : i32 = u_xlati68;
          let x_2523 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[((x_2516 + 1i) / 4i)][((x_2519 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2514.y, x_2514.y) * vec2<f32>(x_2523.x, x_2523.y));
          let x_2526 : i32 = u_xlati68;
          let x_2528 : i32 = u_xlati68;
          let x_2531 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[(x_2526 / 4i)][(x_2528 % 4i)];
          let x_2533 : vec3<f32> = vs_TEXCOORD7;
          let x_2536 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2531.x, x_2531.y) * vec2<f32>(x_2533.x, x_2533.x)) + x_2536);
          let x_2538 : i32 = u_xlati68;
          let x_2541 : i32 = u_xlati68;
          let x_2545 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[((x_2538 + 2i) / 4i)][((x_2541 + 2i) % 4i)];
          let x_2547 : vec3<f32> = vs_TEXCOORD7;
          let x_2550 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2545.x, x_2545.y) * vec2<f32>(x_2547.z, x_2547.z)) + x_2550);
          let x_2552 : vec2<f32> = u_xlat51;
          let x_2553 : i32 = u_xlati68;
          let x_2556 : i32 = u_xlati68;
          let x_2560 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[((x_2553 + 3i) / 4i)][((x_2556 + 3i) % 4i)];
          u_xlat51 = (x_2552 + vec2<f32>(x_2560.x, x_2560.y));
          let x_2563 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2563 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2566 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2566);
          let x_2568 : u32 = u_xlatu64;
          let x_2571 : vec4<f32> = x_2390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2568)];
          let x_2573 : vec2<f32> = u_xlat51;
          let x_2575 : u32 = u_xlatu64;
          let x_2578 : vec4<f32> = x_2390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2575)];
          let x_2580 : vec2<f32> = ((vec2<f32>(x_2571.x, x_2571.y) * x_2573) + vec2<f32>(x_2578.z, x_2578.w));
          let x_2581 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2580.x, x_2580.y, x_2581.z, x_2581.w);
        } else {
          let x_2584 : vec3<f32> = vs_TEXCOORD7;
          let x_2586 : i32 = u_xlati68;
          let x_2589 : i32 = u_xlati68;
          let x_2593 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[((x_2586 + 1i) / 4i)][((x_2589 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2584.y, x_2584.y, x_2584.y, x_2584.y) * x_2593);
          let x_2595 : i32 = u_xlati68;
          let x_2597 : i32 = u_xlati68;
          let x_2600 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[(x_2595 / 4i)][(x_2597 % 4i)];
          let x_2601 : vec3<f32> = vs_TEXCOORD7;
          let x_2604 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2600 * vec4<f32>(x_2601.x, x_2601.x, x_2601.x, x_2601.x)) + x_2604);
          let x_2606 : i32 = u_xlati68;
          let x_2609 : i32 = u_xlati68;
          let x_2613 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[((x_2606 + 2i) / 4i)][((x_2609 + 2i) % 4i)];
          let x_2614 : vec3<f32> = vs_TEXCOORD7;
          let x_2617 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2613 * vec4<f32>(x_2614.z, x_2614.z, x_2614.z, x_2614.z)) + x_2617);
          let x_2619 : vec4<f32> = u_xlat12;
          let x_2620 : i32 = u_xlati68;
          let x_2623 : i32 = u_xlati68;
          let x_2627 : vec4<f32> = x_2390.x_AdditionalLightsWorldToLights[((x_2620 + 3i) / 4i)][((x_2623 + 3i) % 4i)];
          u_xlat12 = (x_2619 + x_2627);
          let x_2629 : vec4<f32> = u_xlat12;
          let x_2631 : vec4<f32> = u_xlat12;
          let x_2633 : vec3<f32> = (vec3<f32>(x_2629.x, x_2629.y, x_2629.z) / vec3<f32>(x_2631.w, x_2631.w, x_2631.w));
          let x_2634 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);
          let x_2636 : vec4<f32> = u_xlat12;
          let x_2638 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2636.x, x_2636.y, x_2636.z), vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
          let x_2641 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2641);
          let x_2643 : f32 = u_xlat66;
          let x_2645 : vec4<f32> = u_xlat12;
          let x_2647 : vec3<f32> = (vec3<f32>(x_2643, x_2643, x_2643) * vec3<f32>(x_2645.x, x_2645.y, x_2645.z));
          let x_2648 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2648.w);
          let x_2650 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2650.x, x_2650.y, x_2650.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2655 : f32 = u_xlat66;
          u_xlat66 = max(x_2655, 0.000001f);
          let x_2658 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2658);
          let x_2660 : f32 = u_xlat66;
          let x_2662 : vec4<f32> = u_xlat12;
          let x_2664 : vec3<f32> = (vec3<f32>(x_2660, x_2660, x_2660) * vec3<f32>(x_2662.z, x_2662.x, x_2662.y));
          let x_2665 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2664.x, x_2664.y, x_2664.z, x_2665.w);
          let x_2668 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2668);
          let x_2672 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2672, 0.0f, 1.0f);
          let x_2676 : vec4<f32> = u_xlat13;
          let x_2679 : vec4<bool> = (vec4<f32>(x_2676.y, x_2676.z, x_2676.y, x_2676.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2679.x, x_2679.y);
          let x_2682 : bool = u_xlatb51.x;
          if (x_2682) {
            let x_2687 : f32 = u_xlat13.x;
            x_2683 = x_2687;
          } else {
            let x_2690 : f32 = u_xlat13.x;
            x_2683 = -(x_2690);
          }
          let x_2692 : f32 = x_2683;
          u_xlat51.x = x_2692;
          let x_2695 : bool = u_xlatb51.y;
          if (x_2695) {
            let x_2700 : f32 = u_xlat13.x;
            x_2696 = x_2700;
          } else {
            let x_2703 : f32 = u_xlat13.x;
            x_2696 = -(x_2703);
          }
          let x_2705 : f32 = x_2696;
          u_xlat51.y = x_2705;
          let x_2707 : vec4<f32> = u_xlat12;
          let x_2709 : f32 = u_xlat66;
          let x_2712 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2707.x, x_2707.y) * vec2<f32>(x_2709, x_2709)) + x_2712);
          let x_2714 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2714 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2717 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_2717, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2721 : u32 = u_xlatu64;
          let x_2724 : vec4<f32> = x_2390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2721)];
          let x_2726 : vec2<f32> = u_xlat51;
          let x_2728 : u32 = u_xlatu64;
          let x_2731 : vec4<f32> = x_2390.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2728)];
          let x_2733 : vec2<f32> = ((vec2<f32>(x_2724.x, x_2724.y) * x_2726) + vec2<f32>(x_2731.z, x_2731.w));
          let x_2734 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2733.x, x_2733.y, x_2734.z, x_2734.w);
        }
      }
      let x_2741 : vec4<f32> = u_xlat11;
      let x_2744 : f32 = x_43.x_GlobalMipBias.x;
      let x_2745 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2741.x, x_2741.y), x_2744);
      u_xlat11 = x_2745;
      let x_2747 : bool = u_xlatb6.y;
      if (x_2747) {
        let x_2752 : f32 = u_xlat11.w;
        x_2748 = x_2752;
      } else {
        let x_2755 : f32 = u_xlat11.x;
        x_2748 = x_2755;
      }
      let x_2756 : f32 = x_2748;
      u_xlat66 = x_2756;
      let x_2758 : bool = u_xlatb6.x;
      if (x_2758) {
        let x_2762 : vec4<f32> = u_xlat11;
        x_2759 = vec3<f32>(x_2762.x, x_2762.y, x_2762.z);
      } else {
        let x_2765 : f32 = u_xlat66;
        x_2759 = vec3<f32>(x_2765, x_2765, x_2765);
      }
      let x_2767 : vec3<f32> = x_2759;
      let x_2768 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2767.x, x_2767.y, x_2767.z, x_2768.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2774 : vec4<f32> = u_xlat11;
    let x_2776 : u32 = u_xlatu64;
    let x_2779 : vec4<f32> = x_2280.x_AdditionalLightsColor[bitcast<i32>(x_2776)];
    let x_2781 : vec3<f32> = (vec3<f32>(x_2774.x, x_2774.y, x_2774.z) * vec3<f32>(x_2779.x, x_2779.y, x_2779.z));
    let x_2782 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2781.x, x_2781.y, x_2781.z, x_2782.w);
    let x_2784 : f32 = u_xlat44;
    let x_2786 : vec4<f32> = u_xlat11;
    let x_2788 : vec3<f32> = (vec3<f32>(x_2784, x_2784, x_2784) * vec3<f32>(x_2786.x, x_2786.y, x_2786.z));
    let x_2789 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2788.x, x_2788.y, x_2788.z, x_2789.w);
    let x_2791 : vec4<f32> = u_xlat2;
    let x_2793 : vec4<f32> = u_xlat10;
    u_xlat64 = dot(vec3<f32>(x_2791.x, x_2791.y, x_2791.z), vec3<f32>(x_2793.x, x_2793.y, x_2793.z));
    let x_2796 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2796, 0.0f, 1.0f);
    let x_2798 : f32 = u_xlat64;
    let x_2799 : f32 = u_xlat65;
    u_xlat64 = (x_2798 * x_2799);
    let x_2801 : f32 = u_xlat64;
    let x_2803 : vec4<f32> = u_xlat11;
    let x_2805 : vec3<f32> = (vec3<f32>(x_2801, x_2801, x_2801) * vec3<f32>(x_2803.x, x_2803.y, x_2803.z));
    let x_2806 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2806.w);
    let x_2808 : vec4<f32> = u_xlat9;
    let x_2810 : vec2<f32> = u_xlat46;
    let x_2813 : vec4<f32> = u_xlat7;
    let x_2815 : vec3<f32> = ((vec3<f32>(x_2808.x, x_2808.y, x_2808.z) * vec3<f32>(x_2810.x, x_2810.x, x_2810.x)) + vec3<f32>(x_2813.x, x_2813.y, x_2813.z));
    let x_2816 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2816.w);
    let x_2818 : vec4<f32> = u_xlat9;
    let x_2820 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2818.x, x_2818.y, x_2818.z), vec3<f32>(x_2820.x, x_2820.y, x_2820.z));
    let x_2823 : f32 = u_xlat64;
    u_xlat64 = max(x_2823, 1.17549435e-37f);
    let x_2825 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2825);
    let x_2827 : f32 = u_xlat64;
    let x_2829 : vec4<f32> = u_xlat9;
    let x_2831 : vec3<f32> = (vec3<f32>(x_2827, x_2827, x_2827) * vec3<f32>(x_2829.x, x_2829.y, x_2829.z));
    let x_2832 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2831.x, x_2831.y, x_2831.z, x_2832.w);
    let x_2834 : vec4<f32> = u_xlat2;
    let x_2836 : vec4<f32> = u_xlat9;
    u_xlat64 = dot(vec3<f32>(x_2834.x, x_2834.y, x_2834.z), vec3<f32>(x_2836.x, x_2836.y, x_2836.z));
    let x_2839 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2839, 0.0f, 1.0f);
    let x_2841 : vec4<f32> = u_xlat10;
    let x_2843 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2841.x, x_2841.y, x_2841.z), vec3<f32>(x_2843.x, x_2843.y, x_2843.z));
    let x_2846 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2846, 0.0f, 1.0f);
    let x_2848 : f32 = u_xlat64;
    let x_2849 : f32 = u_xlat64;
    u_xlat64 = (x_2848 * x_2849);
    let x_2851 : f32 = u_xlat64;
    let x_2853 : f32 = u_xlat1.x;
    u_xlat64 = ((x_2851 * x_2853) + 1.000010014f);
    let x_2856 : f32 = u_xlat65;
    let x_2857 : f32 = u_xlat65;
    u_xlat65 = (x_2856 * x_2857);
    let x_2859 : f32 = u_xlat64;
    let x_2860 : f32 = u_xlat64;
    u_xlat64 = (x_2859 * x_2860);
    let x_2862 : f32 = u_xlat65;
    u_xlat65 = max(x_2862, 0.100000001f);
    let x_2864 : f32 = u_xlat64;
    let x_2865 : f32 = u_xlat65;
    u_xlat64 = (x_2864 * x_2865);
    let x_2867 : f32 = u_xlat63;
    let x_2868 : f32 = u_xlat64;
    u_xlat64 = (x_2867 * x_2868);
    let x_2870 : f32 = u_xlat24;
    let x_2871 : f32 = u_xlat64;
    u_xlat64 = (x_2870 / x_2871);
    let x_2873 : vec4<f32> = u_xlat0;
    let x_2875 : f32 = u_xlat64;
    let x_2878 : vec3<f32> = u_xlat5;
    let x_2879 : vec3<f32> = ((vec3<f32>(x_2873.x, x_2873.y, x_2873.z) * vec3<f32>(x_2875, x_2875, x_2875)) + x_2878);
    let x_2880 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2879.x, x_2879.y, x_2879.z, x_2880.w);
    let x_2882 : vec4<f32> = u_xlat9;
    let x_2884 : vec4<f32> = u_xlat11;
    let x_2887 : vec4<f32> = u_xlat8;
    let x_2889 : vec3<f32> = ((vec3<f32>(x_2882.x, x_2882.y, x_2882.z) * vec3<f32>(x_2884.x, x_2884.y, x_2884.z)) + vec3<f32>(x_2887.x, x_2887.y, x_2887.z));
    let x_2890 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2889.x, x_2889.y, x_2889.z, x_2890.w);

    continuing {
      let x_2892 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2892 + bitcast<u32>(1i));
    }
  }
  let x_2894 : vec3<f32> = u_xlat3;
  let x_2895 : vec4<f32> = u_xlat4;
  let x_2898 : vec3<f32> = u_xlat21;
  let x_2899 : vec3<f32> = ((x_2894 * vec3<f32>(x_2895.x, x_2895.x, x_2895.x)) + x_2898);
  let x_2900 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2899.x, x_2899.y, x_2899.z, x_2900.w);
  let x_2904 : vec4<f32> = u_xlat8;
  let x_2906 : vec4<f32> = u_xlat0;
  let x_2908 : vec3<f32> = (vec3<f32>(x_2904.x, x_2904.y, x_2904.z) + vec3<f32>(x_2906.x, x_2906.y, x_2906.z));
  let x_2909 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2908.x, x_2908.y, x_2908.z, x_2909.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

