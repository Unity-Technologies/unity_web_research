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

@group(0) @binding(5) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(7) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_289 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_423 : MainLightShadows;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2177 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2648 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2775 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlatb22 : vec3<bool>;
  var u_xlat22 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat42 : f32;
  var x_410 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatu21 : u32;
  var u_xlati21 : i32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlat63 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : vec2<bool>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat27 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat70 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb25 : vec2<bool>;
  var u_xlatb46 : bool;
  var x_2129 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat46 : f32;
  var x_2259 : f32;
  var x_2270 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu67 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_3067 : f32;
  var x_3080 : f32;
  var x_3132 : f32;
  var x_3143 : vec3<f32>;
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
  let x_100 : vec3<f32> = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat3;
  let x_105 : vec4<f32> = u_xlat3;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) + vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat2;
  let x_113 : vec3<f32> = (-(x_111) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat3;
  let x_119 : vec4<f32> = u_xlat4;
  let x_122 : vec3<f32> = ((-(vec3<f32>(x_116.x, x_116.y, x_116.z)) * vec3<f32>(x_119.x, x_119.y, x_119.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat0;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_125.x, x_125.y, x_125.z) * x_127);
  let x_129 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_129 + x_130);
  let x_138 : vec4<f32> = u_xlat0;
  let x_140 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_138.x, x_138.y, x_138.z, x_138.x));
  let x_142 : vec3<bool> = vec3<bool>(x_140.x, x_140.y, x_140.z);
  let x_143 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_148 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_148);
  let x_153 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_153);
  let x_157 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_157);
  let x_161 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_161);
  let x_165 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_165);
  let x_169 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_169);
  let x_172 : vec4<f32> = u_xlat3;
  let x_174 : vec4<f32> = u_xlat4;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec3<f32> = u_xlat2;
  let x_180 : vec4<f32> = u_xlat5;
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_179 * vec3<f32>(x_180.x, x_180.y, x_180.z)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_186.x, x_186.y, x_186.z)) + x_189);
  let x_191 : f32 = u_xlat43;
  let x_193 : vec3<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_191, x_191, x_191) * x_193) + vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = (x_199 + -0.150000006f);
  let x_204 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_204);
  let x_208 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_208) + 1.0f);
  let x_212 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_212.x, x_212.x, x_212.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_217);
  let x_223 : vec4<f32> = vs_INTERP3;
  let x_226 : f32 = x_44.x_GlobalMipBias.x;
  let x_227 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_223.x, x_223.y), x_226);
  let x_228 : vec3<f32> = vec3<f32>(x_227.x, x_227.y, x_227.w);
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : f32 = u_xlat3.x;
  let x_234 : f32 = u_xlat3.z;
  u_xlat3.x = (x_232 * x_234);
  let x_239 : vec4<f32> = u_xlat3;
  u_xlat21 = ((vec2<f32>(x_239.x, x_239.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_247 : vec2<f32> = u_xlat21;
  let x_248 : vec2<f32> = u_xlat21;
  u_xlat43 = dot(x_247, x_248);
  let x_250 : f32 = u_xlat43;
  u_xlat43 = min(x_250, 1.0f);
  let x_252 : f32 = u_xlat43;
  u_xlat43 = (-(x_252) + 1.0f);
  let x_255 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_255);
  let x_257 : f32 = u_xlat43;
  u_xlat43 = max(x_257, 1.00000002e-16f);
  let x_261 : f32 = u_xlat1.x;
  let x_263 : f32 = u_xlat0.x;
  u_xlat0.x = (x_261 + x_263);
  let x_267 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_267, 0.0f, 1.0f);
  let x_271 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_271, 0.0f);
  let x_275 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_275, 0.850000024f);
  let x_283 : f32 = vs_INTERP2.w;
  u_xlatb22.x = (0.0f < x_283);
  let x_291 : f32 = x_289.unity_WorldTransformParams.w;
  u_xlatb22.z = (x_291 >= 0.0f);
  let x_296 : bool = u_xlatb22.x;
  u_xlat22.x = select(-1.0f, 1.0f, x_296);
  let x_300 : bool = u_xlatb22.z;
  u_xlat22.z = select(-1.0f, 1.0f, x_300);
  let x_304 : f32 = u_xlat22.z;
  let x_306 : f32 = u_xlat22.x;
  u_xlat22.x = (x_304 * x_306);
  let x_311 : vec3<f32> = vs_INTERP1;
  let x_313 : vec4<f32> = vs_INTERP2;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.z, x_311.x, x_311.y) * vec3<f32>(x_313.y, x_313.z, x_313.x));
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec3<f32> = vs_INTERP1;
  let x_320 : vec4<f32> = vs_INTERP2;
  let x_323 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = ((vec3<f32>(x_318.y, x_318.z, x_318.x) * vec3<f32>(x_320.z, x_320.x, x_320.y)) + -(vec3<f32>(x_323.x, x_323.y, x_323.z)));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec3<f32> = u_xlat22;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.x, x_329.x) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec2<f32> = u_xlat21;
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.y, x_336.y, x_336.y) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec2<f32> = u_xlat21;
  let x_345 : vec4<f32> = vs_INTERP2;
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.x, x_343.x) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : f32 = u_xlat43;
  let x_355 : vec3<f32> = vs_INTERP1;
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_353, x_353, x_353) * x_355) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec3<f32> = u_xlat22;
  let x_361 : vec3<f32> = u_xlat22;
  u_xlat21.x = dot(x_360, x_361);
  let x_365 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_365);
  let x_368 : vec2<f32> = u_xlat21;
  let x_370 : vec3<f32> = u_xlat22;
  let x_371 : vec3<f32> = (vec3<f32>(x_368.x, x_368.x, x_368.x) * x_370);
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_377 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_377 == 0.0f);
  let x_380 : vec3<f32> = vs_INTERP0;
  let x_385 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_380) + x_385);
  let x_388 : vec3<f32> = u_xlat22;
  let x_389 : vec3<f32> = u_xlat22;
  u_xlat42 = dot(x_388, x_389);
  let x_391 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_391);
  let x_393 : f32 = u_xlat42;
  let x_395 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_393, x_393, x_393) * x_395);
  let x_400 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_400;
  let x_403 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_403;
  let x_407 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_407;
  let x_409 : bool = u_xlatb21;
  if (x_409) {
    let x_413 : vec3<f32> = u_xlat22;
    x_410 = x_413;
  } else {
    let x_415 : vec4<f32> = u_xlat4;
    x_410 = vec3<f32>(x_415.x, x_415.y, x_415.z);
  }
  let x_417 : vec3<f32> = x_410;
  u_xlat22 = x_417;
  let x_418 : vec3<f32> = vs_INTERP0;
  let x_425 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres0;
  let x_428 : vec3<f32> = (x_418 + -(vec3<f32>(x_425.x, x_425.y, x_425.z)));
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec3<f32> = vs_INTERP0;
  let x_433 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres1;
  let x_436 : vec3<f32> = (x_431 + -(vec3<f32>(x_433.x, x_433.y, x_433.z)));
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : vec3<f32> = vs_INTERP0;
  let x_442 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres2;
  let x_445 : vec3<f32> = (x_440 + -(vec3<f32>(x_442.x, x_442.y, x_442.z)));
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec3<f32> = vs_INTERP0;
  let x_451 : vec4<f32> = x_423.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_449 + -(vec3<f32>(x_451.x, x_451.y, x_451.z)));
  let x_455 : vec4<f32> = u_xlat4;
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_461 : vec4<f32> = u_xlat5;
  let x_463 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_467 : vec4<f32> = u_xlat6;
  let x_469 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_473 : vec3<f32> = u_xlat7;
  let x_474 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_473, x_474);
  let x_477 : vec4<f32> = u_xlat4;
  let x_480 : vec4<f32> = x_423.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_477 < x_480);
  let x_483 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_483);
  let x_487 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_487);
  let x_491 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_491);
  let x_495 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_495);
  let x_499 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_499);
  let x_504 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_504);
  let x_508 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_508);
  let x_511 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat5;
  let x_515 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) + vec3<f32>(x_513.y, x_513.z, x_513.w));
  let x_516 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat4;
  let x_521 : vec3<f32> = max(vec3<f32>(x_518.x, x_518.y, x_518.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_522 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_522.x, x_521.x, x_521.y, x_521.z);
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat21.x = dot(x_524, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_531 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_531) + 4.0f);
  let x_538 : f32 = u_xlat21.x;
  u_xlatu21 = u32(x_538);
  let x_542 : u32 = u_xlatu21;
  u_xlati21 = (bitcast<i32>(x_542) << bitcast<u32>(2i));
  let x_545 : vec3<f32> = vs_INTERP0;
  let x_547 : i32 = u_xlati21;
  let x_550 : i32 = u_xlati21;
  let x_554 : vec4<f32> = x_423.x_MainLightWorldToShadow[((x_547 + 1i) / 4i)][((x_550 + 1i) % 4i)];
  let x_556 : vec3<f32> = (vec3<f32>(x_545.y, x_545.y, x_545.y) * vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : i32 = u_xlati21;
  let x_561 : i32 = u_xlati21;
  let x_564 : vec4<f32> = x_423.x_MainLightWorldToShadow[(x_559 / 4i)][(x_561 % 4i)];
  let x_566 : vec3<f32> = vs_INTERP0;
  let x_569 : vec4<f32> = u_xlat4;
  let x_571 : vec3<f32> = ((vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_566.x, x_566.x, x_566.x)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : i32 = u_xlati21;
  let x_577 : i32 = u_xlati21;
  let x_581 : vec4<f32> = x_423.x_MainLightWorldToShadow[((x_574 + 2i) / 4i)][((x_577 + 2i) % 4i)];
  let x_583 : vec3<f32> = vs_INTERP0;
  let x_586 : vec4<f32> = u_xlat4;
  let x_588 : vec3<f32> = ((vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(x_583.z, x_583.z, x_583.z)) + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat4;
  let x_593 : i32 = u_xlati21;
  let x_596 : i32 = u_xlati21;
  let x_600 : vec4<f32> = x_423.x_MainLightWorldToShadow[((x_593 + 3i) / 4i)][((x_596 + 3i) % 4i)];
  let x_602 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(x_600.x, x_600.y, x_600.z));
  let x_603 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_606 : f32 = vs_INTERP0.y;
  let x_608 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat21.x = (x_606 * x_608);
  let x_612 : f32 = x_44.unity_MatrixV[0i].z;
  let x_614 : f32 = vs_INTERP0.x;
  let x_617 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_612 * x_614) + x_617);
  let x_621 : f32 = x_44.unity_MatrixV[2i].z;
  let x_623 : f32 = vs_INTERP0.z;
  let x_626 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_621 * x_623) + x_626);
  let x_630 : f32 = u_xlat21.x;
  let x_632 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat21.x = (x_630 + x_632);
  let x_636 : f32 = u_xlat21.x;
  let x_640 : f32 = x_44.x_ProjectionParams.y;
  u_xlat21.x = (-(x_636) + -(x_640));
  let x_645 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_645, 0.0f);
  let x_649 : f32 = u_xlat21.x;
  let x_652 : f32 = x_44.unity_FogParams.x;
  u_xlat21.x = (x_649 * x_652);
  u_xlat3.w = 1.0f;
  let x_658 : vec4<f32> = x_289.unity_SHAr;
  let x_659 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_658, x_659);
  let x_664 : vec4<f32> = x_289.unity_SHAg;
  let x_665 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_664, x_665);
  let x_670 : vec4<f32> = x_289.unity_SHAb;
  let x_671 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_670, x_671);
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_674.y, x_674.z, x_674.z, x_674.x) * vec4<f32>(x_676.x, x_676.y, x_676.z, x_676.z));
  let x_681 : vec4<f32> = x_289.unity_SHBr;
  let x_682 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_681, x_682);
  let x_687 : vec4<f32> = x_289.unity_SHBg;
  let x_688 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_687, x_688);
  let x_693 : vec4<f32> = x_289.unity_SHBb;
  let x_694 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_693, x_694);
  let x_698 : f32 = u_xlat3.y;
  let x_700 : f32 = u_xlat3.y;
  u_xlat42 = (x_698 * x_700);
  let x_703 : f32 = u_xlat3.x;
  let x_705 : f32 = u_xlat3.x;
  let x_707 : f32 = u_xlat42;
  u_xlat42 = ((x_703 * x_705) + -(x_707));
  let x_712 : vec4<f32> = x_289.unity_SHC;
  let x_714 : f32 = u_xlat42;
  let x_717 : vec3<f32> = u_xlat7;
  let x_718 : vec3<f32> = ((vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_714, x_714, x_714)) + x_717);
  let x_719 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat5;
  let x_723 : vec4<f32> = u_xlat6;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat5;
  let x_730 : vec3<f32> = max(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_731 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_735 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
  let x_740 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_736.x, x_736.y));
  let x_741 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat6;
  let x_745 : vec4<f32> = hlslcc_FragCoord;
  let x_747 : vec2<f32> = (vec2<f32>(x_743.x, x_743.y) * vec2<f32>(x_745.x, x_745.y));
  let x_748 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
  let x_751 : f32 = u_xlat6.y;
  let x_754 : f32 = x_44.x_ScaleBiasRt.x;
  let x_757 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_751 * x_754) + x_757);
  let x_759 : f32 = u_xlat42;
  u_xlat6.z = (-(x_759) + 1.0f);
  let x_764 : f32 = u_xlat0.x;
  u_xlat42 = ((-(x_764) * 0.959999979f) + 0.959999979f);
  let x_770 : f32 = u_xlat42;
  u_xlat65 = (-(x_770) + 1.0f);
  let x_773 : f32 = u_xlat42;
  let x_775 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_773, x_773, x_773) * x_775);
  let x_777 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_777 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_781 : vec4<f32> = u_xlat0;
  let x_783 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_781.x, x_781.x, x_781.x) * x_783) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_789 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_789) + 1.0f);
  let x_794 : f32 = u_xlat0.x;
  let x_796 : f32 = u_xlat0.x;
  u_xlat42 = (x_794 * x_796);
  let x_799 : f32 = u_xlat42;
  let x_800 : f32 = u_xlat42;
  u_xlat66 = (x_799 * x_800);
  let x_803 : f32 = u_xlat1.x;
  let x_804 : f32 = u_xlat65;
  u_xlat1.x = (x_803 + x_804);
  let x_808 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_808, 1.0f);
  let x_811 : f32 = u_xlat42;
  u_xlat65 = ((x_811 * 4.0f) + 2.0f);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : f32 = x_44.x_GlobalMipBias.x;
  let x_824 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_820.x, x_820.z), x_823);
  u_xlat67 = x_824.x;
  let x_827 : f32 = u_xlat67;
  u_xlat68 = (x_827 + -1.0f);
  let x_830 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_831 : f32 = u_xlat68;
  u_xlat68 = ((x_830 * x_831) + 1.0f);
  let x_836 : f32 = u_xlat0.w;
  let x_837 : f32 = u_xlat67;
  u_xlat63 = min(x_836, x_837);
  let x_841 : f32 = x_423.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_841);
  let x_843 : bool = u_xlatb67;
  if (x_843) {
    let x_847 : f32 = x_423.x_MainLightShadowParams.y;
    u_xlatb67 = (x_847 == 1.0f);
    let x_849 : bool = u_xlatb67;
    if (x_849) {
      let x_852 : vec4<f32> = u_xlat4;
      let x_856 : vec4<f32> = x_423.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_852.x, x_852.y, x_852.x, x_852.y) + x_856);
      let x_859 : vec4<f32> = u_xlat6;
      let x_860 : vec2<f32> = vec2<f32>(x_859.x, x_859.y);
      let x_862 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_860.x, x_860.y, x_862);
      let x_875 : vec3<f32> = txVec0;
      let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_875.xy, x_875.z);
      u_xlat8.x = x_877;
      let x_880 : vec4<f32> = u_xlat6;
      let x_881 : vec2<f32> = vec2<f32>(x_880.z, x_880.w);
      let x_883 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_881.x, x_881.y, x_883);
      let x_890 : vec3<f32> = txVec1;
      let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
      u_xlat8.y = x_892;
      let x_894 : vec4<f32> = u_xlat4;
      let x_898 : vec4<f32> = x_423.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_894.x, x_894.y, x_894.x, x_894.y) + x_898);
      let x_901 : vec4<f32> = u_xlat6;
      let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
      let x_904 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_902.x, x_902.y, x_904);
      let x_911 : vec3<f32> = txVec2;
      let x_913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_911.xy, x_911.z);
      u_xlat8.z = x_913;
      let x_916 : vec4<f32> = u_xlat6;
      let x_917 : vec2<f32> = vec2<f32>(x_916.z, x_916.w);
      let x_919 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_917.x, x_917.y, x_919);
      let x_926 : vec3<f32> = txVec3;
      let x_928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_926.xy, x_926.z);
      u_xlat8.w = x_928;
      let x_930 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_930, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_939 : f32 = x_423.x_MainLightShadowParams.y;
      u_xlatb6.x = (x_939 == 2.0f);
      let x_943 : bool = u_xlatb6.x;
      if (x_943) {
        let x_946 : vec4<f32> = u_xlat4;
        let x_949 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_953 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.y) * vec2<f32>(x_949.z, x_949.w)) + vec2<f32>(0.5f, 0.5f));
        let x_954 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat6;
        let x_958 : vec2<f32> = floor(vec2<f32>(x_956.x, x_956.y));
        let x_959 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_962 : vec4<f32> = u_xlat4;
        let x_965 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_965.z, x_965.w)) + -(vec2<f32>(x_968.x, x_968.y)));
        let x_972 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_972.x, x_972.x, x_972.y, x_972.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_977 : vec4<f32> = u_xlat8;
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_977.x, x_977.x, x_977.z, x_977.z) * vec4<f32>(x_979.x, x_979.x, x_979.z, x_979.z));
        let x_982 : vec4<f32> = u_xlat9;
        let x_986 : vec2<f32> = (vec2<f32>(x_982.y, x_982.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_987 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_986.x, x_987.y, x_986.y, x_987.w);
        let x_989 : vec4<f32> = u_xlat9;
        let x_992 : vec2<f32> = u_xlat48;
        let x_994 : vec2<f32> = ((vec2<f32>(x_989.x, x_989.z) * vec2<f32>(0.5f, 0.5f)) + -(x_992));
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_998) + vec2<f32>(1.0f, 1.0f));
        let x_1002 : vec2<f32> = u_xlat48;
        let x_1004 : vec2<f32> = min(x_1002, vec2<f32>(0.0f, 0.0f));
        let x_1005 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
        let x_1007 : vec4<f32> = u_xlat10;
        let x_1010 : vec4<f32> = u_xlat10;
        let x_1013 : vec2<f32> = u_xlat51;
        let x_1014 : vec2<f32> = ((-(vec2<f32>(x_1007.x, x_1007.y)) * vec2<f32>(x_1010.x, x_1010.y)) + x_1013);
        let x_1015 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1017, vec2<f32>(0.0f, 0.0f));
        let x_1019 : vec2<f32> = u_xlat48;
        let x_1021 : vec2<f32> = u_xlat48;
        let x_1023 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1019) * x_1021) + vec2<f32>(x_1023.y, x_1023.w));
        let x_1026 : vec4<f32> = u_xlat10;
        let x_1028 : vec2<f32> = (vec2<f32>(x_1026.x, x_1026.y) + vec2<f32>(1.0f, 1.0f));
        let x_1029 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
        let x_1031 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1031 + vec2<f32>(1.0f, 1.0f));
        let x_1034 : vec4<f32> = u_xlat9;
        let x_1038 : vec2<f32> = (vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1039 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
        let x_1041 : vec2<f32> = u_xlat51;
        let x_1042 : vec2<f32> = (x_1041 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1043 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat10;
        let x_1047 : vec2<f32> = (vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1048 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
        let x_1051 : vec2<f32> = u_xlat48;
        let x_1052 : vec2<f32> = (x_1051 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1053 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1052.x, x_1052.y, x_1053.z, x_1053.w);
        let x_1055 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1055.y, x_1055.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1059 : f32 = u_xlat10.x;
        u_xlat11.z = x_1059;
        let x_1062 : f32 = u_xlat48.x;
        u_xlat11.w = x_1062;
        let x_1065 : f32 = u_xlat12.x;
        u_xlat9.z = x_1065;
        let x_1068 : f32 = u_xlat8.x;
        u_xlat9.w = x_1068;
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1073 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1071.z, x_1071.w, x_1071.x, x_1071.z) + vec4<f32>(x_1073.z, x_1073.w, x_1073.x, x_1073.z));
        let x_1077 : f32 = u_xlat11.y;
        u_xlat10.z = x_1077;
        let x_1080 : f32 = u_xlat48.y;
        u_xlat10.w = x_1080;
        let x_1083 : f32 = u_xlat9.y;
        u_xlat12.z = x_1083;
        let x_1086 : f32 = u_xlat8.z;
        u_xlat12.w = x_1086;
        let x_1088 : vec4<f32> = u_xlat10;
        let x_1090 : vec4<f32> = u_xlat12;
        let x_1092 : vec3<f32> = (vec3<f32>(x_1088.z, x_1088.y, x_1088.w) + vec3<f32>(x_1090.z, x_1090.y, x_1090.w));
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
        let x_1095 : vec4<f32> = u_xlat9;
        let x_1097 : vec4<f32> = u_xlat13;
        let x_1099 : vec3<f32> = (vec3<f32>(x_1095.x, x_1095.z, x_1095.w) / vec3<f32>(x_1097.z, x_1097.w, x_1097.y));
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
        let x_1102 : vec4<f32> = u_xlat9;
        let x_1108 : vec3<f32> = (vec3<f32>(x_1102.x, x_1102.y, x_1102.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
        let x_1111 : vec4<f32> = u_xlat12;
        let x_1113 : vec4<f32> = u_xlat8;
        let x_1115 : vec3<f32> = (vec3<f32>(x_1111.z, x_1111.y, x_1111.w) / vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
        let x_1116 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
        let x_1118 : vec4<f32> = u_xlat10;
        let x_1120 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
        let x_1123 : vec4<f32> = u_xlat9;
        let x_1126 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1128 : vec3<f32> = (vec3<f32>(x_1123.y, x_1123.x, x_1123.z) * vec3<f32>(x_1126.x, x_1126.x, x_1126.x));
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat10;
        let x_1134 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1136 : vec3<f32> = (vec3<f32>(x_1131.x, x_1131.y, x_1131.z) * vec3<f32>(x_1134.y, x_1134.y, x_1134.y));
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
        let x_1140 : f32 = u_xlat10.x;
        u_xlat9.w = x_1140;
        let x_1142 : vec4<f32> = u_xlat6;
        let x_1145 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1148 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1142.x, x_1142.y, x_1142.x, x_1142.y) * vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y)) + vec4<f32>(x_1148.y, x_1148.w, x_1148.x, x_1148.w));
        let x_1151 : vec4<f32> = u_xlat6;
        let x_1154 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(x_1154.x, x_1154.y)) + vec2<f32>(x_1157.z, x_1157.w));
        let x_1161 : f32 = u_xlat9.y;
        u_xlat10.w = x_1161;
        let x_1163 : vec4<f32> = u_xlat10;
        let x_1164 : vec2<f32> = vec2<f32>(x_1163.y, x_1163.z);
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1164.x, x_1165.z, x_1164.y);
        let x_1167 : vec4<f32> = u_xlat6;
        let x_1170 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y) * vec4<f32>(x_1170.x, x_1170.y, x_1170.x, x_1170.y)) + vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat6;
        let x_1179 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1182 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y) * vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y)) + vec4<f32>(x_1182.w, x_1182.y, x_1182.w, x_1182.z));
        let x_1185 : vec4<f32> = u_xlat6;
        let x_1188 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1191 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y) * vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y)) + vec4<f32>(x_1191.x, x_1191.w, x_1191.z, x_1191.w));
        let x_1195 : vec4<f32> = u_xlat8;
        let x_1197 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.y) * vec4<f32>(x_1197.z, x_1197.w, x_1197.y, x_1197.z));
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1203 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1201.y, x_1201.y, x_1201.z, x_1201.z) * x_1203);
        let x_1206 : f32 = u_xlat8.z;
        let x_1208 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1206 * x_1208);
        let x_1212 : vec4<f32> = u_xlat11;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.x, x_1212.y);
        let x_1215 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1223 : vec3<f32> = txVec4;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1223.xy, x_1223.z);
        u_xlat27 = x_1225;
        let x_1227 : vec4<f32> = u_xlat11;
        let x_1228 : vec2<f32> = vec2<f32>(x_1227.z, x_1227.w);
        let x_1230 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1228.x, x_1228.y, x_1230);
        let x_1238 : vec3<f32> = txVec5;
        let x_1240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1238.xy, x_1238.z);
        u_xlat70 = x_1240;
        let x_1241 : f32 = u_xlat70;
        let x_1243 : f32 = u_xlat14.y;
        u_xlat70 = (x_1241 * x_1243);
        let x_1246 : f32 = u_xlat14.x;
        let x_1247 : f32 = u_xlat27;
        let x_1249 : f32 = u_xlat70;
        u_xlat27 = ((x_1246 * x_1247) + x_1249);
        let x_1252 : vec2<f32> = u_xlat48;
        let x_1254 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1252.x, x_1252.y, x_1254);
        let x_1261 : vec3<f32> = txVec6;
        let x_1263 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1261.xy, x_1261.z);
        u_xlat48.x = x_1263;
        let x_1266 : f32 = u_xlat14.z;
        let x_1268 : f32 = u_xlat48.x;
        let x_1270 : f32 = u_xlat27;
        u_xlat27 = ((x_1266 * x_1268) + x_1270);
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.x, x_1273.y);
        let x_1276 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec7;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1283.xy, x_1283.z);
        u_xlat48.x = x_1285;
        let x_1288 : f32 = u_xlat14.w;
        let x_1290 : f32 = u_xlat48.x;
        let x_1292 : f32 = u_xlat27;
        u_xlat27 = ((x_1288 * x_1290) + x_1292);
        let x_1295 : vec4<f32> = u_xlat12;
        let x_1296 : vec2<f32> = vec2<f32>(x_1295.x, x_1295.y);
        let x_1298 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec8;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1305.xy, x_1305.z);
        u_xlat48.x = x_1307;
        let x_1310 : f32 = u_xlat15.x;
        let x_1312 : f32 = u_xlat48.x;
        let x_1314 : f32 = u_xlat27;
        u_xlat27 = ((x_1310 * x_1312) + x_1314);
        let x_1317 : vec4<f32> = u_xlat12;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.z, x_1317.w);
        let x_1320 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec9;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1327.xy, x_1327.z);
        u_xlat48.x = x_1329;
        let x_1332 : f32 = u_xlat15.y;
        let x_1334 : f32 = u_xlat48.x;
        let x_1336 : f32 = u_xlat27;
        u_xlat27 = ((x_1332 * x_1334) + x_1336);
        let x_1339 : vec4<f32> = u_xlat10;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.z, x_1339.w);
        let x_1342 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec10;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1349.xy, x_1349.z);
        u_xlat48.x = x_1351;
        let x_1354 : f32 = u_xlat15.z;
        let x_1356 : f32 = u_xlat48.x;
        let x_1358 : f32 = u_xlat27;
        u_xlat27 = ((x_1354 * x_1356) + x_1358);
        let x_1361 : vec4<f32> = u_xlat9;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.x, x_1361.y);
        let x_1364 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec11;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1371.xy, x_1371.z);
        u_xlat48.x = x_1373;
        let x_1376 : f32 = u_xlat15.w;
        let x_1378 : f32 = u_xlat48.x;
        let x_1380 : f32 = u_xlat27;
        u_xlat27 = ((x_1376 * x_1378) + x_1380);
        let x_1383 : vec4<f32> = u_xlat9;
        let x_1384 : vec2<f32> = vec2<f32>(x_1383.z, x_1383.w);
        let x_1386 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec12;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1393.xy, x_1393.z);
        u_xlat48.x = x_1395;
        let x_1398 : f32 = u_xlat6.x;
        let x_1400 : f32 = u_xlat48.x;
        let x_1402 : f32 = u_xlat27;
        u_xlat67 = ((x_1398 * x_1400) + x_1402);
      } else {
        let x_1405 : vec4<f32> = u_xlat4;
        let x_1408 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1411 : vec2<f32> = ((vec2<f32>(x_1405.x, x_1405.y) * vec2<f32>(x_1408.z, x_1408.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1412 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1411.x, x_1411.y, x_1412.z, x_1412.w);
        let x_1414 : vec4<f32> = u_xlat6;
        let x_1416 : vec2<f32> = floor(vec2<f32>(x_1414.x, x_1414.y));
        let x_1417 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
        let x_1419 : vec4<f32> = u_xlat4;
        let x_1422 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1425 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1419.x, x_1419.y) * vec2<f32>(x_1422.z, x_1422.w)) + -(vec2<f32>(x_1425.x, x_1425.y)));
        let x_1429 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1429.x, x_1429.x, x_1429.y, x_1429.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1432 : vec4<f32> = u_xlat8;
        let x_1434 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1432.x, x_1432.x, x_1432.z, x_1432.z) * vec4<f32>(x_1434.x, x_1434.x, x_1434.z, x_1434.z));
        let x_1437 : vec4<f32> = u_xlat9;
        let x_1441 : vec2<f32> = (vec2<f32>(x_1437.y, x_1437.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1442 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1442.x, x_1441.x, x_1442.z, x_1441.y);
        let x_1444 : vec4<f32> = u_xlat9;
        let x_1447 : vec2<f32> = u_xlat48;
        let x_1449 : vec2<f32> = ((vec2<f32>(x_1444.x, x_1444.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1447));
        let x_1450 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1449.x, x_1450.y, x_1449.y, x_1450.w);
        let x_1452 : vec2<f32> = u_xlat48;
        let x_1454 : vec2<f32> = (-(x_1452) + vec2<f32>(1.0f, 1.0f));
        let x_1455 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1454.x, x_1454.y, x_1455.z, x_1455.w);
        let x_1457 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1457, vec2<f32>(0.0f, 0.0f));
        let x_1459 : vec2<f32> = u_xlat51;
        let x_1461 : vec2<f32> = u_xlat51;
        let x_1463 : vec4<f32> = u_xlat9;
        let x_1465 : vec2<f32> = ((-(x_1459) * x_1461) + vec2<f32>(x_1463.x, x_1463.y));
        let x_1466 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1465.x, x_1465.y, x_1466.z, x_1466.w);
        let x_1468 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1468, vec2<f32>(0.0f, 0.0f));
        let x_1471 : vec2<f32> = u_xlat51;
        let x_1473 : vec2<f32> = u_xlat51;
        let x_1475 : vec4<f32> = u_xlat8;
        let x_1477 : vec2<f32> = ((-(x_1471) * x_1473) + vec2<f32>(x_1475.y, x_1475.w));
        let x_1478 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1477.x, x_1478.y, x_1477.y);
        let x_1480 : vec4<f32> = u_xlat9;
        let x_1482 : vec2<f32> = (vec2<f32>(x_1480.x, x_1480.y) + vec2<f32>(2.0f, 2.0f));
        let x_1483 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1482.x, x_1482.y, x_1483.z, x_1483.w);
        let x_1485 : vec3<f32> = u_xlat29;
        let x_1487 : vec2<f32> = (vec2<f32>(x_1485.x, x_1485.z) + vec2<f32>(2.0f, 2.0f));
        let x_1488 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1488.x, x_1487.x, x_1488.z, x_1487.y);
        let x_1491 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1491 * 0.081632003f);
        let x_1495 : vec4<f32> = u_xlat8;
        let x_1498 : vec3<f32> = (vec3<f32>(x_1495.z, x_1495.x, x_1495.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1499 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
        let x_1501 : vec4<f32> = u_xlat9;
        let x_1504 : vec2<f32> = (vec2<f32>(x_1501.x, x_1501.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1505 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1504.x, x_1504.y, x_1505.z, x_1505.w);
        let x_1508 : f32 = u_xlat12.y;
        u_xlat11.x = x_1508;
        let x_1510 : vec2<f32> = u_xlat48;
        let x_1517 : vec2<f32> = ((vec2<f32>(x_1510.x, x_1510.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1518 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1518.x, x_1517.x, x_1518.z, x_1517.y);
        let x_1520 : vec2<f32> = u_xlat48;
        let x_1524 : vec2<f32> = ((vec2<f32>(x_1520.x, x_1520.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1525 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1524.x, x_1525.y, x_1524.y, x_1525.w);
        let x_1528 : f32 = u_xlat8.x;
        u_xlat9.y = x_1528;
        let x_1531 : f32 = u_xlat10.y;
        u_xlat9.w = x_1531;
        let x_1533 : vec4<f32> = u_xlat9;
        let x_1534 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1533 + x_1534);
        let x_1536 : vec2<f32> = u_xlat48;
        let x_1539 : vec2<f32> = ((vec2<f32>(x_1536.y, x_1536.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1540 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1540.x, x_1539.x, x_1540.z, x_1539.y);
        let x_1542 : vec2<f32> = u_xlat48;
        let x_1545 : vec2<f32> = ((vec2<f32>(x_1542.y, x_1542.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1546 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1545.x, x_1546.y, x_1545.y, x_1546.w);
        let x_1549 : f32 = u_xlat8.y;
        u_xlat10.y = x_1549;
        let x_1551 : vec4<f32> = u_xlat10;
        let x_1552 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1551 + x_1552);
        let x_1554 : vec4<f32> = u_xlat9;
        let x_1555 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1554 / x_1555);
        let x_1557 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1557 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1563 : vec4<f32> = u_xlat10;
        let x_1564 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1563 / x_1564);
        let x_1566 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1566 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1568 : vec4<f32> = u_xlat9;
        let x_1571 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1568.w, x_1568.x, x_1568.y, x_1568.z) * vec4<f32>(x_1571.x, x_1571.x, x_1571.x, x_1571.x));
        let x_1574 : vec4<f32> = u_xlat10;
        let x_1577 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1574.x, x_1574.w, x_1574.y, x_1574.z) * vec4<f32>(x_1577.y, x_1577.y, x_1577.y, x_1577.y));
        let x_1580 : vec4<f32> = u_xlat9;
        let x_1581 : vec3<f32> = vec3<f32>(x_1580.y, x_1580.z, x_1580.w);
        let x_1582 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1581.x, x_1582.y, x_1581.y, x_1581.z);
        let x_1585 : f32 = u_xlat10.x;
        u_xlat12.y = x_1585;
        let x_1587 : vec4<f32> = u_xlat6;
        let x_1590 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1593 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1587.x, x_1587.y, x_1587.x, x_1587.y) * vec4<f32>(x_1590.x, x_1590.y, x_1590.x, x_1590.y)) + vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1593.y));
        let x_1596 : vec4<f32> = u_xlat6;
        let x_1599 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1602 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1596.x, x_1596.y) * vec2<f32>(x_1599.x, x_1599.y)) + vec2<f32>(x_1602.w, x_1602.y));
        let x_1606 : f32 = u_xlat12.y;
        u_xlat9.y = x_1606;
        let x_1609 : f32 = u_xlat10.z;
        u_xlat12.y = x_1609;
        let x_1611 : vec4<f32> = u_xlat6;
        let x_1614 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1617 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1611.x, x_1611.y, x_1611.x, x_1611.y) * vec4<f32>(x_1614.x, x_1614.y, x_1614.x, x_1614.y)) + vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1617.y));
        let x_1620 : vec4<f32> = u_xlat6;
        let x_1623 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1626 : vec4<f32> = u_xlat12;
        let x_1628 : vec2<f32> = ((vec2<f32>(x_1620.x, x_1620.y) * vec2<f32>(x_1623.x, x_1623.y)) + vec2<f32>(x_1626.w, x_1626.y));
        let x_1629 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1628.x, x_1628.y, x_1629.z, x_1629.w);
        let x_1632 : f32 = u_xlat12.y;
        u_xlat9.z = x_1632;
        let x_1635 : vec4<f32> = u_xlat6;
        let x_1638 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1641 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1635.x, x_1635.y, x_1635.x, x_1635.y) * vec4<f32>(x_1638.x, x_1638.y, x_1638.x, x_1638.y)) + vec4<f32>(x_1641.x, x_1641.y, x_1641.x, x_1641.z));
        let x_1645 : f32 = u_xlat10.w;
        u_xlat12.y = x_1645;
        let x_1648 : vec4<f32> = u_xlat6;
        let x_1651 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1654 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1648.x, x_1648.y, x_1648.x, x_1648.y) * vec4<f32>(x_1651.x, x_1651.y, x_1651.x, x_1651.y)) + vec4<f32>(x_1654.x, x_1654.y, x_1654.z, x_1654.y));
        let x_1658 : vec4<f32> = u_xlat6;
        let x_1661 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1664 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1658.x, x_1658.y) * vec2<f32>(x_1661.x, x_1661.y)) + vec2<f32>(x_1664.w, x_1664.y));
        let x_1668 : f32 = u_xlat12.y;
        u_xlat9.w = x_1668;
        let x_1671 : vec4<f32> = u_xlat6;
        let x_1674 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1677 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1671.x, x_1671.y) * vec2<f32>(x_1674.x, x_1674.y)) + vec2<f32>(x_1677.x, x_1677.w));
        let x_1680 : vec4<f32> = u_xlat12;
        let x_1681 : vec3<f32> = vec3<f32>(x_1680.x, x_1680.z, x_1680.w);
        let x_1682 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1681.x, x_1682.y, x_1681.y, x_1681.z);
        let x_1684 : vec4<f32> = u_xlat6;
        let x_1687 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1690 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1684.x, x_1684.y, x_1684.x, x_1684.y) * vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.y)) + vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1690.y));
        let x_1694 : vec4<f32> = u_xlat6;
        let x_1697 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1700 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1697.x, x_1697.y)) + vec2<f32>(x_1700.w, x_1700.y));
        let x_1704 : f32 = u_xlat9.x;
        u_xlat10.x = x_1704;
        let x_1706 : vec4<f32> = u_xlat6;
        let x_1709 : vec4<f32> = x_423.x_MainLightShadowmapSize;
        let x_1712 : vec4<f32> = u_xlat10;
        let x_1714 : vec2<f32> = ((vec2<f32>(x_1706.x, x_1706.y) * vec2<f32>(x_1709.x, x_1709.y)) + vec2<f32>(x_1712.x, x_1712.y));
        let x_1715 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1714.x, x_1714.y, x_1715.z, x_1715.w);
        let x_1718 : vec4<f32> = u_xlat8;
        let x_1720 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1718.x, x_1718.x, x_1718.x, x_1718.x) * x_1720);
        let x_1723 : vec4<f32> = u_xlat8;
        let x_1725 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1723.y, x_1723.y, x_1723.y, x_1723.y) * x_1725);
        let x_1728 : vec4<f32> = u_xlat8;
        let x_1730 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1728.z, x_1728.z, x_1728.z, x_1728.z) * x_1730);
        let x_1732 : vec4<f32> = u_xlat8;
        let x_1734 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1732.w, x_1732.w, x_1732.w, x_1732.w) * x_1734);
        let x_1737 : vec4<f32> = u_xlat13;
        let x_1738 : vec2<f32> = vec2<f32>(x_1737.x, x_1737.y);
        let x_1740 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec13;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1747.xy, x_1747.z);
        u_xlat70 = x_1749;
        let x_1751 : vec4<f32> = u_xlat13;
        let x_1752 : vec2<f32> = vec2<f32>(x_1751.z, x_1751.w);
        let x_1754 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec14;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1761.xy, x_1761.z);
        u_xlat9.x = x_1763;
        let x_1766 : f32 = u_xlat9.x;
        let x_1768 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1766 * x_1768);
        let x_1772 : f32 = u_xlat18.x;
        let x_1773 : f32 = u_xlat70;
        let x_1776 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1772 * x_1773) + x_1776);
        let x_1779 : vec2<f32> = u_xlat48;
        let x_1781 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec15;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1788.xy, x_1788.z);
        u_xlat48.x = x_1790;
        let x_1793 : f32 = u_xlat18.z;
        let x_1795 : f32 = u_xlat48.x;
        let x_1797 : f32 = u_xlat70;
        u_xlat48.x = ((x_1793 * x_1795) + x_1797);
        let x_1801 : vec4<f32> = u_xlat16;
        let x_1802 : vec2<f32> = vec2<f32>(x_1801.x, x_1801.y);
        let x_1804 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1802.x, x_1802.y, x_1804);
        let x_1812 : vec3<f32> = txVec16;
        let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1812.xy, x_1812.z);
        u_xlat69 = x_1814;
        let x_1816 : f32 = u_xlat18.w;
        let x_1817 : f32 = u_xlat69;
        let x_1820 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1816 * x_1817) + x_1820);
        let x_1824 : vec4<f32> = u_xlat14;
        let x_1825 : vec2<f32> = vec2<f32>(x_1824.x, x_1824.y);
        let x_1827 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1825.x, x_1825.y, x_1827);
        let x_1834 : vec3<f32> = txVec17;
        let x_1836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1834.xy, x_1834.z);
        u_xlat69 = x_1836;
        let x_1838 : f32 = u_xlat19.x;
        let x_1839 : f32 = u_xlat69;
        let x_1842 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1838 * x_1839) + x_1842);
        let x_1846 : vec4<f32> = u_xlat14;
        let x_1847 : vec2<f32> = vec2<f32>(x_1846.z, x_1846.w);
        let x_1849 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1847.x, x_1847.y, x_1849);
        let x_1856 : vec3<f32> = txVec18;
        let x_1858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1856.xy, x_1856.z);
        u_xlat69 = x_1858;
        let x_1860 : f32 = u_xlat19.y;
        let x_1861 : f32 = u_xlat69;
        let x_1864 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1860 * x_1861) + x_1864);
        let x_1868 : vec4<f32> = u_xlat15;
        let x_1869 : vec2<f32> = vec2<f32>(x_1868.x, x_1868.y);
        let x_1871 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec19;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1878.xy, x_1878.z);
        u_xlat69 = x_1880;
        let x_1882 : f32 = u_xlat19.z;
        let x_1883 : f32 = u_xlat69;
        let x_1886 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1882 * x_1883) + x_1886);
        let x_1890 : vec4<f32> = u_xlat16;
        let x_1891 : vec2<f32> = vec2<f32>(x_1890.z, x_1890.w);
        let x_1893 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
        let x_1900 : vec3<f32> = txVec20;
        let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1900.xy, x_1900.z);
        u_xlat69 = x_1902;
        let x_1904 : f32 = u_xlat19.w;
        let x_1905 : f32 = u_xlat69;
        let x_1908 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1904 * x_1905) + x_1908);
        let x_1912 : vec4<f32> = u_xlat17;
        let x_1913 : vec2<f32> = vec2<f32>(x_1912.x, x_1912.y);
        let x_1915 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1913.x, x_1913.y, x_1915);
        let x_1922 : vec3<f32> = txVec21;
        let x_1924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1922.xy, x_1922.z);
        u_xlat69 = x_1924;
        let x_1926 : f32 = u_xlat20.x;
        let x_1927 : f32 = u_xlat69;
        let x_1930 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1926 * x_1927) + x_1930);
        let x_1934 : vec4<f32> = u_xlat17;
        let x_1935 : vec2<f32> = vec2<f32>(x_1934.z, x_1934.w);
        let x_1937 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1935.x, x_1935.y, x_1937);
        let x_1944 : vec3<f32> = txVec22;
        let x_1946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1944.xy, x_1944.z);
        u_xlat69 = x_1946;
        let x_1948 : f32 = u_xlat20.y;
        let x_1949 : f32 = u_xlat69;
        let x_1952 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1948 * x_1949) + x_1952);
        let x_1956 : vec2<f32> = u_xlat30;
        let x_1958 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1956.x, x_1956.y, x_1958);
        let x_1965 : vec3<f32> = txVec23;
        let x_1967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1965.xy, x_1965.z);
        u_xlat69 = x_1967;
        let x_1969 : f32 = u_xlat20.z;
        let x_1970 : f32 = u_xlat69;
        let x_1973 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1969 * x_1970) + x_1973);
        let x_1977 : vec2<f32> = u_xlat57;
        let x_1979 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1977.x, x_1977.y, x_1979);
        let x_1986 : vec3<f32> = txVec24;
        let x_1988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1986.xy, x_1986.z);
        u_xlat69 = x_1988;
        let x_1990 : f32 = u_xlat20.w;
        let x_1991 : f32 = u_xlat69;
        let x_1994 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1990 * x_1991) + x_1994);
        let x_1998 : vec4<f32> = u_xlat12;
        let x_1999 : vec2<f32> = vec2<f32>(x_1998.x, x_1998.y);
        let x_2001 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1999.x, x_1999.y, x_2001);
        let x_2008 : vec3<f32> = txVec25;
        let x_2010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2008.xy, x_2008.z);
        u_xlat69 = x_2010;
        let x_2012 : f32 = u_xlat8.x;
        let x_2013 : f32 = u_xlat69;
        let x_2016 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2012 * x_2013) + x_2016);
        let x_2020 : vec4<f32> = u_xlat12;
        let x_2021 : vec2<f32> = vec2<f32>(x_2020.z, x_2020.w);
        let x_2023 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
        let x_2030 : vec3<f32> = txVec26;
        let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2030.xy, x_2030.z);
        u_xlat69 = x_2032;
        let x_2034 : f32 = u_xlat8.y;
        let x_2035 : f32 = u_xlat69;
        let x_2038 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2034 * x_2035) + x_2038);
        let x_2042 : vec2<f32> = u_xlat52;
        let x_2044 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2042.x, x_2042.y, x_2044);
        let x_2051 : vec3<f32> = txVec27;
        let x_2053 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2051.xy, x_2051.z);
        u_xlat69 = x_2053;
        let x_2055 : f32 = u_xlat8.z;
        let x_2056 : f32 = u_xlat69;
        let x_2059 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2055 * x_2056) + x_2059);
        let x_2063 : vec4<f32> = u_xlat6;
        let x_2064 : vec2<f32> = vec2<f32>(x_2063.x, x_2063.y);
        let x_2066 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2064.x, x_2064.y, x_2066);
        let x_2073 : vec3<f32> = txVec28;
        let x_2075 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2073.xy, x_2073.z);
        u_xlat6.x = x_2075;
        let x_2078 : f32 = u_xlat8.w;
        let x_2080 : f32 = u_xlat6.x;
        let x_2083 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2078 * x_2080) + x_2083);
      }
    }
  } else {
    let x_2087 : vec4<f32> = u_xlat4;
    let x_2088 : vec2<f32> = vec2<f32>(x_2087.x, x_2087.y);
    let x_2090 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2088.x, x_2088.y, x_2090);
    let x_2097 : vec3<f32> = txVec29;
    let x_2099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2097.xy, x_2097.z);
    u_xlat67 = x_2099;
  }
  let x_2101 : f32 = x_423.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2101) + 1.0f);
  let x_2105 : f32 = u_xlat67;
  let x_2107 : f32 = x_423.x_MainLightShadowParams.x;
  let x_2110 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2105 * x_2107) + x_2110);
  let x_2115 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_2115);
  let x_2120 : f32 = u_xlat4.z;
  u_xlatb46 = (x_2120 >= 1.0f);
  let x_2122 : bool = u_xlatb46;
  let x_2124 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2122 | x_2124);
  let x_2128 : bool = u_xlatb25.x;
  if (x_2128) {
    x_2129 = 1.0f;
  } else {
    let x_2134 : f32 = u_xlat4.x;
    x_2129 = x_2134;
  }
  let x_2135 : f32 = x_2129;
  u_xlat4.x = x_2135;
  let x_2138 : vec3<f32> = vs_INTERP0;
  let x_2140 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_2138 + -(x_2140));
  let x_2143 : vec3<f32> = u_xlat25;
  let x_2144 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_2143, x_2144);
  let x_2148 : f32 = u_xlat25.x;
  let x_2150 : f32 = x_423.x_MainLightShadowParams.z;
  let x_2153 : f32 = x_423.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2148 * x_2150) + x_2153);
  let x_2157 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2157, 0.0f, 1.0f);
  let x_2162 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_2162) + 1.0f);
  let x_2166 : f32 = u_xlat25.x;
  let x_2167 : f32 = u_xlat46;
  let x_2170 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2166 * x_2167) + x_2170);
  let x_2179 : f32 = x_2177.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2179 == -1.0f));
  let x_2183 : bool = u_xlatb25.x;
  if (x_2183) {
    let x_2186 : vec3<f32> = vs_INTERP0;
    let x_2189 : vec4<f32> = x_2177.x_MainLightWorldToLight[1i];
    let x_2191 : vec2<f32> = (vec2<f32>(x_2186.y, x_2186.y) * vec2<f32>(x_2189.x, x_2189.y));
    let x_2192 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2191.x, x_2191.y, x_2192.z);
    let x_2195 : vec4<f32> = x_2177.x_MainLightWorldToLight[0i];
    let x_2197 : vec3<f32> = vs_INTERP0;
    let x_2200 : vec3<f32> = u_xlat25;
    let x_2202 : vec2<f32> = ((vec2<f32>(x_2195.x, x_2195.y) * vec2<f32>(x_2197.x, x_2197.x)) + vec2<f32>(x_2200.x, x_2200.y));
    let x_2203 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2202.x, x_2202.y, x_2203.z);
    let x_2206 : vec4<f32> = x_2177.x_MainLightWorldToLight[2i];
    let x_2208 : vec3<f32> = vs_INTERP0;
    let x_2211 : vec3<f32> = u_xlat25;
    let x_2213 : vec2<f32> = ((vec2<f32>(x_2206.x, x_2206.y) * vec2<f32>(x_2208.z, x_2208.z)) + vec2<f32>(x_2211.x, x_2211.y));
    let x_2214 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2213.x, x_2213.y, x_2214.z);
    let x_2216 : vec3<f32> = u_xlat25;
    let x_2219 : vec4<f32> = x_2177.x_MainLightWorldToLight[3i];
    let x_2221 : vec2<f32> = (vec2<f32>(x_2216.x, x_2216.y) + vec2<f32>(x_2219.x, x_2219.y));
    let x_2222 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2221.x, x_2221.y, x_2222.z);
    let x_2224 : vec3<f32> = u_xlat25;
    let x_2227 : vec2<f32> = ((vec2<f32>(x_2224.x, x_2224.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2228 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2227.x, x_2227.y, x_2228.z);
    let x_2235 : vec3<f32> = u_xlat25;
    let x_2238 : f32 = x_44.x_GlobalMipBias.x;
    let x_2239 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2235.x, x_2235.y), x_2238);
    u_xlat6 = x_2239;
    let x_2241 : f32 = x_2177.x_MainLightCookieTextureFormat;
    let x_2243 : f32 = x_2177.x_MainLightCookieTextureFormat;
    let x_2245 : f32 = x_2177.x_MainLightCookieTextureFormat;
    let x_2247 : f32 = x_2177.x_MainLightCookieTextureFormat;
    let x_2248 : vec4<f32> = vec4<f32>(x_2241, x_2243, x_2245, x_2247);
    let x_2255 : vec4<bool> = (vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2248.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2255.x, x_2255.y);
    let x_2258 : bool = u_xlatb25.y;
    if (x_2258) {
      let x_2263 : f32 = u_xlat6.w;
      x_2259 = x_2263;
    } else {
      let x_2266 : f32 = u_xlat6.x;
      x_2259 = x_2266;
    }
    let x_2267 : f32 = x_2259;
    u_xlat46 = x_2267;
    let x_2269 : bool = u_xlatb25.x;
    if (x_2269) {
      let x_2273 : vec4<f32> = u_xlat6;
      x_2270 = vec3<f32>(x_2273.x, x_2273.y, x_2273.z);
    } else {
      let x_2276 : f32 = u_xlat46;
      x_2270 = vec3<f32>(x_2276, x_2276, x_2276);
    }
    let x_2278 : vec3<f32> = x_2270;
    u_xlat25 = x_2278;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_2283 : vec3<f32> = u_xlat25;
  let x_2285 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (x_2283 * vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
  let x_2288 : f32 = u_xlat68;
  let x_2290 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2288, x_2288, x_2288) * x_2290);
  let x_2292 : vec3<f32> = u_xlat22;
  let x_2294 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(-(x_2292), vec3<f32>(x_2294.x, x_2294.y, x_2294.z));
  let x_2299 : f32 = u_xlat6.x;
  let x_2301 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2299 + x_2301);
  let x_2304 : vec4<f32> = u_xlat3;
  let x_2306 : vec4<f32> = u_xlat6;
  let x_2310 : vec3<f32> = u_xlat22;
  let x_2312 : vec3<f32> = ((vec3<f32>(x_2304.x, x_2304.y, x_2304.z) * -(vec3<f32>(x_2306.x, x_2306.x, x_2306.x))) + -(x_2310));
  let x_2313 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
  let x_2315 : vec4<f32> = u_xlat3;
  let x_2317 : vec3<f32> = u_xlat22;
  u_xlat69 = dot(vec3<f32>(x_2315.x, x_2315.y, x_2315.z), x_2317);
  let x_2319 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2319, 0.0f, 1.0f);
  let x_2321 : f32 = u_xlat69;
  u_xlat69 = (-(x_2321) + 1.0f);
  let x_2324 : f32 = u_xlat69;
  let x_2325 : f32 = u_xlat69;
  u_xlat69 = (x_2324 * x_2325);
  let x_2327 : f32 = u_xlat69;
  let x_2328 : f32 = u_xlat69;
  u_xlat69 = (x_2327 * x_2328);
  let x_2331 : f32 = u_xlat0.x;
  u_xlat70 = ((-(x_2331) * 0.699999988f) + 1.700000048f);
  let x_2338 : f32 = u_xlat0.x;
  let x_2339 : f32 = u_xlat70;
  u_xlat0.x = (x_2338 * x_2339);
  let x_2343 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2343 * 6.0f);
  let x_2355 : vec4<f32> = u_xlat6;
  let x_2358 : f32 = u_xlat0.x;
  let x_2359 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2355.x, x_2355.y, x_2355.z), x_2358);
  u_xlat8 = x_2359;
  let x_2361 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2361 + -1.0f);
  let x_2365 : f32 = x_289.unity_SpecCube0_HDR.w;
  let x_2367 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2365 * x_2367) + 1.0f);
  let x_2372 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2372, 0.0f);
  let x_2376 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2376);
  let x_2380 : f32 = u_xlat0.x;
  let x_2382 : f32 = x_289.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2380 * x_2382);
  let x_2386 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2386);
  let x_2390 : f32 = u_xlat0.x;
  let x_2392 : f32 = x_289.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2390 * x_2392);
  let x_2395 : vec4<f32> = u_xlat8;
  let x_2397 : vec4<f32> = u_xlat0;
  let x_2399 : vec3<f32> = (vec3<f32>(x_2395.x, x_2395.y, x_2395.z) * vec3<f32>(x_2397.x, x_2397.x, x_2397.x));
  let x_2400 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
  let x_2402 : f32 = u_xlat42;
  let x_2404 : f32 = u_xlat42;
  let x_2408 : vec2<f32> = ((vec2<f32>(x_2402, x_2402) * vec2<f32>(x_2404, x_2404)) + vec2<f32>(-1.0f, 1.0f));
  let x_2409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2408.x, x_2409.y, x_2408.y, x_2409.w);
  let x_2412 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2412);
  let x_2414 : vec3<f32> = u_xlat2;
  let x_2416 : vec4<f32> = u_xlat1;
  let x_2418 : vec3<f32> = (-(x_2414) + vec3<f32>(x_2416.x, x_2416.x, x_2416.x));
  let x_2419 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
  let x_2421 : f32 = u_xlat69;
  let x_2423 : vec4<f32> = u_xlat8;
  let x_2426 : vec3<f32> = u_xlat2;
  let x_2427 : vec3<f32> = ((vec3<f32>(x_2421, x_2421, x_2421) * vec3<f32>(x_2423.x, x_2423.y, x_2423.z)) + x_2426);
  let x_2428 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2427.x, x_2427.y, x_2427.z, x_2428.w);
  let x_2430 : f32 = u_xlat42;
  let x_2432 : vec4<f32> = u_xlat8;
  let x_2434 : vec3<f32> = (vec3<f32>(x_2430, x_2430, x_2430) * vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
  let x_2435 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2434.x, x_2434.y, x_2434.z, x_2435.w);
  let x_2437 : vec4<f32> = u_xlat6;
  let x_2439 : vec4<f32> = u_xlat8;
  let x_2441 : vec3<f32> = (vec3<f32>(x_2437.x, x_2437.y, x_2437.z) * vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
  let x_2442 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
  let x_2444 : vec4<f32> = u_xlat5;
  let x_2446 : vec3<f32> = u_xlat7;
  let x_2448 : vec4<f32> = u_xlat6;
  let x_2450 : vec3<f32> = ((vec3<f32>(x_2444.x, x_2444.y, x_2444.z) * x_2446) + vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
  let x_2451 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2450.x, x_2450.y, x_2450.z, x_2451.w);
  let x_2454 : f32 = u_xlat4.x;
  let x_2456 : f32 = x_289.unity_LightData.z;
  u_xlat42 = (x_2454 * x_2456);
  let x_2458 : vec4<f32> = u_xlat3;
  let x_2461 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_2458.x, x_2458.y, x_2458.z), vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
  let x_2466 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2466, 0.0f, 1.0f);
  let x_2469 : f32 = u_xlat42;
  let x_2471 : f32 = u_xlat1.x;
  u_xlat42 = (x_2469 * x_2471);
  let x_2473 : f32 = u_xlat42;
  let x_2475 : vec3<f32> = u_xlat25;
  let x_2476 : vec3<f32> = (vec3<f32>(x_2473, x_2473, x_2473) * x_2475);
  let x_2477 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2476.x, x_2476.y, x_2476.z, x_2477.w);
  let x_2479 : vec3<f32> = u_xlat22;
  let x_2481 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2483 : vec3<f32> = (x_2479 + vec3<f32>(x_2481.x, x_2481.y, x_2481.z));
  let x_2484 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2483.x, x_2483.y, x_2483.z, x_2484.w);
  let x_2486 : vec4<f32> = u_xlat6;
  let x_2488 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2486.x, x_2486.y, x_2486.z), vec3<f32>(x_2488.x, x_2488.y, x_2488.z));
  let x_2491 : f32 = u_xlat42;
  u_xlat42 = max(x_2491, 1.17549435e-37f);
  let x_2494 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2494);
  let x_2496 : f32 = u_xlat42;
  let x_2498 : vec4<f32> = u_xlat6;
  let x_2500 : vec3<f32> = (vec3<f32>(x_2496, x_2496, x_2496) * vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
  let x_2501 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
  let x_2503 : vec4<f32> = u_xlat3;
  let x_2505 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2503.x, x_2503.y, x_2503.z), vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
  let x_2508 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2508, 0.0f, 1.0f);
  let x_2511 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2513 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_2511.x, x_2511.y, x_2511.z), vec3<f32>(x_2513.x, x_2513.y, x_2513.z));
  let x_2518 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2518, 0.0f, 1.0f);
  let x_2521 : f32 = u_xlat42;
  let x_2522 : f32 = u_xlat42;
  u_xlat42 = (x_2521 * x_2522);
  let x_2524 : f32 = u_xlat42;
  let x_2526 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2524 * x_2526) + 1.000010014f);
  let x_2531 : f32 = u_xlat1.x;
  let x_2533 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2531 * x_2533);
  let x_2536 : f32 = u_xlat42;
  let x_2537 : f32 = u_xlat42;
  u_xlat42 = (x_2536 * x_2537);
  let x_2540 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2540, 0.100000001f);
  let x_2544 : f32 = u_xlat42;
  let x_2546 : f32 = u_xlat1.x;
  u_xlat42 = (x_2544 * x_2546);
  let x_2548 : f32 = u_xlat65;
  let x_2549 : f32 = u_xlat42;
  u_xlat42 = (x_2548 * x_2549);
  let x_2551 : f32 = u_xlat66;
  let x_2552 : f32 = u_xlat42;
  u_xlat42 = (x_2551 / x_2552);
  let x_2554 : vec3<f32> = u_xlat2;
  let x_2555 : f32 = u_xlat42;
  let x_2558 : vec3<f32> = u_xlat7;
  let x_2559 : vec3<f32> = ((x_2554 * vec3<f32>(x_2555, x_2555, x_2555)) + x_2558);
  let x_2560 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
  let x_2562 : vec4<f32> = u_xlat4;
  let x_2564 : vec4<f32> = u_xlat6;
  let x_2566 : vec3<f32> = (vec3<f32>(x_2562.x, x_2562.y, x_2562.z) * vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
  let x_2567 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);
  let x_2570 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2572 : f32 = x_289.unity_LightData.y;
  u_xlat42 = min(x_2570, x_2572);
  let x_2575 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2575));
  let x_2579 : f32 = x_2177.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2581 : f32 = x_2177.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2583 : f32 = x_2177.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2585 : f32 = x_2177.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2586 : vec4<f32> = vec4<f32>(x_2579, x_2581, x_2583, x_2585);
  let x_2592 : vec4<bool> = (vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2586.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2592.x, x_2592.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2603 : u32 = u_xlatu_loop_1;
    let x_2604 : u32 = u_xlatu42;
    if ((x_2603 < x_2604)) {
    } else {
      break;
    }
    let x_2607 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2607 >> 2u);
    let x_2610 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_2610 & 3u));
    let x_2613 : u32 = u_xlatu67;
    let x_2616 : vec4<f32> = x_289.unity_LightIndices[bitcast<i32>(x_2613)];
    let x_2626 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2631 : vec4<u32> = indexable[x_2626];
    u_xlat67 = dot(x_2616, bitcast<vec4<f32>>(x_2631));
    let x_2634 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2634));
    let x_2637 : vec3<f32> = vs_INTERP0;
    let x_2649 : u32 = u_xlatu67;
    let x_2652 : vec4<f32> = x_2648.x_AdditionalLightsPosition[bitcast<i32>(x_2649)];
    let x_2655 : u32 = u_xlatu67;
    let x_2658 : vec4<f32> = x_2648.x_AdditionalLightsPosition[bitcast<i32>(x_2655)];
    let x_2660 : vec3<f32> = ((-(x_2637) * vec3<f32>(x_2652.w, x_2652.w, x_2652.w)) + vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
    let x_2661 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2660.x, x_2660.y, x_2660.z, x_2661.w);
    let x_2663 : vec4<f32> = u_xlat9;
    let x_2665 : vec4<f32> = u_xlat9;
    u_xlat48.x = dot(vec3<f32>(x_2663.x, x_2663.y, x_2663.z), vec3<f32>(x_2665.x, x_2665.y, x_2665.z));
    let x_2670 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_2670, 6.10351562e-05f);
    let x_2675 : f32 = u_xlat48.x;
    u_xlat69 = inverseSqrt(x_2675);
    let x_2677 : f32 = u_xlat69;
    let x_2679 : vec4<f32> = u_xlat9;
    let x_2681 : vec3<f32> = (vec3<f32>(x_2677, x_2677, x_2677) * vec3<f32>(x_2679.x, x_2679.y, x_2679.z));
    let x_2682 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2682.w);
    let x_2685 : f32 = u_xlat48.x;
    u_xlat70 = (1.0f / x_2685);
    let x_2688 : f32 = u_xlat48.x;
    let x_2689 : u32 = u_xlatu67;
    let x_2692 : f32 = x_2648.x_AdditionalLightsAttenuation[bitcast<i32>(x_2689)].x;
    u_xlat48.x = (x_2688 * x_2692);
    let x_2696 : f32 = u_xlat48.x;
    let x_2699 : f32 = u_xlat48.x;
    u_xlat48.x = ((-(x_2696) * x_2699) + 1.0f);
    let x_2704 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_2704, 0.0f);
    let x_2708 : f32 = u_xlat48.x;
    let x_2710 : f32 = u_xlat48.x;
    u_xlat48.x = (x_2708 * x_2710);
    let x_2714 : f32 = u_xlat48.x;
    let x_2715 : f32 = u_xlat70;
    u_xlat48.x = (x_2714 * x_2715);
    let x_2718 : u32 = u_xlatu67;
    let x_2721 : vec4<f32> = x_2648.x_AdditionalLightsSpotDir[bitcast<i32>(x_2718)];
    let x_2723 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2721.x, x_2721.y, x_2721.z), vec3<f32>(x_2723.x, x_2723.y, x_2723.z));
    let x_2726 : f32 = u_xlat70;
    let x_2727 : u32 = u_xlatu67;
    let x_2730 : f32 = x_2648.x_AdditionalLightsAttenuation[bitcast<i32>(x_2727)].z;
    let x_2732 : u32 = u_xlatu67;
    let x_2735 : f32 = x_2648.x_AdditionalLightsAttenuation[bitcast<i32>(x_2732)].w;
    u_xlat70 = ((x_2726 * x_2730) + x_2735);
    let x_2737 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2737, 0.0f, 1.0f);
    let x_2739 : f32 = u_xlat70;
    let x_2740 : f32 = u_xlat70;
    u_xlat70 = (x_2739 * x_2740);
    let x_2743 : f32 = u_xlat48.x;
    let x_2744 : f32 = u_xlat70;
    u_xlat48.x = (x_2743 * x_2744);
    let x_2748 : u32 = u_xlatu67;
    u_xlatu70 = (x_2748 >> 5u);
    let x_2751 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2751) & 31i)));
    let x_2757 : i32 = u_xlati71;
    let x_2759 : u32 = u_xlatu70;
    let x_2762 : f32 = x_2177.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2759)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2757) & bitcast<u32>(x_2762)));
    let x_2766 : i32 = u_xlati70;
    if ((x_2766 != 0i)) {
      let x_2776 : u32 = u_xlatu67;
      let x_2779 : f32 = x_2775.x_AdditionalLightsLightTypes[bitcast<i32>(x_2776)].el;
      u_xlati70 = i32(x_2779);
      let x_2781 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2781 != 0i));
      let x_2785 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_2785) << bitcast<u32>(2i));
      let x_2788 : i32 = u_xlati71;
      if ((x_2788 != 0i)) {
        let x_2792 : vec3<f32> = vs_INTERP0;
        let x_2794 : i32 = u_xlati72;
        let x_2797 : i32 = u_xlati72;
        let x_2801 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[((x_2794 + 1i) / 4i)][((x_2797 + 1i) % 4i)];
        let x_2803 : vec3<f32> = (vec3<f32>(x_2792.y, x_2792.y, x_2792.y) * vec3<f32>(x_2801.x, x_2801.y, x_2801.w));
        let x_2804 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
        let x_2806 : i32 = u_xlati72;
        let x_2808 : i32 = u_xlati72;
        let x_2811 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[(x_2806 / 4i)][(x_2808 % 4i)];
        let x_2813 : vec3<f32> = vs_INTERP0;
        let x_2816 : vec4<f32> = u_xlat11;
        let x_2818 : vec3<f32> = ((vec3<f32>(x_2811.x, x_2811.y, x_2811.w) * vec3<f32>(x_2813.x, x_2813.x, x_2813.x)) + vec3<f32>(x_2816.x, x_2816.y, x_2816.z));
        let x_2819 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2819.w);
        let x_2821 : i32 = u_xlati72;
        let x_2824 : i32 = u_xlati72;
        let x_2828 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[((x_2821 + 2i) / 4i)][((x_2824 + 2i) % 4i)];
        let x_2830 : vec3<f32> = vs_INTERP0;
        let x_2833 : vec4<f32> = u_xlat11;
        let x_2835 : vec3<f32> = ((vec3<f32>(x_2828.x, x_2828.y, x_2828.w) * vec3<f32>(x_2830.z, x_2830.z, x_2830.z)) + vec3<f32>(x_2833.x, x_2833.y, x_2833.z));
        let x_2836 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2835.x, x_2835.y, x_2835.z, x_2836.w);
        let x_2838 : vec4<f32> = u_xlat11;
        let x_2840 : i32 = u_xlati72;
        let x_2843 : i32 = u_xlati72;
        let x_2847 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[((x_2840 + 3i) / 4i)][((x_2843 + 3i) % 4i)];
        let x_2849 : vec3<f32> = (vec3<f32>(x_2838.x, x_2838.y, x_2838.z) + vec3<f32>(x_2847.x, x_2847.y, x_2847.w));
        let x_2850 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2849.x, x_2849.y, x_2849.z, x_2850.w);
        let x_2852 : vec4<f32> = u_xlat11;
        let x_2854 : vec4<f32> = u_xlat11;
        let x_2856 : vec2<f32> = (vec2<f32>(x_2852.x, x_2852.y) / vec2<f32>(x_2854.z, x_2854.z));
        let x_2857 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2856.x, x_2856.y, x_2857.z, x_2857.w);
        let x_2859 : vec4<f32> = u_xlat11;
        let x_2862 : vec2<f32> = ((vec2<f32>(x_2859.x, x_2859.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2863 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2862.x, x_2862.y, x_2863.z, x_2863.w);
        let x_2865 : vec4<f32> = u_xlat11;
        let x_2869 : vec2<f32> = clamp(vec2<f32>(x_2865.x, x_2865.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2870 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2869.x, x_2869.y, x_2870.z, x_2870.w);
        let x_2872 : u32 = u_xlatu67;
        let x_2875 : vec4<f32> = x_2775.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2872)];
        let x_2877 : vec4<f32> = u_xlat11;
        let x_2880 : u32 = u_xlatu67;
        let x_2883 : vec4<f32> = x_2775.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2880)];
        let x_2885 : vec2<f32> = ((vec2<f32>(x_2875.x, x_2875.y) * vec2<f32>(x_2877.x, x_2877.y)) + vec2<f32>(x_2883.z, x_2883.w));
        let x_2886 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2885.x, x_2885.y, x_2886.z, x_2886.w);
      } else {
        let x_2890 : i32 = u_xlati70;
        u_xlatb70 = (x_2890 == 1i);
        let x_2892 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2892);
        let x_2894 : i32 = u_xlati70;
        if ((x_2894 != 0i)) {
          let x_2899 : vec3<f32> = vs_INTERP0;
          let x_2901 : i32 = u_xlati72;
          let x_2904 : i32 = u_xlati72;
          let x_2908 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[((x_2901 + 1i) / 4i)][((x_2904 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2899.y, x_2899.y) * vec2<f32>(x_2908.x, x_2908.y));
          let x_2911 : i32 = u_xlati72;
          let x_2913 : i32 = u_xlati72;
          let x_2916 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[(x_2911 / 4i)][(x_2913 % 4i)];
          let x_2918 : vec3<f32> = vs_INTERP0;
          let x_2921 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2916.x, x_2916.y) * vec2<f32>(x_2918.x, x_2918.x)) + x_2921);
          let x_2923 : i32 = u_xlati72;
          let x_2926 : i32 = u_xlati72;
          let x_2930 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[((x_2923 + 2i) / 4i)][((x_2926 + 2i) % 4i)];
          let x_2932 : vec3<f32> = vs_INTERP0;
          let x_2935 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2930.x, x_2930.y) * vec2<f32>(x_2932.z, x_2932.z)) + x_2935);
          let x_2937 : vec2<f32> = u_xlat53;
          let x_2938 : i32 = u_xlati72;
          let x_2941 : i32 = u_xlati72;
          let x_2945 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[((x_2938 + 3i) / 4i)][((x_2941 + 3i) % 4i)];
          u_xlat53 = (x_2937 + vec2<f32>(x_2945.x, x_2945.y));
          let x_2948 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2948 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2951 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2951);
          let x_2953 : u32 = u_xlatu67;
          let x_2956 : vec4<f32> = x_2775.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2953)];
          let x_2958 : vec2<f32> = u_xlat53;
          let x_2960 : u32 = u_xlatu67;
          let x_2963 : vec4<f32> = x_2775.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2960)];
          let x_2965 : vec2<f32> = ((vec2<f32>(x_2956.x, x_2956.y) * x_2958) + vec2<f32>(x_2963.z, x_2963.w));
          let x_2966 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2965.x, x_2965.y, x_2966.z, x_2966.w);
        } else {
          let x_2969 : vec3<f32> = vs_INTERP0;
          let x_2971 : i32 = u_xlati72;
          let x_2974 : i32 = u_xlati72;
          let x_2978 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[((x_2971 + 1i) / 4i)][((x_2974 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2969.y, x_2969.y, x_2969.y, x_2969.y) * x_2978);
          let x_2980 : i32 = u_xlati72;
          let x_2982 : i32 = u_xlati72;
          let x_2985 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[(x_2980 / 4i)][(x_2982 % 4i)];
          let x_2986 : vec3<f32> = vs_INTERP0;
          let x_2989 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2985 * vec4<f32>(x_2986.x, x_2986.x, x_2986.x, x_2986.x)) + x_2989);
          let x_2991 : i32 = u_xlati72;
          let x_2994 : i32 = u_xlati72;
          let x_2998 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[((x_2991 + 2i) / 4i)][((x_2994 + 2i) % 4i)];
          let x_2999 : vec3<f32> = vs_INTERP0;
          let x_3002 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2998 * vec4<f32>(x_2999.z, x_2999.z, x_2999.z, x_2999.z)) + x_3002);
          let x_3004 : vec4<f32> = u_xlat12;
          let x_3005 : i32 = u_xlati72;
          let x_3008 : i32 = u_xlati72;
          let x_3012 : vec4<f32> = x_2775.x_AdditionalLightsWorldToLights[((x_3005 + 3i) / 4i)][((x_3008 + 3i) % 4i)];
          u_xlat12 = (x_3004 + x_3012);
          let x_3014 : vec4<f32> = u_xlat12;
          let x_3016 : vec4<f32> = u_xlat12;
          let x_3018 : vec3<f32> = (vec3<f32>(x_3014.x, x_3014.y, x_3014.z) / vec3<f32>(x_3016.w, x_3016.w, x_3016.w));
          let x_3019 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3018.x, x_3018.y, x_3018.z, x_3019.w);
          let x_3021 : vec4<f32> = u_xlat12;
          let x_3023 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_3021.x, x_3021.y, x_3021.z), vec3<f32>(x_3023.x, x_3023.y, x_3023.z));
          let x_3026 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_3026);
          let x_3028 : f32 = u_xlat70;
          let x_3030 : vec4<f32> = u_xlat12;
          let x_3032 : vec3<f32> = (vec3<f32>(x_3028, x_3028, x_3028) * vec3<f32>(x_3030.x, x_3030.y, x_3030.z));
          let x_3033 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3032.x, x_3032.y, x_3032.z, x_3033.w);
          let x_3035 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_3035.x, x_3035.y, x_3035.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3039 : f32 = u_xlat70;
          u_xlat70 = max(x_3039, 0.000001f);
          let x_3042 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_3042);
          let x_3044 : f32 = u_xlat70;
          let x_3046 : vec4<f32> = u_xlat12;
          let x_3048 : vec3<f32> = (vec3<f32>(x_3044, x_3044, x_3044) * vec3<f32>(x_3046.z, x_3046.x, x_3046.y));
          let x_3049 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3048.x, x_3048.y, x_3048.z, x_3049.w);
          let x_3052 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3052);
          let x_3056 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3056, 0.0f, 1.0f);
          let x_3060 : vec4<f32> = u_xlat13;
          let x_3063 : vec4<bool> = (vec4<f32>(x_3060.y, x_3060.z, x_3060.y, x_3060.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3063.x, x_3063.y);
          let x_3066 : bool = u_xlatb53.x;
          if (x_3066) {
            let x_3071 : f32 = u_xlat13.x;
            x_3067 = x_3071;
          } else {
            let x_3074 : f32 = u_xlat13.x;
            x_3067 = -(x_3074);
          }
          let x_3076 : f32 = x_3067;
          u_xlat53.x = x_3076;
          let x_3079 : bool = u_xlatb53.y;
          if (x_3079) {
            let x_3084 : f32 = u_xlat13.x;
            x_3080 = x_3084;
          } else {
            let x_3087 : f32 = u_xlat13.x;
            x_3080 = -(x_3087);
          }
          let x_3089 : f32 = x_3080;
          u_xlat53.y = x_3089;
          let x_3091 : vec4<f32> = u_xlat12;
          let x_3093 : f32 = u_xlat70;
          let x_3096 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3091.x, x_3091.y) * vec2<f32>(x_3093, x_3093)) + x_3096);
          let x_3098 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3098 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3101 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3101, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3105 : u32 = u_xlatu67;
          let x_3108 : vec4<f32> = x_2775.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3105)];
          let x_3110 : vec2<f32> = u_xlat53;
          let x_3112 : u32 = u_xlatu67;
          let x_3115 : vec4<f32> = x_2775.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3112)];
          let x_3117 : vec2<f32> = ((vec2<f32>(x_3108.x, x_3108.y) * x_3110) + vec2<f32>(x_3115.z, x_3115.w));
          let x_3118 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3117.x, x_3117.y, x_3118.z, x_3118.w);
        }
      }
      let x_3125 : vec4<f32> = u_xlat11;
      let x_3128 : f32 = x_44.x_GlobalMipBias.x;
      let x_3129 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3125.x, x_3125.y), x_3128);
      u_xlat11 = x_3129;
      let x_3131 : bool = u_xlatb6.y;
      if (x_3131) {
        let x_3136 : f32 = u_xlat11.w;
        x_3132 = x_3136;
      } else {
        let x_3139 : f32 = u_xlat11.x;
        x_3132 = x_3139;
      }
      let x_3140 : f32 = x_3132;
      u_xlat70 = x_3140;
      let x_3142 : bool = u_xlatb6.x;
      if (x_3142) {
        let x_3146 : vec4<f32> = u_xlat11;
        x_3143 = vec3<f32>(x_3146.x, x_3146.y, x_3146.z);
      } else {
        let x_3149 : f32 = u_xlat70;
        x_3143 = vec3<f32>(x_3149, x_3149, x_3149);
      }
      let x_3151 : vec3<f32> = x_3143;
      let x_3152 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3151.x, x_3151.y, x_3151.z, x_3152.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3158 : vec4<f32> = u_xlat11;
    let x_3160 : u32 = u_xlatu67;
    let x_3163 : vec4<f32> = x_2648.x_AdditionalLightsColor[bitcast<i32>(x_3160)];
    let x_3165 : vec3<f32> = (vec3<f32>(x_3158.x, x_3158.y, x_3158.z) * vec3<f32>(x_3163.x, x_3163.y, x_3163.z));
    let x_3166 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3165.x, x_3165.y, x_3165.z, x_3166.w);
    let x_3168 : f32 = u_xlat68;
    let x_3170 : vec4<f32> = u_xlat11;
    let x_3172 : vec3<f32> = (vec3<f32>(x_3168, x_3168, x_3168) * vec3<f32>(x_3170.x, x_3170.y, x_3170.z));
    let x_3173 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3172.x, x_3172.y, x_3172.z, x_3173.w);
    let x_3175 : vec4<f32> = u_xlat3;
    let x_3177 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_3175.x, x_3175.y, x_3175.z), vec3<f32>(x_3177.x, x_3177.y, x_3177.z));
    let x_3180 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3180, 0.0f, 1.0f);
    let x_3182 : f32 = u_xlat67;
    let x_3184 : f32 = u_xlat48.x;
    u_xlat67 = (x_3182 * x_3184);
    let x_3186 : f32 = u_xlat67;
    let x_3188 : vec4<f32> = u_xlat11;
    let x_3190 : vec3<f32> = (vec3<f32>(x_3186, x_3186, x_3186) * vec3<f32>(x_3188.x, x_3188.y, x_3188.z));
    let x_3191 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3190.x, x_3190.y, x_3190.z, x_3191.w);
    let x_3193 : vec4<f32> = u_xlat9;
    let x_3195 : f32 = u_xlat69;
    let x_3198 : vec3<f32> = u_xlat22;
    let x_3199 : vec3<f32> = ((vec3<f32>(x_3193.x, x_3193.y, x_3193.z) * vec3<f32>(x_3195, x_3195, x_3195)) + x_3198);
    let x_3200 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3199.x, x_3199.y, x_3199.z, x_3200.w);
    let x_3202 : vec4<f32> = u_xlat9;
    let x_3204 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3202.x, x_3202.y, x_3202.z), vec3<f32>(x_3204.x, x_3204.y, x_3204.z));
    let x_3207 : f32 = u_xlat67;
    u_xlat67 = max(x_3207, 1.17549435e-37f);
    let x_3209 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_3209);
    let x_3211 : f32 = u_xlat67;
    let x_3213 : vec4<f32> = u_xlat9;
    let x_3215 : vec3<f32> = (vec3<f32>(x_3211, x_3211, x_3211) * vec3<f32>(x_3213.x, x_3213.y, x_3213.z));
    let x_3216 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3215.x, x_3215.y, x_3215.z, x_3216.w);
    let x_3218 : vec4<f32> = u_xlat3;
    let x_3220 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3218.x, x_3218.y, x_3218.z), vec3<f32>(x_3220.x, x_3220.y, x_3220.z));
    let x_3223 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3223, 0.0f, 1.0f);
    let x_3225 : vec4<f32> = u_xlat10;
    let x_3227 : vec4<f32> = u_xlat9;
    u_xlat48.x = dot(vec3<f32>(x_3225.x, x_3225.y, x_3225.z), vec3<f32>(x_3227.x, x_3227.y, x_3227.z));
    let x_3232 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_3232, 0.0f, 1.0f);
    let x_3235 : f32 = u_xlat67;
    let x_3236 : f32 = u_xlat67;
    u_xlat67 = (x_3235 * x_3236);
    let x_3238 : f32 = u_xlat67;
    let x_3240 : f32 = u_xlat0.x;
    u_xlat67 = ((x_3238 * x_3240) + 1.000010014f);
    let x_3244 : f32 = u_xlat48.x;
    let x_3246 : f32 = u_xlat48.x;
    u_xlat48.x = (x_3244 * x_3246);
    let x_3249 : f32 = u_xlat67;
    let x_3250 : f32 = u_xlat67;
    u_xlat67 = (x_3249 * x_3250);
    let x_3253 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_3253, 0.100000001f);
    let x_3256 : f32 = u_xlat67;
    let x_3258 : f32 = u_xlat48.x;
    u_xlat67 = (x_3256 * x_3258);
    let x_3260 : f32 = u_xlat65;
    let x_3261 : f32 = u_xlat67;
    u_xlat67 = (x_3260 * x_3261);
    let x_3263 : f32 = u_xlat66;
    let x_3264 : f32 = u_xlat67;
    u_xlat67 = (x_3263 / x_3264);
    let x_3266 : vec3<f32> = u_xlat2;
    let x_3267 : f32 = u_xlat67;
    let x_3270 : vec3<f32> = u_xlat7;
    let x_3271 : vec3<f32> = ((x_3266 * vec3<f32>(x_3267, x_3267, x_3267)) + x_3270);
    let x_3272 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3271.x, x_3271.y, x_3271.z, x_3272.w);
    let x_3274 : vec4<f32> = u_xlat9;
    let x_3276 : vec4<f32> = u_xlat11;
    let x_3279 : vec4<f32> = u_xlat8;
    let x_3281 : vec3<f32> = ((vec3<f32>(x_3274.x, x_3274.y, x_3274.z) * vec3<f32>(x_3276.x, x_3276.y, x_3276.z)) + vec3<f32>(x_3279.x, x_3279.y, x_3279.z));
    let x_3282 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3281.x, x_3281.y, x_3281.z, x_3282.w);

    continuing {
      let x_3284 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3284 + bitcast<u32>(1i));
    }
  }
  let x_3286 : vec4<f32> = u_xlat5;
  let x_3288 : f32 = u_xlat63;
  let x_3291 : vec4<f32> = u_xlat4;
  let x_3293 : vec3<f32> = ((vec3<f32>(x_3286.x, x_3286.y, x_3286.z) * vec3<f32>(x_3288, x_3288, x_3288)) + vec3<f32>(x_3291.x, x_3291.y, x_3291.z));
  let x_3294 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3293.x, x_3294.y, x_3293.y, x_3293.z);
  let x_3296 : vec4<f32> = u_xlat8;
  let x_3298 : vec4<f32> = u_xlat0;
  let x_3300 : vec3<f32> = (vec3<f32>(x_3296.x, x_3296.y, x_3296.z) + vec3<f32>(x_3298.x, x_3298.z, x_3298.w));
  let x_3301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3300.x, x_3301.y, x_3300.y, x_3300.z);
  let x_3304 : f32 = u_xlat21.x;
  let x_3306 : f32 = u_xlat21.x;
  u_xlat21.x = (x_3304 * -(x_3306));
  let x_3311 : f32 = u_xlat21.x;
  u_xlat21.x = exp2(x_3311);
  let x_3314 : vec4<f32> = u_xlat0;
  let x_3318 : vec4<f32> = x_44.unity_FogColor;
  let x_3321 : vec3<f32> = (vec3<f32>(x_3314.x, x_3314.z, x_3314.w) + -(vec3<f32>(x_3318.x, x_3318.y, x_3318.z)));
  let x_3322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3321.x, x_3322.y, x_3321.y, x_3321.z);
  let x_3326 : vec2<f32> = u_xlat21;
  let x_3328 : vec4<f32> = u_xlat0;
  let x_3332 : vec4<f32> = x_44.unity_FogColor;
  let x_3334 : vec3<f32> = ((vec3<f32>(x_3326.x, x_3326.x, x_3326.x) * vec3<f32>(x_3328.x, x_3328.z, x_3328.w)) + vec3<f32>(x_3332.x, x_3332.y, x_3332.z));
  let x_3335 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3334.x, x_3334.y, x_3334.z, x_3335.w);
  let x_3340 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3342 : f32 = x_289.unity_RenderingLayer.x;
  u_xlatu0 = (x_3340 & bitcast<u32>(x_3342));
  let x_3345 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3345);
  let x_3350 : f32 = u_xlat0.x;
  let x_3352 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3350 * x_3352);
  let x_3357 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3357, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3361 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3361.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

