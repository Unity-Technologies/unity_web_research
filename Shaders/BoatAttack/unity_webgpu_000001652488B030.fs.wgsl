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

@group(1) @binding(2) var<uniform> x_274 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_391 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2079 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2533 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2660 : AdditionalLightsCookies;

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
  var u_xlat4 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlatb22 : vec3<bool>;
  var u_xlat22 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat42 : f32;
  var x_378 : vec3<f32>;
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
  var x_2031 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat46 : f32;
  var x_2161 : f32;
  var x_2172 : vec3<f32>;
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
  var x_2952 : f32;
  var x_2965 : f32;
  var x_3017 : f32;
  var x_3028 : vec3<f32>;
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
  let x_107 : vec3<f32> = (-(x_105) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_108 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec3<f32> = u_xlat3;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat3 = ((-(x_110) * vec3<f32>(x_112.x, x_112.y, x_112.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_116 : vec4<f32> = u_xlat0;
  let x_118 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_116.x, x_116.y, x_116.z) * x_118);
  let x_120 : vec3<f32> = u_xlat2;
  let x_121 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_120 + x_121);
  let x_129 : vec4<f32> = u_xlat0;
  let x_131 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_129.x, x_129.y, x_129.z, x_129.x));
  let x_133 : vec3<bool> = vec3<bool>(x_131.x, x_131.y, x_131.z);
  let x_134 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_139 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_139);
  let x_144 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_144);
  let x_148 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_148);
  let x_152 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_152);
  let x_156 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_156);
  let x_160 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_160);
  let x_163 : vec3<f32> = u_xlat3;
  let x_164 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_163 * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec3<f32> = u_xlat2;
  let x_168 : vec4<f32> = u_xlat5;
  let x_171 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_167 * vec3<f32>(x_168.x, x_168.y, x_168.z)) + x_171);
  let x_173 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_173.x, x_173.y, x_173.z)) + x_176);
  let x_178 : f32 = u_xlat43;
  let x_180 : vec3<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_178, x_178, x_178) * x_180) + vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_186 : f32 = u_xlat0.x;
  u_xlat0.x = (x_186 + -0.150000006f);
  let x_191 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_191);
  let x_195 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_195) + 1.0f);
  let x_199 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_204);
  let x_210 : vec4<f32> = vs_INTERP3;
  let x_213 : f32 = x_44.x_GlobalMipBias.x;
  let x_214 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_210.x, x_210.y), x_213);
  u_xlat3 = vec3<f32>(x_214.x, x_214.y, x_214.w);
  let x_217 : f32 = u_xlat3.x;
  let x_219 : f32 = u_xlat3.z;
  u_xlat3.x = (x_217 * x_219);
  let x_224 : vec3<f32> = u_xlat3;
  u_xlat21 = ((vec2<f32>(x_224.x, x_224.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_232 : vec2<f32> = u_xlat21;
  let x_233 : vec2<f32> = u_xlat21;
  u_xlat43 = dot(x_232, x_233);
  let x_235 : f32 = u_xlat43;
  u_xlat43 = min(x_235, 1.0f);
  let x_237 : f32 = u_xlat43;
  u_xlat43 = (-(x_237) + 1.0f);
  let x_240 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_240);
  let x_242 : f32 = u_xlat43;
  u_xlat43 = max(x_242, 1.00000002e-16f);
  let x_246 : f32 = u_xlat1.x;
  let x_248 : f32 = u_xlat0.x;
  u_xlat0.x = (x_246 + x_248);
  let x_252 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_252, 0.0f, 1.0f);
  let x_256 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_256, 0.0f);
  let x_260 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_260, 0.850000024f);
  let x_268 : f32 = vs_INTERP2.w;
  u_xlatb22.x = (0.0f < x_268);
  let x_276 : f32 = x_274.unity_WorldTransformParams.w;
  u_xlatb22.z = (x_276 >= 0.0f);
  let x_281 : bool = u_xlatb22.x;
  u_xlat22.x = select(-1.0f, 1.0f, x_281);
  let x_285 : bool = u_xlatb22.z;
  u_xlat22.z = select(-1.0f, 1.0f, x_285);
  let x_289 : f32 = u_xlat22.z;
  let x_291 : f32 = u_xlat22.x;
  u_xlat22.x = (x_289 * x_291);
  let x_296 : vec3<f32> = vs_INTERP1;
  let x_298 : vec4<f32> = vs_INTERP2;
  u_xlat3 = (vec3<f32>(x_296.z, x_296.x, x_296.y) * vec3<f32>(x_298.y, x_298.z, x_298.x));
  let x_301 : vec3<f32> = vs_INTERP1;
  let x_303 : vec4<f32> = vs_INTERP2;
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_301.y, x_301.z, x_301.x) * vec3<f32>(x_303.z, x_303.x, x_303.y)) + -(x_306));
  let x_309 : vec3<f32> = u_xlat22;
  let x_311 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_309.x, x_309.x, x_309.x) * x_311);
  let x_313 : vec2<f32> = u_xlat21;
  let x_315 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * x_315);
  let x_317 : vec2<f32> = u_xlat21;
  let x_319 : vec4<f32> = vs_INTERP2;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_317.x, x_317.x, x_317.x) * vec3<f32>(x_319.x, x_319.y, x_319.z)) + x_322);
  let x_324 : f32 = u_xlat43;
  let x_326 : vec3<f32> = vs_INTERP1;
  let x_328 : vec3<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_324, x_324, x_324) * x_326) + x_328);
  let x_330 : vec3<f32> = u_xlat22;
  let x_331 : vec3<f32> = u_xlat22;
  u_xlat21.x = dot(x_330, x_331);
  let x_335 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_335);
  let x_338 : vec2<f32> = u_xlat21;
  let x_340 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_338.x, x_338.x, x_338.x) * x_340);
  let x_345 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_345 == 0.0f);
  let x_348 : vec3<f32> = vs_INTERP0;
  let x_353 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_348) + x_353);
  let x_356 : vec3<f32> = u_xlat3;
  let x_357 : vec3<f32> = u_xlat3;
  u_xlat42 = dot(x_356, x_357);
  let x_359 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat42;
  let x_363 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_368 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_368;
  let x_371 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_371;
  let x_375 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_375;
  let x_377 : bool = u_xlatb21;
  if (x_377) {
    let x_381 : vec3<f32> = u_xlat3;
    x_378 = x_381;
  } else {
    let x_383 : vec4<f32> = u_xlat4;
    x_378 = vec3<f32>(x_383.x, x_383.y, x_383.z);
  }
  let x_385 : vec3<f32> = x_378;
  u_xlat3 = x_385;
  let x_386 : vec3<f32> = vs_INTERP0;
  let x_393 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres0;
  let x_396 : vec3<f32> = (x_386 + -(vec3<f32>(x_393.x, x_393.y, x_393.z)));
  let x_397 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec3<f32> = vs_INTERP0;
  let x_401 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres1;
  let x_404 : vec3<f32> = (x_399 + -(vec3<f32>(x_401.x, x_401.y, x_401.z)));
  let x_405 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : vec3<f32> = vs_INTERP0;
  let x_410 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres2;
  let x_413 : vec3<f32> = (x_408 + -(vec3<f32>(x_410.x, x_410.y, x_410.z)));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : vec3<f32> = vs_INTERP0;
  let x_419 : vec4<f32> = x_391.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_417 + -(vec3<f32>(x_419.x, x_419.y, x_419.z)));
  let x_423 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_423.x, x_423.y, x_423.z), vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_429 : vec4<f32> = u_xlat5;
  let x_431 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_435 : vec4<f32> = u_xlat6;
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_435.x, x_435.y, x_435.z), vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_441 : vec3<f32> = u_xlat7;
  let x_442 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_441, x_442);
  let x_445 : vec4<f32> = u_xlat4;
  let x_448 : vec4<f32> = x_391.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_445 < x_448);
  let x_451 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_451);
  let x_455 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_455);
  let x_459 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_459);
  let x_463 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_463);
  let x_467 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_467);
  let x_472 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_472);
  let x_476 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_476);
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : vec4<f32> = u_xlat5;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) + vec3<f32>(x_481.y, x_481.z, x_481.w));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat4;
  let x_489 : vec3<f32> = max(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_490 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_490.x, x_489.x, x_489.y, x_489.z);
  let x_492 : vec4<f32> = u_xlat5;
  u_xlat21.x = dot(x_492, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_499 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_499) + 4.0f);
  let x_506 : f32 = u_xlat21.x;
  u_xlatu21 = u32(x_506);
  let x_510 : u32 = u_xlatu21;
  u_xlati21 = (bitcast<i32>(x_510) << bitcast<u32>(2i));
  let x_513 : vec3<f32> = vs_INTERP0;
  let x_515 : i32 = u_xlati21;
  let x_518 : i32 = u_xlati21;
  let x_522 : vec4<f32> = x_391.x_MainLightWorldToShadow[((x_515 + 1i) / 4i)][((x_518 + 1i) % 4i)];
  let x_524 : vec3<f32> = (vec3<f32>(x_513.y, x_513.y, x_513.y) * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : i32 = u_xlati21;
  let x_529 : i32 = u_xlati21;
  let x_532 : vec4<f32> = x_391.x_MainLightWorldToShadow[(x_527 / 4i)][(x_529 % 4i)];
  let x_534 : vec3<f32> = vs_INTERP0;
  let x_537 : vec4<f32> = u_xlat4;
  let x_539 : vec3<f32> = ((vec3<f32>(x_532.x, x_532.y, x_532.z) * vec3<f32>(x_534.x, x_534.x, x_534.x)) + vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : i32 = u_xlati21;
  let x_545 : i32 = u_xlati21;
  let x_549 : vec4<f32> = x_391.x_MainLightWorldToShadow[((x_542 + 2i) / 4i)][((x_545 + 2i) % 4i)];
  let x_551 : vec3<f32> = vs_INTERP0;
  let x_554 : vec4<f32> = u_xlat4;
  let x_556 : vec3<f32> = ((vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(x_551.z, x_551.z, x_551.z)) + vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec4<f32> = u_xlat4;
  let x_561 : i32 = u_xlati21;
  let x_564 : i32 = u_xlati21;
  let x_568 : vec4<f32> = x_391.x_MainLightWorldToShadow[((x_561 + 3i) / 4i)][((x_564 + 3i) % 4i)];
  let x_570 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_574 : f32 = vs_INTERP0.y;
  let x_576 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat21.x = (x_574 * x_576);
  let x_580 : f32 = x_44.unity_MatrixV[0i].z;
  let x_582 : f32 = vs_INTERP0.x;
  let x_585 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_580 * x_582) + x_585);
  let x_589 : f32 = x_44.unity_MatrixV[2i].z;
  let x_591 : f32 = vs_INTERP0.z;
  let x_594 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_589 * x_591) + x_594);
  let x_598 : f32 = u_xlat21.x;
  let x_600 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat21.x = (x_598 + x_600);
  let x_604 : f32 = u_xlat21.x;
  let x_608 : f32 = x_44.x_ProjectionParams.y;
  u_xlat21.x = (-(x_604) + -(x_608));
  let x_613 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_613, 0.0f);
  let x_617 : f32 = u_xlat21.x;
  let x_620 : f32 = x_44.unity_FogParams.x;
  u_xlat21.x = (x_617 * x_620);
  let x_630 : vec2<f32> = vs_INTERP4;
  let x_632 : f32 = x_44.x_GlobalMipBias.x;
  let x_633 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_630, x_632);
  let x_634 : vec3<f32> = vec3<f32>(x_633.x, x_633.y, x_633.z);
  let x_635 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_639 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_640 : vec2<f32> = vec2<f32>(x_639.x, x_639.y);
  let x_644 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_640.x, x_640.y));
  let x_645 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat6;
  let x_649 : vec4<f32> = hlslcc_FragCoord;
  let x_651 : vec2<f32> = (vec2<f32>(x_647.x, x_647.y) * vec2<f32>(x_649.x, x_649.y));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
  let x_655 : f32 = u_xlat6.y;
  let x_658 : f32 = x_44.x_ScaleBiasRt.x;
  let x_661 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat42 = ((x_655 * x_658) + x_661);
  let x_663 : f32 = u_xlat42;
  u_xlat6.z = (-(x_663) + 1.0f);
  let x_668 : f32 = u_xlat0.x;
  u_xlat42 = ((-(x_668) * 0.959999979f) + 0.959999979f);
  let x_674 : f32 = u_xlat42;
  let x_677 : f32 = u_xlat1.x;
  u_xlat65 = (-(x_674) + x_677);
  let x_679 : f32 = u_xlat42;
  let x_681 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_679, x_679, x_679) * x_681);
  let x_683 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_683 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_687 : vec4<f32> = u_xlat0;
  let x_689 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_687.x, x_687.x, x_687.x) * x_689) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_695 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_695) + 1.0f);
  let x_700 : f32 = u_xlat0.x;
  let x_702 : f32 = u_xlat0.x;
  u_xlat42 = (x_700 * x_702);
  let x_704 : f32 = u_xlat42;
  let x_705 : f32 = u_xlat42;
  u_xlat1.x = (x_704 * x_705);
  let x_708 : f32 = u_xlat65;
  u_xlat65 = (x_708 + 1.0f);
  let x_710 : f32 = u_xlat65;
  u_xlat65 = min(x_710, 1.0f);
  let x_713 : f32 = u_xlat42;
  u_xlat66 = ((x_713 * 4.0f) + 2.0f);
  let x_722 : vec4<f32> = u_xlat6;
  let x_725 : f32 = x_44.x_GlobalMipBias.x;
  let x_726 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_722.x, x_722.z), x_725);
  u_xlat67 = x_726.x;
  let x_729 : f32 = u_xlat67;
  u_xlat68 = (x_729 + -1.0f);
  let x_732 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_733 : f32 = u_xlat68;
  u_xlat68 = ((x_732 * x_733) + 1.0f);
  let x_738 : f32 = u_xlat0.w;
  let x_739 : f32 = u_xlat67;
  u_xlat63 = min(x_738, x_739);
  let x_743 : f32 = x_391.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_743);
  let x_745 : bool = u_xlatb67;
  if (x_745) {
    let x_749 : f32 = x_391.x_MainLightShadowParams.y;
    u_xlatb67 = (x_749 == 1.0f);
    let x_751 : bool = u_xlatb67;
    if (x_751) {
      let x_754 : vec4<f32> = u_xlat4;
      let x_758 : vec4<f32> = x_391.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_754.x, x_754.y, x_754.x, x_754.y) + x_758);
      let x_761 : vec4<f32> = u_xlat6;
      let x_762 : vec2<f32> = vec2<f32>(x_761.x, x_761.y);
      let x_764 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_762.x, x_762.y, x_764);
      let x_777 : vec3<f32> = txVec0;
      let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_777.xy, x_777.z);
      u_xlat8.x = x_779;
      let x_782 : vec4<f32> = u_xlat6;
      let x_783 : vec2<f32> = vec2<f32>(x_782.z, x_782.w);
      let x_785 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_783.x, x_783.y, x_785);
      let x_792 : vec3<f32> = txVec1;
      let x_794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_792.xy, x_792.z);
      u_xlat8.y = x_794;
      let x_796 : vec4<f32> = u_xlat4;
      let x_800 : vec4<f32> = x_391.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_796.x, x_796.y, x_796.x, x_796.y) + x_800);
      let x_803 : vec4<f32> = u_xlat6;
      let x_804 : vec2<f32> = vec2<f32>(x_803.x, x_803.y);
      let x_806 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_804.x, x_804.y, x_806);
      let x_813 : vec3<f32> = txVec2;
      let x_815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_813.xy, x_813.z);
      u_xlat8.z = x_815;
      let x_818 : vec4<f32> = u_xlat6;
      let x_819 : vec2<f32> = vec2<f32>(x_818.z, x_818.w);
      let x_821 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_819.x, x_819.y, x_821);
      let x_828 : vec3<f32> = txVec3;
      let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_828.xy, x_828.z);
      u_xlat8.w = x_830;
      let x_832 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_832, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_841 : f32 = x_391.x_MainLightShadowParams.y;
      u_xlatb6.x = (x_841 == 2.0f);
      let x_845 : bool = u_xlatb6.x;
      if (x_845) {
        let x_848 : vec4<f32> = u_xlat4;
        let x_851 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_855 : vec2<f32> = ((vec2<f32>(x_848.x, x_848.y) * vec2<f32>(x_851.z, x_851.w)) + vec2<f32>(0.5f, 0.5f));
        let x_856 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_855.x, x_855.y, x_856.z, x_856.w);
        let x_858 : vec4<f32> = u_xlat6;
        let x_860 : vec2<f32> = floor(vec2<f32>(x_858.x, x_858.y));
        let x_861 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_864 : vec4<f32> = u_xlat4;
        let x_867 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_870 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_867.z, x_867.w)) + -(vec2<f32>(x_870.x, x_870.y)));
        let x_874 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_874.x, x_874.x, x_874.y, x_874.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_879 : vec4<f32> = u_xlat8;
        let x_881 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_879.x, x_879.x, x_879.z, x_879.z) * vec4<f32>(x_881.x, x_881.x, x_881.z, x_881.z));
        let x_884 : vec4<f32> = u_xlat9;
        let x_888 : vec2<f32> = (vec2<f32>(x_884.y, x_884.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_889 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_888.x, x_889.y, x_888.y, x_889.w);
        let x_891 : vec4<f32> = u_xlat9;
        let x_894 : vec2<f32> = u_xlat48;
        let x_896 : vec2<f32> = ((vec2<f32>(x_891.x, x_891.z) * vec2<f32>(0.5f, 0.5f)) + -(x_894));
        let x_897 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_896.x, x_896.y, x_897.z, x_897.w);
        let x_900 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_900) + vec2<f32>(1.0f, 1.0f));
        let x_904 : vec2<f32> = u_xlat48;
        let x_906 : vec2<f32> = min(x_904, vec2<f32>(0.0f, 0.0f));
        let x_907 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_909 : vec4<f32> = u_xlat10;
        let x_912 : vec4<f32> = u_xlat10;
        let x_915 : vec2<f32> = u_xlat51;
        let x_916 : vec2<f32> = ((-(vec2<f32>(x_909.x, x_909.y)) * vec2<f32>(x_912.x, x_912.y)) + x_915);
        let x_917 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_919, vec2<f32>(0.0f, 0.0f));
        let x_921 : vec2<f32> = u_xlat48;
        let x_923 : vec2<f32> = u_xlat48;
        let x_925 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_921) * x_923) + vec2<f32>(x_925.y, x_925.w));
        let x_928 : vec4<f32> = u_xlat10;
        let x_930 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) + vec2<f32>(1.0f, 1.0f));
        let x_931 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_933 + vec2<f32>(1.0f, 1.0f));
        let x_936 : vec4<f32> = u_xlat9;
        let x_940 : vec2<f32> = (vec2<f32>(x_936.x, x_936.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_941 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec2<f32> = u_xlat51;
        let x_944 : vec2<f32> = (x_943 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_945 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        let x_947 : vec4<f32> = u_xlat10;
        let x_949 : vec2<f32> = (vec2<f32>(x_947.x, x_947.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_950 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_953 : vec2<f32> = u_xlat48;
        let x_954 : vec2<f32> = (x_953 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_955 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_957.y, x_957.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_961 : f32 = u_xlat10.x;
        u_xlat11.z = x_961;
        let x_964 : f32 = u_xlat48.x;
        u_xlat11.w = x_964;
        let x_967 : f32 = u_xlat12.x;
        u_xlat9.z = x_967;
        let x_970 : f32 = u_xlat8.x;
        u_xlat9.w = x_970;
        let x_973 : vec4<f32> = u_xlat9;
        let x_975 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_973.z, x_973.w, x_973.x, x_973.z) + vec4<f32>(x_975.z, x_975.w, x_975.x, x_975.z));
        let x_979 : f32 = u_xlat11.y;
        u_xlat10.z = x_979;
        let x_982 : f32 = u_xlat48.y;
        u_xlat10.w = x_982;
        let x_985 : f32 = u_xlat9.y;
        u_xlat12.z = x_985;
        let x_988 : f32 = u_xlat8.z;
        u_xlat12.w = x_988;
        let x_990 : vec4<f32> = u_xlat10;
        let x_992 : vec4<f32> = u_xlat12;
        let x_994 : vec3<f32> = (vec3<f32>(x_990.z, x_990.y, x_990.w) + vec3<f32>(x_992.z, x_992.y, x_992.w));
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
        let x_997 : vec4<f32> = u_xlat9;
        let x_999 : vec4<f32> = u_xlat13;
        let x_1001 : vec3<f32> = (vec3<f32>(x_997.x, x_997.z, x_997.w) / vec3<f32>(x_999.z, x_999.w, x_999.y));
        let x_1002 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
        let x_1004 : vec4<f32> = u_xlat9;
        let x_1010 : vec3<f32> = (vec3<f32>(x_1004.x, x_1004.y, x_1004.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1011 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat12;
        let x_1015 : vec4<f32> = u_xlat8;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1013.z, x_1013.y, x_1013.w) / vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat10;
        let x_1022 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1023 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
        let x_1025 : vec4<f32> = u_xlat9;
        let x_1028 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1030 : vec3<f32> = (vec3<f32>(x_1025.y, x_1025.x, x_1025.z) * vec3<f32>(x_1028.x, x_1028.x, x_1028.x));
        let x_1031 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
        let x_1033 : vec4<f32> = u_xlat10;
        let x_1036 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1038 : vec3<f32> = (vec3<f32>(x_1033.x, x_1033.y, x_1033.z) * vec3<f32>(x_1036.y, x_1036.y, x_1036.y));
        let x_1039 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
        let x_1042 : f32 = u_xlat10.x;
        u_xlat9.w = x_1042;
        let x_1044 : vec4<f32> = u_xlat6;
        let x_1047 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1044.x, x_1044.y, x_1044.x, x_1044.y) * vec4<f32>(x_1047.x, x_1047.y, x_1047.x, x_1047.y)) + vec4<f32>(x_1050.y, x_1050.w, x_1050.x, x_1050.w));
        let x_1053 : vec4<f32> = u_xlat6;
        let x_1056 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1053.x, x_1053.y) * vec2<f32>(x_1056.x, x_1056.y)) + vec2<f32>(x_1059.z, x_1059.w));
        let x_1063 : f32 = u_xlat9.y;
        u_xlat10.w = x_1063;
        let x_1065 : vec4<f32> = u_xlat10;
        let x_1066 : vec2<f32> = vec2<f32>(x_1065.y, x_1065.z);
        let x_1067 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1067.x, x_1066.x, x_1067.z, x_1066.y);
        let x_1069 : vec4<f32> = u_xlat6;
        let x_1072 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y) * vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y)) + vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1081 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1084 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1078.x, x_1078.y, x_1078.x, x_1078.y) * vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y)) + vec4<f32>(x_1084.w, x_1084.y, x_1084.w, x_1084.z));
        let x_1087 : vec4<f32> = u_xlat6;
        let x_1090 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.w, x_1093.z, x_1093.w));
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1099 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1097.x, x_1097.x, x_1097.x, x_1097.y) * vec4<f32>(x_1099.z, x_1099.w, x_1099.y, x_1099.z));
        let x_1103 : vec4<f32> = u_xlat8;
        let x_1105 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1103.y, x_1103.y, x_1103.z, x_1103.z) * x_1105);
        let x_1108 : f32 = u_xlat8.z;
        let x_1110 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1108 * x_1110);
        let x_1114 : vec4<f32> = u_xlat11;
        let x_1115 : vec2<f32> = vec2<f32>(x_1114.x, x_1114.y);
        let x_1117 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1115.x, x_1115.y, x_1117);
        let x_1125 : vec3<f32> = txVec4;
        let x_1127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1125.xy, x_1125.z);
        u_xlat27 = x_1127;
        let x_1129 : vec4<f32> = u_xlat11;
        let x_1130 : vec2<f32> = vec2<f32>(x_1129.z, x_1129.w);
        let x_1132 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1130.x, x_1130.y, x_1132);
        let x_1140 : vec3<f32> = txVec5;
        let x_1142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1140.xy, x_1140.z);
        u_xlat70 = x_1142;
        let x_1143 : f32 = u_xlat70;
        let x_1145 : f32 = u_xlat14.y;
        u_xlat70 = (x_1143 * x_1145);
        let x_1148 : f32 = u_xlat14.x;
        let x_1149 : f32 = u_xlat27;
        let x_1151 : f32 = u_xlat70;
        u_xlat27 = ((x_1148 * x_1149) + x_1151);
        let x_1154 : vec2<f32> = u_xlat48;
        let x_1156 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec6;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1163.xy, x_1163.z);
        u_xlat48.x = x_1165;
        let x_1168 : f32 = u_xlat14.z;
        let x_1170 : f32 = u_xlat48.x;
        let x_1172 : f32 = u_xlat27;
        u_xlat27 = ((x_1168 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat10;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.x, x_1175.y);
        let x_1178 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec7;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1185.xy, x_1185.z);
        u_xlat48.x = x_1187;
        let x_1190 : f32 = u_xlat14.w;
        let x_1192 : f32 = u_xlat48.x;
        let x_1194 : f32 = u_xlat27;
        u_xlat27 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat12;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec8;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1207.xy, x_1207.z);
        u_xlat48.x = x_1209;
        let x_1212 : f32 = u_xlat15.x;
        let x_1214 : f32 = u_xlat48.x;
        let x_1216 : f32 = u_xlat27;
        u_xlat27 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat12;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec9;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1229.xy, x_1229.z);
        u_xlat48.x = x_1231;
        let x_1234 : f32 = u_xlat15.y;
        let x_1236 : f32 = u_xlat48.x;
        let x_1238 : f32 = u_xlat27;
        u_xlat27 = ((x_1234 * x_1236) + x_1238);
        let x_1241 : vec4<f32> = u_xlat10;
        let x_1242 : vec2<f32> = vec2<f32>(x_1241.z, x_1241.w);
        let x_1244 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1242.x, x_1242.y, x_1244);
        let x_1251 : vec3<f32> = txVec10;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1251.xy, x_1251.z);
        u_xlat48.x = x_1253;
        let x_1256 : f32 = u_xlat15.z;
        let x_1258 : f32 = u_xlat48.x;
        let x_1260 : f32 = u_xlat27;
        u_xlat27 = ((x_1256 * x_1258) + x_1260);
        let x_1263 : vec4<f32> = u_xlat9;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.x, x_1263.y);
        let x_1266 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec11;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1273.xy, x_1273.z);
        u_xlat48.x = x_1275;
        let x_1278 : f32 = u_xlat15.w;
        let x_1280 : f32 = u_xlat48.x;
        let x_1282 : f32 = u_xlat27;
        u_xlat27 = ((x_1278 * x_1280) + x_1282);
        let x_1285 : vec4<f32> = u_xlat9;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.z, x_1285.w);
        let x_1288 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec12;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1295.xy, x_1295.z);
        u_xlat48.x = x_1297;
        let x_1300 : f32 = u_xlat6.x;
        let x_1302 : f32 = u_xlat48.x;
        let x_1304 : f32 = u_xlat27;
        u_xlat67 = ((x_1300 * x_1302) + x_1304);
      } else {
        let x_1307 : vec4<f32> = u_xlat4;
        let x_1310 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1313 : vec2<f32> = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1310.z, x_1310.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1314 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1313.x, x_1313.y, x_1314.z, x_1314.w);
        let x_1316 : vec4<f32> = u_xlat6;
        let x_1318 : vec2<f32> = floor(vec2<f32>(x_1316.x, x_1316.y));
        let x_1319 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1318.x, x_1318.y, x_1319.z, x_1319.w);
        let x_1321 : vec4<f32> = u_xlat4;
        let x_1324 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1321.x, x_1321.y) * vec2<f32>(x_1324.z, x_1324.w)) + -(vec2<f32>(x_1327.x, x_1327.y)));
        let x_1331 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1331.x, x_1331.x, x_1331.y, x_1331.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1334 : vec4<f32> = u_xlat8;
        let x_1336 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1334.x, x_1334.x, x_1334.z, x_1334.z) * vec4<f32>(x_1336.x, x_1336.x, x_1336.z, x_1336.z));
        let x_1339 : vec4<f32> = u_xlat9;
        let x_1343 : vec2<f32> = (vec2<f32>(x_1339.y, x_1339.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1344 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1344.x, x_1343.x, x_1344.z, x_1343.y);
        let x_1346 : vec4<f32> = u_xlat9;
        let x_1349 : vec2<f32> = u_xlat48;
        let x_1351 : vec2<f32> = ((vec2<f32>(x_1346.x, x_1346.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1349));
        let x_1352 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1351.x, x_1352.y, x_1351.y, x_1352.w);
        let x_1354 : vec2<f32> = u_xlat48;
        let x_1356 : vec2<f32> = (-(x_1354) + vec2<f32>(1.0f, 1.0f));
        let x_1357 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1359 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1359, vec2<f32>(0.0f, 0.0f));
        let x_1361 : vec2<f32> = u_xlat51;
        let x_1363 : vec2<f32> = u_xlat51;
        let x_1365 : vec4<f32> = u_xlat9;
        let x_1367 : vec2<f32> = ((-(x_1361) * x_1363) + vec2<f32>(x_1365.x, x_1365.y));
        let x_1368 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
        let x_1370 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1370, vec2<f32>(0.0f, 0.0f));
        let x_1373 : vec2<f32> = u_xlat51;
        let x_1375 : vec2<f32> = u_xlat51;
        let x_1377 : vec4<f32> = u_xlat8;
        let x_1379 : vec2<f32> = ((-(x_1373) * x_1375) + vec2<f32>(x_1377.y, x_1377.w));
        let x_1380 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1379.x, x_1380.y, x_1379.y);
        let x_1382 : vec4<f32> = u_xlat9;
        let x_1384 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.y) + vec2<f32>(2.0f, 2.0f));
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : vec3<f32> = u_xlat29;
        let x_1389 : vec2<f32> = (vec2<f32>(x_1387.x, x_1387.z) + vec2<f32>(2.0f, 2.0f));
        let x_1390 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1390.x, x_1389.x, x_1390.z, x_1389.y);
        let x_1393 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1393 * 0.081632003f);
        let x_1397 : vec4<f32> = u_xlat8;
        let x_1400 : vec3<f32> = (vec3<f32>(x_1397.z, x_1397.x, x_1397.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1401 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat9;
        let x_1406 : vec2<f32> = (vec2<f32>(x_1403.x, x_1403.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1406.x, x_1406.y, x_1407.z, x_1407.w);
        let x_1410 : f32 = u_xlat12.y;
        u_xlat11.x = x_1410;
        let x_1412 : vec2<f32> = u_xlat48;
        let x_1419 : vec2<f32> = ((vec2<f32>(x_1412.x, x_1412.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1420 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1420.x, x_1419.x, x_1420.z, x_1419.y);
        let x_1422 : vec2<f32> = u_xlat48;
        let x_1426 : vec2<f32> = ((vec2<f32>(x_1422.x, x_1422.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1427 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1426.x, x_1427.y, x_1426.y, x_1427.w);
        let x_1430 : f32 = u_xlat8.x;
        u_xlat9.y = x_1430;
        let x_1433 : f32 = u_xlat10.y;
        u_xlat9.w = x_1433;
        let x_1435 : vec4<f32> = u_xlat9;
        let x_1436 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1435 + x_1436);
        let x_1438 : vec2<f32> = u_xlat48;
        let x_1441 : vec2<f32> = ((vec2<f32>(x_1438.y, x_1438.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1442 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1442.x, x_1441.x, x_1442.z, x_1441.y);
        let x_1444 : vec2<f32> = u_xlat48;
        let x_1447 : vec2<f32> = ((vec2<f32>(x_1444.y, x_1444.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1448 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1447.x, x_1448.y, x_1447.y, x_1448.w);
        let x_1451 : f32 = u_xlat8.y;
        u_xlat10.y = x_1451;
        let x_1453 : vec4<f32> = u_xlat10;
        let x_1454 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1453 + x_1454);
        let x_1456 : vec4<f32> = u_xlat9;
        let x_1457 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1456 / x_1457);
        let x_1459 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1459 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1465 : vec4<f32> = u_xlat10;
        let x_1466 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1465 / x_1466);
        let x_1468 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1468 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1470 : vec4<f32> = u_xlat9;
        let x_1473 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1470.w, x_1470.x, x_1470.y, x_1470.z) * vec4<f32>(x_1473.x, x_1473.x, x_1473.x, x_1473.x));
        let x_1476 : vec4<f32> = u_xlat10;
        let x_1479 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1476.x, x_1476.w, x_1476.y, x_1476.z) * vec4<f32>(x_1479.y, x_1479.y, x_1479.y, x_1479.y));
        let x_1482 : vec4<f32> = u_xlat9;
        let x_1483 : vec3<f32> = vec3<f32>(x_1482.y, x_1482.z, x_1482.w);
        let x_1484 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1483.x, x_1484.y, x_1483.y, x_1483.z);
        let x_1487 : f32 = u_xlat10.x;
        u_xlat12.y = x_1487;
        let x_1489 : vec4<f32> = u_xlat6;
        let x_1492 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1495 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y) * vec4<f32>(x_1492.x, x_1492.y, x_1492.x, x_1492.y)) + vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1495.y));
        let x_1498 : vec4<f32> = u_xlat6;
        let x_1501 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1498.x, x_1498.y) * vec2<f32>(x_1501.x, x_1501.y)) + vec2<f32>(x_1504.w, x_1504.y));
        let x_1508 : f32 = u_xlat12.y;
        u_xlat9.y = x_1508;
        let x_1511 : f32 = u_xlat10.z;
        u_xlat12.y = x_1511;
        let x_1513 : vec4<f32> = u_xlat6;
        let x_1516 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1519 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1513.x, x_1513.y, x_1513.x, x_1513.y) * vec4<f32>(x_1516.x, x_1516.y, x_1516.x, x_1516.y)) + vec4<f32>(x_1519.x, x_1519.y, x_1519.z, x_1519.y));
        let x_1522 : vec4<f32> = u_xlat6;
        let x_1525 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1528 : vec4<f32> = u_xlat12;
        let x_1530 : vec2<f32> = ((vec2<f32>(x_1522.x, x_1522.y) * vec2<f32>(x_1525.x, x_1525.y)) + vec2<f32>(x_1528.w, x_1528.y));
        let x_1531 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1530.x, x_1530.y, x_1531.z, x_1531.w);
        let x_1534 : f32 = u_xlat12.y;
        u_xlat9.z = x_1534;
        let x_1537 : vec4<f32> = u_xlat6;
        let x_1540 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1543 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y) * vec4<f32>(x_1540.x, x_1540.y, x_1540.x, x_1540.y)) + vec4<f32>(x_1543.x, x_1543.y, x_1543.x, x_1543.z));
        let x_1547 : f32 = u_xlat10.w;
        u_xlat12.y = x_1547;
        let x_1550 : vec4<f32> = u_xlat6;
        let x_1553 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1556 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y) * vec4<f32>(x_1553.x, x_1553.y, x_1553.x, x_1553.y)) + vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1556.y));
        let x_1560 : vec4<f32> = u_xlat6;
        let x_1563 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1566 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1560.x, x_1560.y) * vec2<f32>(x_1563.x, x_1563.y)) + vec2<f32>(x_1566.w, x_1566.y));
        let x_1570 : f32 = u_xlat12.y;
        u_xlat9.w = x_1570;
        let x_1573 : vec4<f32> = u_xlat6;
        let x_1576 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1579 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1573.x, x_1573.y) * vec2<f32>(x_1576.x, x_1576.y)) + vec2<f32>(x_1579.x, x_1579.w));
        let x_1582 : vec4<f32> = u_xlat12;
        let x_1583 : vec3<f32> = vec3<f32>(x_1582.x, x_1582.z, x_1582.w);
        let x_1584 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1583.x, x_1584.y, x_1583.y, x_1583.z);
        let x_1586 : vec4<f32> = u_xlat6;
        let x_1589 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1592 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1586.x, x_1586.y, x_1586.x, x_1586.y) * vec4<f32>(x_1589.x, x_1589.y, x_1589.x, x_1589.y)) + vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1592.y));
        let x_1596 : vec4<f32> = u_xlat6;
        let x_1599 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1602 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1596.x, x_1596.y) * vec2<f32>(x_1599.x, x_1599.y)) + vec2<f32>(x_1602.w, x_1602.y));
        let x_1606 : f32 = u_xlat9.x;
        u_xlat10.x = x_1606;
        let x_1608 : vec4<f32> = u_xlat6;
        let x_1611 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1614 : vec4<f32> = u_xlat10;
        let x_1616 : vec2<f32> = ((vec2<f32>(x_1608.x, x_1608.y) * vec2<f32>(x_1611.x, x_1611.y)) + vec2<f32>(x_1614.x, x_1614.y));
        let x_1617 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1616.x, x_1616.y, x_1617.z, x_1617.w);
        let x_1620 : vec4<f32> = u_xlat8;
        let x_1622 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1620.x, x_1620.x, x_1620.x, x_1620.x) * x_1622);
        let x_1625 : vec4<f32> = u_xlat8;
        let x_1627 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1625.y, x_1625.y, x_1625.y, x_1625.y) * x_1627);
        let x_1630 : vec4<f32> = u_xlat8;
        let x_1632 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1630.z, x_1630.z, x_1630.z, x_1630.z) * x_1632);
        let x_1634 : vec4<f32> = u_xlat8;
        let x_1636 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1634.w, x_1634.w, x_1634.w, x_1634.w) * x_1636);
        let x_1639 : vec4<f32> = u_xlat13;
        let x_1640 : vec2<f32> = vec2<f32>(x_1639.x, x_1639.y);
        let x_1642 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
        let x_1649 : vec3<f32> = txVec13;
        let x_1651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1649.xy, x_1649.z);
        u_xlat70 = x_1651;
        let x_1653 : vec4<f32> = u_xlat13;
        let x_1654 : vec2<f32> = vec2<f32>(x_1653.z, x_1653.w);
        let x_1656 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec14;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat9.x = x_1665;
        let x_1668 : f32 = u_xlat9.x;
        let x_1670 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1668 * x_1670);
        let x_1674 : f32 = u_xlat18.x;
        let x_1675 : f32 = u_xlat70;
        let x_1678 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1674 * x_1675) + x_1678);
        let x_1681 : vec2<f32> = u_xlat48;
        let x_1683 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1690 : vec3<f32> = txVec15;
        let x_1692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1690.xy, x_1690.z);
        u_xlat48.x = x_1692;
        let x_1695 : f32 = u_xlat18.z;
        let x_1697 : f32 = u_xlat48.x;
        let x_1699 : f32 = u_xlat70;
        u_xlat48.x = ((x_1695 * x_1697) + x_1699);
        let x_1703 : vec4<f32> = u_xlat16;
        let x_1704 : vec2<f32> = vec2<f32>(x_1703.x, x_1703.y);
        let x_1706 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
        let x_1714 : vec3<f32> = txVec16;
        let x_1716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1714.xy, x_1714.z);
        u_xlat69 = x_1716;
        let x_1718 : f32 = u_xlat18.w;
        let x_1719 : f32 = u_xlat69;
        let x_1722 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1718 * x_1719) + x_1722);
        let x_1726 : vec4<f32> = u_xlat14;
        let x_1727 : vec2<f32> = vec2<f32>(x_1726.x, x_1726.y);
        let x_1729 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
        let x_1736 : vec3<f32> = txVec17;
        let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1736.xy, x_1736.z);
        u_xlat69 = x_1738;
        let x_1740 : f32 = u_xlat19.x;
        let x_1741 : f32 = u_xlat69;
        let x_1744 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1740 * x_1741) + x_1744);
        let x_1748 : vec4<f32> = u_xlat14;
        let x_1749 : vec2<f32> = vec2<f32>(x_1748.z, x_1748.w);
        let x_1751 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
        let x_1758 : vec3<f32> = txVec18;
        let x_1760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1758.xy, x_1758.z);
        u_xlat69 = x_1760;
        let x_1762 : f32 = u_xlat19.y;
        let x_1763 : f32 = u_xlat69;
        let x_1766 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1762 * x_1763) + x_1766);
        let x_1770 : vec4<f32> = u_xlat15;
        let x_1771 : vec2<f32> = vec2<f32>(x_1770.x, x_1770.y);
        let x_1773 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1771.x, x_1771.y, x_1773);
        let x_1780 : vec3<f32> = txVec19;
        let x_1782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1780.xy, x_1780.z);
        u_xlat69 = x_1782;
        let x_1784 : f32 = u_xlat19.z;
        let x_1785 : f32 = u_xlat69;
        let x_1788 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1784 * x_1785) + x_1788);
        let x_1792 : vec4<f32> = u_xlat16;
        let x_1793 : vec2<f32> = vec2<f32>(x_1792.z, x_1792.w);
        let x_1795 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1793.x, x_1793.y, x_1795);
        let x_1802 : vec3<f32> = txVec20;
        let x_1804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1802.xy, x_1802.z);
        u_xlat69 = x_1804;
        let x_1806 : f32 = u_xlat19.w;
        let x_1807 : f32 = u_xlat69;
        let x_1810 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1806 * x_1807) + x_1810);
        let x_1814 : vec4<f32> = u_xlat17;
        let x_1815 : vec2<f32> = vec2<f32>(x_1814.x, x_1814.y);
        let x_1817 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1815.x, x_1815.y, x_1817);
        let x_1824 : vec3<f32> = txVec21;
        let x_1826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1824.xy, x_1824.z);
        u_xlat69 = x_1826;
        let x_1828 : f32 = u_xlat20.x;
        let x_1829 : f32 = u_xlat69;
        let x_1832 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1828 * x_1829) + x_1832);
        let x_1836 : vec4<f32> = u_xlat17;
        let x_1837 : vec2<f32> = vec2<f32>(x_1836.z, x_1836.w);
        let x_1839 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
        let x_1846 : vec3<f32> = txVec22;
        let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1846.xy, x_1846.z);
        u_xlat69 = x_1848;
        let x_1850 : f32 = u_xlat20.y;
        let x_1851 : f32 = u_xlat69;
        let x_1854 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1850 * x_1851) + x_1854);
        let x_1858 : vec2<f32> = u_xlat30;
        let x_1860 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1858.x, x_1858.y, x_1860);
        let x_1867 : vec3<f32> = txVec23;
        let x_1869 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1867.xy, x_1867.z);
        u_xlat69 = x_1869;
        let x_1871 : f32 = u_xlat20.z;
        let x_1872 : f32 = u_xlat69;
        let x_1875 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1871 * x_1872) + x_1875);
        let x_1879 : vec2<f32> = u_xlat57;
        let x_1881 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1879.x, x_1879.y, x_1881);
        let x_1888 : vec3<f32> = txVec24;
        let x_1890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1888.xy, x_1888.z);
        u_xlat69 = x_1890;
        let x_1892 : f32 = u_xlat20.w;
        let x_1893 : f32 = u_xlat69;
        let x_1896 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1892 * x_1893) + x_1896);
        let x_1900 : vec4<f32> = u_xlat12;
        let x_1901 : vec2<f32> = vec2<f32>(x_1900.x, x_1900.y);
        let x_1903 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1901.x, x_1901.y, x_1903);
        let x_1910 : vec3<f32> = txVec25;
        let x_1912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1910.xy, x_1910.z);
        u_xlat69 = x_1912;
        let x_1914 : f32 = u_xlat8.x;
        let x_1915 : f32 = u_xlat69;
        let x_1918 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1914 * x_1915) + x_1918);
        let x_1922 : vec4<f32> = u_xlat12;
        let x_1923 : vec2<f32> = vec2<f32>(x_1922.z, x_1922.w);
        let x_1925 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1923.x, x_1923.y, x_1925);
        let x_1932 : vec3<f32> = txVec26;
        let x_1934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1932.xy, x_1932.z);
        u_xlat69 = x_1934;
        let x_1936 : f32 = u_xlat8.y;
        let x_1937 : f32 = u_xlat69;
        let x_1940 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1936 * x_1937) + x_1940);
        let x_1944 : vec2<f32> = u_xlat52;
        let x_1946 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1944.x, x_1944.y, x_1946);
        let x_1953 : vec3<f32> = txVec27;
        let x_1955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1953.xy, x_1953.z);
        u_xlat69 = x_1955;
        let x_1957 : f32 = u_xlat8.z;
        let x_1958 : f32 = u_xlat69;
        let x_1961 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1957 * x_1958) + x_1961);
        let x_1965 : vec4<f32> = u_xlat6;
        let x_1966 : vec2<f32> = vec2<f32>(x_1965.x, x_1965.y);
        let x_1968 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1966.x, x_1966.y, x_1968);
        let x_1975 : vec3<f32> = txVec28;
        let x_1977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1975.xy, x_1975.z);
        u_xlat6.x = x_1977;
        let x_1980 : f32 = u_xlat8.w;
        let x_1982 : f32 = u_xlat6.x;
        let x_1985 : f32 = u_xlat48.x;
        u_xlat67 = ((x_1980 * x_1982) + x_1985);
      }
    }
  } else {
    let x_1989 : vec4<f32> = u_xlat4;
    let x_1990 : vec2<f32> = vec2<f32>(x_1989.x, x_1989.y);
    let x_1992 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1990.x, x_1990.y, x_1992);
    let x_1999 : vec3<f32> = txVec29;
    let x_2001 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1999.xy, x_1999.z);
    u_xlat67 = x_2001;
  }
  let x_2003 : f32 = x_391.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2003) + 1.0f);
  let x_2007 : f32 = u_xlat67;
  let x_2009 : f32 = x_391.x_MainLightShadowParams.x;
  let x_2012 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2007 * x_2009) + x_2012);
  let x_2017 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_2017);
  let x_2022 : f32 = u_xlat4.z;
  u_xlatb46 = (x_2022 >= 1.0f);
  let x_2024 : bool = u_xlatb46;
  let x_2026 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2024 | x_2026);
  let x_2030 : bool = u_xlatb25.x;
  if (x_2030) {
    x_2031 = 1.0f;
  } else {
    let x_2036 : f32 = u_xlat4.x;
    x_2031 = x_2036;
  }
  let x_2037 : f32 = x_2031;
  u_xlat4.x = x_2037;
  let x_2040 : vec3<f32> = vs_INTERP0;
  let x_2042 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_2040 + -(x_2042));
  let x_2045 : vec3<f32> = u_xlat25;
  let x_2046 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_2045, x_2046);
  let x_2050 : f32 = u_xlat25.x;
  let x_2052 : f32 = x_391.x_MainLightShadowParams.z;
  let x_2055 : f32 = x_391.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2050 * x_2052) + x_2055);
  let x_2059 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2059, 0.0f, 1.0f);
  let x_2064 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_2064) + 1.0f);
  let x_2068 : f32 = u_xlat25.x;
  let x_2069 : f32 = u_xlat46;
  let x_2072 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2068 * x_2069) + x_2072);
  let x_2081 : f32 = x_2079.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2081 == -1.0f));
  let x_2085 : bool = u_xlatb25.x;
  if (x_2085) {
    let x_2088 : vec3<f32> = vs_INTERP0;
    let x_2091 : vec4<f32> = x_2079.x_MainLightWorldToLight[1i];
    let x_2093 : vec2<f32> = (vec2<f32>(x_2088.y, x_2088.y) * vec2<f32>(x_2091.x, x_2091.y));
    let x_2094 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2093.x, x_2093.y, x_2094.z);
    let x_2097 : vec4<f32> = x_2079.x_MainLightWorldToLight[0i];
    let x_2099 : vec3<f32> = vs_INTERP0;
    let x_2102 : vec3<f32> = u_xlat25;
    let x_2104 : vec2<f32> = ((vec2<f32>(x_2097.x, x_2097.y) * vec2<f32>(x_2099.x, x_2099.x)) + vec2<f32>(x_2102.x, x_2102.y));
    let x_2105 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2104.x, x_2104.y, x_2105.z);
    let x_2108 : vec4<f32> = x_2079.x_MainLightWorldToLight[2i];
    let x_2110 : vec3<f32> = vs_INTERP0;
    let x_2113 : vec3<f32> = u_xlat25;
    let x_2115 : vec2<f32> = ((vec2<f32>(x_2108.x, x_2108.y) * vec2<f32>(x_2110.z, x_2110.z)) + vec2<f32>(x_2113.x, x_2113.y));
    let x_2116 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2115.x, x_2115.y, x_2116.z);
    let x_2118 : vec3<f32> = u_xlat25;
    let x_2121 : vec4<f32> = x_2079.x_MainLightWorldToLight[3i];
    let x_2123 : vec2<f32> = (vec2<f32>(x_2118.x, x_2118.y) + vec2<f32>(x_2121.x, x_2121.y));
    let x_2124 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2123.x, x_2123.y, x_2124.z);
    let x_2126 : vec3<f32> = u_xlat25;
    let x_2129 : vec2<f32> = ((vec2<f32>(x_2126.x, x_2126.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2130 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2129.x, x_2129.y, x_2130.z);
    let x_2137 : vec3<f32> = u_xlat25;
    let x_2140 : f32 = x_44.x_GlobalMipBias.x;
    let x_2141 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2137.x, x_2137.y), x_2140);
    u_xlat6 = x_2141;
    let x_2143 : f32 = x_2079.x_MainLightCookieTextureFormat;
    let x_2145 : f32 = x_2079.x_MainLightCookieTextureFormat;
    let x_2147 : f32 = x_2079.x_MainLightCookieTextureFormat;
    let x_2149 : f32 = x_2079.x_MainLightCookieTextureFormat;
    let x_2150 : vec4<f32> = vec4<f32>(x_2143, x_2145, x_2147, x_2149);
    let x_2157 : vec4<bool> = (vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2150.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2157.x, x_2157.y);
    let x_2160 : bool = u_xlatb25.y;
    if (x_2160) {
      let x_2165 : f32 = u_xlat6.w;
      x_2161 = x_2165;
    } else {
      let x_2168 : f32 = u_xlat6.x;
      x_2161 = x_2168;
    }
    let x_2169 : f32 = x_2161;
    u_xlat46 = x_2169;
    let x_2171 : bool = u_xlatb25.x;
    if (x_2171) {
      let x_2175 : vec4<f32> = u_xlat6;
      x_2172 = vec3<f32>(x_2175.x, x_2175.y, x_2175.z);
    } else {
      let x_2178 : f32 = u_xlat46;
      x_2172 = vec3<f32>(x_2178, x_2178, x_2178);
    }
    let x_2180 : vec3<f32> = x_2172;
    u_xlat25 = x_2180;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_2185 : vec3<f32> = u_xlat25;
  let x_2187 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (x_2185 * vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
  let x_2190 : f32 = u_xlat68;
  let x_2192 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2190, x_2190, x_2190) * x_2192);
  let x_2194 : vec3<f32> = u_xlat3;
  let x_2196 : vec3<f32> = u_xlat22;
  u_xlat6.x = dot(-(x_2194), x_2196);
  let x_2200 : f32 = u_xlat6.x;
  let x_2202 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2200 + x_2202);
  let x_2205 : vec3<f32> = u_xlat22;
  let x_2206 : vec4<f32> = u_xlat6;
  let x_2210 : vec3<f32> = u_xlat3;
  let x_2212 : vec3<f32> = ((x_2205 * -(vec3<f32>(x_2206.x, x_2206.x, x_2206.x))) + -(x_2210));
  let x_2213 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);
  let x_2215 : vec3<f32> = u_xlat22;
  let x_2216 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(x_2215, x_2216);
  let x_2218 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2218, 0.0f, 1.0f);
  let x_2220 : f32 = u_xlat69;
  u_xlat69 = (-(x_2220) + 1.0f);
  let x_2223 : f32 = u_xlat69;
  let x_2224 : f32 = u_xlat69;
  u_xlat69 = (x_2223 * x_2224);
  let x_2226 : f32 = u_xlat69;
  let x_2227 : f32 = u_xlat69;
  u_xlat69 = (x_2226 * x_2227);
  let x_2230 : f32 = u_xlat0.x;
  u_xlat70 = ((-(x_2230) * 0.699999988f) + 1.700000048f);
  let x_2237 : f32 = u_xlat0.x;
  let x_2238 : f32 = u_xlat70;
  u_xlat0.x = (x_2237 * x_2238);
  let x_2242 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2242 * 6.0f);
  let x_2254 : vec4<f32> = u_xlat6;
  let x_2257 : f32 = u_xlat0.x;
  let x_2258 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2254.x, x_2254.y, x_2254.z), x_2257);
  u_xlat8 = x_2258;
  let x_2260 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2260 + -1.0f);
  let x_2264 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_2266 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2264 * x_2266) + 1.0f);
  let x_2271 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2271, 0.0f);
  let x_2275 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2275);
  let x_2279 : f32 = u_xlat0.x;
  let x_2281 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2279 * x_2281);
  let x_2285 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2285);
  let x_2289 : f32 = u_xlat0.x;
  let x_2291 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2289 * x_2291);
  let x_2294 : vec4<f32> = u_xlat8;
  let x_2296 : vec4<f32> = u_xlat0;
  let x_2298 : vec3<f32> = (vec3<f32>(x_2294.x, x_2294.y, x_2294.z) * vec3<f32>(x_2296.x, x_2296.x, x_2296.x));
  let x_2299 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
  let x_2301 : f32 = u_xlat42;
  let x_2303 : f32 = u_xlat42;
  let x_2307 : vec2<f32> = ((vec2<f32>(x_2301, x_2301) * vec2<f32>(x_2303, x_2303)) + vec2<f32>(-1.0f, 1.0f));
  let x_2308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2307.x, x_2308.y, x_2307.y, x_2308.w);
  let x_2311 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2311);
  let x_2313 : vec3<f32> = u_xlat2;
  let x_2315 : f32 = u_xlat65;
  let x_2317 : vec3<f32> = (-(x_2313) + vec3<f32>(x_2315, x_2315, x_2315));
  let x_2318 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
  let x_2320 : f32 = u_xlat69;
  let x_2322 : vec4<f32> = u_xlat8;
  let x_2325 : vec3<f32> = u_xlat2;
  let x_2326 : vec3<f32> = ((vec3<f32>(x_2320, x_2320, x_2320) * vec3<f32>(x_2322.x, x_2322.y, x_2322.z)) + x_2325);
  let x_2327 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2326.x, x_2326.y, x_2326.z, x_2327.w);
  let x_2329 : f32 = u_xlat42;
  let x_2331 : vec4<f32> = u_xlat8;
  let x_2333 : vec3<f32> = (vec3<f32>(x_2329, x_2329, x_2329) * vec3<f32>(x_2331.x, x_2331.y, x_2331.z));
  let x_2334 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
  let x_2336 : vec4<f32> = u_xlat6;
  let x_2338 : vec4<f32> = u_xlat8;
  let x_2340 : vec3<f32> = (vec3<f32>(x_2336.x, x_2336.y, x_2336.z) * vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
  let x_2341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2341.w);
  let x_2343 : vec4<f32> = u_xlat5;
  let x_2345 : vec3<f32> = u_xlat7;
  let x_2347 : vec4<f32> = u_xlat6;
  let x_2349 : vec3<f32> = ((vec3<f32>(x_2343.x, x_2343.y, x_2343.z) * x_2345) + vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
  let x_2350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
  let x_2353 : f32 = u_xlat4.x;
  let x_2355 : f32 = x_274.unity_LightData.z;
  u_xlat42 = (x_2353 * x_2355);
  let x_2357 : vec3<f32> = u_xlat22;
  let x_2359 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_2357, vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
  let x_2362 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2362, 0.0f, 1.0f);
  let x_2364 : f32 = u_xlat42;
  let x_2365 : f32 = u_xlat65;
  u_xlat42 = (x_2364 * x_2365);
  let x_2367 : f32 = u_xlat42;
  let x_2369 : vec3<f32> = u_xlat25;
  let x_2370 : vec3<f32> = (vec3<f32>(x_2367, x_2367, x_2367) * x_2369);
  let x_2371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2370.x, x_2370.y, x_2370.z, x_2371.w);
  let x_2373 : vec3<f32> = u_xlat3;
  let x_2375 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2377 : vec3<f32> = (x_2373 + vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
  let x_2378 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
  let x_2380 : vec4<f32> = u_xlat6;
  let x_2382 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2380.x, x_2380.y, x_2380.z), vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
  let x_2385 : f32 = u_xlat42;
  u_xlat42 = max(x_2385, 1.17549435e-37f);
  let x_2388 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2388);
  let x_2390 : f32 = u_xlat42;
  let x_2392 : vec4<f32> = u_xlat6;
  let x_2394 : vec3<f32> = (vec3<f32>(x_2390, x_2390, x_2390) * vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
  let x_2395 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
  let x_2397 : vec3<f32> = u_xlat22;
  let x_2398 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_2397, vec3<f32>(x_2398.x, x_2398.y, x_2398.z));
  let x_2401 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2401, 0.0f, 1.0f);
  let x_2404 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2406 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_2404.x, x_2404.y, x_2404.z), vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
  let x_2409 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2409, 0.0f, 1.0f);
  let x_2411 : f32 = u_xlat42;
  let x_2412 : f32 = u_xlat42;
  u_xlat42 = (x_2411 * x_2412);
  let x_2414 : f32 = u_xlat42;
  let x_2416 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2414 * x_2416) + 1.000010014f);
  let x_2420 : f32 = u_xlat65;
  let x_2421 : f32 = u_xlat65;
  u_xlat65 = (x_2420 * x_2421);
  let x_2423 : f32 = u_xlat42;
  let x_2424 : f32 = u_xlat42;
  u_xlat42 = (x_2423 * x_2424);
  let x_2426 : f32 = u_xlat65;
  u_xlat65 = max(x_2426, 0.100000001f);
  let x_2429 : f32 = u_xlat42;
  let x_2430 : f32 = u_xlat65;
  u_xlat42 = (x_2429 * x_2430);
  let x_2432 : f32 = u_xlat66;
  let x_2433 : f32 = u_xlat42;
  u_xlat42 = (x_2432 * x_2433);
  let x_2436 : f32 = u_xlat1.x;
  let x_2437 : f32 = u_xlat42;
  u_xlat42 = (x_2436 / x_2437);
  let x_2439 : vec3<f32> = u_xlat2;
  let x_2440 : f32 = u_xlat42;
  let x_2443 : vec3<f32> = u_xlat7;
  let x_2444 : vec3<f32> = ((x_2439 * vec3<f32>(x_2440, x_2440, x_2440)) + x_2443);
  let x_2445 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
  let x_2447 : vec4<f32> = u_xlat4;
  let x_2449 : vec4<f32> = u_xlat6;
  let x_2451 : vec3<f32> = (vec3<f32>(x_2447.x, x_2447.y, x_2447.z) * vec3<f32>(x_2449.x, x_2449.y, x_2449.z));
  let x_2452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2451.x, x_2451.y, x_2451.z, x_2452.w);
  let x_2455 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2457 : f32 = x_274.unity_LightData.y;
  u_xlat42 = min(x_2455, x_2457);
  let x_2460 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2460));
  let x_2464 : f32 = x_2079.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2466 : f32 = x_2079.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2468 : f32 = x_2079.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2470 : f32 = x_2079.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2471 : vec4<f32> = vec4<f32>(x_2464, x_2466, x_2468, x_2470);
  let x_2477 : vec4<bool> = (vec4<f32>(x_2471.x, x_2471.y, x_2471.z, x_2471.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2477.x, x_2477.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2488 : u32 = u_xlatu_loop_1;
    let x_2489 : u32 = u_xlatu42;
    if ((x_2488 < x_2489)) {
    } else {
      break;
    }
    let x_2492 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2492 >> 2u);
    let x_2495 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_2495 & 3u));
    let x_2498 : u32 = u_xlatu67;
    let x_2501 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_2498)];
    let x_2511 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2516 : vec4<u32> = indexable[x_2511];
    u_xlat67 = dot(x_2501, bitcast<vec4<f32>>(x_2516));
    let x_2519 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2519));
    let x_2522 : vec3<f32> = vs_INTERP0;
    let x_2534 : u32 = u_xlatu67;
    let x_2537 : vec4<f32> = x_2533.x_AdditionalLightsPosition[bitcast<i32>(x_2534)];
    let x_2540 : u32 = u_xlatu67;
    let x_2543 : vec4<f32> = x_2533.x_AdditionalLightsPosition[bitcast<i32>(x_2540)];
    let x_2545 : vec3<f32> = ((-(x_2522) * vec3<f32>(x_2537.w, x_2537.w, x_2537.w)) + vec3<f32>(x_2543.x, x_2543.y, x_2543.z));
    let x_2546 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2545.x, x_2545.y, x_2545.z, x_2546.w);
    let x_2548 : vec4<f32> = u_xlat9;
    let x_2550 : vec4<f32> = u_xlat9;
    u_xlat48.x = dot(vec3<f32>(x_2548.x, x_2548.y, x_2548.z), vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
    let x_2555 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_2555, 6.10351562e-05f);
    let x_2560 : f32 = u_xlat48.x;
    u_xlat69 = inverseSqrt(x_2560);
    let x_2562 : f32 = u_xlat69;
    let x_2564 : vec4<f32> = u_xlat9;
    let x_2566 : vec3<f32> = (vec3<f32>(x_2562, x_2562, x_2562) * vec3<f32>(x_2564.x, x_2564.y, x_2564.z));
    let x_2567 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);
    let x_2570 : f32 = u_xlat48.x;
    u_xlat70 = (1.0f / x_2570);
    let x_2573 : f32 = u_xlat48.x;
    let x_2574 : u32 = u_xlatu67;
    let x_2577 : f32 = x_2533.x_AdditionalLightsAttenuation[bitcast<i32>(x_2574)].x;
    u_xlat48.x = (x_2573 * x_2577);
    let x_2581 : f32 = u_xlat48.x;
    let x_2584 : f32 = u_xlat48.x;
    u_xlat48.x = ((-(x_2581) * x_2584) + 1.0f);
    let x_2589 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_2589, 0.0f);
    let x_2593 : f32 = u_xlat48.x;
    let x_2595 : f32 = u_xlat48.x;
    u_xlat48.x = (x_2593 * x_2595);
    let x_2599 : f32 = u_xlat48.x;
    let x_2600 : f32 = u_xlat70;
    u_xlat48.x = (x_2599 * x_2600);
    let x_2603 : u32 = u_xlatu67;
    let x_2606 : vec4<f32> = x_2533.x_AdditionalLightsSpotDir[bitcast<i32>(x_2603)];
    let x_2608 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2606.x, x_2606.y, x_2606.z), vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
    let x_2611 : f32 = u_xlat70;
    let x_2612 : u32 = u_xlatu67;
    let x_2615 : f32 = x_2533.x_AdditionalLightsAttenuation[bitcast<i32>(x_2612)].z;
    let x_2617 : u32 = u_xlatu67;
    let x_2620 : f32 = x_2533.x_AdditionalLightsAttenuation[bitcast<i32>(x_2617)].w;
    u_xlat70 = ((x_2611 * x_2615) + x_2620);
    let x_2622 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2622, 0.0f, 1.0f);
    let x_2624 : f32 = u_xlat70;
    let x_2625 : f32 = u_xlat70;
    u_xlat70 = (x_2624 * x_2625);
    let x_2628 : f32 = u_xlat48.x;
    let x_2629 : f32 = u_xlat70;
    u_xlat48.x = (x_2628 * x_2629);
    let x_2633 : u32 = u_xlatu67;
    u_xlatu70 = (x_2633 >> 5u);
    let x_2636 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2636) & 31i)));
    let x_2642 : i32 = u_xlati71;
    let x_2644 : u32 = u_xlatu70;
    let x_2647 : f32 = x_2079.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2644)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2642) & bitcast<u32>(x_2647)));
    let x_2651 : i32 = u_xlati70;
    if ((x_2651 != 0i)) {
      let x_2661 : u32 = u_xlatu67;
      let x_2664 : f32 = x_2660.x_AdditionalLightsLightTypes[bitcast<i32>(x_2661)].el;
      u_xlati70 = i32(x_2664);
      let x_2666 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2666 != 0i));
      let x_2670 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_2670) << bitcast<u32>(2i));
      let x_2673 : i32 = u_xlati71;
      if ((x_2673 != 0i)) {
        let x_2677 : vec3<f32> = vs_INTERP0;
        let x_2679 : i32 = u_xlati72;
        let x_2682 : i32 = u_xlati72;
        let x_2686 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[((x_2679 + 1i) / 4i)][((x_2682 + 1i) % 4i)];
        let x_2688 : vec3<f32> = (vec3<f32>(x_2677.y, x_2677.y, x_2677.y) * vec3<f32>(x_2686.x, x_2686.y, x_2686.w));
        let x_2689 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
        let x_2691 : i32 = u_xlati72;
        let x_2693 : i32 = u_xlati72;
        let x_2696 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[(x_2691 / 4i)][(x_2693 % 4i)];
        let x_2698 : vec3<f32> = vs_INTERP0;
        let x_2701 : vec4<f32> = u_xlat11;
        let x_2703 : vec3<f32> = ((vec3<f32>(x_2696.x, x_2696.y, x_2696.w) * vec3<f32>(x_2698.x, x_2698.x, x_2698.x)) + vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
        let x_2704 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2703.x, x_2703.y, x_2703.z, x_2704.w);
        let x_2706 : i32 = u_xlati72;
        let x_2709 : i32 = u_xlati72;
        let x_2713 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[((x_2706 + 2i) / 4i)][((x_2709 + 2i) % 4i)];
        let x_2715 : vec3<f32> = vs_INTERP0;
        let x_2718 : vec4<f32> = u_xlat11;
        let x_2720 : vec3<f32> = ((vec3<f32>(x_2713.x, x_2713.y, x_2713.w) * vec3<f32>(x_2715.z, x_2715.z, x_2715.z)) + vec3<f32>(x_2718.x, x_2718.y, x_2718.z));
        let x_2721 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2720.x, x_2720.y, x_2720.z, x_2721.w);
        let x_2723 : vec4<f32> = u_xlat11;
        let x_2725 : i32 = u_xlati72;
        let x_2728 : i32 = u_xlati72;
        let x_2732 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[((x_2725 + 3i) / 4i)][((x_2728 + 3i) % 4i)];
        let x_2734 : vec3<f32> = (vec3<f32>(x_2723.x, x_2723.y, x_2723.z) + vec3<f32>(x_2732.x, x_2732.y, x_2732.w));
        let x_2735 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
        let x_2737 : vec4<f32> = u_xlat11;
        let x_2739 : vec4<f32> = u_xlat11;
        let x_2741 : vec2<f32> = (vec2<f32>(x_2737.x, x_2737.y) / vec2<f32>(x_2739.z, x_2739.z));
        let x_2742 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2741.x, x_2741.y, x_2742.z, x_2742.w);
        let x_2744 : vec4<f32> = u_xlat11;
        let x_2747 : vec2<f32> = ((vec2<f32>(x_2744.x, x_2744.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2748 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2747.x, x_2747.y, x_2748.z, x_2748.w);
        let x_2750 : vec4<f32> = u_xlat11;
        let x_2754 : vec2<f32> = clamp(vec2<f32>(x_2750.x, x_2750.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2755 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2754.x, x_2754.y, x_2755.z, x_2755.w);
        let x_2757 : u32 = u_xlatu67;
        let x_2760 : vec4<f32> = x_2660.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2757)];
        let x_2762 : vec4<f32> = u_xlat11;
        let x_2765 : u32 = u_xlatu67;
        let x_2768 : vec4<f32> = x_2660.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2765)];
        let x_2770 : vec2<f32> = ((vec2<f32>(x_2760.x, x_2760.y) * vec2<f32>(x_2762.x, x_2762.y)) + vec2<f32>(x_2768.z, x_2768.w));
        let x_2771 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2770.x, x_2770.y, x_2771.z, x_2771.w);
      } else {
        let x_2775 : i32 = u_xlati70;
        u_xlatb70 = (x_2775 == 1i);
        let x_2777 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2777);
        let x_2779 : i32 = u_xlati70;
        if ((x_2779 != 0i)) {
          let x_2784 : vec3<f32> = vs_INTERP0;
          let x_2786 : i32 = u_xlati72;
          let x_2789 : i32 = u_xlati72;
          let x_2793 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[((x_2786 + 1i) / 4i)][((x_2789 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2784.y, x_2784.y) * vec2<f32>(x_2793.x, x_2793.y));
          let x_2796 : i32 = u_xlati72;
          let x_2798 : i32 = u_xlati72;
          let x_2801 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[(x_2796 / 4i)][(x_2798 % 4i)];
          let x_2803 : vec3<f32> = vs_INTERP0;
          let x_2806 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2801.x, x_2801.y) * vec2<f32>(x_2803.x, x_2803.x)) + x_2806);
          let x_2808 : i32 = u_xlati72;
          let x_2811 : i32 = u_xlati72;
          let x_2815 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[((x_2808 + 2i) / 4i)][((x_2811 + 2i) % 4i)];
          let x_2817 : vec3<f32> = vs_INTERP0;
          let x_2820 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2815.x, x_2815.y) * vec2<f32>(x_2817.z, x_2817.z)) + x_2820);
          let x_2822 : vec2<f32> = u_xlat53;
          let x_2823 : i32 = u_xlati72;
          let x_2826 : i32 = u_xlati72;
          let x_2830 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[((x_2823 + 3i) / 4i)][((x_2826 + 3i) % 4i)];
          u_xlat53 = (x_2822 + vec2<f32>(x_2830.x, x_2830.y));
          let x_2833 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2833 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2836 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2836);
          let x_2838 : u32 = u_xlatu67;
          let x_2841 : vec4<f32> = x_2660.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2838)];
          let x_2843 : vec2<f32> = u_xlat53;
          let x_2845 : u32 = u_xlatu67;
          let x_2848 : vec4<f32> = x_2660.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2845)];
          let x_2850 : vec2<f32> = ((vec2<f32>(x_2841.x, x_2841.y) * x_2843) + vec2<f32>(x_2848.z, x_2848.w));
          let x_2851 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2850.x, x_2850.y, x_2851.z, x_2851.w);
        } else {
          let x_2854 : vec3<f32> = vs_INTERP0;
          let x_2856 : i32 = u_xlati72;
          let x_2859 : i32 = u_xlati72;
          let x_2863 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[((x_2856 + 1i) / 4i)][((x_2859 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2854.y, x_2854.y, x_2854.y, x_2854.y) * x_2863);
          let x_2865 : i32 = u_xlati72;
          let x_2867 : i32 = u_xlati72;
          let x_2870 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[(x_2865 / 4i)][(x_2867 % 4i)];
          let x_2871 : vec3<f32> = vs_INTERP0;
          let x_2874 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2870 * vec4<f32>(x_2871.x, x_2871.x, x_2871.x, x_2871.x)) + x_2874);
          let x_2876 : i32 = u_xlati72;
          let x_2879 : i32 = u_xlati72;
          let x_2883 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[((x_2876 + 2i) / 4i)][((x_2879 + 2i) % 4i)];
          let x_2884 : vec3<f32> = vs_INTERP0;
          let x_2887 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2883 * vec4<f32>(x_2884.z, x_2884.z, x_2884.z, x_2884.z)) + x_2887);
          let x_2889 : vec4<f32> = u_xlat12;
          let x_2890 : i32 = u_xlati72;
          let x_2893 : i32 = u_xlati72;
          let x_2897 : vec4<f32> = x_2660.x_AdditionalLightsWorldToLights[((x_2890 + 3i) / 4i)][((x_2893 + 3i) % 4i)];
          u_xlat12 = (x_2889 + x_2897);
          let x_2899 : vec4<f32> = u_xlat12;
          let x_2901 : vec4<f32> = u_xlat12;
          let x_2903 : vec3<f32> = (vec3<f32>(x_2899.x, x_2899.y, x_2899.z) / vec3<f32>(x_2901.w, x_2901.w, x_2901.w));
          let x_2904 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2903.x, x_2903.y, x_2903.z, x_2904.w);
          let x_2906 : vec4<f32> = u_xlat12;
          let x_2908 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2906.x, x_2906.y, x_2906.z), vec3<f32>(x_2908.x, x_2908.y, x_2908.z));
          let x_2911 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2911);
          let x_2913 : f32 = u_xlat70;
          let x_2915 : vec4<f32> = u_xlat12;
          let x_2917 : vec3<f32> = (vec3<f32>(x_2913, x_2913, x_2913) * vec3<f32>(x_2915.x, x_2915.y, x_2915.z));
          let x_2918 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2917.x, x_2917.y, x_2917.z, x_2918.w);
          let x_2920 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2920.x, x_2920.y, x_2920.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2924 : f32 = u_xlat70;
          u_xlat70 = max(x_2924, 0.000001f);
          let x_2927 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2927);
          let x_2929 : f32 = u_xlat70;
          let x_2931 : vec4<f32> = u_xlat12;
          let x_2933 : vec3<f32> = (vec3<f32>(x_2929, x_2929, x_2929) * vec3<f32>(x_2931.z, x_2931.x, x_2931.y));
          let x_2934 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2933.x, x_2933.y, x_2933.z, x_2934.w);
          let x_2937 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2937);
          let x_2941 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2941, 0.0f, 1.0f);
          let x_2945 : vec4<f32> = u_xlat13;
          let x_2948 : vec4<bool> = (vec4<f32>(x_2945.y, x_2945.z, x_2945.y, x_2945.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2948.x, x_2948.y);
          let x_2951 : bool = u_xlatb53.x;
          if (x_2951) {
            let x_2956 : f32 = u_xlat13.x;
            x_2952 = x_2956;
          } else {
            let x_2959 : f32 = u_xlat13.x;
            x_2952 = -(x_2959);
          }
          let x_2961 : f32 = x_2952;
          u_xlat53.x = x_2961;
          let x_2964 : bool = u_xlatb53.y;
          if (x_2964) {
            let x_2969 : f32 = u_xlat13.x;
            x_2965 = x_2969;
          } else {
            let x_2972 : f32 = u_xlat13.x;
            x_2965 = -(x_2972);
          }
          let x_2974 : f32 = x_2965;
          u_xlat53.y = x_2974;
          let x_2976 : vec4<f32> = u_xlat12;
          let x_2978 : f32 = u_xlat70;
          let x_2981 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2976.x, x_2976.y) * vec2<f32>(x_2978, x_2978)) + x_2981);
          let x_2983 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2983 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2986 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2986, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2990 : u32 = u_xlatu67;
          let x_2993 : vec4<f32> = x_2660.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2990)];
          let x_2995 : vec2<f32> = u_xlat53;
          let x_2997 : u32 = u_xlatu67;
          let x_3000 : vec4<f32> = x_2660.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2997)];
          let x_3002 : vec2<f32> = ((vec2<f32>(x_2993.x, x_2993.y) * x_2995) + vec2<f32>(x_3000.z, x_3000.w));
          let x_3003 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3002.x, x_3002.y, x_3003.z, x_3003.w);
        }
      }
      let x_3010 : vec4<f32> = u_xlat11;
      let x_3013 : f32 = x_44.x_GlobalMipBias.x;
      let x_3014 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3010.x, x_3010.y), x_3013);
      u_xlat11 = x_3014;
      let x_3016 : bool = u_xlatb6.y;
      if (x_3016) {
        let x_3021 : f32 = u_xlat11.w;
        x_3017 = x_3021;
      } else {
        let x_3024 : f32 = u_xlat11.x;
        x_3017 = x_3024;
      }
      let x_3025 : f32 = x_3017;
      u_xlat70 = x_3025;
      let x_3027 : bool = u_xlatb6.x;
      if (x_3027) {
        let x_3031 : vec4<f32> = u_xlat11;
        x_3028 = vec3<f32>(x_3031.x, x_3031.y, x_3031.z);
      } else {
        let x_3034 : f32 = u_xlat70;
        x_3028 = vec3<f32>(x_3034, x_3034, x_3034);
      }
      let x_3036 : vec3<f32> = x_3028;
      let x_3037 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3036.x, x_3036.y, x_3036.z, x_3037.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3043 : vec4<f32> = u_xlat11;
    let x_3045 : u32 = u_xlatu67;
    let x_3048 : vec4<f32> = x_2533.x_AdditionalLightsColor[bitcast<i32>(x_3045)];
    let x_3050 : vec3<f32> = (vec3<f32>(x_3043.x, x_3043.y, x_3043.z) * vec3<f32>(x_3048.x, x_3048.y, x_3048.z));
    let x_3051 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3050.x, x_3050.y, x_3050.z, x_3051.w);
    let x_3053 : f32 = u_xlat68;
    let x_3055 : vec4<f32> = u_xlat11;
    let x_3057 : vec3<f32> = (vec3<f32>(x_3053, x_3053, x_3053) * vec3<f32>(x_3055.x, x_3055.y, x_3055.z));
    let x_3058 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3057.x, x_3057.y, x_3057.z, x_3058.w);
    let x_3060 : vec3<f32> = u_xlat22;
    let x_3061 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_3060, vec3<f32>(x_3061.x, x_3061.y, x_3061.z));
    let x_3064 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3064, 0.0f, 1.0f);
    let x_3066 : f32 = u_xlat67;
    let x_3068 : f32 = u_xlat48.x;
    u_xlat67 = (x_3066 * x_3068);
    let x_3070 : f32 = u_xlat67;
    let x_3072 : vec4<f32> = u_xlat11;
    let x_3074 : vec3<f32> = (vec3<f32>(x_3070, x_3070, x_3070) * vec3<f32>(x_3072.x, x_3072.y, x_3072.z));
    let x_3075 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3074.x, x_3074.y, x_3074.z, x_3075.w);
    let x_3077 : vec4<f32> = u_xlat9;
    let x_3079 : f32 = u_xlat69;
    let x_3082 : vec3<f32> = u_xlat3;
    let x_3083 : vec3<f32> = ((vec3<f32>(x_3077.x, x_3077.y, x_3077.z) * vec3<f32>(x_3079, x_3079, x_3079)) + x_3082);
    let x_3084 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3083.x, x_3083.y, x_3083.z, x_3084.w);
    let x_3086 : vec4<f32> = u_xlat9;
    let x_3088 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3086.x, x_3086.y, x_3086.z), vec3<f32>(x_3088.x, x_3088.y, x_3088.z));
    let x_3091 : f32 = u_xlat67;
    u_xlat67 = max(x_3091, 1.17549435e-37f);
    let x_3093 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_3093);
    let x_3095 : f32 = u_xlat67;
    let x_3097 : vec4<f32> = u_xlat9;
    let x_3099 : vec3<f32> = (vec3<f32>(x_3095, x_3095, x_3095) * vec3<f32>(x_3097.x, x_3097.y, x_3097.z));
    let x_3100 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3099.x, x_3099.y, x_3099.z, x_3100.w);
    let x_3102 : vec3<f32> = u_xlat22;
    let x_3103 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_3102, vec3<f32>(x_3103.x, x_3103.y, x_3103.z));
    let x_3106 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3106, 0.0f, 1.0f);
    let x_3108 : vec4<f32> = u_xlat10;
    let x_3110 : vec4<f32> = u_xlat9;
    u_xlat48.x = dot(vec3<f32>(x_3108.x, x_3108.y, x_3108.z), vec3<f32>(x_3110.x, x_3110.y, x_3110.z));
    let x_3115 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_3115, 0.0f, 1.0f);
    let x_3118 : f32 = u_xlat67;
    let x_3119 : f32 = u_xlat67;
    u_xlat67 = (x_3118 * x_3119);
    let x_3121 : f32 = u_xlat67;
    let x_3123 : f32 = u_xlat0.x;
    u_xlat67 = ((x_3121 * x_3123) + 1.000010014f);
    let x_3127 : f32 = u_xlat48.x;
    let x_3129 : f32 = u_xlat48.x;
    u_xlat48.x = (x_3127 * x_3129);
    let x_3132 : f32 = u_xlat67;
    let x_3133 : f32 = u_xlat67;
    u_xlat67 = (x_3132 * x_3133);
    let x_3136 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_3136, 0.100000001f);
    let x_3139 : f32 = u_xlat67;
    let x_3141 : f32 = u_xlat48.x;
    u_xlat67 = (x_3139 * x_3141);
    let x_3143 : f32 = u_xlat66;
    let x_3144 : f32 = u_xlat67;
    u_xlat67 = (x_3143 * x_3144);
    let x_3147 : f32 = u_xlat1.x;
    let x_3148 : f32 = u_xlat67;
    u_xlat67 = (x_3147 / x_3148);
    let x_3150 : vec3<f32> = u_xlat2;
    let x_3151 : f32 = u_xlat67;
    let x_3154 : vec3<f32> = u_xlat7;
    let x_3155 : vec3<f32> = ((x_3150 * vec3<f32>(x_3151, x_3151, x_3151)) + x_3154);
    let x_3156 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3155.x, x_3155.y, x_3155.z, x_3156.w);
    let x_3158 : vec4<f32> = u_xlat9;
    let x_3160 : vec4<f32> = u_xlat11;
    let x_3163 : vec4<f32> = u_xlat8;
    let x_3165 : vec3<f32> = ((vec3<f32>(x_3158.x, x_3158.y, x_3158.z) * vec3<f32>(x_3160.x, x_3160.y, x_3160.z)) + vec3<f32>(x_3163.x, x_3163.y, x_3163.z));
    let x_3166 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3165.x, x_3165.y, x_3165.z, x_3166.w);

    continuing {
      let x_3168 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3168 + bitcast<u32>(1i));
    }
  }
  let x_3170 : vec4<f32> = u_xlat5;
  let x_3172 : f32 = u_xlat63;
  let x_3175 : vec4<f32> = u_xlat4;
  let x_3177 : vec3<f32> = ((vec3<f32>(x_3170.x, x_3170.y, x_3170.z) * vec3<f32>(x_3172, x_3172, x_3172)) + vec3<f32>(x_3175.x, x_3175.y, x_3175.z));
  let x_3178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3177.x, x_3178.y, x_3177.y, x_3177.z);
  let x_3180 : vec4<f32> = u_xlat8;
  let x_3182 : vec4<f32> = u_xlat0;
  let x_3184 : vec3<f32> = (vec3<f32>(x_3180.x, x_3180.y, x_3180.z) + vec3<f32>(x_3182.x, x_3182.z, x_3182.w));
  let x_3185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3184.x, x_3185.y, x_3184.y, x_3184.z);
  let x_3188 : f32 = u_xlat21.x;
  let x_3190 : f32 = u_xlat21.x;
  u_xlat21.x = (x_3188 * -(x_3190));
  let x_3195 : f32 = u_xlat21.x;
  u_xlat21.x = exp2(x_3195);
  let x_3198 : vec4<f32> = u_xlat0;
  let x_3202 : vec4<f32> = x_44.unity_FogColor;
  let x_3205 : vec3<f32> = (vec3<f32>(x_3198.x, x_3198.z, x_3198.w) + -(vec3<f32>(x_3202.x, x_3202.y, x_3202.z)));
  let x_3206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3205.x, x_3206.y, x_3205.y, x_3205.z);
  let x_3210 : vec2<f32> = u_xlat21;
  let x_3212 : vec4<f32> = u_xlat0;
  let x_3216 : vec4<f32> = x_44.unity_FogColor;
  let x_3218 : vec3<f32> = ((vec3<f32>(x_3210.x, x_3210.x, x_3210.x) * vec3<f32>(x_3212.x, x_3212.z, x_3212.w)) + vec3<f32>(x_3216.x, x_3216.y, x_3216.z));
  let x_3219 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3218.x, x_3218.y, x_3218.z, x_3219.w);
  let x_3224 : u32 = x_44.x_RenderingLayerMaxInt;
  let x_3226 : f32 = x_274.unity_RenderingLayer.x;
  u_xlatu0 = (x_3224 & bitcast<u32>(x_3226));
  let x_3229 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_3229);
  let x_3234 : f32 = u_xlat0.x;
  let x_3236 : f32 = x_44.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_3234 * x_3236);
  let x_3241 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_3241, 0.0f, 1.0f);
  SV_Target0.w = 1.0f;
  let x_3245 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_3245.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

