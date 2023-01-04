struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(1) @binding(4) var<uniform> x_1853 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2299 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2408 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_1935 : f32;
  var x_1946 : vec3<f32>;
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
  var x_2700 : f32;
  var x_2713 : f32;
  var x_2765 : f32;
  var x_2776 : vec3<f32>;
  var u_xlatu0 : u32;
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
      let x_572 : vec4<f32> = x_553.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_568.x, x_568.y, x_568.x, x_568.y) + x_572);
      let x_575 : vec4<f32> = u_xlat7;
      let x_576 : vec2<f32> = vec2<f32>(x_575.x, x_575.y);
      let x_578 : f32 = vs_INTERP8.z;
      txVec0 = vec3<f32>(x_576.x, x_576.y, x_578);
      let x_591 : vec3<f32> = txVec0;
      let x_593 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_591.xy, x_591.z);
      u_xlat8.x = x_593;
      let x_596 : vec4<f32> = u_xlat7;
      let x_597 : vec2<f32> = vec2<f32>(x_596.z, x_596.w);
      let x_599 : f32 = vs_INTERP8.z;
      txVec1 = vec3<f32>(x_597.x, x_597.y, x_599);
      let x_606 : vec3<f32> = txVec1;
      let x_608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_606.xy, x_606.z);
      u_xlat8.y = x_608;
      let x_610 : vec4<f32> = vs_INTERP8;
      let x_614 : vec4<f32> = x_553.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y) + x_614);
      let x_617 : vec4<f32> = u_xlat7;
      let x_618 : vec2<f32> = vec2<f32>(x_617.x, x_617.y);
      let x_620 : f32 = vs_INTERP8.z;
      txVec2 = vec3<f32>(x_618.x, x_618.y, x_620);
      let x_627 : vec3<f32> = txVec2;
      let x_629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_627.xy, x_627.z);
      u_xlat8.z = x_629;
      let x_632 : vec4<f32> = u_xlat7;
      let x_633 : vec2<f32> = vec2<f32>(x_632.z, x_632.w);
      let x_635 : f32 = vs_INTERP8.z;
      txVec3 = vec3<f32>(x_633.x, x_633.y, x_635);
      let x_642 : vec3<f32> = txVec3;
      let x_644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_642.xy, x_642.z);
      u_xlat8.w = x_644;
      let x_646 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_646, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_655 : f32 = x_553.x_MainLightShadowParams.y;
      u_xlatb26.x = (x_655 == 2.0f);
      let x_659 : bool = u_xlatb26.x;
      if (x_659) {
        let x_663 : vec4<f32> = vs_INTERP8;
        let x_666 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_670 : vec2<f32> = ((vec2<f32>(x_663.x, x_663.y) * vec2<f32>(x_666.z, x_666.w)) + vec2<f32>(0.5f, 0.5f));
        let x_671 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_670.x, x_670.y, x_671.z);
        let x_673 : vec3<f32> = u_xlat26;
        let x_675 : vec2<f32> = floor(vec2<f32>(x_673.x, x_673.y));
        let x_676 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_675.x, x_675.y, x_676.z);
        let x_678 : vec4<f32> = vs_INTERP8;
        let x_681 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_684 : vec3<f32> = u_xlat26;
        let x_687 : vec2<f32> = ((vec2<f32>(x_678.x, x_678.y) * vec2<f32>(x_681.z, x_681.w)) + -(vec2<f32>(x_684.x, x_684.y)));
        let x_688 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_690.x, x_690.x, x_690.y, x_690.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_695 : vec4<f32> = u_xlat8;
        let x_697 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_695.x, x_695.x, x_695.z, x_695.z) * vec4<f32>(x_697.x, x_697.x, x_697.z, x_697.z));
        let x_701 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_701.y, x_701.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_706 : vec4<f32> = u_xlat9;
        let x_709 : vec4<f32> = u_xlat7;
        let x_712 : vec2<f32> = ((vec2<f32>(x_706.x, x_706.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_709.x, x_709.y)));
        let x_713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_713.y, x_712.y, x_713.w);
        let x_715 : vec4<f32> = u_xlat7;
        let x_718 : vec2<f32> = (-(vec2<f32>(x_715.x, x_715.y)) + vec2<f32>(1.0f, 1.0f));
        let x_719 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_718.x, x_718.y, x_719.z, x_719.w);
        let x_722 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_722.x, x_722.y), vec2<f32>(0.0f, 0.0f));
        let x_726 : vec2<f32> = u_xlat51;
        let x_728 : vec2<f32> = u_xlat51;
        let x_730 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_726) * x_728) + vec2<f32>(x_730.x, x_730.y));
        let x_733 : vec4<f32> = u_xlat7;
        let x_735 : vec2<f32> = max(vec2<f32>(x_733.x, x_733.y), vec2<f32>(0.0f, 0.0f));
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
        let x_738 : vec4<f32> = u_xlat7;
        let x_741 : vec4<f32> = u_xlat7;
        let x_744 : vec4<f32> = u_xlat8;
        let x_746 : vec2<f32> = ((-(vec2<f32>(x_738.x, x_738.y)) * vec2<f32>(x_741.x, x_741.y)) + vec2<f32>(x_744.y, x_744.w));
        let x_747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_746.x, x_746.y, x_747.z, x_747.w);
        let x_749 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_749 + vec2<f32>(1.0f, 1.0f));
        let x_751 : vec4<f32> = u_xlat7;
        let x_753 : vec2<f32> = (vec2<f32>(x_751.x, x_751.y) + vec2<f32>(1.0f, 1.0f));
        let x_754 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
        let x_757 : vec4<f32> = u_xlat8;
        let x_761 : vec2<f32> = (vec2<f32>(x_757.x, x_757.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_762 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
        let x_765 : vec4<f32> = u_xlat9;
        let x_767 : vec2<f32> = (vec2<f32>(x_765.x, x_765.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_768 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
        let x_770 : vec2<f32> = u_xlat51;
        let x_771 : vec2<f32> = (x_770 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_772 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
        let x_775 : vec4<f32> = u_xlat7;
        let x_777 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_778 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_777.x, x_777.y, x_778.z, x_778.w);
        let x_780 : vec4<f32> = u_xlat8;
        let x_782 : vec2<f32> = (vec2<f32>(x_780.y, x_780.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_783 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
        let x_786 : f32 = u_xlat9.x;
        u_xlat10.z = x_786;
        let x_789 : f32 = u_xlat7.x;
        u_xlat10.w = x_789;
        let x_792 : f32 = u_xlat12.x;
        u_xlat11.z = x_792;
        let x_795 : f32 = u_xlat49.x;
        u_xlat11.w = x_795;
        let x_797 : vec4<f32> = u_xlat10;
        let x_799 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_797.z, x_797.w, x_797.x, x_797.z) + vec4<f32>(x_799.z, x_799.w, x_799.x, x_799.z));
        let x_803 : f32 = u_xlat10.y;
        u_xlat9.z = x_803;
        let x_806 : f32 = u_xlat7.y;
        u_xlat9.w = x_806;
        let x_809 : f32 = u_xlat11.y;
        u_xlat12.z = x_809;
        let x_812 : f32 = u_xlat49.y;
        u_xlat12.w = x_812;
        let x_814 : vec4<f32> = u_xlat9;
        let x_816 : vec4<f32> = u_xlat12;
        let x_818 : vec3<f32> = (vec3<f32>(x_814.z, x_814.y, x_814.w) + vec3<f32>(x_816.z, x_816.y, x_816.w));
        let x_819 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
        let x_821 : vec4<f32> = u_xlat11;
        let x_823 : vec4<f32> = u_xlat8;
        let x_825 : vec3<f32> = (vec3<f32>(x_821.x, x_821.z, x_821.w) / vec3<f32>(x_823.z, x_823.w, x_823.y));
        let x_826 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
        let x_828 : vec4<f32> = u_xlat9;
        let x_834 : vec3<f32> = (vec3<f32>(x_828.x, x_828.y, x_828.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat12;
        let x_839 : vec4<f32> = u_xlat7;
        let x_841 : vec3<f32> = (vec3<f32>(x_837.z, x_837.y, x_837.w) / vec3<f32>(x_839.x, x_839.y, x_839.z));
        let x_842 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat10;
        let x_846 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_847 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
        let x_849 : vec4<f32> = u_xlat9;
        let x_852 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_854 : vec3<f32> = (vec3<f32>(x_849.y, x_849.x, x_849.z) * vec3<f32>(x_852.x, x_852.x, x_852.x));
        let x_855 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat10;
        let x_860 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_862 : vec3<f32> = (vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(x_860.y, x_860.y, x_860.y));
        let x_863 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
        let x_866 : f32 = u_xlat10.x;
        u_xlat9.w = x_866;
        let x_868 : vec3<f32> = u_xlat26;
        let x_871 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_868.x, x_868.y, x_868.x, x_868.y) * vec4<f32>(x_871.x, x_871.y, x_871.x, x_871.y)) + vec4<f32>(x_874.y, x_874.w, x_874.x, x_874.w));
        let x_877 : vec3<f32> = u_xlat26;
        let x_880 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_883 : vec4<f32> = u_xlat9;
        let x_885 : vec2<f32> = ((vec2<f32>(x_877.x, x_877.y) * vec2<f32>(x_880.x, x_880.y)) + vec2<f32>(x_883.z, x_883.w));
        let x_886 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_889 : f32 = u_xlat9.y;
        u_xlat10.w = x_889;
        let x_891 : vec4<f32> = u_xlat10;
        let x_892 : vec2<f32> = vec2<f32>(x_891.y, x_891.z);
        let x_893 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_893.x, x_892.x, x_893.z, x_892.y);
        let x_896 : vec3<f32> = u_xlat26;
        let x_899 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_902 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_896.x, x_896.y, x_896.x, x_896.y) * vec4<f32>(x_899.x, x_899.y, x_899.x, x_899.y)) + vec4<f32>(x_902.x, x_902.y, x_902.z, x_902.y));
        let x_905 : vec3<f32> = u_xlat26;
        let x_908 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_911 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_905.x, x_905.y, x_905.x, x_905.y) * vec4<f32>(x_908.x, x_908.y, x_908.x, x_908.y)) + vec4<f32>(x_911.w, x_911.y, x_911.w, x_911.z));
        let x_914 : vec3<f32> = u_xlat26;
        let x_917 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_920 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_914.x, x_914.y, x_914.x, x_914.y) * vec4<f32>(x_917.x, x_917.y, x_917.x, x_917.y)) + vec4<f32>(x_920.x, x_920.w, x_920.z, x_920.w));
        let x_924 : vec4<f32> = u_xlat7;
        let x_926 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_924.x, x_924.x, x_924.x, x_924.y) * vec4<f32>(x_926.z, x_926.w, x_926.y, x_926.z));
        let x_930 : vec4<f32> = u_xlat7;
        let x_932 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_930.y, x_930.y, x_930.z, x_930.z) * x_932);
        let x_935 : f32 = u_xlat7.z;
        let x_937 : f32 = u_xlat8.y;
        u_xlat26.x = (x_935 * x_937);
        let x_941 : vec4<f32> = u_xlat11;
        let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
        let x_944 : f32 = vs_INTERP8.z;
        txVec4 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_952 : vec3<f32> = txVec4;
        let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_952.xy, x_952.z);
        u_xlat47 = x_954;
        let x_956 : vec4<f32> = u_xlat11;
        let x_957 : vec2<f32> = vec2<f32>(x_956.z, x_956.w);
        let x_959 : f32 = vs_INTERP8.z;
        txVec5 = vec3<f32>(x_957.x, x_957.y, x_959);
        let x_967 : vec3<f32> = txVec5;
        let x_969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_967.xy, x_967.z);
        u_xlat68 = x_969;
        let x_970 : f32 = u_xlat68;
        let x_972 : f32 = u_xlat14.y;
        u_xlat68 = (x_970 * x_972);
        let x_975 : f32 = u_xlat14.x;
        let x_976 : f32 = u_xlat47;
        let x_978 : f32 = u_xlat68;
        u_xlat47 = ((x_975 * x_976) + x_978);
        let x_981 : vec4<f32> = u_xlat12;
        let x_982 : vec2<f32> = vec2<f32>(x_981.x, x_981.y);
        let x_984 : f32 = vs_INTERP8.z;
        txVec6 = vec3<f32>(x_982.x, x_982.y, x_984);
        let x_991 : vec3<f32> = txVec6;
        let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_991.xy, x_991.z);
        u_xlat68 = x_993;
        let x_995 : f32 = u_xlat14.z;
        let x_996 : f32 = u_xlat68;
        let x_998 : f32 = u_xlat47;
        u_xlat47 = ((x_995 * x_996) + x_998);
        let x_1001 : vec4<f32> = u_xlat10;
        let x_1002 : vec2<f32> = vec2<f32>(x_1001.x, x_1001.y);
        let x_1004 : f32 = vs_INTERP8.z;
        txVec7 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
        let x_1011 : vec3<f32> = txVec7;
        let x_1013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1011.xy, x_1011.z);
        u_xlat68 = x_1013;
        let x_1015 : f32 = u_xlat14.w;
        let x_1016 : f32 = u_xlat68;
        let x_1018 : f32 = u_xlat47;
        u_xlat47 = ((x_1015 * x_1016) + x_1018);
        let x_1021 : vec4<f32> = u_xlat13;
        let x_1022 : vec2<f32> = vec2<f32>(x_1021.x, x_1021.y);
        let x_1024 : f32 = vs_INTERP8.z;
        txVec8 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
        let x_1031 : vec3<f32> = txVec8;
        let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1031.xy, x_1031.z);
        u_xlat68 = x_1033;
        let x_1035 : f32 = u_xlat15.x;
        let x_1036 : f32 = u_xlat68;
        let x_1038 : f32 = u_xlat47;
        u_xlat47 = ((x_1035 * x_1036) + x_1038);
        let x_1041 : vec4<f32> = u_xlat13;
        let x_1042 : vec2<f32> = vec2<f32>(x_1041.z, x_1041.w);
        let x_1044 : f32 = vs_INTERP8.z;
        txVec9 = vec3<f32>(x_1042.x, x_1042.y, x_1044);
        let x_1051 : vec3<f32> = txVec9;
        let x_1053 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1051.xy, x_1051.z);
        u_xlat68 = x_1053;
        let x_1055 : f32 = u_xlat15.y;
        let x_1056 : f32 = u_xlat68;
        let x_1058 : f32 = u_xlat47;
        u_xlat47 = ((x_1055 * x_1056) + x_1058);
        let x_1061 : vec4<f32> = u_xlat10;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = vs_INTERP8.z;
        txVec10 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec10;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1071.xy, x_1071.z);
        u_xlat68 = x_1073;
        let x_1075 : f32 = u_xlat15.z;
        let x_1076 : f32 = u_xlat68;
        let x_1078 : f32 = u_xlat47;
        u_xlat47 = ((x_1075 * x_1076) + x_1078);
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1082 : vec2<f32> = vec2<f32>(x_1081.x, x_1081.y);
        let x_1084 : f32 = vs_INTERP8.z;
        txVec11 = vec3<f32>(x_1082.x, x_1082.y, x_1084);
        let x_1091 : vec3<f32> = txVec11;
        let x_1093 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1091.xy, x_1091.z);
        u_xlat68 = x_1093;
        let x_1095 : f32 = u_xlat15.w;
        let x_1096 : f32 = u_xlat68;
        let x_1098 : f32 = u_xlat47;
        u_xlat47 = ((x_1095 * x_1096) + x_1098);
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1102 : vec2<f32> = vec2<f32>(x_1101.z, x_1101.w);
        let x_1104 : f32 = vs_INTERP8.z;
        txVec12 = vec3<f32>(x_1102.x, x_1102.y, x_1104);
        let x_1111 : vec3<f32> = txVec12;
        let x_1113 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1111.xy, x_1111.z);
        u_xlat68 = x_1113;
        let x_1115 : f32 = u_xlat26.x;
        let x_1116 : f32 = u_xlat68;
        let x_1118 : f32 = u_xlat47;
        u_xlat67 = ((x_1115 * x_1116) + x_1118);
      } else {
        let x_1121 : vec4<f32> = vs_INTERP8;
        let x_1124 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1121.x, x_1121.y) * vec2<f32>(x_1124.z, x_1124.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1128 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1127.x, x_1127.y, x_1128.z);
        let x_1130 : vec3<f32> = u_xlat26;
        let x_1132 : vec2<f32> = floor(vec2<f32>(x_1130.x, x_1130.y));
        let x_1133 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1132.x, x_1132.y, x_1133.z);
        let x_1135 : vec4<f32> = vs_INTERP8;
        let x_1138 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1141 : vec3<f32> = u_xlat26;
        let x_1144 : vec2<f32> = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.z, x_1138.w)) + -(vec2<f32>(x_1141.x, x_1141.y)));
        let x_1145 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1147.x, x_1147.x, x_1147.y, x_1147.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1150 : vec4<f32> = u_xlat8;
        let x_1152 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1150.x, x_1150.x, x_1150.z, x_1150.z) * vec4<f32>(x_1152.x, x_1152.x, x_1152.z, x_1152.z));
        let x_1155 : vec4<f32> = u_xlat9;
        let x_1159 : vec2<f32> = (vec2<f32>(x_1155.y, x_1155.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1160.x, x_1159.x, x_1160.z, x_1159.y);
        let x_1162 : vec4<f32> = u_xlat9;
        let x_1165 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1162.x, x_1162.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1165.x, x_1165.y)));
        let x_1169 : vec4<f32> = u_xlat7;
        let x_1172 : vec2<f32> = (-(vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1172.x, x_1173.y, x_1172.y, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1177 : vec2<f32> = min(vec2<f32>(x_1175.x, x_1175.y), vec2<f32>(0.0f, 0.0f));
        let x_1178 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat9;
        let x_1183 : vec4<f32> = u_xlat9;
        let x_1186 : vec4<f32> = u_xlat8;
        let x_1188 : vec2<f32> = ((-(vec2<f32>(x_1180.x, x_1180.y)) * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.x, x_1186.z));
        let x_1189 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1188.x, x_1189.y, x_1188.y, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat7;
        let x_1193 : vec2<f32> = max(vec2<f32>(x_1191.x, x_1191.y), vec2<f32>(0.0f, 0.0f));
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1199 : vec4<f32> = u_xlat9;
        let x_1202 : vec4<f32> = u_xlat8;
        let x_1204 : vec2<f32> = ((-(vec2<f32>(x_1196.x, x_1196.y)) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.y, x_1202.w));
        let x_1205 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1205.x, x_1204.x, x_1205.z, x_1204.y);
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1207 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1211 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1211 * 0.081632003f);
        let x_1215 : vec2<f32> = u_xlat49;
        let x_1218 : vec2<f32> = (vec2<f32>(x_1215.y, x_1215.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1219 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1221.x, x_1221.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1225 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1225 * 0.081632003f);
        let x_1229 : f32 = u_xlat11.y;
        u_xlat9.x = x_1229;
        let x_1231 : vec4<f32> = u_xlat7;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1231.x, x_1231.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1239 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1239.x, x_1238.x, x_1239.z, x_1238.y);
        let x_1241 : vec4<f32> = u_xlat7;
        let x_1245 : vec2<f32> = ((vec2<f32>(x_1241.x, x_1241.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1246 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1245.x, x_1246.y, x_1245.y, x_1246.w);
        let x_1249 : f32 = u_xlat49.x;
        u_xlat8.y = x_1249;
        let x_1252 : f32 = u_xlat10.y;
        u_xlat8.w = x_1252;
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1255 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1254 + x_1255);
        let x_1257 : vec4<f32> = u_xlat7;
        let x_1260 : vec2<f32> = ((vec2<f32>(x_1257.y, x_1257.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1261 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1261.x, x_1260.x, x_1261.z, x_1260.y);
        let x_1263 : vec4<f32> = u_xlat7;
        let x_1266 : vec2<f32> = ((vec2<f32>(x_1263.y, x_1263.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1267.y, x_1266.y, x_1267.w);
        let x_1270 : f32 = u_xlat49.y;
        u_xlat10.y = x_1270;
        let x_1272 : vec4<f32> = u_xlat10;
        let x_1273 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1272 + x_1273);
        let x_1275 : vec4<f32> = u_xlat8;
        let x_1276 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1275 / x_1276);
        let x_1278 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1278 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1285 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1284 / x_1285);
        let x_1287 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1287 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1289 : vec4<f32> = u_xlat8;
        let x_1292 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1289.w, x_1289.x, x_1289.y, x_1289.z) * vec4<f32>(x_1292.x, x_1292.x, x_1292.x, x_1292.x));
        let x_1295 : vec4<f32> = u_xlat10;
        let x_1298 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1295.x, x_1295.w, x_1295.y, x_1295.z) * vec4<f32>(x_1298.y, x_1298.y, x_1298.y, x_1298.y));
        let x_1301 : vec4<f32> = u_xlat8;
        let x_1302 : vec3<f32> = vec3<f32>(x_1301.y, x_1301.z, x_1301.w);
        let x_1303 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1302.x, x_1303.y, x_1302.y, x_1302.z);
        let x_1306 : f32 = u_xlat10.x;
        u_xlat11.y = x_1306;
        let x_1308 : vec3<f32> = u_xlat26;
        let x_1311 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y) * vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y)) + vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1314.y));
        let x_1317 : vec3<f32> = u_xlat26;
        let x_1320 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat11;
        let x_1325 : vec2<f32> = ((vec2<f32>(x_1317.x, x_1317.y) * vec2<f32>(x_1320.x, x_1320.y)) + vec2<f32>(x_1323.w, x_1323.y));
        let x_1326 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1325.x, x_1325.y, x_1326.z, x_1326.w);
        let x_1329 : f32 = u_xlat11.y;
        u_xlat8.y = x_1329;
        let x_1332 : f32 = u_xlat10.z;
        u_xlat11.y = x_1332;
        let x_1334 : vec3<f32> = u_xlat26;
        let x_1337 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y) * vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y)) + vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1340.y));
        let x_1344 : vec3<f32> = u_xlat26;
        let x_1347 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1350 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1344.x, x_1344.y) * vec2<f32>(x_1347.x, x_1347.y)) + vec2<f32>(x_1350.w, x_1350.y));
        let x_1354 : f32 = u_xlat11.y;
        u_xlat8.z = x_1354;
        let x_1356 : vec3<f32> = u_xlat26;
        let x_1359 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1362 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y) * vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y)) + vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.z));
        let x_1366 : f32 = u_xlat10.w;
        u_xlat11.y = x_1366;
        let x_1369 : vec3<f32> = u_xlat26;
        let x_1372 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y) * vec4<f32>(x_1372.x, x_1372.y, x_1372.x, x_1372.y)) + vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1375.y));
        let x_1379 : vec3<f32> = u_xlat26;
        let x_1382 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat11;
        u_xlat29 = ((vec2<f32>(x_1379.x, x_1379.y) * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1385.w, x_1385.y));
        let x_1389 : f32 = u_xlat11.y;
        u_xlat8.w = x_1389;
        let x_1392 : vec3<f32> = u_xlat26;
        let x_1395 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1398 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1392.x, x_1392.y) * vec2<f32>(x_1395.x, x_1395.y)) + vec2<f32>(x_1398.x, x_1398.w));
        let x_1401 : vec4<f32> = u_xlat11;
        let x_1402 : vec3<f32> = vec3<f32>(x_1401.x, x_1401.z, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1402.x, x_1403.y, x_1402.y, x_1402.z);
        let x_1405 : vec3<f32> = u_xlat26;
        let x_1408 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1405.x, x_1405.y, x_1405.x, x_1405.y) * vec4<f32>(x_1408.x, x_1408.y, x_1408.x, x_1408.y)) + vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1411.y));
        let x_1415 : vec3<f32> = u_xlat26;
        let x_1418 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1421 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1415.x, x_1415.y) * vec2<f32>(x_1418.x, x_1418.y)) + vec2<f32>(x_1421.w, x_1421.y));
        let x_1425 : f32 = u_xlat8.x;
        u_xlat10.x = x_1425;
        let x_1427 : vec3<f32> = u_xlat26;
        let x_1430 : vec4<f32> = x_553.x_MainLightShadowmapSize;
        let x_1433 : vec4<f32> = u_xlat10;
        let x_1435 : vec2<f32> = ((vec2<f32>(x_1427.x, x_1427.y) * vec2<f32>(x_1430.x, x_1430.y)) + vec2<f32>(x_1433.x, x_1433.y));
        let x_1436 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_1435.x, x_1435.y, x_1436.z);
        let x_1439 : vec4<f32> = u_xlat7;
        let x_1441 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1439.x, x_1439.x, x_1439.x, x_1439.x) * x_1441);
        let x_1444 : vec4<f32> = u_xlat7;
        let x_1446 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1444.y, x_1444.y, x_1444.y, x_1444.y) * x_1446);
        let x_1449 : vec4<f32> = u_xlat7;
        let x_1451 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1449.z, x_1449.z, x_1449.z, x_1449.z) * x_1451);
        let x_1453 : vec4<f32> = u_xlat7;
        let x_1455 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1453.w, x_1453.w, x_1453.w, x_1453.w) * x_1455);
        let x_1458 : vec4<f32> = u_xlat12;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
        let x_1461 : f32 = vs_INTERP8.z;
        txVec13 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec13;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1468.xy, x_1468.z);
        u_xlat68 = x_1470;
        let x_1472 : vec4<f32> = u_xlat12;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = vs_INTERP8.z;
        txVec14 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1483 : vec3<f32> = txVec14;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1483.xy, x_1483.z);
        u_xlat69 = x_1485;
        let x_1486 : f32 = u_xlat69;
        let x_1488 : f32 = u_xlat18.y;
        u_xlat69 = (x_1486 * x_1488);
        let x_1491 : f32 = u_xlat18.x;
        let x_1492 : f32 = u_xlat68;
        let x_1494 : f32 = u_xlat69;
        u_xlat68 = ((x_1491 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat13;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.x, x_1497.y);
        let x_1500 : f32 = vs_INTERP8.z;
        txVec15 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec15;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1507.xy, x_1507.z);
        u_xlat69 = x_1509;
        let x_1511 : f32 = u_xlat18.z;
        let x_1512 : f32 = u_xlat69;
        let x_1514 : f32 = u_xlat68;
        u_xlat68 = ((x_1511 * x_1512) + x_1514);
        let x_1517 : vec4<f32> = u_xlat15;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.x, x_1517.y);
        let x_1520 : f32 = vs_INTERP8.z;
        txVec16 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec16;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1527.xy, x_1527.z);
        u_xlat69 = x_1529;
        let x_1531 : f32 = u_xlat18.w;
        let x_1532 : f32 = u_xlat69;
        let x_1534 : f32 = u_xlat68;
        u_xlat68 = ((x_1531 * x_1532) + x_1534);
        let x_1537 : vec4<f32> = u_xlat14;
        let x_1538 : vec2<f32> = vec2<f32>(x_1537.x, x_1537.y);
        let x_1540 : f32 = vs_INTERP8.z;
        txVec17 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec17;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1547.xy, x_1547.z);
        u_xlat69 = x_1549;
        let x_1551 : f32 = u_xlat19.x;
        let x_1552 : f32 = u_xlat69;
        let x_1554 : f32 = u_xlat68;
        u_xlat68 = ((x_1551 * x_1552) + x_1554);
        let x_1557 : vec4<f32> = u_xlat14;
        let x_1558 : vec2<f32> = vec2<f32>(x_1557.z, x_1557.w);
        let x_1560 : f32 = vs_INTERP8.z;
        txVec18 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec18;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1567.xy, x_1567.z);
        u_xlat69 = x_1569;
        let x_1571 : f32 = u_xlat19.y;
        let x_1572 : f32 = u_xlat69;
        let x_1574 : f32 = u_xlat68;
        u_xlat68 = ((x_1571 * x_1572) + x_1574);
        let x_1577 : vec2<f32> = u_xlat55;
        let x_1579 : f32 = vs_INTERP8.z;
        txVec19 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec19;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat69 = x_1588;
        let x_1590 : f32 = u_xlat19.z;
        let x_1591 : f32 = u_xlat69;
        let x_1593 : f32 = u_xlat68;
        u_xlat68 = ((x_1590 * x_1591) + x_1593);
        let x_1596 : vec4<f32> = u_xlat15;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.z, x_1596.w);
        let x_1599 : f32 = vs_INTERP8.z;
        txVec20 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec20;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1606.xy, x_1606.z);
        u_xlat69 = x_1608;
        let x_1610 : f32 = u_xlat19.w;
        let x_1611 : f32 = u_xlat69;
        let x_1613 : f32 = u_xlat68;
        u_xlat68 = ((x_1610 * x_1611) + x_1613);
        let x_1616 : vec4<f32> = u_xlat16;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.x, x_1616.y);
        let x_1619 : f32 = vs_INTERP8.z;
        txVec21 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec21;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
        u_xlat69 = x_1628;
        let x_1630 : f32 = u_xlat20.x;
        let x_1631 : f32 = u_xlat69;
        let x_1633 : f32 = u_xlat68;
        u_xlat68 = ((x_1630 * x_1631) + x_1633);
        let x_1636 : vec4<f32> = u_xlat16;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.z, x_1636.w);
        let x_1639 : f32 = vs_INTERP8.z;
        txVec22 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec22;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1646.xy, x_1646.z);
        u_xlat69 = x_1648;
        let x_1650 : f32 = u_xlat20.y;
        let x_1651 : f32 = u_xlat69;
        let x_1653 : f32 = u_xlat68;
        u_xlat68 = ((x_1650 * x_1651) + x_1653);
        let x_1656 : vec2<f32> = u_xlat29;
        let x_1658 : f32 = vs_INTERP8.z;
        txVec23 = vec3<f32>(x_1656.x, x_1656.y, x_1658);
        let x_1665 : vec3<f32> = txVec23;
        let x_1667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1665.xy, x_1665.z);
        u_xlat69 = x_1667;
        let x_1669 : f32 = u_xlat20.z;
        let x_1670 : f32 = u_xlat69;
        let x_1672 : f32 = u_xlat68;
        u_xlat68 = ((x_1669 * x_1670) + x_1672);
        let x_1675 : vec2<f32> = u_xlat17;
        let x_1677 : f32 = vs_INTERP8.z;
        txVec24 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec24;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1684.xy, x_1684.z);
        u_xlat69 = x_1686;
        let x_1688 : f32 = u_xlat20.w;
        let x_1689 : f32 = u_xlat69;
        let x_1691 : f32 = u_xlat68;
        u_xlat68 = ((x_1688 * x_1689) + x_1691);
        let x_1694 : vec4<f32> = u_xlat11;
        let x_1695 : vec2<f32> = vec2<f32>(x_1694.x, x_1694.y);
        let x_1697 : f32 = vs_INTERP8.z;
        txVec25 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec25;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1704.xy, x_1704.z);
        u_xlat69 = x_1706;
        let x_1708 : f32 = u_xlat7.x;
        let x_1709 : f32 = u_xlat69;
        let x_1711 : f32 = u_xlat68;
        u_xlat68 = ((x_1708 * x_1709) + x_1711);
        let x_1714 : vec4<f32> = u_xlat11;
        let x_1715 : vec2<f32> = vec2<f32>(x_1714.z, x_1714.w);
        let x_1717 : f32 = vs_INTERP8.z;
        txVec26 = vec3<f32>(x_1715.x, x_1715.y, x_1717);
        let x_1724 : vec3<f32> = txVec26;
        let x_1726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1724.xy, x_1724.z);
        u_xlat69 = x_1726;
        let x_1728 : f32 = u_xlat7.y;
        let x_1729 : f32 = u_xlat69;
        let x_1731 : f32 = u_xlat68;
        u_xlat68 = ((x_1728 * x_1729) + x_1731);
        let x_1734 : vec2<f32> = u_xlat52;
        let x_1736 : f32 = vs_INTERP8.z;
        txVec27 = vec3<f32>(x_1734.x, x_1734.y, x_1736);
        let x_1743 : vec3<f32> = txVec27;
        let x_1745 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1743.xy, x_1743.z);
        u_xlat69 = x_1745;
        let x_1747 : f32 = u_xlat7.z;
        let x_1748 : f32 = u_xlat69;
        let x_1750 : f32 = u_xlat68;
        u_xlat68 = ((x_1747 * x_1748) + x_1750);
        let x_1753 : vec3<f32> = u_xlat26;
        let x_1754 : vec2<f32> = vec2<f32>(x_1753.x, x_1753.y);
        let x_1756 : f32 = vs_INTERP8.z;
        txVec28 = vec3<f32>(x_1754.x, x_1754.y, x_1756);
        let x_1763 : vec3<f32> = txVec28;
        let x_1765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1763.xy, x_1763.z);
        u_xlat26.x = x_1765;
        let x_1768 : f32 = u_xlat7.w;
        let x_1770 : f32 = u_xlat26.x;
        let x_1772 : f32 = u_xlat68;
        u_xlat67 = ((x_1768 * x_1770) + x_1772);
      }
    }
  } else {
    let x_1776 : vec4<f32> = vs_INTERP8;
    let x_1777 : vec2<f32> = vec2<f32>(x_1776.x, x_1776.y);
    let x_1779 : f32 = vs_INTERP8.z;
    txVec29 = vec3<f32>(x_1777.x, x_1777.y, x_1779);
    let x_1786 : vec3<f32> = txVec29;
    let x_1788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1786.xy, x_1786.z);
    u_xlat67 = x_1788;
  }
  let x_1790 : f32 = x_553.x_MainLightShadowParams.x;
  u_xlat26.x = (-(x_1790) + 1.0f);
  let x_1794 : f32 = u_xlat67;
  let x_1796 : f32 = x_553.x_MainLightShadowParams.x;
  let x_1799 : f32 = u_xlat26.x;
  u_xlat67 = ((x_1794 * x_1796) + x_1799);
  let x_1802 : f32 = vs_INTERP8.z;
  u_xlatb26.x = (0.0f >= x_1802);
  let x_1807 : f32 = vs_INTERP8.z;
  u_xlatb47 = (x_1807 >= 1.0f);
  let x_1809 : bool = u_xlatb47;
  let x_1811 : bool = u_xlatb26.x;
  u_xlatb26.x = (x_1809 | x_1811);
  let x_1815 : bool = u_xlatb26.x;
  let x_1816 : f32 = u_xlat67;
  u_xlat67 = select(x_1816, 1.0f, x_1815);
  let x_1818 : vec3<f32> = vs_INTERP0;
  let x_1820 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1818 + -(x_1820));
  let x_1823 : vec3<f32> = u_xlat26;
  let x_1824 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1823, x_1824);
  let x_1828 : f32 = u_xlat26.x;
  let x_1830 : f32 = x_553.x_MainLightShadowParams.z;
  let x_1833 : f32 = x_553.x_MainLightShadowParams.w;
  u_xlat26.x = ((x_1828 * x_1830) + x_1833);
  let x_1837 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1837, 0.0f, 1.0f);
  let x_1840 : f32 = u_xlat67;
  u_xlat47 = (-(x_1840) + 1.0f);
  let x_1844 : f32 = u_xlat26.x;
  let x_1845 : f32 = u_xlat47;
  let x_1847 : f32 = u_xlat67;
  u_xlat67 = ((x_1844 * x_1845) + x_1847);
  let x_1855 : f32 = x_1853.x_MainLightCookieTextureFormat;
  u_xlatb26.x = !((x_1855 == -1.0f));
  let x_1859 : bool = u_xlatb26.x;
  if (x_1859) {
    let x_1862 : vec3<f32> = vs_INTERP0;
    let x_1865 : vec4<f32> = x_1853.x_MainLightWorldToLight[1i];
    let x_1867 : vec2<f32> = (vec2<f32>(x_1862.y, x_1862.y) * vec2<f32>(x_1865.x, x_1865.y));
    let x_1868 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1867.x, x_1867.y, x_1868.z);
    let x_1871 : vec4<f32> = x_1853.x_MainLightWorldToLight[0i];
    let x_1873 : vec3<f32> = vs_INTERP0;
    let x_1876 : vec3<f32> = u_xlat26;
    let x_1878 : vec2<f32> = ((vec2<f32>(x_1871.x, x_1871.y) * vec2<f32>(x_1873.x, x_1873.x)) + vec2<f32>(x_1876.x, x_1876.y));
    let x_1879 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1878.x, x_1878.y, x_1879.z);
    let x_1882 : vec4<f32> = x_1853.x_MainLightWorldToLight[2i];
    let x_1884 : vec3<f32> = vs_INTERP0;
    let x_1887 : vec3<f32> = u_xlat26;
    let x_1889 : vec2<f32> = ((vec2<f32>(x_1882.x, x_1882.y) * vec2<f32>(x_1884.z, x_1884.z)) + vec2<f32>(x_1887.x, x_1887.y));
    let x_1890 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1889.x, x_1889.y, x_1890.z);
    let x_1892 : vec3<f32> = u_xlat26;
    let x_1895 : vec4<f32> = x_1853.x_MainLightWorldToLight[3i];
    let x_1897 : vec2<f32> = (vec2<f32>(x_1892.x, x_1892.y) + vec2<f32>(x_1895.x, x_1895.y));
    let x_1898 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1897.x, x_1897.y, x_1898.z);
    let x_1900 : vec3<f32> = u_xlat26;
    let x_1903 : vec2<f32> = ((vec2<f32>(x_1900.x, x_1900.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1904 : vec3<f32> = u_xlat26;
    u_xlat26 = vec3<f32>(x_1903.x, x_1903.y, x_1904.z);
    let x_1911 : vec3<f32> = u_xlat26;
    let x_1914 : f32 = x_44.x_GlobalMipBias.x;
    let x_1915 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1911.x, x_1911.y), x_1914);
    u_xlat7 = x_1915;
    let x_1917 : f32 = x_1853.x_MainLightCookieTextureFormat;
    let x_1919 : f32 = x_1853.x_MainLightCookieTextureFormat;
    let x_1921 : f32 = x_1853.x_MainLightCookieTextureFormat;
    let x_1923 : f32 = x_1853.x_MainLightCookieTextureFormat;
    let x_1924 : vec4<f32> = vec4<f32>(x_1917, x_1919, x_1921, x_1923);
    let x_1931 : vec4<bool> = (vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1924.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb26 = vec2<bool>(x_1931.x, x_1931.y);
    let x_1934 : bool = u_xlatb26.y;
    if (x_1934) {
      let x_1939 : f32 = u_xlat7.w;
      x_1935 = x_1939;
    } else {
      let x_1942 : f32 = u_xlat7.x;
      x_1935 = x_1942;
    }
    let x_1943 : f32 = x_1935;
    u_xlat47 = x_1943;
    let x_1945 : bool = u_xlatb26.x;
    if (x_1945) {
      let x_1949 : vec4<f32> = u_xlat7;
      x_1946 = vec3<f32>(x_1949.x, x_1949.y, x_1949.z);
    } else {
      let x_1952 : f32 = u_xlat47;
      x_1946 = vec3<f32>(x_1952, x_1952, x_1952);
    }
    let x_1954 : vec3<f32> = x_1946;
    u_xlat26 = x_1954;
  } else {
    u_xlat26.x = 1.0f;
    u_xlat26.y = 1.0f;
    u_xlat26.z = 1.0f;
  }
  let x_1959 : vec3<f32> = u_xlat26;
  let x_1961 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat26 = (x_1959 * vec3<f32>(x_1961.x, x_1961.y, x_1961.z));
  let x_1964 : vec3<f32> = u_xlat5;
  let x_1966 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_1964.x, x_1964.x, x_1964.x) * x_1966);
  let x_1968 : vec3<f32> = u_xlat3;
  let x_1970 : vec3<f32> = u_xlat22;
  u_xlat69 = dot(-(x_1968), x_1970);
  let x_1972 : f32 = u_xlat69;
  let x_1973 : f32 = u_xlat69;
  u_xlat69 = (x_1972 + x_1973);
  let x_1975 : vec3<f32> = u_xlat22;
  let x_1976 : f32 = u_xlat69;
  let x_1980 : vec3<f32> = u_xlat3;
  let x_1982 : vec3<f32> = ((x_1975 * -(vec3<f32>(x_1976, x_1976, x_1976))) + -(x_1980));
  let x_1983 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1985 : vec3<f32> = u_xlat22;
  let x_1986 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(x_1985, x_1986);
  let x_1988 : f32 = u_xlat69;
  u_xlat69 = clamp(x_1988, 0.0f, 1.0f);
  let x_1990 : f32 = u_xlat69;
  u_xlat69 = (-(x_1990) + 1.0f);
  let x_1993 : f32 = u_xlat69;
  let x_1994 : f32 = u_xlat69;
  u_xlat69 = (x_1993 * x_1994);
  let x_1996 : f32 = u_xlat69;
  let x_1997 : f32 = u_xlat69;
  u_xlat69 = (x_1996 * x_1997);
  let x_2001 : f32 = u_xlat0.x;
  u_xlat70 = ((-(x_2001) * 0.699999988f) + 1.700000048f);
  let x_2008 : f32 = u_xlat0.x;
  let x_2009 : f32 = u_xlat70;
  u_xlat0.x = (x_2008 * x_2009);
  let x_2013 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2013 * 6.0f);
  let x_2025 : vec4<f32> = u_xlat7;
  let x_2028 : f32 = u_xlat0.x;
  let x_2029 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2025.x, x_2025.y, x_2025.z), x_2028);
  u_xlat7 = x_2029;
  let x_2031 : f32 = u_xlat7.w;
  u_xlat0.x = (x_2031 + -1.0f);
  let x_2035 : f32 = x_267.unity_SpecCube0_HDR.w;
  let x_2037 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2035 * x_2037) + 1.0f);
  let x_2042 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2042, 0.0f);
  let x_2046 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2046);
  let x_2050 : f32 = u_xlat0.x;
  let x_2052 : f32 = x_267.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2050 * x_2052);
  let x_2056 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2056);
  let x_2060 : f32 = u_xlat0.x;
  let x_2062 : f32 = x_267.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2060 * x_2062);
  let x_2065 : vec4<f32> = u_xlat7;
  let x_2067 : vec4<f32> = u_xlat0;
  let x_2069 : vec3<f32> = (vec3<f32>(x_2065.x, x_2065.y, x_2065.z) * vec3<f32>(x_2067.x, x_2067.x, x_2067.x));
  let x_2070 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
  let x_2072 : f32 = u_xlat42;
  let x_2074 : f32 = u_xlat42;
  let x_2078 : vec2<f32> = ((vec2<f32>(x_2072, x_2072) * vec2<f32>(x_2074, x_2074)) + vec2<f32>(-1.0f, 1.0f));
  let x_2079 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2078.x, x_2079.y, x_2078.y, x_2079.w);
  let x_2082 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2082);
  let x_2084 : vec3<f32> = u_xlat2;
  let x_2086 : f32 = u_xlat65;
  let x_2088 : vec3<f32> = (-(x_2084) + vec3<f32>(x_2086, x_2086, x_2086));
  let x_2089 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
  let x_2091 : f32 = u_xlat69;
  let x_2093 : vec4<f32> = u_xlat8;
  let x_2096 : vec3<f32> = u_xlat2;
  let x_2097 : vec3<f32> = ((vec3<f32>(x_2091, x_2091, x_2091) * vec3<f32>(x_2093.x, x_2093.y, x_2093.z)) + x_2096);
  let x_2098 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2097.x, x_2097.y, x_2097.z, x_2098.w);
  let x_2100 : f32 = u_xlat42;
  let x_2102 : vec4<f32> = u_xlat8;
  let x_2104 : vec3<f32> = (vec3<f32>(x_2100, x_2100, x_2100) * vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
  let x_2105 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
  let x_2107 : vec4<f32> = u_xlat7;
  let x_2109 : vec4<f32> = u_xlat8;
  let x_2111 : vec3<f32> = (vec3<f32>(x_2107.x, x_2107.y, x_2107.z) * vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
  let x_2112 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
  let x_2114 : vec3<f32> = u_xlat4;
  let x_2115 : vec3<f32> = u_xlat6;
  let x_2117 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_2114 * x_2115) + vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
  let x_2120 : f32 = u_xlat67;
  let x_2123 : f32 = x_267.unity_LightData.z;
  u_xlat42 = (x_2120 * x_2123);
  let x_2125 : vec3<f32> = u_xlat22;
  let x_2127 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_2125, vec3<f32>(x_2127.x, x_2127.y, x_2127.z));
  let x_2130 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2130, 0.0f, 1.0f);
  let x_2132 : f32 = u_xlat42;
  let x_2133 : f32 = u_xlat65;
  u_xlat42 = (x_2132 * x_2133);
  let x_2135 : f32 = u_xlat42;
  let x_2137 : vec3<f32> = u_xlat26;
  u_xlat26 = (vec3<f32>(x_2135, x_2135, x_2135) * x_2137);
  let x_2139 : vec3<f32> = u_xlat3;
  let x_2141 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2143 : vec3<f32> = (x_2139 + vec3<f32>(x_2141.x, x_2141.y, x_2141.z));
  let x_2144 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
  let x_2146 : vec4<f32> = u_xlat7;
  let x_2148 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2146.x, x_2146.y, x_2146.z), vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
  let x_2151 : f32 = u_xlat42;
  u_xlat42 = max(x_2151, 1.17549435e-37f);
  let x_2154 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2154);
  let x_2156 : f32 = u_xlat42;
  let x_2158 : vec4<f32> = u_xlat7;
  let x_2160 : vec3<f32> = (vec3<f32>(x_2156, x_2156, x_2156) * vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
  let x_2161 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
  let x_2163 : vec3<f32> = u_xlat22;
  let x_2164 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_2163, vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2167 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2167, 0.0f, 1.0f);
  let x_2170 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2172 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2170.x, x_2170.y, x_2170.z), vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
  let x_2175 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2175, 0.0f, 1.0f);
  let x_2177 : f32 = u_xlat42;
  let x_2178 : f32 = u_xlat42;
  u_xlat42 = (x_2177 * x_2178);
  let x_2180 : f32 = u_xlat42;
  let x_2182 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2180 * x_2182) + 1.000010014f);
  let x_2186 : f32 = u_xlat65;
  let x_2187 : f32 = u_xlat65;
  u_xlat65 = (x_2186 * x_2187);
  let x_2189 : f32 = u_xlat42;
  let x_2190 : f32 = u_xlat42;
  u_xlat42 = (x_2189 * x_2190);
  let x_2192 : f32 = u_xlat65;
  u_xlat65 = max(x_2192, 0.100000001f);
  let x_2195 : f32 = u_xlat42;
  let x_2196 : f32 = u_xlat65;
  u_xlat42 = (x_2195 * x_2196);
  let x_2198 : f32 = u_xlat66;
  let x_2199 : f32 = u_xlat42;
  u_xlat42 = (x_2198 * x_2199);
  let x_2202 : f32 = u_xlat1.x;
  let x_2203 : f32 = u_xlat42;
  u_xlat42 = (x_2202 / x_2203);
  let x_2205 : vec3<f32> = u_xlat2;
  let x_2206 : f32 = u_xlat42;
  let x_2209 : vec3<f32> = u_xlat6;
  let x_2210 : vec3<f32> = ((x_2205 * vec3<f32>(x_2206, x_2206, x_2206)) + x_2209);
  let x_2211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
  let x_2213 : vec3<f32> = u_xlat26;
  let x_2214 : vec4<f32> = u_xlat7;
  u_xlat26 = (x_2213 * vec3<f32>(x_2214.x, x_2214.y, x_2214.z));
  let x_2218 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2220 : f32 = x_267.unity_LightData.y;
  u_xlat42 = min(x_2218, x_2220);
  let x_2224 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2224));
  let x_2229 : f32 = x_1853.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2231 : f32 = x_1853.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2233 : f32 = x_1853.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2235 : f32 = x_1853.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2236 : vec4<f32> = vec4<f32>(x_2229, x_2231, x_2233, x_2235);
  let x_2242 : vec4<bool> = (vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2236.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2242.x, x_2242.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2253 : u32 = u_xlatu_loop_1;
    let x_2254 : u32 = u_xlatu42;
    if ((x_2253 < x_2254)) {
    } else {
      break;
    }
    let x_2257 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2257 >> 2u);
    let x_2261 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2261 & 3u));
    let x_2264 : u32 = u_xlatu67;
    let x_2267 : vec4<f32> = x_267.unity_LightIndices[bitcast<i32>(x_2264)];
    let x_2277 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2282 : vec4<u32> = indexable[x_2277];
    u_xlat67 = dot(x_2267, bitcast<vec4<f32>>(x_2282));
    let x_2285 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2285));
    let x_2288 : vec3<f32> = vs_INTERP0;
    let x_2300 : u32 = u_xlatu67;
    let x_2303 : vec4<f32> = x_2299.x_AdditionalLightsPosition[bitcast<i32>(x_2300)];
    let x_2306 : u32 = u_xlatu67;
    let x_2309 : vec4<f32> = x_2299.x_AdditionalLightsPosition[bitcast<i32>(x_2306)];
    let x_2311 : vec3<f32> = ((-(x_2288) * vec3<f32>(x_2303.w, x_2303.w, x_2303.w)) + vec3<f32>(x_2309.x, x_2309.y, x_2309.z));
    let x_2312 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
    let x_2314 : vec4<f32> = u_xlat9;
    let x_2316 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2314.x, x_2314.y, x_2314.z), vec3<f32>(x_2316.x, x_2316.y, x_2316.z));
    let x_2319 : f32 = u_xlat69;
    u_xlat69 = max(x_2319, 6.10351562e-05f);
    let x_2322 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2322);
    let x_2325 : vec2<f32> = u_xlat49;
    let x_2327 : vec4<f32> = u_xlat9;
    let x_2329 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.x, x_2325.x) * vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
    let x_2330 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
    let x_2332 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2332);
    let x_2334 : f32 = u_xlat69;
    let x_2335 : u32 = u_xlatu67;
    let x_2338 : f32 = x_2299.x_AdditionalLightsAttenuation[bitcast<i32>(x_2335)].x;
    u_xlat69 = (x_2334 * x_2338);
    let x_2340 : f32 = u_xlat69;
    let x_2342 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2340) * x_2342) + 1.0f);
    let x_2345 : f32 = u_xlat69;
    u_xlat69 = max(x_2345, 0.0f);
    let x_2347 : f32 = u_xlat69;
    let x_2348 : f32 = u_xlat69;
    u_xlat69 = (x_2347 * x_2348);
    let x_2350 : f32 = u_xlat69;
    let x_2351 : f32 = u_xlat70;
    u_xlat69 = (x_2350 * x_2351);
    let x_2353 : u32 = u_xlatu67;
    let x_2356 : vec4<f32> = x_2299.x_AdditionalLightsSpotDir[bitcast<i32>(x_2353)];
    let x_2358 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2356.x, x_2356.y, x_2356.z), vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
    let x_2361 : f32 = u_xlat70;
    let x_2362 : u32 = u_xlatu67;
    let x_2365 : f32 = x_2299.x_AdditionalLightsAttenuation[bitcast<i32>(x_2362)].z;
    let x_2367 : u32 = u_xlatu67;
    let x_2370 : f32 = x_2299.x_AdditionalLightsAttenuation[bitcast<i32>(x_2367)].w;
    u_xlat70 = ((x_2361 * x_2365) + x_2370);
    let x_2372 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2372, 0.0f, 1.0f);
    let x_2374 : f32 = u_xlat70;
    let x_2375 : f32 = u_xlat70;
    u_xlat70 = (x_2374 * x_2375);
    let x_2377 : f32 = u_xlat69;
    let x_2378 : f32 = u_xlat70;
    u_xlat69 = (x_2377 * x_2378);
    let x_2381 : u32 = u_xlatu67;
    u_xlatu70 = (x_2381 >> 5u);
    let x_2384 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2384) & 31i)));
    let x_2390 : i32 = u_xlati71;
    let x_2392 : u32 = u_xlatu70;
    let x_2395 : f32 = x_1853.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2392)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2390) & bitcast<u32>(x_2395)));
    let x_2399 : i32 = u_xlati70;
    if ((x_2399 != 0i)) {
      let x_2409 : u32 = u_xlatu67;
      let x_2412 : f32 = x_2408.x_AdditionalLightsLightTypes[bitcast<i32>(x_2409)].el;
      u_xlati70 = i32(x_2412);
      let x_2414 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2414 != 0i));
      let x_2418 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_2418) << bitcast<u32>(2i));
      let x_2421 : i32 = u_xlati71;
      if ((x_2421 != 0i)) {
        let x_2425 : vec3<f32> = vs_INTERP0;
        let x_2427 : i32 = u_xlati72;
        let x_2430 : i32 = u_xlati72;
        let x_2434 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[((x_2427 + 1i) / 4i)][((x_2430 + 1i) % 4i)];
        let x_2436 : vec3<f32> = (vec3<f32>(x_2425.y, x_2425.y, x_2425.y) * vec3<f32>(x_2434.x, x_2434.y, x_2434.w));
        let x_2437 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
        let x_2439 : i32 = u_xlati72;
        let x_2441 : i32 = u_xlati72;
        let x_2444 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[(x_2439 / 4i)][(x_2441 % 4i)];
        let x_2446 : vec3<f32> = vs_INTERP0;
        let x_2449 : vec4<f32> = u_xlat11;
        let x_2451 : vec3<f32> = ((vec3<f32>(x_2444.x, x_2444.y, x_2444.w) * vec3<f32>(x_2446.x, x_2446.x, x_2446.x)) + vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
        let x_2452 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
        let x_2454 : i32 = u_xlati72;
        let x_2457 : i32 = u_xlati72;
        let x_2461 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[((x_2454 + 2i) / 4i)][((x_2457 + 2i) % 4i)];
        let x_2463 : vec3<f32> = vs_INTERP0;
        let x_2466 : vec4<f32> = u_xlat11;
        let x_2468 : vec3<f32> = ((vec3<f32>(x_2461.x, x_2461.y, x_2461.w) * vec3<f32>(x_2463.z, x_2463.z, x_2463.z)) + vec3<f32>(x_2466.x, x_2466.y, x_2466.z));
        let x_2469 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
        let x_2471 : vec4<f32> = u_xlat11;
        let x_2473 : i32 = u_xlati72;
        let x_2476 : i32 = u_xlati72;
        let x_2480 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[((x_2473 + 3i) / 4i)][((x_2476 + 3i) % 4i)];
        let x_2482 : vec3<f32> = (vec3<f32>(x_2471.x, x_2471.y, x_2471.z) + vec3<f32>(x_2480.x, x_2480.y, x_2480.w));
        let x_2483 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
        let x_2485 : vec4<f32> = u_xlat11;
        let x_2487 : vec4<f32> = u_xlat11;
        let x_2489 : vec2<f32> = (vec2<f32>(x_2485.x, x_2485.y) / vec2<f32>(x_2487.z, x_2487.z));
        let x_2490 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
        let x_2492 : vec4<f32> = u_xlat11;
        let x_2495 : vec2<f32> = ((vec2<f32>(x_2492.x, x_2492.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2496 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
        let x_2498 : vec4<f32> = u_xlat11;
        let x_2502 : vec2<f32> = clamp(vec2<f32>(x_2498.x, x_2498.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2503 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2502.x, x_2502.y, x_2503.z, x_2503.w);
        let x_2505 : u32 = u_xlatu67;
        let x_2508 : vec4<f32> = x_2408.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2505)];
        let x_2510 : vec4<f32> = u_xlat11;
        let x_2513 : u32 = u_xlatu67;
        let x_2516 : vec4<f32> = x_2408.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2513)];
        let x_2518 : vec2<f32> = ((vec2<f32>(x_2508.x, x_2508.y) * vec2<f32>(x_2510.x, x_2510.y)) + vec2<f32>(x_2516.z, x_2516.w));
        let x_2519 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2518.x, x_2518.y, x_2519.z, x_2519.w);
      } else {
        let x_2523 : i32 = u_xlati70;
        u_xlatb70 = (x_2523 == 1i);
        let x_2525 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2525);
        let x_2527 : i32 = u_xlati70;
        if ((x_2527 != 0i)) {
          let x_2532 : vec3<f32> = vs_INTERP0;
          let x_2534 : i32 = u_xlati72;
          let x_2537 : i32 = u_xlati72;
          let x_2541 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[((x_2534 + 1i) / 4i)][((x_2537 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2532.y, x_2532.y) * vec2<f32>(x_2541.x, x_2541.y));
          let x_2544 : i32 = u_xlati72;
          let x_2546 : i32 = u_xlati72;
          let x_2549 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[(x_2544 / 4i)][(x_2546 % 4i)];
          let x_2551 : vec3<f32> = vs_INTERP0;
          let x_2554 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2549.x, x_2549.y) * vec2<f32>(x_2551.x, x_2551.x)) + x_2554);
          let x_2556 : i32 = u_xlati72;
          let x_2559 : i32 = u_xlati72;
          let x_2563 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[((x_2556 + 2i) / 4i)][((x_2559 + 2i) % 4i)];
          let x_2565 : vec3<f32> = vs_INTERP0;
          let x_2568 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2563.x, x_2563.y) * vec2<f32>(x_2565.z, x_2565.z)) + x_2568);
          let x_2570 : vec2<f32> = u_xlat53;
          let x_2571 : i32 = u_xlati72;
          let x_2574 : i32 = u_xlati72;
          let x_2578 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[((x_2571 + 3i) / 4i)][((x_2574 + 3i) % 4i)];
          u_xlat53 = (x_2570 + vec2<f32>(x_2578.x, x_2578.y));
          let x_2581 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2581 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2584 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2584);
          let x_2586 : u32 = u_xlatu67;
          let x_2589 : vec4<f32> = x_2408.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2586)];
          let x_2591 : vec2<f32> = u_xlat53;
          let x_2593 : u32 = u_xlatu67;
          let x_2596 : vec4<f32> = x_2408.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2593)];
          let x_2598 : vec2<f32> = ((vec2<f32>(x_2589.x, x_2589.y) * x_2591) + vec2<f32>(x_2596.z, x_2596.w));
          let x_2599 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
        } else {
          let x_2602 : vec3<f32> = vs_INTERP0;
          let x_2604 : i32 = u_xlati72;
          let x_2607 : i32 = u_xlati72;
          let x_2611 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[((x_2604 + 1i) / 4i)][((x_2607 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2602.y, x_2602.y, x_2602.y, x_2602.y) * x_2611);
          let x_2613 : i32 = u_xlati72;
          let x_2615 : i32 = u_xlati72;
          let x_2618 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[(x_2613 / 4i)][(x_2615 % 4i)];
          let x_2619 : vec3<f32> = vs_INTERP0;
          let x_2622 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2618 * vec4<f32>(x_2619.x, x_2619.x, x_2619.x, x_2619.x)) + x_2622);
          let x_2624 : i32 = u_xlati72;
          let x_2627 : i32 = u_xlati72;
          let x_2631 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[((x_2624 + 2i) / 4i)][((x_2627 + 2i) % 4i)];
          let x_2632 : vec3<f32> = vs_INTERP0;
          let x_2635 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2631 * vec4<f32>(x_2632.z, x_2632.z, x_2632.z, x_2632.z)) + x_2635);
          let x_2637 : vec4<f32> = u_xlat12;
          let x_2638 : i32 = u_xlati72;
          let x_2641 : i32 = u_xlati72;
          let x_2645 : vec4<f32> = x_2408.x_AdditionalLightsWorldToLights[((x_2638 + 3i) / 4i)][((x_2641 + 3i) % 4i)];
          u_xlat12 = (x_2637 + x_2645);
          let x_2647 : vec4<f32> = u_xlat12;
          let x_2649 : vec4<f32> = u_xlat12;
          let x_2651 : vec3<f32> = (vec3<f32>(x_2647.x, x_2647.y, x_2647.z) / vec3<f32>(x_2649.w, x_2649.w, x_2649.w));
          let x_2652 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2651.x, x_2651.y, x_2651.z, x_2652.w);
          let x_2654 : vec4<f32> = u_xlat12;
          let x_2656 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2654.x, x_2654.y, x_2654.z), vec3<f32>(x_2656.x, x_2656.y, x_2656.z));
          let x_2659 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2659);
          let x_2661 : f32 = u_xlat70;
          let x_2663 : vec4<f32> = u_xlat12;
          let x_2665 : vec3<f32> = (vec3<f32>(x_2661, x_2661, x_2661) * vec3<f32>(x_2663.x, x_2663.y, x_2663.z));
          let x_2666 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2665.x, x_2665.y, x_2665.z, x_2666.w);
          let x_2668 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2668.x, x_2668.y, x_2668.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2672 : f32 = u_xlat70;
          u_xlat70 = max(x_2672, 0.000001f);
          let x_2675 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2675);
          let x_2677 : f32 = u_xlat70;
          let x_2679 : vec4<f32> = u_xlat12;
          let x_2681 : vec3<f32> = (vec3<f32>(x_2677, x_2677, x_2677) * vec3<f32>(x_2679.z, x_2679.x, x_2679.y));
          let x_2682 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2682.w);
          let x_2685 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2685);
          let x_2689 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2689, 0.0f, 1.0f);
          let x_2693 : vec4<f32> = u_xlat13;
          let x_2696 : vec4<bool> = (vec4<f32>(x_2693.y, x_2693.z, x_2693.y, x_2693.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2696.x, x_2696.y);
          let x_2699 : bool = u_xlatb53.x;
          if (x_2699) {
            let x_2704 : f32 = u_xlat13.x;
            x_2700 = x_2704;
          } else {
            let x_2707 : f32 = u_xlat13.x;
            x_2700 = -(x_2707);
          }
          let x_2709 : f32 = x_2700;
          u_xlat53.x = x_2709;
          let x_2712 : bool = u_xlatb53.y;
          if (x_2712) {
            let x_2717 : f32 = u_xlat13.x;
            x_2713 = x_2717;
          } else {
            let x_2720 : f32 = u_xlat13.x;
            x_2713 = -(x_2720);
          }
          let x_2722 : f32 = x_2713;
          u_xlat53.y = x_2722;
          let x_2724 : vec4<f32> = u_xlat12;
          let x_2726 : f32 = u_xlat70;
          let x_2729 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2724.x, x_2724.y) * vec2<f32>(x_2726, x_2726)) + x_2729);
          let x_2731 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2731 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2734 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2734, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2738 : u32 = u_xlatu67;
          let x_2741 : vec4<f32> = x_2408.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2738)];
          let x_2743 : vec2<f32> = u_xlat53;
          let x_2745 : u32 = u_xlatu67;
          let x_2748 : vec4<f32> = x_2408.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2745)];
          let x_2750 : vec2<f32> = ((vec2<f32>(x_2741.x, x_2741.y) * x_2743) + vec2<f32>(x_2748.z, x_2748.w));
          let x_2751 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2750.x, x_2750.y, x_2751.z, x_2751.w);
        }
      }
      let x_2758 : vec4<f32> = u_xlat11;
      let x_2761 : f32 = x_44.x_GlobalMipBias.x;
      let x_2762 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2758.x, x_2758.y), x_2761);
      u_xlat11 = x_2762;
      let x_2764 : bool = u_xlatb7.y;
      if (x_2764) {
        let x_2769 : f32 = u_xlat11.w;
        x_2765 = x_2769;
      } else {
        let x_2772 : f32 = u_xlat11.x;
        x_2765 = x_2772;
      }
      let x_2773 : f32 = x_2765;
      u_xlat70 = x_2773;
      let x_2775 : bool = u_xlatb7.x;
      if (x_2775) {
        let x_2779 : vec4<f32> = u_xlat11;
        x_2776 = vec3<f32>(x_2779.x, x_2779.y, x_2779.z);
      } else {
        let x_2782 : f32 = u_xlat70;
        x_2776 = vec3<f32>(x_2782, x_2782, x_2782);
      }
      let x_2784 : vec3<f32> = x_2776;
      let x_2785 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2785.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2791 : vec4<f32> = u_xlat11;
    let x_2793 : u32 = u_xlatu67;
    let x_2796 : vec4<f32> = x_2299.x_AdditionalLightsColor[bitcast<i32>(x_2793)];
    let x_2798 : vec3<f32> = (vec3<f32>(x_2791.x, x_2791.y, x_2791.z) * vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
    let x_2799 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2798.x, x_2798.y, x_2798.z, x_2799.w);
    let x_2801 : vec3<f32> = u_xlat5;
    let x_2803 : vec4<f32> = u_xlat11;
    let x_2805 : vec3<f32> = (vec3<f32>(x_2801.x, x_2801.x, x_2801.x) * vec3<f32>(x_2803.x, x_2803.y, x_2803.z));
    let x_2806 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2806.w);
    let x_2808 : vec3<f32> = u_xlat22;
    let x_2809 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_2808, vec3<f32>(x_2809.x, x_2809.y, x_2809.z));
    let x_2812 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2812, 0.0f, 1.0f);
    let x_2814 : f32 = u_xlat67;
    let x_2815 : f32 = u_xlat69;
    u_xlat67 = (x_2814 * x_2815);
    let x_2817 : f32 = u_xlat67;
    let x_2819 : vec4<f32> = u_xlat11;
    let x_2821 : vec3<f32> = (vec3<f32>(x_2817, x_2817, x_2817) * vec3<f32>(x_2819.x, x_2819.y, x_2819.z));
    let x_2822 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2822.w);
    let x_2824 : vec4<f32> = u_xlat9;
    let x_2826 : vec2<f32> = u_xlat49;
    let x_2829 : vec3<f32> = u_xlat3;
    let x_2830 : vec3<f32> = ((vec3<f32>(x_2824.x, x_2824.y, x_2824.z) * vec3<f32>(x_2826.x, x_2826.x, x_2826.x)) + x_2829);
    let x_2831 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2831.w);
    let x_2833 : vec4<f32> = u_xlat9;
    let x_2835 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2833.x, x_2833.y, x_2833.z), vec3<f32>(x_2835.x, x_2835.y, x_2835.z));
    let x_2838 : f32 = u_xlat67;
    u_xlat67 = max(x_2838, 1.17549435e-37f);
    let x_2840 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_2840);
    let x_2842 : f32 = u_xlat67;
    let x_2844 : vec4<f32> = u_xlat9;
    let x_2846 : vec3<f32> = (vec3<f32>(x_2842, x_2842, x_2842) * vec3<f32>(x_2844.x, x_2844.y, x_2844.z));
    let x_2847 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2847.w);
    let x_2849 : vec3<f32> = u_xlat22;
    let x_2850 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_2849, vec3<f32>(x_2850.x, x_2850.y, x_2850.z));
    let x_2853 : f32 = u_xlat67;
    u_xlat67 = clamp(x_2853, 0.0f, 1.0f);
    let x_2855 : vec4<f32> = u_xlat10;
    let x_2857 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2855.x, x_2855.y, x_2855.z), vec3<f32>(x_2857.x, x_2857.y, x_2857.z));
    let x_2860 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2860, 0.0f, 1.0f);
    let x_2862 : f32 = u_xlat67;
    let x_2863 : f32 = u_xlat67;
    u_xlat67 = (x_2862 * x_2863);
    let x_2865 : f32 = u_xlat67;
    let x_2867 : f32 = u_xlat0.x;
    u_xlat67 = ((x_2865 * x_2867) + 1.000010014f);
    let x_2870 : f32 = u_xlat69;
    let x_2871 : f32 = u_xlat69;
    u_xlat69 = (x_2870 * x_2871);
    let x_2873 : f32 = u_xlat67;
    let x_2874 : f32 = u_xlat67;
    u_xlat67 = (x_2873 * x_2874);
    let x_2876 : f32 = u_xlat69;
    u_xlat69 = max(x_2876, 0.100000001f);
    let x_2878 : f32 = u_xlat67;
    let x_2879 : f32 = u_xlat69;
    u_xlat67 = (x_2878 * x_2879);
    let x_2881 : f32 = u_xlat66;
    let x_2882 : f32 = u_xlat67;
    u_xlat67 = (x_2881 * x_2882);
    let x_2885 : f32 = u_xlat1.x;
    let x_2886 : f32 = u_xlat67;
    u_xlat67 = (x_2885 / x_2886);
    let x_2888 : vec3<f32> = u_xlat2;
    let x_2889 : f32 = u_xlat67;
    let x_2892 : vec3<f32> = u_xlat6;
    let x_2893 : vec3<f32> = ((x_2888 * vec3<f32>(x_2889, x_2889, x_2889)) + x_2892);
    let x_2894 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2893.x, x_2893.y, x_2893.z, x_2894.w);
    let x_2896 : vec4<f32> = u_xlat9;
    let x_2898 : vec4<f32> = u_xlat11;
    let x_2901 : vec4<f32> = u_xlat8;
    let x_2903 : vec3<f32> = ((vec3<f32>(x_2896.x, x_2896.y, x_2896.z) * vec3<f32>(x_2898.x, x_2898.y, x_2898.z)) + vec3<f32>(x_2901.x, x_2901.y, x_2901.z));
    let x_2904 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2903.x, x_2903.y, x_2903.z, x_2904.w);

    continuing {
      let x_2906 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2906 + bitcast<u32>(1i));
    }
  }
  let x_2908 : vec3<f32> = u_xlat4;
  let x_2909 : f32 = u_xlat63;
  let x_2912 : vec3<f32> = u_xlat26;
  let x_2913 : vec3<f32> = ((x_2908 * vec3<f32>(x_2909, x_2909, x_2909)) + x_2912);
  let x_2914 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2913.x, x_2914.y, x_2913.y, x_2913.z);
  let x_2916 : vec4<f32> = u_xlat8;
  let x_2918 : vec4<f32> = u_xlat0;
  let x_2920 : vec3<f32> = (vec3<f32>(x_2916.x, x_2916.y, x_2916.z) + vec3<f32>(x_2918.x, x_2918.z, x_2918.w));
  let x_2921 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2920.x, x_2921.y, x_2920.y, x_2920.z);
  let x_2924 : f32 = u_xlat21.x;
  let x_2926 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2924 * -(x_2926));
  let x_2931 : f32 = u_xlat21.x;
  u_xlat21.x = exp2(x_2931);
  let x_2934 : vec4<f32> = u_xlat0;
  let x_2938 : vec4<f32> = x_44.unity_FogColor;
  let x_2941 : vec3<f32> = (vec3<f32>(x_2934.x, x_2934.z, x_2934.w) + -(vec3<f32>(x_2938.x, x_2938.y, x_2938.z)));
  let x_2942 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2941.x, x_2942.y, x_2941.y, x_2941.z);
  let x_2946 : vec2<f32> = u_xlat21;
  let x_2948 : vec4<f32> = u_xlat0;
  let x_2952 : vec4<f32> = x_44.unity_FogColor;
  let x_2954 : vec3<f32> = ((vec3<f32>(x_2946.x, x_2946.x, x_2946.x) * vec3<f32>(x_2948.x, x_2948.z, x_2948.w)) + vec3<f32>(x_2952.x, x_2952.y, x_2952.z));
  let x_2955 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2954.x, x_2954.y, x_2954.z, x_2955.w);
  let x_2960 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_2962 : f32 = x_267.unity_RenderingLayer.x;
  u_xlatu0 = (x_2960 & bitcast<u32>(x_2962));
  let x_2965 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2965);
  let x_2970 : f32 = u_xlat0.x;
  let x_2972 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2970 * x_2972);
  let x_2977 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2977, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_2982 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2982.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

