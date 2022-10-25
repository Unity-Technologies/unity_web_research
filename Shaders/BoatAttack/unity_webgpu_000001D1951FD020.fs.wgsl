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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_MainTex_TexelSize : vec4<f32>,
  x_MRLL_TexelSize : vec4<f32>,
  x_BumpMap_TexelSize : vec4<f32>,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

@group(0) @binding(6) var x_MainTex : texture_2d<f32>;

@group(0) @binding(15) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(7) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(8) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_267 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_553 : MainLightShadows;

var<private> vs_INTERP8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1851 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2297 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2406 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlatb22 : vec3<bool>;
  var u_xlat22 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat42 : f32;
  var x_371 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat63 : f32;
  var u_xlatb67 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb26 : vec2<bool>;
  var u_xlat26 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat47 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb47 : bool;
  var x_1933 : f32;
  var x_1944 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlatu42 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2698 : f32;
  var x_2711 : f32;
  var x_2763 : f32;
  var x_2774 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_INTERP3;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_57 : vec4<f32> = vs_INTERP3;
  let x_60 : f32 = x_44.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1 = x_61;
  let x_64 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = x_68.x_Color2;
  u_xlat2 = (vec3<f32>(x_64.w, x_64.w, x_64.w) * vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_77 : vec4<f32> = x_68.x_Color1;
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_79.z, x_79.z, x_79.z)) + x_82);
  let x_87 : f32 = u_xlat1.w;
  let x_90 : f32 = u_xlat1.z;
  u_xlat43 = (x_87 + x_90);
  let x_92 : f32 = u_xlat43;
  u_xlat43 = clamp(x_92, 0.0f, 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat3 = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec3<f32> = u_xlat3;
  let x_102 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_101 + x_102);
  let x_105 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec3<f32> = u_xlat3;
  let x_110 : vec3<f32> = u_xlat4;
  u_xlat3 = ((-(x_108) * x_110) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat4 = (vec3<f32>(x_113.x, x_113.y, x_113.z) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec3<f32> = u_xlat2;
  let x_119 : vec3<f32> = u_xlat4;
  u_xlat2 = (x_118 * x_119);
  let x_127 : vec4<f32> = u_xlat0;
  let x_130 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_127.x, x_127.y, x_127.z, x_127.x));
  u_xlatb4 = vec3<bool>(x_130.x, x_130.y, x_130.z);
  let x_135 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_135);
  let x_140 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_140);
  let x_144 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_144);
  let x_148 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_148);
  let x_152 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_152);
  let x_156 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_156);
  let x_159 : vec3<f32> = u_xlat3;
  let x_160 : vec3<f32> = u_xlat4;
  u_xlat3 = (x_159 * x_160);
  let x_162 : vec3<f32> = u_xlat2;
  let x_163 : vec3<f32> = u_xlat5;
  let x_165 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_162 * x_163) + x_165);
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_167.x, x_167.y, x_167.z)) + x_170);
  let x_172 : f32 = u_xlat43;
  let x_174 : vec3<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_172, x_172, x_172) * x_174) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : f32 = u_xlat0.x;
  u_xlat0.x = (x_180 + -0.150000006f);
  let x_185 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_189) + 1.0f);
  let x_193 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_198);
  let x_204 : vec4<f32> = vs_INTERP3;
  let x_207 : f32 = x_44.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_204.x, x_204.y), x_207);
  u_xlat3 = vec3<f32>(x_208.x, x_208.y, x_208.w);
  let x_211 : f32 = u_xlat3.x;
  let x_213 : f32 = u_xlat3.z;
  u_xlat3.x = (x_211 * x_213);
  let x_218 : vec3<f32> = u_xlat3;
  u_xlat21 = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_226 : vec2<f32> = u_xlat21;
  let x_227 : vec2<f32> = u_xlat21;
  u_xlat43 = dot(x_226, x_227);
  let x_229 : f32 = u_xlat43;
  u_xlat43 = min(x_229, 1.0f);
  let x_231 : f32 = u_xlat43;
  u_xlat43 = (-(x_231) + 1.0f);
  let x_234 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_234);
  let x_236 : f32 = u_xlat43;
  u_xlat43 = max(x_236, 1.00000002e-16f);
  let x_240 : f32 = u_xlat1.x;
  let x_242 : f32 = u_xlat0.x;
  u_xlat0.x = (x_240 + x_242);
  let x_246 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_246, 0.0f, 1.0f);
  let x_250 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_250, 0.0f);
  let x_254 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_254, 0.850000024f);
  let x_261 : f32 = vs_INTERP2.w;
  u_xlatb22.x = (0.0f < x_261);
  let x_269 : f32 = x_267.unity_WorldTransformParams.w;
  u_xlatb22.z = (x_269 >= 0.0f);
  let x_274 : bool = u_xlatb22.x;
  u_xlat22.x = select(-1.0f, 1.0f, x_274);
  let x_278 : bool = u_xlatb22.z;
  u_xlat22.z = select(-1.0f, 1.0f, x_278);
  let x_282 : f32 = u_xlat22.z;
  let x_284 : f32 = u_xlat22.x;
  u_xlat22.x = (x_282 * x_284);
  let x_289 : vec3<f32> = vs_INTERP1;
  let x_291 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_289.z, x_289.x, x_289.y) * vec3<f32>(x_291.y, x_291.z, x_291.x));
  let x_294 : vec3<f32> = vs_INTERP1;
  let x_296 : vec4<f32> = vs_INTERP2;
  let x_299 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_294.y, x_294.z, x_294.x) * vec3<f32>(x_296.z, x_296.x, x_296.y)) + -(x_299));
  let x_302 : vec3<f32> = u_xlat22;
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_306 : vec2<f32> = u_xlat21;
  let x_308 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_306.y, x_306.y, x_306.y) * x_308);
  let x_310 : vec2<f32> = u_xlat21;
  let x_312 : vec4<f32> = vs_INTERP2;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_312.x, x_312.y, x_312.z)) + x_315);
  let x_317 : f32 = u_xlat43;
  let x_319 : vec3<f32> = vs_INTERP1;
  let x_321 : vec3<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_317, x_317, x_317) * x_319) + x_321);
  let x_323 : vec3<f32> = u_xlat22;
  let x_324 : vec3<f32> = u_xlat22;
  u_xlat21.x = dot(x_323, x_324);
  let x_328 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_328);
  let x_331 : vec2<f32> = u_xlat21;
  let x_333 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_331.x, x_331.x, x_331.x) * x_333);
  let x_338 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_338 == 0.0f);
  let x_341 : vec3<f32> = vs_INTERP0;
  let x_346 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_341) + x_346);
  let x_349 : vec3<f32> = u_xlat3;
  let x_350 : vec3<f32> = u_xlat3;
  u_xlat42 = dot(x_349, x_350);
  let x_352 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_352);
  let x_354 : f32 = u_xlat42;
  let x_356 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_354, x_354, x_354) * x_356);
  let x_361 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_361;
  let x_364 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_364;
  let x_368 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_368;
  let x_370 : bool = u_xlatb21;
  if (x_370) {
    let x_374 : vec3<f32> = u_xlat3;
    x_371 = x_374;
  } else {
    let x_376 : vec3<f32> = u_xlat4;
    x_371 = x_376;
  }
  let x_377 : vec3<f32> = x_371;
  u_xlat3 = x_377;
  let x_379 : f32 = vs_INTERP0.y;
  let x_381 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat21.x = (x_379 * x_381);
  let x_385 : f32 = x_44.unity_MatrixV[0i].z;
  let x_387 : f32 = vs_INTERP0.x;
  let x_390 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_385 * x_387) + x_390);
  let x_394 : f32 = x_44.unity_MatrixV[2i].z;
  let x_396 : f32 = vs_INTERP0.z;
  let x_399 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_394 * x_396) + x_399);
  let x_403 : f32 = u_xlat21.x;
  let x_405 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat21.x = (x_403 + x_405);
  let x_409 : f32 = u_xlat21.x;
  let x_413 : f32 = x_44.x_ProjectionParams.y;
  u_xlat21.x = (-(x_409) + -(x_413));
  let x_418 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_418, 0.0f);
  let x_422 : f32 = u_xlat21.x;
  let x_425 : f32 = x_44.unity_FogParams.x;
  u_xlat21.x = (x_422 * x_425);
  let x_435 : vec2<f32> = vs_INTERP4;
  let x_437 : f32 = x_44.x_GlobalMipBias.x;
  let x_438 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_435, x_437);
  u_xlat4 = vec3<f32>(x_438.x, x_438.y, x_438.z);
  let x_442 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_443 : vec2<f32> = vec2<f32>(x_442.x, x_442.y);
  let x_447 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_443.x, x_443.y));
  let x_448 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_447.x, x_447.y, x_448.z);
  let x_450 : vec3<f32> = u_xlat5;
  let x_452 : vec4<f32> = hlslcc_FragCoord;
  let x_454 : vec2<f32> = (vec2<f32>(x_450.x, x_450.y) * vec2<f32>(x_452.x, x_452.y));
  let x_455 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_454.x, x_454.y, x_455.z);
  let x_458 : f32 = u_xlat5.y;
  let x_461 : f32 = x_44.x_ScaleBiasRt.x;
  let x_464 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_458 * x_461) + x_464);
  let x_466 : f32 = u_xlat42;
  u_xlat5.z = (-(x_466) + 1.0f);
  let x_471 : f32 = u_xlat0.x;
  u_xlat42 = ((-(x_471) * 0.959999979f) + 0.959999979f);
  let x_477 : f32 = u_xlat42;
  let x_480 : f32 = u_xlat1.x;
  u_xlat65 = (-(x_477) + x_480);
  let x_483 : f32 = u_xlat42;
  let x_485 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_483, x_483, x_483) * x_485);
  let x_487 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_487 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_491.x, x_491.x, x_491.x) * x_493) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_499 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_499) + 1.0f);
  let x_504 : f32 = u_xlat0.x;
  let x_506 : f32 = u_xlat0.x;
  u_xlat42 = (x_504 * x_506);
  let x_508 : f32 = u_xlat42;
  let x_509 : f32 = u_xlat42;
  u_xlat1.x = (x_508 * x_509);
  let x_512 : f32 = u_xlat65;
  u_xlat65 = (x_512 + 1.0f);
  let x_514 : f32 = u_xlat65;
  u_xlat65 = min(x_514, 1.0f);
  let x_517 : f32 = u_xlat42;
  u_xlat66 = ((x_517 * 4.0f) + 2.0f);
  let x_527 : vec3<f32> = u_xlat5;
  let x_530 : f32 = x_44.x_GlobalMipBias.x;
  let x_531 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_527.x, x_527.z), x_530);
  u_xlat67 = x_531.x;
  let x_533 : f32 = u_xlat67;
  u_xlat5.x = (x_533 + -1.0f);
  let x_537 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_539 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_537 * x_539) + 1.0f);
  let x_545 : f32 = u_xlat0.w;
  let x_546 : f32 = u_xlat67;
  u_xlat63 = min(x_545, x_546);
  let x_555 : f32 = x_553.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_555);
  let x_557 : bool = u_xlatb67;
  if (x_557) {
    let x_561 : f32 = x_553.x_MainLightShadowParams.y;
    u_xlatb67 = (x_561 == 1.0f);
    let x_563 : bool = u_xlatb67;
    if (x_563) {
      let x_568 : vec4<f32> = vs_INTERP8;
      let x_571 : vec4<f32> = x_553.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_568.x, x_568.y, x_568.x, x_568.y) + x_571);
      let x_574 : vec4<f32> = u_xlat7;
      let x_575 : vec2<f32> = vec2<f32>(x_574.x, x_574.y);
      let x_577 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_575.x, x_575.y, x_577);
      let x_590 : vec3<f32> = txVec0;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_590.xy, x_590.z);
      u_xlat8.x = x_592;
      let x_595 : vec4<f32> = u_xlat7;
      let x_596 : vec2<f32> = vec2<f32>(x_595.z, x_595.w);
      let x_598 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_596.x, x_596.y, x_598);
      let x_605 : vec3<f32> = txVec1;
      let x_607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_605.xy, x_605.z);
      u_xlat8.y = x_607;
      let x_609 : vec4<f32> = vs_INTERP8;
      let x_612 : vec4<f32> = x_553.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_609.x, x_609.y, x_609.x, x_609.y) + x_612);
      let x_615 : vec4<f32> = u_xlat7;
      let x_616 : vec2<f32> = vec2<f32>(x_615.x, x_615.y);
      let x_618 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_616.x, x_616.y, x_618);
      let x_625 : vec3<f32> = txVec2;
      let x_627 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_625.xy, x_625.z);
      u_xlat8.z = x_627;
      let x_630 : vec4<f32> = u_xlat7;
      let x_631 : vec2<f32> = vec2<f32>(x_630.z, x_630.w);
      let x_633 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_631.x, x_631.y, x_633);
      let x_640 : vec3<f32> = txVec3;
      let x_642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_640.xy, x_640.z);
      u_xlat8.w = x_642;
      let x_644 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_644, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_653 : f32 = x_553.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_653 == 2.0f);
      let x_657 : bool = u_xlatb26.x;
      if (x_657) {
        let x_661 : vec4<f32> = vs_INTERP8;
        let x_664 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_668 : vec2<f32> = ((vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_664.z, x_664.w)) + vec2<f32>(0.5f, 0.5f));
        let x_669 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_668.x, x_668.y, x_669.z);
        let x_671 : vec3<f32> = u_xlat26;
        let x_673 : vec2<f32> = floor(vec2<f32>(x_671.x, x_671.y));
        let x_674 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_673.x, x_673.y, x_674.z);
        let x_676 : vec4<f32> = vs_INTERP8;
        let x_679 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_682 : vec3<f32> = u_xlat26;
        let x_685 : vec2<f32> = ((vec2<f32>(x_676.x, x_676.y) * vec2<f32>(x_679.z, x_679.w)) + -(vec2<f32>(x_682.x, x_682.y)));
        let x_686 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
        let x_688 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_688.x, x_688.x, x_688.y, x_688.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_693 : vec4<f32> = u_xlat8;
        let x_695 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_693.x, x_693.x, x_693.z, x_693.z) * vec4<f32>(x_695.x, x_695.x, x_695.z, x_695.z));
        let x_699 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_699.y, x_699.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_704 : vec4<f32> = u_xlat9;
        let x_707 : vec4<f32> = u_xlat7;
        let x_710 : vec2<f32> = ((vec2<f32>(x_704.x, x_704.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_707.x, x_707.y)));
        let x_711 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_710.x, x_711.y, x_710.y, x_711.w);
        let x_713 : vec4<f32> = u_xlat7;
        let x_716 : vec2<f32> = (-(vec2<f32>(x_713.x, x_713.y)) + vec2<f32>(1.0f, 1.0f));
        let x_717 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
        let x_720 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_720.x, x_720.y), vec2<f32>(0.0f, 0.0f));
        let x_724 : vec2<f32> = u_xlat51;
        let x_726 : vec2<f32> = u_xlat51;
        let x_728 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_724) * x_726) + vec2<f32>(x_728.x, x_728.y));
        let x_731 : vec4<f32> = u_xlat7;
        let x_733 : vec2<f32> = max(vec2<f32>(x_731.x, x_731.y), vec2<f32>(0.0f, 0.0f));
        let x_734 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
        let x_736 : vec4<f32> = u_xlat7;
        let x_739 : vec4<f32> = u_xlat7;
        let x_742 : vec4<f32> = u_xlat8;
        let x_744 : vec2<f32> = ((-(vec2<f32>(x_736.x, x_736.y)) * vec2<f32>(x_739.x, x_739.y)) + vec2<f32>(x_742.y, x_742.w));
        let x_745 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_747 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_747 + vec2<f32>(1.0f, 1.0f));
        let x_749 : vec4<f32> = u_xlat7;
        let x_751 : vec2<f32> = (vec2<f32>(x_749.x, x_749.y) + vec2<f32>(1.0f, 1.0f));
        let x_752 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
        let x_755 : vec4<f32> = u_xlat8;
        let x_759 : vec2<f32> = (vec2<f32>(x_755.x, x_755.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_760 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
        let x_763 : vec4<f32> = u_xlat9;
        let x_765 : vec2<f32> = (vec2<f32>(x_763.x, x_763.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_766 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
        let x_768 : vec2<f32> = u_xlat51;
        let x_769 : vec2<f32> = (x_768 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_770 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_773 : vec4<f32> = u_xlat7;
        let x_775 : vec2<f32> = (vec2<f32>(x_773.x, x_773.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_776 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_775.x, x_775.y, x_776.z, x_776.w);
        let x_778 : vec4<f32> = u_xlat8;
        let x_780 : vec2<f32> = (vec2<f32>(x_778.y, x_778.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_781 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
        let x_784 : f32 = u_xlat9.x;
        u_xlat10.z = x_784;
        let x_787 : f32 = u_xlat7.x;
        u_xlat10.w = x_787;
        let x_790 : f32 = u_xlat12.x;
        u_xlat11.z = x_790;
        let x_793 : f32 = u_xlat49.x;
        u_xlat11.w = x_793;
        let x_795 : vec4<f32> = u_xlat10;
        let x_797 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_795.z, x_795.w, x_795.x, x_795.z) + vec4<f32>(x_797.z, x_797.w, x_797.x, x_797.z));
        let x_801 : f32 = u_xlat10.y;
        u_xlat9.z = x_801;
        let x_804 : f32 = u_xlat7.y;
        u_xlat9.w = x_804;
        let x_807 : f32 = u_xlat11.y;
        u_xlat12.z = x_807;
        let x_810 : f32 = u_xlat49.y;
        u_xlat12.w = x_810;
        let x_812 : vec4<f32> = u_xlat9;
        let x_814 : vec4<f32> = u_xlat12;
        let x_816 : vec3<f32> = (vec3<f32>(x_812.z, x_812.y, x_812.w) + vec3<f32>(x_814.z, x_814.y, x_814.w));
        let x_817 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
        let x_819 : vec4<f32> = u_xlat11;
        let x_821 : vec4<f32> = u_xlat8;
        let x_823 : vec3<f32> = (vec3<f32>(x_819.x, x_819.z, x_819.w) / vec3<f32>(x_821.z, x_821.w, x_821.y));
        let x_824 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
        let x_826 : vec4<f32> = u_xlat9;
        let x_832 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_833 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
        let x_835 : vec4<f32> = u_xlat12;
        let x_837 : vec4<f32> = u_xlat7;
        let x_839 : vec3<f32> = (vec3<f32>(x_835.z, x_835.y, x_835.w) / vec3<f32>(x_837.x, x_837.y, x_837.z));
        let x_840 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat10;
        let x_844 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_845 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
        let x_847 : vec4<f32> = u_xlat9;
        let x_850 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_852 : vec3<f32> = (vec3<f32>(x_847.y, x_847.x, x_847.z) * vec3<f32>(x_850.x, x_850.x, x_850.x));
        let x_853 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
        let x_855 : vec4<f32> = u_xlat10;
        let x_858 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_860 : vec3<f32> = (vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(x_858.y, x_858.y, x_858.y));
        let x_861 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
        let x_864 : f32 = u_xlat10.x;
        u_xlat9.w = x_864;
        let x_866 : vec3<f32> = u_xlat26;
        let x_869 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_872 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_866.x, x_866.y, x_866.x, x_866.y) * vec4<f32>(x_869.x, x_869.y, x_869.x, x_869.y)) + vec4<f32>(x_872.y, x_872.w, x_872.x, x_872.w));
        let x_875 : vec3<f32> = u_xlat26;
        let x_878 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_881 : vec4<f32> = u_xlat9;
        let x_883 : vec2<f32> = ((vec2<f32>(x_875.x, x_875.y) * vec2<f32>(x_878.x, x_878.y)) + vec2<f32>(x_881.z, x_881.w));
        let x_884 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
        let x_887 : f32 = u_xlat9.y;
        u_xlat10.w = x_887;
        let x_889 : vec4<f32> = u_xlat10;
        let x_890 : vec2<f32> = vec2<f32>(x_889.y, x_889.z);
        let x_891 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_891.x, x_890.x, x_891.z, x_890.y);
        let x_894 : vec3<f32> = u_xlat26;
        let x_897 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_900 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_894.x, x_894.y, x_894.x, x_894.y) * vec4<f32>(x_897.x, x_897.y, x_897.x, x_897.y)) + vec4<f32>(x_900.x, x_900.y, x_900.z, x_900.y));
        let x_903 : vec3<f32> = u_xlat26;
        let x_906 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_909 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y) * vec4<f32>(x_906.x, x_906.y, x_906.x, x_906.y)) + vec4<f32>(x_909.w, x_909.y, x_909.w, x_909.z));
        let x_912 : vec3<f32> = u_xlat26;
        let x_915 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_918 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_912.x, x_912.y, x_912.x, x_912.y) * vec4<f32>(x_915.x, x_915.y, x_915.x, x_915.y)) + vec4<f32>(x_918.x, x_918.w, x_918.z, x_918.w));
        let x_922 : vec4<f32> = u_xlat7;
        let x_924 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_922.x, x_922.x, x_922.x, x_922.y) * vec4<f32>(x_924.z, x_924.w, x_924.y, x_924.z));
        let x_928 : vec4<f32> = u_xlat7;
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_928.y, x_928.y, x_928.z, x_928.z) * x_930);
        let x_933 : f32 = u_xlat7.z;
        let x_935 : f32 = u_xlat8.y;
        u_xlat26.x = (x_933 * x_935);
        let x_939 : vec4<f32> = u_xlat11;
        let x_940 : vec2<f32> = vec2<f32>(x_939.x, x_939.y);
        let x_942 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_950 : vec3<f32> = txVec4;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_950.xy, x_950.z);
        u_xlat47 = x_952;
        let x_954 : vec4<f32> = u_xlat11;
        let x_955 : vec2<f32> = vec2<f32>(x_954.z, x_954.w);
        let x_957 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_955.x, x_955.y, x_957);
        let x_965 : vec3<f32> = txVec5;
        let x_967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_965.xy, x_965.z);
        u_xlat68 = x_967;
        let x_968 : f32 = u_xlat68;
        let x_970 : f32 = u_xlat14.y;
        u_xlat68 = (x_968 * x_970);
        let x_973 : f32 = u_xlat14.x;
        let x_974 : f32 = u_xlat47;
        let x_976 : f32 = u_xlat68;
        u_xlat47 = ((x_973 * x_974) + x_976);
        let x_979 : vec4<f32> = u_xlat12;
        let x_980 : vec2<f32> = vec2<f32>(x_979.x, x_979.y);
        let x_982 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_980.x, x_980.y, x_982);
        let x_989 : vec3<f32> = txVec6;
        let x_991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_989.xy, x_989.z);
        u_xlat68 = x_991;
        let x_993 : f32 = u_xlat14.z;
        let x_994 : f32 = u_xlat68;
        let x_996 : f32 = u_xlat47;
        u_xlat47 = ((x_993 * x_994) + x_996);
        let x_999 : vec4<f32> = u_xlat10;
        let x_1000 : vec2<f32> = vec2<f32>(x_999.x, x_999.y);
        let x_1002 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
        let x_1009 : vec3<f32> = txVec7;
        let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1009.xy, x_1009.z);
        u_xlat68 = x_1011;
        let x_1013 : f32 = u_xlat14.w;
        let x_1014 : f32 = u_xlat68;
        let x_1016 : f32 = u_xlat47;
        u_xlat47 = ((x_1013 * x_1014) + x_1016);
        let x_1019 : vec4<f32> = u_xlat13;
        let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
        let x_1022 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
        let x_1029 : vec3<f32> = txVec8;
        let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1029.xy, x_1029.z);
        u_xlat68 = x_1031;
        let x_1033 : f32 = u_xlat15.x;
        let x_1034 : f32 = u_xlat68;
        let x_1036 : f32 = u_xlat47;
        u_xlat47 = ((x_1033 * x_1034) + x_1036);
        let x_1039 : vec4<f32> = u_xlat13;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.z, x_1039.w);
        let x_1042 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec9;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1049.xy, x_1049.z);
        u_xlat68 = x_1051;
        let x_1053 : f32 = u_xlat15.y;
        let x_1054 : f32 = u_xlat68;
        let x_1056 : f32 = u_xlat47;
        u_xlat47 = ((x_1053 * x_1054) + x_1056);
        let x_1059 : vec4<f32> = u_xlat10;
        let x_1060 : vec2<f32> = vec2<f32>(x_1059.z, x_1059.w);
        let x_1062 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1060.x, x_1060.y, x_1062);
        let x_1069 : vec3<f32> = txVec10;
        let x_1071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1069.xy, x_1069.z);
        u_xlat68 = x_1071;
        let x_1073 : f32 = u_xlat15.z;
        let x_1074 : f32 = u_xlat68;
        let x_1076 : f32 = u_xlat47;
        u_xlat47 = ((x_1073 * x_1074) + x_1076);
        let x_1079 : vec4<f32> = u_xlat9;
        let x_1080 : vec2<f32> = vec2<f32>(x_1079.x, x_1079.y);
        let x_1082 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1080.x, x_1080.y, x_1082);
        let x_1089 : vec3<f32> = txVec11;
        let x_1091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1089.xy, x_1089.z);
        u_xlat68 = x_1091;
        let x_1093 : f32 = u_xlat15.w;
        let x_1094 : f32 = u_xlat68;
        let x_1096 : f32 = u_xlat47;
        u_xlat47 = ((x_1093 * x_1094) + x_1096);
        let x_1099 : vec4<f32> = u_xlat9;
        let x_1100 : vec2<f32> = vec2<f32>(x_1099.z, x_1099.w);
        let x_1102 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1100.x, x_1100.y, x_1102);
        let x_1109 : vec3<f32> = txVec12;
        let x_1111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1109.xy, x_1109.z);
        u_xlat68 = x_1111;
        let x_1113 : f32 = u_xlat26.x;
        let x_1114 : f32 = u_xlat68;
        let x_1116 : f32 = u_xlat47;
        u_xlat67 = ((x_1113 * x_1114) + x_1116);
      } else {
        let x_1119 : vec4<f32> = vs_INTERP8;
        let x_1122 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1122.z, x_1122.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1126 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1125.x, x_1125.y, x_1126.z);
        let x_1128 : vec3<f32> = u_xlat26;
        let x_1130 : vec2<f32> = floor(vec2<f32>(x_1128.x, x_1128.y));
        let x_1131 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1130.x, x_1130.y, x_1131.z);
        let x_1133 : vec4<f32> = vs_INTERP8;
        let x_1136 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1139 : vec3<f32> = u_xlat26;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1136.z, x_1136.w)) + -(vec2<f32>(x_1139.x, x_1139.y)));
        let x_1143 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1145.x, x_1145.x, x_1145.y, x_1145.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1148.x, x_1148.x, x_1148.z, x_1148.z) * vec4<f32>(x_1150.x, x_1150.x, x_1150.z, x_1150.z));
        let x_1153 : vec4<f32> = u_xlat9;
        let x_1157 : vec2<f32> = (vec2<f32>(x_1153.y, x_1153.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1158.x, x_1157.x, x_1158.z, x_1157.y);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1163 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1160.x, x_1160.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1163.x, x_1163.y)));
        let x_1167 : vec4<f32> = u_xlat7;
        let x_1170 : vec2<f32> = (-(vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1170.x, x_1171.y, x_1170.y, x_1171.w);
        let x_1173 : vec4<f32> = u_xlat7;
        let x_1175 : vec2<f32> = min(vec2<f32>(x_1173.x, x_1173.y), vec2<f32>(0.0f, 0.0f));
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec4<f32> = u_xlat9;
        let x_1181 : vec4<f32> = u_xlat9;
        let x_1184 : vec4<f32> = u_xlat8;
        let x_1186 : vec2<f32> = ((-(vec2<f32>(x_1178.x, x_1178.y)) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.x, x_1184.z));
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1186.x, x_1187.y, x_1186.y, x_1187.w);
        let x_1189 : vec4<f32> = u_xlat7;
        let x_1191 : vec2<f32> = max(vec2<f32>(x_1189.x, x_1189.y), vec2<f32>(0.0f, 0.0f));
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1194 : vec4<f32> = u_xlat9;
        let x_1197 : vec4<f32> = u_xlat9;
        let x_1200 : vec4<f32> = u_xlat8;
        let x_1202 : vec2<f32> = ((-(vec2<f32>(x_1194.x, x_1194.y)) * vec2<f32>(x_1197.x, x_1197.y)) + vec2<f32>(x_1200.y, x_1200.w));
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1203.x, x_1202.x, x_1203.z, x_1202.y);
        let x_1205 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1205 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1209 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1209 * 0.081632003f);
        let x_1213 : vec2<f32> = u_xlat49;
        let x_1216 : vec2<f32> = (vec2<f32>(x_1213.y, x_1213.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1217 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1217.w);
        let x_1219 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1219.x, x_1219.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1223 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1223 * 0.081632003f);
        let x_1227 : f32 = u_xlat11.y;
        u_xlat9.x = x_1227;
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1236 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1237.x, x_1236.x, x_1237.z, x_1236.y);
        let x_1239 : vec4<f32> = u_xlat7;
        let x_1243 : vec2<f32> = ((vec2<f32>(x_1239.x, x_1239.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1244 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1243.x, x_1244.y, x_1243.y, x_1244.w);
        let x_1247 : f32 = u_xlat49.x;
        u_xlat8.y = x_1247;
        let x_1250 : f32 = u_xlat10.y;
        u_xlat8.w = x_1250;
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1253 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1252 + x_1253);
        let x_1255 : vec4<f32> = u_xlat7;
        let x_1258 : vec2<f32> = ((vec2<f32>(x_1255.y, x_1255.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1259 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1259.x, x_1258.x, x_1259.z, x_1258.y);
        let x_1261 : vec4<f32> = u_xlat7;
        let x_1264 : vec2<f32> = ((vec2<f32>(x_1261.y, x_1261.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1265 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1264.x, x_1265.y, x_1264.y, x_1265.w);
        let x_1268 : f32 = u_xlat49.y;
        u_xlat10.y = x_1268;
        let x_1270 : vec4<f32> = u_xlat10;
        let x_1271 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1270 + x_1271);
        let x_1273 : vec4<f32> = u_xlat8;
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1273 / x_1274);
        let x_1276 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1276 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1282 : vec4<f32> = u_xlat10;
        let x_1283 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1282 / x_1283);
        let x_1285 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1285 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1287 : vec4<f32> = u_xlat8;
        let x_1290 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1287.w, x_1287.x, x_1287.y, x_1287.z) * vec4<f32>(x_1290.x, x_1290.x, x_1290.x, x_1290.x));
        let x_1293 : vec4<f32> = u_xlat10;
        let x_1296 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1293.x, x_1293.w, x_1293.y, x_1293.z) * vec4<f32>(x_1296.y, x_1296.y, x_1296.y, x_1296.y));
        let x_1299 : vec4<f32> = u_xlat8;
        let x_1300 : vec3<f32> = vec3<f32>(x_1299.y, x_1299.z, x_1299.w);
        let x_1301 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1300.x, x_1301.y, x_1300.y, x_1300.z);
        let x_1304 : f32 = u_xlat10.x;
        u_xlat11.y = x_1304;
        let x_1306 : vec3<f32> = u_xlat26;
        let x_1309 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1312 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1306.x, x_1306.y, x_1306.x, x_1306.y) * vec4<f32>(x_1309.x, x_1309.y, x_1309.x, x_1309.y)) + vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1312.y));
        let x_1315 : vec3<f32> = u_xlat26;
        let x_1318 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat11;
        let x_1323 : vec2<f32> = ((vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(x_1318.x, x_1318.y)) + vec2<f32>(x_1321.w, x_1321.y));
        let x_1324 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
        let x_1327 : f32 = u_xlat11.y;
        u_xlat8.y = x_1327;
        let x_1330 : f32 = u_xlat10.z;
        u_xlat11.y = x_1330;
        let x_1332 : vec3<f32> = u_xlat26;
        let x_1335 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y) * vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y)) + vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1338.y));
        let x_1342 : vec3<f32> = u_xlat26;
        let x_1345 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1348 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1342.x, x_1342.y) * vec2<f32>(x_1345.x, x_1345.y)) + vec2<f32>(x_1348.w, x_1348.y));
        let x_1352 : f32 = u_xlat11.y;
        u_xlat8.z = x_1352;
        let x_1354 : vec3<f32> = u_xlat26;
        let x_1357 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1360 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1354.x, x_1354.y, x_1354.x, x_1354.y) * vec4<f32>(x_1357.x, x_1357.y, x_1357.x, x_1357.y)) + vec4<f32>(x_1360.x, x_1360.y, x_1360.x, x_1360.z));
        let x_1364 : f32 = u_xlat10.w;
        u_xlat11.y = x_1364;
        let x_1367 : vec3<f32> = u_xlat26;
        let x_1370 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1373 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1367.x, x_1367.y, x_1367.x, x_1367.y) * vec4<f32>(x_1370.x, x_1370.y, x_1370.x, x_1370.y)) + vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1373.y));
        let x_1377 : vec3<f32> = u_xlat26;
        let x_1380 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1383 : vec4<f32> = u_xlat11;
        u_xlat29 = ((vec2<f32>(x_1377.x, x_1377.y) * vec2<f32>(x_1380.x, x_1380.y)) + vec2<f32>(x_1383.w, x_1383.y));
        let x_1387 : f32 = u_xlat11.y;
        u_xlat8.w = x_1387;
        let x_1390 : vec3<f32> = u_xlat26;
        let x_1393 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1390.x, x_1390.y) * vec2<f32>(x_1393.x, x_1393.y)) + vec2<f32>(x_1396.x, x_1396.w));
        let x_1399 : vec4<f32> = u_xlat11;
        let x_1400 : vec3<f32> = vec3<f32>(x_1399.x, x_1399.z, x_1399.w);
        let x_1401 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1400.x, x_1401.y, x_1400.y, x_1400.z);
        let x_1403 : vec3<f32> = u_xlat26;
        let x_1406 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1409 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1403.x, x_1403.y, x_1403.x, x_1403.y) * vec4<f32>(x_1406.x, x_1406.y, x_1406.x, x_1406.y)) + vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1409.y));
        let x_1413 : vec3<f32> = u_xlat26;
        let x_1416 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1419 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1413.x, x_1413.y) * vec2<f32>(x_1416.x, x_1416.y)) + vec2<f32>(x_1419.w, x_1419.y));
        let x_1423 : f32 = u_xlat8.x;
        u_xlat10.x = x_1423;
        let x_1425 : vec3<f32> = u_xlat26;
        let x_1428 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1431 : vec4<f32> = u_xlat10;
        let x_1433 : vec2<f32> = ((vec2<f32>(x_1425.x, x_1425.y) * vec2<f32>(x_1428.x, x_1428.y)) + vec2<f32>(x_1431.x, x_1431.y));
        let x_1434 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1433.x, x_1433.y, x_1434.z);
        let x_1437 : vec4<f32> = u_xlat7;
        let x_1439 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1437.x, x_1437.x, x_1437.x, x_1437.x) * x_1439);
        let x_1442 : vec4<f32> = u_xlat7;
        let x_1444 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1442.y, x_1442.y, x_1442.y, x_1442.y) * x_1444);
        let x_1447 : vec4<f32> = u_xlat7;
        let x_1449 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1447.z, x_1447.z, x_1447.z, x_1447.z) * x_1449);
        let x_1451 : vec4<f32> = u_xlat7;
        let x_1453 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1451.w, x_1451.w, x_1451.w, x_1451.w) * x_1453);
        let x_1456 : vec4<f32> = u_xlat12;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec13;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat68 = x_1468;
        let x_1470 : vec4<f32> = u_xlat12;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.z, x_1470.w);
        let x_1473 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1481 : vec3<f32> = txVec14;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1481.xy, x_1481.z);
        u_xlat69 = x_1483;
        let x_1484 : f32 = u_xlat69;
        let x_1486 : f32 = u_xlat18.y;
        u_xlat69 = (x_1484 * x_1486);
        let x_1489 : f32 = u_xlat18.x;
        let x_1490 : f32 = u_xlat68;
        let x_1492 : f32 = u_xlat69;
        u_xlat68 = ((x_1489 * x_1490) + x_1492);
        let x_1495 : vec4<f32> = u_xlat13;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.x, x_1495.y);
        let x_1498 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec15;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat69 = x_1507;
        let x_1509 : f32 = u_xlat18.z;
        let x_1510 : f32 = u_xlat69;
        let x_1512 : f32 = u_xlat68;
        u_xlat68 = ((x_1509 * x_1510) + x_1512);
        let x_1515 : vec4<f32> = u_xlat15;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.x, x_1515.y);
        let x_1518 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec16;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat69 = x_1527;
        let x_1529 : f32 = u_xlat18.w;
        let x_1530 : f32 = u_xlat69;
        let x_1532 : f32 = u_xlat68;
        u_xlat68 = ((x_1529 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat14;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec17;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1545.xy, x_1545.z);
        u_xlat69 = x_1547;
        let x_1549 : f32 = u_xlat19.x;
        let x_1550 : f32 = u_xlat69;
        let x_1552 : f32 = u_xlat68;
        u_xlat68 = ((x_1549 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat14;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.z, x_1555.w);
        let x_1558 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec18;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
        u_xlat69 = x_1567;
        let x_1569 : f32 = u_xlat19.y;
        let x_1570 : f32 = u_xlat69;
        let x_1572 : f32 = u_xlat68;
        u_xlat68 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec2<f32> = u_xlat55;
        let x_1577 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec19;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1584.xy, x_1584.z);
        u_xlat69 = x_1586;
        let x_1588 : f32 = u_xlat19.z;
        let x_1589 : f32 = u_xlat69;
        let x_1591 : f32 = u_xlat68;
        u_xlat68 = ((x_1588 * x_1589) + x_1591);
        let x_1594 : vec4<f32> = u_xlat15;
        let x_1595 : vec2<f32> = vec2<f32>(x_1594.z, x_1594.w);
        let x_1597 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec20;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1604.xy, x_1604.z);
        u_xlat69 = x_1606;
        let x_1608 : f32 = u_xlat19.w;
        let x_1609 : f32 = u_xlat69;
        let x_1611 : f32 = u_xlat68;
        u_xlat68 = ((x_1608 * x_1609) + x_1611);
        let x_1614 : vec4<f32> = u_xlat16;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
        let x_1617 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec21;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat69 = x_1626;
        let x_1628 : f32 = u_xlat20.x;
        let x_1629 : f32 = u_xlat69;
        let x_1631 : f32 = u_xlat68;
        u_xlat68 = ((x_1628 * x_1629) + x_1631);
        let x_1634 : vec4<f32> = u_xlat16;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.z, x_1634.w);
        let x_1637 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec22;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1644.xy, x_1644.z);
        u_xlat69 = x_1646;
        let x_1648 : f32 = u_xlat20.y;
        let x_1649 : f32 = u_xlat69;
        let x_1651 : f32 = u_xlat68;
        u_xlat68 = ((x_1648 * x_1649) + x_1651);
        let x_1654 : vec2<f32> = u_xlat29;
        let x_1656 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec23;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat69 = x_1665;
        let x_1667 : f32 = u_xlat20.z;
        let x_1668 : f32 = u_xlat69;
        let x_1670 : f32 = u_xlat68;
        u_xlat68 = ((x_1667 * x_1668) + x_1670);
        let x_1673 : vec2<f32> = u_xlat17;
        let x_1675 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
        let x_1682 : vec3<f32> = txVec24;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1682.xy, x_1682.z);
        u_xlat69 = x_1684;
        let x_1686 : f32 = u_xlat20.w;
        let x_1687 : f32 = u_xlat69;
        let x_1689 : f32 = u_xlat68;
        u_xlat68 = ((x_1686 * x_1687) + x_1689);
        let x_1692 : vec4<f32> = u_xlat11;
        let x_1693 : vec2<f32> = vec2<f32>(x_1692.x, x_1692.y);
        let x_1695 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1693.x, x_1693.y, x_1695);
        let x_1702 : vec3<f32> = txVec25;
        let x_1704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1702.xy, x_1702.z);
        u_xlat69 = x_1704;
        let x_1706 : f32 = u_xlat7.x;
        let x_1707 : f32 = u_xlat69;
        let x_1709 : f32 = u_xlat68;
        u_xlat68 = ((x_1706 * x_1707) + x_1709);
        let x_1712 : vec4<f32> = u_xlat11;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.z, x_1712.w);
        let x_1715 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec26;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1722.xy, x_1722.z);
        u_xlat69 = x_1724;
        let x_1726 : f32 = u_xlat7.y;
        let x_1727 : f32 = u_xlat69;
        let x_1729 : f32 = u_xlat68;
        u_xlat68 = ((x_1726 * x_1727) + x_1729);
        let x_1732 : vec2<f32> = u_xlat52;
        let x_1734 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1732.x, x_1732.y, x_1734);
        let x_1741 : vec3<f32> = txVec27;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1741.xy, x_1741.z);
        u_xlat69 = x_1743;
        let x_1745 : f32 = u_xlat7.z;
        let x_1746 : f32 = u_xlat69;
        let x_1748 : f32 = u_xlat68;
        u_xlat68 = ((x_1745 * x_1746) + x_1748);
        let x_1751 : vec3<f32> = u_xlat26;
        let x_1752 : vec2<f32> = vec2<f32>(x_1751.x, x_1751.y);
        let x_1754 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec28;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1761.xy, x_1761.z);
        u_xlat26.x = x_1763;
        let x_1766 : f32 = u_xlat7.w;
        let x_1768 : f32 = u_xlat26.x;
        let x_1770 : f32 = u_xlat68;
        u_xlat67 = ((x_1766 * x_1768) + x_1770);
      }
    }
  } else {
    let x_1774 : vec4<f32> = vs_INTERP8;
    let x_1775 : vec2<f32> = vec2<f32>(x_1774.x, x_1774.y);
    let x_1777 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1775.x, x_1775.y, x_1777);
    let x_1784 : vec3<f32> = txVec29;
    let x_1786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1784.xy, x_1784.z);
    u_xlat67 = x_1786;
  }
  let x_1788 : f32 = x_553.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1788) + 1.0f);
  let x_1792 : f32 = u_xlat67;
  let x_1794 : f32 = x_553.x_MainLightShadowParams.x;
  let x_1797 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1792 * x_1794) + x_1797);
  let x_1800 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1800);
  let x_1805 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_1805 >= 1.0f);
  let x_1807 : bool = u_xlatb47;
  let x_1809 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1807 | x_1809);
  let x_1813 : bool = u_xlatb26.x;
  let x_1814 : f32 = u_xlat67;
  u_xlat67 = select(x_1814, 1.0f, x_1813);
  let x_1816 : vec3<f32> = vs_INTERP0;
  let x_1818 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1816 + -(x_1818));
  let x_1821 : vec3<f32> = u_xlat26;
  let x_1822 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1821, x_1822);
  let x_1826 : f32 = u_xlat26.x;
  let x_1828 : f32 = x_553.x_MainLightShadowParams.z;
  let x_1831 : f32 = x_553.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1826 * x_1828) + x_1831);
  let x_1835 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1835, 0.0f, 1.0f);
  let x_1838 : f32 = u_xlat67;
  u_xlat47 = (-(x_1838) + 1.0f);
  let x_1842 : f32 = u_xlat26.x;
  let x_1843 : f32 = u_xlat47;
  let x_1845 : f32 = u_xlat67;
  u_xlat67 = ((x_1842 * x_1843) + x_1845);
  let x_1853 : f32 = x_1851.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1853 == -1.0f));
  let x_1857 : bool = u_xlatb26.x;
  if (x_1857) {
    let x_1860 : vec3<f32> = vs_INTERP0;
    let x_1863 : vec4<f32> = x_1851.x_MainLightWorldToLight[1i];
    let x_1865 : vec2<f32> = (vec2<f32>(x_1860.y, x_1860.y) * vec2<f32>(x_1863.x, x_1863.y));
    let x_1866 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1865.x, x_1865.y, x_1866.z);
    let x_1869 : vec4<f32> = x_1851.x_MainLightWorldToLight[0i];
    let x_1871 : vec3<f32> = vs_INTERP0;
    let x_1874 : vec3<f32> = u_xlat26;
    let x_1876 : vec2<f32> = ((vec2<f32>(x_1869.x, x_1869.y) * vec2<f32>(x_1871.x, x_1871.x)) + vec2<f32>(x_1874.x, x_1874.y));
    let x_1877 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1876.x, x_1876.y, x_1877.z);
    let x_1880 : vec4<f32> = x_1851.x_MainLightWorldToLight[2i];
    let x_1882 : vec3<f32> = vs_INTERP0;
    let x_1885 : vec3<f32> = u_xlat26;
    let x_1887 : vec2<f32> = ((vec2<f32>(x_1880.x, x_1880.y) * vec2<f32>(x_1882.z, x_1882.z)) + vec2<f32>(x_1885.x, x_1885.y));
    let x_1888 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1887.x, x_1887.y, x_1888.z);
    let x_1890 : vec3<f32> = u_xlat26;
    let x_1893 : vec4<f32> = x_1851.x_MainLightWorldToLight[3i];
    let x_1895 : vec2<f32> = (vec2<f32>(x_1890.x, x_1890.y) + vec2<f32>(x_1893.x, x_1893.y));
    let x_1896 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1895.x, x_1895.y, x_1896.z);
    let x_1898 : vec3<f32> = u_xlat26;
    let x_1901 : vec2<f32> = ((vec2<f32>(x_1898.x, x_1898.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1902 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1901.x, x_1901.y, x_1902.z);
    let x_1909 : vec3<f32> = u_xlat26;
    let x_1912 : f32 = x_44.x_GlobalMipBias.x;
    let x_1913 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1909.x, x_1909.y), x_1912);
    u_xlat7 = x_1913;
    let x_1915 : f32 = x_1851.x_MainLightCookieTextureFormat;
    let x_1917 : f32 = x_1851.x_MainLightCookieTextureFormat;
    let x_1919 : f32 = x_1851.x_MainLightCookieTextureFormat;
    let x_1921 : f32 = x_1851.x_MainLightCookieTextureFormat;
    let x_1922 : vec4<f32> = vec4<f32>(x_1915, x_1917, x_1919, x_1921);
    let x_1929 : vec4<bool> = (vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1922.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_1929.x, x_1929.y);
    let x_1932 : bool = u_xlatb26.y;
    if (x_1932) {
      let x_1937 : f32 = u_xlat7.w;
      x_1933 = x_1937;
    } else {
      let x_1940 : f32 = u_xlat7.x;
      x_1933 = x_1940;
    }
    let x_1941 : f32 = x_1933;
    u_xlat47 = x_1941;
    let x_1943 : bool = u_xlatb26.x;
    if (x_1943) {
      let x_1947 : vec4<f32> = u_xlat7;
      x_1944 = vec3<f32>(x_1947.x, x_1947.y, x_1947.z);
    } else {
      let x_1950 : f32 = u_xlat47;
      x_1944 = vec3<f32>(x_1950, x_1950, x_1950);
    }
    let x_1952 : vec3<f32> = x_1944;
    u_xlat26 = x_1952;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_1957 : vec3<f32> = u_xlat26;
  let x_1959 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_1957 * vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
  let x_1962 : vec3<f32> = u_xlat5;
  let x_1964 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_1962.x, x_1962.x, x_1962.x) * x_1964);
  let x_1966 : vec3<f32> = u_xlat3;
  let x_1968 : vec3<f32> = u_xlat22;
  u_xlat69 = dot(-(x_1966), x_1968);
  let x_1970 : f32 = u_xlat69;
  let x_1971 : f32 = u_xlat69;
  u_xlat69 = (x_1970 + x_1971);
  let x_1973 : vec3<f32> = u_xlat22;
  let x_1974 : f32 = u_xlat69;
  let x_1978 : vec3<f32> = u_xlat3;
  let x_1980 : vec3<f32> = ((x_1973 * -(vec3<f32>(x_1974, x_1974, x_1974))) + -(x_1978));
  let x_1981 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : vec3<f32> = u_xlat22;
  let x_1984 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(x_1983, x_1984);
  let x_1986 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1986, 0.0f, 1.0f);
  let x_1988 : f32 = u_xlat69;
  u_xlat69 = (-(x_1988) + 1.0f);
  let x_1991 : f32 = u_xlat69;
  let x_1992 : f32 = u_xlat69;
  u_xlat69 = (x_1991 * x_1992);
  let x_1994 : f32 = u_xlat69;
  let x_1995 : f32 = u_xlat69;
  u_xlat69 = (x_1994 * x_1995);
  let x_1999 : f32 = u_xlat0.x;
  u_xlat70 = ((-(x_1999) * 0.699999988f) + 1.700000048f);
  let x_2006 : f32 = u_xlat0.x;
  let x_2007 : f32 = u_xlat70;
  u_xlat0.x = (x_2006 * x_2007);
  let x_2011 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2011 * 6.0f);
  let x_2023 : vec4<f32> = u_xlat7;
  let x_2026 : f32 = u_xlat0.x;
  let x_2027 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2023.x, x_2023.y, x_2023.z), x_2026);
  u_xlat7 = x_2027;
  let x_2029 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2029 + -1.0f);
  let x_2033 : f32 = x_267.unity_SpecCube0_HDR.w;
  let x_2035 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2033 * x_2035) + 1.0f);
  let x_2040 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2040, 0.0f);
  let x_2044 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2044);
  let x_2048 : f32 = u_xlat0.x;
  let x_2050 : f32 = x_267.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2048 * x_2050);
  let x_2054 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2054);
  let x_2058 : f32 = u_xlat0.x;
  let x_2060 : f32 = x_267.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2058 * x_2060);
  let x_2063 : vec4<f32> = u_xlat7;
  let x_2065 : vec4<f32> = u_xlat0;
  let x_2067 : vec3<f32> = (vec3<f32>(x_2063.x, x_2063.y, x_2063.z) * vec3<f32>(x_2065.x, x_2065.x, x_2065.x));
  let x_2068 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
  let x_2070 : f32 = u_xlat42;
  let x_2072 : f32 = u_xlat42;
  let x_2076 : vec2<f32> = ((vec2<f32>(x_2070, x_2070) * vec2<f32>(x_2072, x_2072)) + vec2<f32>(-1.0f, 1.0f));
  let x_2077 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2076.x, x_2077.y, x_2076.y, x_2077.w);
  let x_2080 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2080);
  let x_2082 : vec3<f32> = u_xlat2;
  let x_2084 : f32 = u_xlat65;
  let x_2086 : vec3<f32> = (-(x_2082) + vec3<f32>(x_2084, x_2084, x_2084));
  let x_2087 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
  let x_2089 : f32 = u_xlat69;
  let x_2091 : vec4<f32> = u_xlat8;
  let x_2094 : vec3<f32> = u_xlat2;
  let x_2095 : vec3<f32> = ((vec3<f32>(x_2089, x_2089, x_2089) * vec3<f32>(x_2091.x, x_2091.y, x_2091.z)) + x_2094);
  let x_2096 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
  let x_2098 : f32 = u_xlat42;
  let x_2100 : vec4<f32> = u_xlat8;
  let x_2102 : vec3<f32> = (vec3<f32>(x_2098, x_2098, x_2098) * vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2103 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
  let x_2105 : vec4<f32> = u_xlat7;
  let x_2107 : vec4<f32> = u_xlat8;
  let x_2109 : vec3<f32> = (vec3<f32>(x_2105.x, x_2105.y, x_2105.z) * vec3<f32>(x_2107.x, x_2107.y, x_2107.z));
  let x_2110 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2109.x, x_2109.y, x_2109.z, x_2110.w);
  let x_2112 : vec3<f32> = u_xlat4;
  let x_2113 : vec3<f32> = u_xlat6;
  let x_2115 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_2112 * x_2113) + vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
  let x_2118 : f32 = u_xlat67;
  let x_2121 : f32 = x_267.unity_LightData.z;
  u_xlat42 = (x_2118 * x_2121);
  let x_2123 : vec3<f32> = u_xlat22;
  let x_2125 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_2123, vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
  let x_2128 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2128, 0.0f, 1.0f);
  let x_2130 : f32 = u_xlat42;
  let x_2131 : f32 = u_xlat65;
  u_xlat42 = (x_2130 * x_2131);
  let x_2133 : f32 = u_xlat42;
  let x_2135 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2133, x_2133, x_2133) * x_2135);
  let x_2137 : vec3<f32> = u_xlat3;
  let x_2139 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2141 : vec3<f32> = (x_2137 + vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2142 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
  let x_2144 : vec4<f32> = u_xlat7;
  let x_2146 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2144.x, x_2144.y, x_2144.z), vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2149 : f32 = u_xlat42;
  u_xlat42 = max(x_2149, 1.17549435e-37f);
  let x_2152 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2152);
  let x_2154 : f32 = u_xlat42;
  let x_2156 : vec4<f32> = u_xlat7;
  let x_2158 : vec3<f32> = (vec3<f32>(x_2154, x_2154, x_2154) * vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
  let x_2159 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2158.x, x_2158.y, x_2158.z, x_2159.w);
  let x_2161 : vec3<f32> = u_xlat22;
  let x_2162 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_2161, vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
  let x_2165 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2165, 0.0f, 1.0f);
  let x_2168 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2170 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2168.x, x_2168.y, x_2168.z), vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
  let x_2173 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2173, 0.0f, 1.0f);
  let x_2175 : f32 = u_xlat42;
  let x_2176 : f32 = u_xlat42;
  u_xlat42 = (x_2175 * x_2176);
  let x_2178 : f32 = u_xlat42;
  let x_2180 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2178 * x_2180) + 1.000010014f);
  let x_2184 : f32 = u_xlat65;
  let x_2185 : f32 = u_xlat65;
  u_xlat65 = (x_2184 * x_2185);
  let x_2187 : f32 = u_xlat42;
  let x_2188 : f32 = u_xlat42;
  u_xlat42 = (x_2187 * x_2188);
  let x_2190 : f32 = u_xlat65;
  u_xlat65 = max(x_2190, 0.100000001f);
  let x_2193 : f32 = u_xlat42;
  let x_2194 : f32 = u_xlat65;
  u_xlat42 = (x_2193 * x_2194);
  let x_2196 : f32 = u_xlat66;
  let x_2197 : f32 = u_xlat42;
  u_xlat42 = (x_2196 * x_2197);
  let x_2200 : f32 = u_xlat1.x;
  let x_2201 : f32 = u_xlat42;
  u_xlat42 = (x_2200 / x_2201);
  let x_2203 : vec3<f32> = u_xlat2;
  let x_2204 : f32 = u_xlat42;
  let x_2207 : vec3<f32> = u_xlat6;
  let x_2208 : vec3<f32> = ((x_2203 * vec3<f32>(x_2204, x_2204, x_2204)) + x_2207);
  let x_2209 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2211 : vec3<f32> = u_xlat26;
  let x_2212 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2211 * vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
  let x_2216 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2218 : f32 = x_267.unity_LightData.y;
  u_xlat42 = min(x_2216, x_2218);
  let x_2222 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2222));
  let x_2227 : f32 = x_1851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2229 : f32 = x_1851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2231 : f32 = x_1851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2233 : f32 = x_1851.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2234 : vec4<f32> = vec4<f32>(x_2227, x_2229, x_2231, x_2233);
  let x_2240 : vec4<bool> = (vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2234.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2240.x, x_2240.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2251 : u32 = u_xlatu_loop_1;
    let x_2252 : u32 = u_xlatu42;
    if ((x_2251 < x_2252)) {
    } else {
      break;
    }
    let x_2255 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2255 >> 2u);
    let x_2259 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2259 & 3u));
    let x_2262 : u32 = u_xlatu67;
    let x_2265 : vec4<f32> = x_267.unity_LightIndices[bitcast<i32>(x_2262)];
    let x_2275 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2280 : vec4<u32> = indexable[x_2275];
    u_xlat67 = dot(x_2265, bitcast<vec4<f32>>(x_2280));
    let x_2283 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2283));
    let x_2286 : vec3<f32> = vs_INTERP0;
    let x_2298 : u32 = u_xlatu67;
    let x_2301 : vec4<f32> = x_2297.x_AdditionalLightsPosition[bitcast<i32>(x_2298)];
    let x_2304 : u32 = u_xlatu67;
    let x_2307 : vec4<f32> = x_2297.x_AdditionalLightsPosition[bitcast<i32>(x_2304)];
    let x_2309 : vec3<f32> = ((-(x_2286) * vec3<f32>(x_2301.w, x_2301.w, x_2301.w)) + vec3<f32>(x_2307.x, x_2307.y, x_2307.z));
    let x_2310 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2310.w);
    let x_2312 : vec4<f32> = u_xlat9;
    let x_2314 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2312.x, x_2312.y, x_2312.z), vec3<f32>(x_2314.x, x_2314.y, x_2314.z));
    let x_2317 : f32 = u_xlat69;
    u_xlat69 = max(x_2317, 6.10351562e-05f);
    let x_2320 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2320);
    let x_2323 : vec2<f32> = u_xlat49;
    let x_2325 : vec4<f32> = u_xlat9;
    let x_2327 : vec3<f32> = (vec3<f32>(x_2323.x, x_2323.x, x_2323.x) * vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
    let x_2328 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
    let x_2330 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2330);
    let x_2332 : f32 = u_xlat69;
    let x_2333 : u32 = u_xlatu67;
    let x_2336 : f32 = x_2297.x_AdditionalLightsAttenuation[bitcast<i32>(x_2333)].x;
    u_xlat69 = (x_2332 * x_2336);
    let x_2338 : f32 = u_xlat69;
    let x_2340 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2338) * x_2340) + 1.0f);
    let x_2343 : f32 = u_xlat69;
    u_xlat69 = max(x_2343, 0.0f);
    let x_2345 : f32 = u_xlat69;
    let x_2346 : f32 = u_xlat69;
    u_xlat69 = (x_2345 * x_2346);
    let x_2348 : f32 = u_xlat69;
    let x_2349 : f32 = u_xlat70;
    u_xlat69 = (x_2348 * x_2349);
    let x_2351 : u32 = u_xlatu67;
    let x_2354 : vec4<f32> = x_2297.x_AdditionalLightsSpotDir[bitcast<i32>(x_2351)];
    let x_2356 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2354.x, x_2354.y, x_2354.z), vec3<f32>(x_2356.x, x_2356.y, x_2356.z));
    let x_2359 : f32 = u_xlat70;
    let x_2360 : u32 = u_xlatu67;
    let x_2363 : f32 = x_2297.x_AdditionalLightsAttenuation[bitcast<i32>(x_2360)].z;
    let x_2365 : u32 = u_xlatu67;
    let x_2368 : f32 = x_2297.x_AdditionalLightsAttenuation[bitcast<i32>(x_2365)].w;
    u_xlat70 = ((x_2359 * x_2363) + x_2368);
    let x_2370 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2370, 0.0f, 1.0f);
    let x_2372 : f32 = u_xlat70;
    let x_2373 : f32 = u_xlat70;
    u_xlat70 = (x_2372 * x_2373);
    let x_2375 : f32 = u_xlat69;
    let x_2376 : f32 = u_xlat70;
    u_xlat69 = (x_2375 * x_2376);
    let x_2379 : u32 = u_xlatu67;
    u_xlatu70 = (x_2379 >> 5u);
    let x_2382 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2382) & 31i)));
    let x_2388 : i32 = u_xlati71;
    let x_2390 : u32 = u_xlatu70;
    let x_2393 : f32 = x_1851.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2390)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2388) & bitcast<u32>(x_2393)));
    let x_2397 : i32 = u_xlati70;
    if ((x_2397 != 0i)) {
      let x_2407 : u32 = u_xlatu67;
      let x_2410 : f32 = x_2406.x_AdditionalLightsLightTypes[bitcast<i32>(x_2407)].el;
      u_xlati70 = i32(x_2410);
      let x_2412 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2412 != 0i));
      let x_2416 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_2416) << bitcast<u32>(2i));
      let x_2419 : i32 = u_xlati71;
      if ((x_2419 != 0i)) {
        let x_2423 : vec3<f32> = vs_INTERP0;
        let x_2425 : i32 = u_xlati72;
        let x_2428 : i32 = u_xlati72;
        let x_2432 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[((x_2425 + 1i) / 4i)][((x_2428 + 1i) % 4i)];
        let x_2434 : vec3<f32> = (vec3<f32>(x_2423.y, x_2423.y, x_2423.y) * vec3<f32>(x_2432.x, x_2432.y, x_2432.w));
        let x_2435 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
        let x_2437 : i32 = u_xlati72;
        let x_2439 : i32 = u_xlati72;
        let x_2442 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[(x_2437 / 4i)][(x_2439 % 4i)];
        let x_2444 : vec3<f32> = vs_INTERP0;
        let x_2447 : vec4<f32> = u_xlat11;
        let x_2449 : vec3<f32> = ((vec3<f32>(x_2442.x, x_2442.y, x_2442.w) * vec3<f32>(x_2444.x, x_2444.x, x_2444.x)) + vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
        let x_2450 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2449.x, x_2449.y, x_2449.z, x_2450.w);
        let x_2452 : i32 = u_xlati72;
        let x_2455 : i32 = u_xlati72;
        let x_2459 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[((x_2452 + 2i) / 4i)][((x_2455 + 2i) % 4i)];
        let x_2461 : vec3<f32> = vs_INTERP0;
        let x_2464 : vec4<f32> = u_xlat11;
        let x_2466 : vec3<f32> = ((vec3<f32>(x_2459.x, x_2459.y, x_2459.w) * vec3<f32>(x_2461.z, x_2461.z, x_2461.z)) + vec3<f32>(x_2464.x, x_2464.y, x_2464.z));
        let x_2467 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2466.x, x_2466.y, x_2466.z, x_2467.w);
        let x_2469 : vec4<f32> = u_xlat11;
        let x_2471 : i32 = u_xlati72;
        let x_2474 : i32 = u_xlati72;
        let x_2478 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[((x_2471 + 3i) / 4i)][((x_2474 + 3i) % 4i)];
        let x_2480 : vec3<f32> = (vec3<f32>(x_2469.x, x_2469.y, x_2469.z) + vec3<f32>(x_2478.x, x_2478.y, x_2478.w));
        let x_2481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
        let x_2483 : vec4<f32> = u_xlat11;
        let x_2485 : vec4<f32> = u_xlat11;
        let x_2487 : vec2<f32> = (vec2<f32>(x_2483.x, x_2483.y) / vec2<f32>(x_2485.z, x_2485.z));
        let x_2488 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
        let x_2490 : vec4<f32> = u_xlat11;
        let x_2493 : vec2<f32> = ((vec2<f32>(x_2490.x, x_2490.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2494 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2493.x, x_2493.y, x_2494.z, x_2494.w);
        let x_2496 : vec4<f32> = u_xlat11;
        let x_2500 : vec2<f32> = clamp(vec2<f32>(x_2496.x, x_2496.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2501 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2500.x, x_2500.y, x_2501.z, x_2501.w);
        let x_2503 : u32 = u_xlatu67;
        let x_2506 : vec4<f32> = x_2406.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2503)];
        let x_2508 : vec4<f32> = u_xlat11;
        let x_2511 : u32 = u_xlatu67;
        let x_2514 : vec4<f32> = x_2406.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2511)];
        let x_2516 : vec2<f32> = ((vec2<f32>(x_2506.x, x_2506.y) * vec2<f32>(x_2508.x, x_2508.y)) + vec2<f32>(x_2514.z, x_2514.w));
        let x_2517 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2516.x, x_2516.y, x_2517.z, x_2517.w);
      } else {
        let x_2521 : i32 = u_xlati70;
        u_xlatb70 = (x_2521 == 1i);
        let x_2523 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2523);
        let x_2525 : i32 = u_xlati70;
        if ((x_2525 != 0i)) {
          let x_2530 : vec3<f32> = vs_INTERP0;
          let x_2532 : i32 = u_xlati72;
          let x_2535 : i32 = u_xlati72;
          let x_2539 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[((x_2532 + 1i) / 4i)][((x_2535 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2530.y, x_2530.y) * vec2<f32>(x_2539.x, x_2539.y));
          let x_2542 : i32 = u_xlati72;
          let x_2544 : i32 = u_xlati72;
          let x_2547 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[(x_2542 / 4i)][(x_2544 % 4i)];
          let x_2549 : vec3<f32> = vs_INTERP0;
          let x_2552 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2547.x, x_2547.y) * vec2<f32>(x_2549.x, x_2549.x)) + x_2552);
          let x_2554 : i32 = u_xlati72;
          let x_2557 : i32 = u_xlati72;
          let x_2561 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[((x_2554 + 2i) / 4i)][((x_2557 + 2i) % 4i)];
          let x_2563 : vec3<f32> = vs_INTERP0;
          let x_2566 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2561.x, x_2561.y) * vec2<f32>(x_2563.z, x_2563.z)) + x_2566);
          let x_2568 : vec2<f32> = u_xlat53;
          let x_2569 : i32 = u_xlati72;
          let x_2572 : i32 = u_xlati72;
          let x_2576 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[((x_2569 + 3i) / 4i)][((x_2572 + 3i) % 4i)];
          u_xlat53 = (x_2568 + vec2<f32>(x_2576.x, x_2576.y));
          let x_2579 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2579 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2582 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2582);
          let x_2584 : u32 = u_xlatu67;
          let x_2587 : vec4<f32> = x_2406.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2584)];
          let x_2589 : vec2<f32> = u_xlat53;
          let x_2591 : u32 = u_xlatu67;
          let x_2594 : vec4<f32> = x_2406.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2591)];
          let x_2596 : vec2<f32> = ((vec2<f32>(x_2587.x, x_2587.y) * x_2589) + vec2<f32>(x_2594.z, x_2594.w));
          let x_2597 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2596.x, x_2596.y, x_2597.z, x_2597.w);
        } else {
          let x_2600 : vec3<f32> = vs_INTERP0;
          let x_2602 : i32 = u_xlati72;
          let x_2605 : i32 = u_xlati72;
          let x_2609 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[((x_2602 + 1i) / 4i)][((x_2605 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2600.y, x_2600.y, x_2600.y, x_2600.y) * x_2609);
          let x_2611 : i32 = u_xlati72;
          let x_2613 : i32 = u_xlati72;
          let x_2616 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[(x_2611 / 4i)][(x_2613 % 4i)];
          let x_2617 : vec3<f32> = vs_INTERP0;
          let x_2620 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2616 * vec4<f32>(x_2617.x, x_2617.x, x_2617.x, x_2617.x)) + x_2620);
          let x_2622 : i32 = u_xlati72;
          let x_2625 : i32 = u_xlati72;
          let x_2629 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[((x_2622 + 2i) / 4i)][((x_2625 + 2i) % 4i)];
          let x_2630 : vec3<f32> = vs_INTERP0;
          let x_2633 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2629 * vec4<f32>(x_2630.z, x_2630.z, x_2630.z, x_2630.z)) + x_2633);
          let x_2635 : vec4<f32> = u_xlat12;
          let x_2636 : i32 = u_xlati72;
          let x_2639 : i32 = u_xlati72;
          let x_2643 : vec4<f32> = x_2406.x_AdditionalLightsWorldToLights[((x_2636 + 3i) / 4i)][((x_2639 + 3i) % 4i)];
          u_xlat12 = (x_2635 + x_2643);
          let x_2645 : vec4<f32> = u_xlat12;
          let x_2647 : vec4<f32> = u_xlat12;
          let x_2649 : vec3<f32> = (vec3<f32>(x_2645.x, x_2645.y, x_2645.z) / vec3<f32>(x_2647.w, x_2647.w, x_2647.w));
          let x_2650 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2650.w);
          let x_2652 : vec4<f32> = u_xlat12;
          let x_2654 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2652.x, x_2652.y, x_2652.z), vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
          let x_2657 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2657);
          let x_2659 : f32 = u_xlat70;
          let x_2661 : vec4<f32> = u_xlat12;
          let x_2663 : vec3<f32> = (vec3<f32>(x_2659, x_2659, x_2659) * vec3<f32>(x_2661.x, x_2661.y, x_2661.z));
          let x_2664 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2663.x, x_2663.y, x_2663.z, x_2664.w);
          let x_2666 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2666.x, x_2666.y, x_2666.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2670 : f32 = u_xlat70;
          u_xlat70 = max(x_2670, 0.000001f);
          let x_2673 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2673);
          let x_2675 : f32 = u_xlat70;
          let x_2677 : vec4<f32> = u_xlat12;
          let x_2679 : vec3<f32> = (vec3<f32>(x_2675, x_2675, x_2675) * vec3<f32>(x_2677.z, x_2677.x, x_2677.y));
          let x_2680 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2679.x, x_2679.y, x_2679.z, x_2680.w);
          let x_2683 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2683);
          let x_2687 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2687, 0.0f, 1.0f);
          let x_2691 : vec4<f32> = u_xlat13;
          let x_2694 : vec4<bool> = (vec4<f32>(x_2691.y, x_2691.z, x_2691.y, x_2691.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2694.x, x_2694.y);
          let x_2697 : bool = u_xlatb53.x;
          if (x_2697) {
            let x_2702 : f32 = u_xlat13.x;
            x_2698 = x_2702;
          } else {
            let x_2705 : f32 = u_xlat13.x;
            x_2698 = -(x_2705);
          }
          let x_2707 : f32 = x_2698;
          u_xlat53.x = x_2707;
          let x_2710 : bool = u_xlatb53.y;
          if (x_2710) {
            let x_2715 : f32 = u_xlat13.x;
            x_2711 = x_2715;
          } else {
            let x_2718 : f32 = u_xlat13.x;
            x_2711 = -(x_2718);
          }
          let x_2720 : f32 = x_2711;
          u_xlat53.y = x_2720;
          let x_2722 : vec4<f32> = u_xlat12;
          let x_2724 : f32 = u_xlat70;
          let x_2727 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2722.x, x_2722.y) * vec2<f32>(x_2724, x_2724)) + x_2727);
          let x_2729 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2729 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2732 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2732, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2736 : u32 = u_xlatu67;
          let x_2739 : vec4<f32> = x_2406.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2736)];
          let x_2741 : vec2<f32> = u_xlat53;
          let x_2743 : u32 = u_xlatu67;
          let x_2746 : vec4<f32> = x_2406.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2743)];
          let x_2748 : vec2<f32> = ((vec2<f32>(x_2739.x, x_2739.y) * x_2741) + vec2<f32>(x_2746.z, x_2746.w));
          let x_2749 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2748.x, x_2748.y, x_2749.z, x_2749.w);
        }
      }
      let x_2756 : vec4<f32> = u_xlat11;
      let x_2759 : f32 = x_44.x_GlobalMipBias.x;
      let x_2760 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2756.x, x_2756.y), x_2759);
      u_xlat11 = x_2760;
      let x_2762 : bool = u_xlatb7.y;
      if (x_2762) {
        let x_2767 : f32 = u_xlat11.w;
        x_2763 = x_2767;
      } else {
        let x_2770 : f32 = u_xlat11.x;
        x_2763 = x_2770;
      }
      let x_2771 : f32 = x_2763;
      u_xlat70 = x_2771;
      let x_2773 : bool = u_xlatb7.x;
      if (x_2773) {
        let x_2777 : vec4<f32> = u_xlat11;
        x_2774 = vec3<f32>(x_2777.x, x_2777.y, x_2777.z);
      } else {
        let x_2780 : f32 = u_xlat70;
        x_2774 = vec3<f32>(x_2780, x_2780, x_2780);
      }
      let x_2782 : vec3<f32> = x_2774;
      let x_2783 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2783.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2789 : vec4<f32> = u_xlat11;
    let x_2791 : u32 = u_xlatu67;
    let x_2794 : vec4<f32> = x_2297.x_AdditionalLightsColor[bitcast<i32>(x_2791)];
    let x_2796 : vec3<f32> = (vec3<f32>(x_2789.x, x_2789.y, x_2789.z) * vec3<f32>(x_2794.x, x_2794.y, x_2794.z));
    let x_2797 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
    let x_2799 : vec3<f32> = u_xlat5;
    let x_2801 : vec4<f32> = u_xlat11;
    let x_2803 : vec3<f32> = (vec3<f32>(x_2799.x, x_2799.x, x_2799.x) * vec3<f32>(x_2801.x, x_2801.y, x_2801.z));
    let x_2804 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
    let x_2806 : vec3<f32> = u_xlat22;
    let x_2807 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_2806, vec3<f32>(x_2807.x, x_2807.y, x_2807.z));
    let x_2810 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2810, 0.0f, 1.0f);
    let x_2812 : f32 = u_xlat67;
    let x_2813 : f32 = u_xlat69;
    u_xlat67 = (x_2812 * x_2813);
    let x_2815 : f32 = u_xlat67;
    let x_2817 : vec4<f32> = u_xlat11;
    let x_2819 : vec3<f32> = (vec3<f32>(x_2815, x_2815, x_2815) * vec3<f32>(x_2817.x, x_2817.y, x_2817.z));
    let x_2820 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2819.x, x_2819.y, x_2819.z, x_2820.w);
    let x_2822 : vec4<f32> = u_xlat9;
    let x_2824 : vec2<f32> = u_xlat49;
    let x_2827 : vec3<f32> = u_xlat3;
    let x_2828 : vec3<f32> = ((vec3<f32>(x_2822.x, x_2822.y, x_2822.z) * vec3<f32>(x_2824.x, x_2824.x, x_2824.x)) + x_2827);
    let x_2829 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2828.x, x_2828.y, x_2828.z, x_2829.w);
    let x_2831 : vec4<f32> = u_xlat9;
    let x_2833 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2831.x, x_2831.y, x_2831.z), vec3<f32>(x_2833.x, x_2833.y, x_2833.z));
    let x_2836 : f32 = u_xlat67;
    u_xlat67 = max(x_2836, 1.17549435e-37f);
    let x_2838 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2838);
    let x_2840 : f32 = u_xlat67;
    let x_2842 : vec4<f32> = u_xlat9;
    let x_2844 : vec3<f32> = (vec3<f32>(x_2840, x_2840, x_2840) * vec3<f32>(x_2842.x, x_2842.y, x_2842.z));
    let x_2845 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2844.x, x_2844.y, x_2844.z, x_2845.w);
    let x_2847 : vec3<f32> = u_xlat22;
    let x_2848 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_2847, vec3<f32>(x_2848.x, x_2848.y, x_2848.z));
    let x_2851 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2851, 0.0f, 1.0f);
    let x_2853 : vec4<f32> = u_xlat10;
    let x_2855 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2853.x, x_2853.y, x_2853.z), vec3<f32>(x_2855.x, x_2855.y, x_2855.z));
    let x_2858 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2858, 0.0f, 1.0f);
    let x_2860 : f32 = u_xlat67;
    let x_2861 : f32 = u_xlat67;
    u_xlat67 = (x_2860 * x_2861);
    let x_2863 : f32 = u_xlat67;
    let x_2865 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2863 * x_2865) + 1.000010014f);
    let x_2868 : f32 = u_xlat69;
    let x_2869 : f32 = u_xlat69;
    u_xlat69 = (x_2868 * x_2869);
    let x_2871 : f32 = u_xlat67;
    let x_2872 : f32 = u_xlat67;
    u_xlat67 = (x_2871 * x_2872);
    let x_2874 : f32 = u_xlat69;
    u_xlat69 = max(x_2874, 0.100000001f);
    let x_2876 : f32 = u_xlat67;
    let x_2877 : f32 = u_xlat69;
    u_xlat67 = (x_2876 * x_2877);
    let x_2879 : f32 = u_xlat66;
    let x_2880 : f32 = u_xlat67;
    u_xlat67 = (x_2879 * x_2880);
    let x_2883 : f32 = u_xlat1.x;
    let x_2884 : f32 = u_xlat67;
    u_xlat67 = (x_2883 / x_2884);
    let x_2886 : vec3<f32> = u_xlat2;
    let x_2887 : f32 = u_xlat67;
    let x_2890 : vec3<f32> = u_xlat6;
    let x_2891 : vec3<f32> = ((x_2886 * vec3<f32>(x_2887, x_2887, x_2887)) + x_2890);
    let x_2892 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2891.x, x_2891.y, x_2891.z, x_2892.w);
    let x_2894 : vec4<f32> = u_xlat9;
    let x_2896 : vec4<f32> = u_xlat11;
    let x_2899 : vec4<f32> = u_xlat8;
    let x_2901 : vec3<f32> = ((vec3<f32>(x_2894.x, x_2894.y, x_2894.z) * vec3<f32>(x_2896.x, x_2896.y, x_2896.z)) + vec3<f32>(x_2899.x, x_2899.y, x_2899.z));
    let x_2902 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2901.x, x_2901.y, x_2901.z, x_2902.w);

    continuing {
      let x_2904 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2904 + bitcast<u32>(1i));
    }
  }
  let x_2906 : vec3<f32> = u_xlat4;
  let x_2907 : f32 = u_xlat63;
  let x_2910 : vec3<f32> = u_xlat26;
  let x_2911 : vec3<f32> = ((x_2906 * vec3<f32>(x_2907, x_2907, x_2907)) + x_2910);
  let x_2912 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2911.x, x_2912.y, x_2911.y, x_2911.z);
  let x_2914 : vec4<f32> = u_xlat8;
  let x_2916 : vec4<f32> = u_xlat0;
  let x_2918 : vec3<f32> = (vec3<f32>(x_2914.x, x_2914.y, x_2914.z) + vec3<f32>(x_2916.x, x_2916.z, x_2916.w));
  let x_2919 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2918.x, x_2919.y, x_2918.y, x_2918.z);
  let x_2922 : f32 = u_xlat21.x;
  let x_2924 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2922 * -(x_2924));
  let x_2929 : f32 = u_xlat21.x;
  u_xlat21.x = exp2(x_2929);
  let x_2932 : vec4<f32> = u_xlat0;
  let x_2936 : vec4<f32> = x_44.unity_FogColor;
  let x_2939 : vec3<f32> = (vec3<f32>(x_2932.x, x_2932.z, x_2932.w) + -(vec3<f32>(x_2936.x, x_2936.y, x_2936.z)));
  let x_2940 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2939.x, x_2940.y, x_2939.y, x_2939.z);
  let x_2944 : vec2<f32> = u_xlat21;
  let x_2946 : vec4<f32> = u_xlat0;
  let x_2950 : vec4<f32> = x_44.unity_FogColor;
  let x_2952 : vec3<f32> = ((vec3<f32>(x_2944.x, x_2944.x, x_2944.x) * vec3<f32>(x_2946.x, x_2946.z, x_2946.w)) + vec3<f32>(x_2950.x, x_2950.y, x_2950.z));
  let x_2953 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2952.x, x_2952.y, x_2952.z, x_2953.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>, @location(5) vs_INTERP8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  main_1();
  return main_out(SV_Target0);
}

