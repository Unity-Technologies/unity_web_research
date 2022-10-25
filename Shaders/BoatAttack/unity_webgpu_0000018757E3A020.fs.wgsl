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

@group(1) @binding(4) var<uniform> x_2077 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2531 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2658 : AdditionalLightsCookies;

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
  var x_2029 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat46 : f32;
  var x_2159 : f32;
  var x_2170 : vec3<f32>;
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
  var x_2950 : f32;
  var x_2963 : f32;
  var x_3015 : f32;
  var x_3026 : vec3<f32>;
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
      let x_757 : vec4<f32> = x_391.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_754.x, x_754.y, x_754.x, x_754.y) + x_757);
      let x_760 : vec4<f32> = u_xlat6;
      let x_761 : vec2<f32> = vec2<f32>(x_760.x, x_760.y);
      let x_763 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_761.x, x_761.y, x_763);
      let x_776 : vec3<f32> = txVec0;
      let x_778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_776.xy, x_776.z);
      u_xlat8.x = x_778;
      let x_781 : vec4<f32> = u_xlat6;
      let x_782 : vec2<f32> = vec2<f32>(x_781.z, x_781.w);
      let x_784 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_782.x, x_782.y, x_784);
      let x_791 : vec3<f32> = txVec1;
      let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_791.xy, x_791.z);
      u_xlat8.y = x_793;
      let x_795 : vec4<f32> = u_xlat4;
      let x_798 : vec4<f32> = x_391.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) + x_798);
      let x_801 : vec4<f32> = u_xlat6;
      let x_802 : vec2<f32> = vec2<f32>(x_801.x, x_801.y);
      let x_804 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_802.x, x_802.y, x_804);
      let x_811 : vec3<f32> = txVec2;
      let x_813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_811.xy, x_811.z);
      u_xlat8.z = x_813;
      let x_816 : vec4<f32> = u_xlat6;
      let x_817 : vec2<f32> = vec2<f32>(x_816.z, x_816.w);
      let x_819 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_817.x, x_817.y, x_819);
      let x_826 : vec3<f32> = txVec3;
      let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_826.xy, x_826.z);
      u_xlat8.w = x_828;
      let x_830 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_830, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_839 : f32 = x_391.x_MainLightShadowParams.y;
      u_xlatb6.x = (x_839 == 2.0f);
      let x_843 : bool = u_xlatb6.x;
      if (x_843) {
        let x_846 : vec4<f32> = u_xlat4;
        let x_849 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_853 : vec2<f32> = ((vec2<f32>(x_846.x, x_846.y) * vec2<f32>(x_849.z, x_849.w)) + vec2<f32>(0.5f, 0.5f));
        let x_854 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_853.x, x_853.y, x_854.z, x_854.w);
        let x_856 : vec4<f32> = u_xlat6;
        let x_858 : vec2<f32> = floor(vec2<f32>(x_856.x, x_856.y));
        let x_859 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_858.x, x_858.y, x_859.z, x_859.w);
        let x_862 : vec4<f32> = u_xlat4;
        let x_865 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_868 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_862.x, x_862.y) * vec2<f32>(x_865.z, x_865.w)) + -(vec2<f32>(x_868.x, x_868.y)));
        let x_872 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_872.x, x_872.x, x_872.y, x_872.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_877 : vec4<f32> = u_xlat8;
        let x_879 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_877.x, x_877.x, x_877.z, x_877.z) * vec4<f32>(x_879.x, x_879.x, x_879.z, x_879.z));
        let x_882 : vec4<f32> = u_xlat9;
        let x_886 : vec2<f32> = (vec2<f32>(x_882.y, x_882.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_887 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_886.x, x_887.y, x_886.y, x_887.w);
        let x_889 : vec4<f32> = u_xlat9;
        let x_892 : vec2<f32> = u_xlat48;
        let x_894 : vec2<f32> = ((vec2<f32>(x_889.x, x_889.z) * vec2<f32>(0.5f, 0.5f)) + -(x_892));
        let x_895 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_894.x, x_894.y, x_895.z, x_895.w);
        let x_898 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_898) + vec2<f32>(1.0f, 1.0f));
        let x_902 : vec2<f32> = u_xlat48;
        let x_904 : vec2<f32> = min(x_902, vec2<f32>(0.0f, 0.0f));
        let x_905 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_907 : vec4<f32> = u_xlat10;
        let x_910 : vec4<f32> = u_xlat10;
        let x_913 : vec2<f32> = u_xlat51;
        let x_914 : vec2<f32> = ((-(vec2<f32>(x_907.x, x_907.y)) * vec2<f32>(x_910.x, x_910.y)) + x_913);
        let x_915 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
        let x_917 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_917, vec2<f32>(0.0f, 0.0f));
        let x_919 : vec2<f32> = u_xlat48;
        let x_921 : vec2<f32> = u_xlat48;
        let x_923 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_919) * x_921) + vec2<f32>(x_923.y, x_923.w));
        let x_926 : vec4<f32> = u_xlat10;
        let x_928 : vec2<f32> = (vec2<f32>(x_926.x, x_926.y) + vec2<f32>(1.0f, 1.0f));
        let x_929 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_928.x, x_928.y, x_929.z, x_929.w);
        let x_931 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_931 + vec2<f32>(1.0f, 1.0f));
        let x_934 : vec4<f32> = u_xlat9;
        let x_938 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_939 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
        let x_941 : vec2<f32> = u_xlat51;
        let x_942 : vec2<f32> = (x_941 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_943 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat10;
        let x_947 : vec2<f32> = (vec2<f32>(x_945.x, x_945.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_948 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
        let x_951 : vec2<f32> = u_xlat48;
        let x_952 : vec2<f32> = (x_951 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_953 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_955 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_955.y, x_955.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_959 : f32 = u_xlat10.x;
        u_xlat11.z = x_959;
        let x_962 : f32 = u_xlat48.x;
        u_xlat11.w = x_962;
        let x_965 : f32 = u_xlat12.x;
        u_xlat9.z = x_965;
        let x_968 : f32 = u_xlat8.x;
        u_xlat9.w = x_968;
        let x_971 : vec4<f32> = u_xlat9;
        let x_973 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_971.z, x_971.w, x_971.x, x_971.z) + vec4<f32>(x_973.z, x_973.w, x_973.x, x_973.z));
        let x_977 : f32 = u_xlat11.y;
        u_xlat10.z = x_977;
        let x_980 : f32 = u_xlat48.y;
        u_xlat10.w = x_980;
        let x_983 : f32 = u_xlat9.y;
        u_xlat12.z = x_983;
        let x_986 : f32 = u_xlat8.z;
        u_xlat12.w = x_986;
        let x_988 : vec4<f32> = u_xlat10;
        let x_990 : vec4<f32> = u_xlat12;
        let x_992 : vec3<f32> = (vec3<f32>(x_988.z, x_988.y, x_988.w) + vec3<f32>(x_990.z, x_990.y, x_990.w));
        let x_993 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
        let x_995 : vec4<f32> = u_xlat9;
        let x_997 : vec4<f32> = u_xlat13;
        let x_999 : vec3<f32> = (vec3<f32>(x_995.x, x_995.z, x_995.w) / vec3<f32>(x_997.z, x_997.w, x_997.y));
        let x_1000 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
        let x_1002 : vec4<f32> = u_xlat9;
        let x_1008 : vec3<f32> = (vec3<f32>(x_1002.x, x_1002.y, x_1002.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1009 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat12;
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1015 : vec3<f32> = (vec3<f32>(x_1011.z, x_1011.y, x_1011.w) / vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
        let x_1016 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat10;
        let x_1020 : vec3<f32> = (vec3<f32>(x_1018.x, x_1018.y, x_1018.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1021 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
        let x_1023 : vec4<f32> = u_xlat9;
        let x_1026 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1028 : vec3<f32> = (vec3<f32>(x_1023.y, x_1023.x, x_1023.z) * vec3<f32>(x_1026.x, x_1026.x, x_1026.x));
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
        let x_1031 : vec4<f32> = u_xlat10;
        let x_1034 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1036 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(x_1034.y, x_1034.y, x_1034.y));
        let x_1037 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
        let x_1040 : f32 = u_xlat10.x;
        u_xlat9.w = x_1040;
        let x_1042 : vec4<f32> = u_xlat6;
        let x_1045 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y) * vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y)) + vec4<f32>(x_1048.y, x_1048.w, x_1048.x, x_1048.w));
        let x_1051 : vec4<f32> = u_xlat6;
        let x_1054 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1054.x, x_1054.y)) + vec2<f32>(x_1057.z, x_1057.w));
        let x_1061 : f32 = u_xlat9.y;
        u_xlat10.w = x_1061;
        let x_1063 : vec4<f32> = u_xlat10;
        let x_1064 : vec2<f32> = vec2<f32>(x_1063.y, x_1063.z);
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1065.x, x_1064.x, x_1065.z, x_1064.y);
        let x_1067 : vec4<f32> = u_xlat6;
        let x_1070 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1073 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y) * vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y)) + vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1073.y));
        let x_1076 : vec4<f32> = u_xlat6;
        let x_1079 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y) * vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y)) + vec4<f32>(x_1082.w, x_1082.y, x_1082.w, x_1082.z));
        let x_1085 : vec4<f32> = u_xlat6;
        let x_1088 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.x, x_1091.w, x_1091.z, x_1091.w));
        let x_1095 : vec4<f32> = u_xlat8;
        let x_1097 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1095.x, x_1095.x, x_1095.x, x_1095.y) * vec4<f32>(x_1097.z, x_1097.w, x_1097.y, x_1097.z));
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1103 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1101.y, x_1101.y, x_1101.z, x_1101.z) * x_1103);
        let x_1106 : f32 = u_xlat8.z;
        let x_1108 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1106 * x_1108);
        let x_1112 : vec4<f32> = u_xlat11;
        let x_1113 : vec2<f32> = vec2<f32>(x_1112.x, x_1112.y);
        let x_1115 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1113.x, x_1113.y, x_1115);
        let x_1123 : vec3<f32> = txVec4;
        let x_1125 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1123.xy, x_1123.z);
        u_xlat27 = x_1125;
        let x_1127 : vec4<f32> = u_xlat11;
        let x_1128 : vec2<f32> = vec2<f32>(x_1127.z, x_1127.w);
        let x_1130 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1128.x, x_1128.y, x_1130);
        let x_1138 : vec3<f32> = txVec5;
        let x_1140 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1138.xy, x_1138.z);
        u_xlat70 = x_1140;
        let x_1141 : f32 = u_xlat70;
        let x_1143 : f32 = u_xlat14.y;
        u_xlat70 = (x_1141 * x_1143);
        let x_1146 : f32 = u_xlat14.x;
        let x_1147 : f32 = u_xlat27;
        let x_1149 : f32 = u_xlat70;
        u_xlat27 = ((x_1146 * x_1147) + x_1149);
        let x_1152 : vec2<f32> = u_xlat48;
        let x_1154 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec6;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1161.xy, x_1161.z);
        u_xlat48.x = x_1163;
        let x_1166 : f32 = u_xlat14.z;
        let x_1168 : f32 = u_xlat48.x;
        let x_1170 : f32 = u_xlat27;
        u_xlat27 = ((x_1166 * x_1168) + x_1170);
        let x_1173 : vec4<f32> = u_xlat10;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.x, x_1173.y);
        let x_1176 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec7;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1183.xy, x_1183.z);
        u_xlat48.x = x_1185;
        let x_1188 : f32 = u_xlat14.w;
        let x_1190 : f32 = u_xlat48.x;
        let x_1192 : f32 = u_xlat27;
        u_xlat27 = ((x_1188 * x_1190) + x_1192);
        let x_1195 : vec4<f32> = u_xlat12;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec8;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1205.xy, x_1205.z);
        u_xlat48.x = x_1207;
        let x_1210 : f32 = u_xlat15.x;
        let x_1212 : f32 = u_xlat48.x;
        let x_1214 : f32 = u_xlat27;
        u_xlat27 = ((x_1210 * x_1212) + x_1214);
        let x_1217 : vec4<f32> = u_xlat12;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.z, x_1217.w);
        let x_1220 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec9;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1227.xy, x_1227.z);
        u_xlat48.x = x_1229;
        let x_1232 : f32 = u_xlat15.y;
        let x_1234 : f32 = u_xlat48.x;
        let x_1236 : f32 = u_xlat27;
        u_xlat27 = ((x_1232 * x_1234) + x_1236);
        let x_1239 : vec4<f32> = u_xlat10;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.z, x_1239.w);
        let x_1242 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1249 : vec3<f32> = txVec10;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1249.xy, x_1249.z);
        u_xlat48.x = x_1251;
        let x_1254 : f32 = u_xlat15.z;
        let x_1256 : f32 = u_xlat48.x;
        let x_1258 : f32 = u_xlat27;
        u_xlat27 = ((x_1254 * x_1256) + x_1258);
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.x, x_1261.y);
        let x_1264 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1271 : vec3<f32> = txVec11;
        let x_1273 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1271.xy, x_1271.z);
        u_xlat48.x = x_1273;
        let x_1276 : f32 = u_xlat15.w;
        let x_1278 : f32 = u_xlat48.x;
        let x_1280 : f32 = u_xlat27;
        u_xlat27 = ((x_1276 * x_1278) + x_1280);
        let x_1283 : vec4<f32> = u_xlat9;
        let x_1284 : vec2<f32> = vec2<f32>(x_1283.z, x_1283.w);
        let x_1286 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1284.x, x_1284.y, x_1286);
        let x_1293 : vec3<f32> = txVec12;
        let x_1295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1293.xy, x_1293.z);
        u_xlat48.x = x_1295;
        let x_1298 : f32 = u_xlat6.x;
        let x_1300 : f32 = u_xlat48.x;
        let x_1302 : f32 = u_xlat27;
        u_xlat67 = ((x_1298 * x_1300) + x_1302);
      } else {
        let x_1305 : vec4<f32> = u_xlat4;
        let x_1308 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1311 : vec2<f32> = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1308.z, x_1308.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1312 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1316 : vec2<f32> = floor(vec2<f32>(x_1314.x, x_1314.y));
        let x_1317 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1316.x, x_1316.y, x_1317.z, x_1317.w);
        let x_1319 : vec4<f32> = u_xlat4;
        let x_1322 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1325 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(x_1322.z, x_1322.w)) + -(vec2<f32>(x_1325.x, x_1325.y)));
        let x_1329 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1329.x, x_1329.x, x_1329.y, x_1329.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1332 : vec4<f32> = u_xlat8;
        let x_1334 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1332.x, x_1332.x, x_1332.z, x_1332.z) * vec4<f32>(x_1334.x, x_1334.x, x_1334.z, x_1334.z));
        let x_1337 : vec4<f32> = u_xlat9;
        let x_1341 : vec2<f32> = (vec2<f32>(x_1337.y, x_1337.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1342 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1342.x, x_1341.x, x_1342.z, x_1341.y);
        let x_1344 : vec4<f32> = u_xlat9;
        let x_1347 : vec2<f32> = u_xlat48;
        let x_1349 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1347));
        let x_1350 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1349.x, x_1350.y, x_1349.y, x_1350.w);
        let x_1352 : vec2<f32> = u_xlat48;
        let x_1354 : vec2<f32> = (-(x_1352) + vec2<f32>(1.0f, 1.0f));
        let x_1355 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1357 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1357, vec2<f32>(0.0f, 0.0f));
        let x_1359 : vec2<f32> = u_xlat51;
        let x_1361 : vec2<f32> = u_xlat51;
        let x_1363 : vec4<f32> = u_xlat9;
        let x_1365 : vec2<f32> = ((-(x_1359) * x_1361) + vec2<f32>(x_1363.x, x_1363.y));
        let x_1366 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1366.w);
        let x_1368 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1368, vec2<f32>(0.0f, 0.0f));
        let x_1371 : vec2<f32> = u_xlat51;
        let x_1373 : vec2<f32> = u_xlat51;
        let x_1375 : vec4<f32> = u_xlat8;
        let x_1377 : vec2<f32> = ((-(x_1371) * x_1373) + vec2<f32>(x_1375.y, x_1375.w));
        let x_1378 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1377.x, x_1378.y, x_1377.y);
        let x_1380 : vec4<f32> = u_xlat9;
        let x_1382 : vec2<f32> = (vec2<f32>(x_1380.x, x_1380.y) + vec2<f32>(2.0f, 2.0f));
        let x_1383 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1383.w);
        let x_1385 : vec3<f32> = u_xlat29;
        let x_1387 : vec2<f32> = (vec2<f32>(x_1385.x, x_1385.z) + vec2<f32>(2.0f, 2.0f));
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1388.x, x_1387.x, x_1388.z, x_1387.y);
        let x_1391 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1391 * 0.081632003f);
        let x_1395 : vec4<f32> = u_xlat8;
        let x_1398 : vec3<f32> = (vec3<f32>(x_1395.z, x_1395.x, x_1395.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1399 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1404 : vec2<f32> = (vec2<f32>(x_1401.x, x_1401.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1405 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
        let x_1408 : f32 = u_xlat12.y;
        u_xlat11.x = x_1408;
        let x_1410 : vec2<f32> = u_xlat48;
        let x_1417 : vec2<f32> = ((vec2<f32>(x_1410.x, x_1410.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1418 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1418.x, x_1417.x, x_1418.z, x_1417.y);
        let x_1420 : vec2<f32> = u_xlat48;
        let x_1424 : vec2<f32> = ((vec2<f32>(x_1420.x, x_1420.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1425 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1424.x, x_1425.y, x_1424.y, x_1425.w);
        let x_1428 : f32 = u_xlat8.x;
        u_xlat9.y = x_1428;
        let x_1431 : f32 = u_xlat10.y;
        u_xlat9.w = x_1431;
        let x_1433 : vec4<f32> = u_xlat9;
        let x_1434 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1433 + x_1434);
        let x_1436 : vec2<f32> = u_xlat48;
        let x_1439 : vec2<f32> = ((vec2<f32>(x_1436.y, x_1436.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1440 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1440.x, x_1439.x, x_1440.z, x_1439.y);
        let x_1442 : vec2<f32> = u_xlat48;
        let x_1445 : vec2<f32> = ((vec2<f32>(x_1442.y, x_1442.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1445.x, x_1446.y, x_1445.y, x_1446.w);
        let x_1449 : f32 = u_xlat8.y;
        u_xlat10.y = x_1449;
        let x_1451 : vec4<f32> = u_xlat10;
        let x_1452 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1451 + x_1452);
        let x_1454 : vec4<f32> = u_xlat9;
        let x_1455 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1454 / x_1455);
        let x_1457 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1457 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1463 : vec4<f32> = u_xlat10;
        let x_1464 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1463 / x_1464);
        let x_1466 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1466 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1468 : vec4<f32> = u_xlat9;
        let x_1471 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1468.w, x_1468.x, x_1468.y, x_1468.z) * vec4<f32>(x_1471.x, x_1471.x, x_1471.x, x_1471.x));
        let x_1474 : vec4<f32> = u_xlat10;
        let x_1477 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1474.x, x_1474.w, x_1474.y, x_1474.z) * vec4<f32>(x_1477.y, x_1477.y, x_1477.y, x_1477.y));
        let x_1480 : vec4<f32> = u_xlat9;
        let x_1481 : vec3<f32> = vec3<f32>(x_1480.y, x_1480.z, x_1480.w);
        let x_1482 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1481.x, x_1482.y, x_1481.y, x_1481.z);
        let x_1485 : f32 = u_xlat10.x;
        u_xlat12.y = x_1485;
        let x_1487 : vec4<f32> = u_xlat6;
        let x_1490 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1493 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1487.x, x_1487.y, x_1487.x, x_1487.y) * vec4<f32>(x_1490.x, x_1490.y, x_1490.x, x_1490.y)) + vec4<f32>(x_1493.x, x_1493.y, x_1493.z, x_1493.y));
        let x_1496 : vec4<f32> = u_xlat6;
        let x_1499 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1502 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1496.x, x_1496.y) * vec2<f32>(x_1499.x, x_1499.y)) + vec2<f32>(x_1502.w, x_1502.y));
        let x_1506 : f32 = u_xlat12.y;
        u_xlat9.y = x_1506;
        let x_1509 : f32 = u_xlat10.z;
        u_xlat12.y = x_1509;
        let x_1511 : vec4<f32> = u_xlat6;
        let x_1514 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1517 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1511.x, x_1511.y, x_1511.x, x_1511.y) * vec4<f32>(x_1514.x, x_1514.y, x_1514.x, x_1514.y)) + vec4<f32>(x_1517.x, x_1517.y, x_1517.z, x_1517.y));
        let x_1520 : vec4<f32> = u_xlat6;
        let x_1523 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1526 : vec4<f32> = u_xlat12;
        let x_1528 : vec2<f32> = ((vec2<f32>(x_1520.x, x_1520.y) * vec2<f32>(x_1523.x, x_1523.y)) + vec2<f32>(x_1526.w, x_1526.y));
        let x_1529 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1528.x, x_1528.y, x_1529.z, x_1529.w);
        let x_1532 : f32 = u_xlat12.y;
        u_xlat9.z = x_1532;
        let x_1535 : vec4<f32> = u_xlat6;
        let x_1538 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1541 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1535.x, x_1535.y, x_1535.x, x_1535.y) * vec4<f32>(x_1538.x, x_1538.y, x_1538.x, x_1538.y)) + vec4<f32>(x_1541.x, x_1541.y, x_1541.x, x_1541.z));
        let x_1545 : f32 = u_xlat10.w;
        u_xlat12.y = x_1545;
        let x_1548 : vec4<f32> = u_xlat6;
        let x_1551 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1554 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1548.x, x_1548.y, x_1548.x, x_1548.y) * vec4<f32>(x_1551.x, x_1551.y, x_1551.x, x_1551.y)) + vec4<f32>(x_1554.x, x_1554.y, x_1554.z, x_1554.y));
        let x_1558 : vec4<f32> = u_xlat6;
        let x_1561 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1564 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1558.x, x_1558.y) * vec2<f32>(x_1561.x, x_1561.y)) + vec2<f32>(x_1564.w, x_1564.y));
        let x_1568 : f32 = u_xlat12.y;
        u_xlat9.w = x_1568;
        let x_1571 : vec4<f32> = u_xlat6;
        let x_1574 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1577 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1571.x, x_1571.y) * vec2<f32>(x_1574.x, x_1574.y)) + vec2<f32>(x_1577.x, x_1577.w));
        let x_1580 : vec4<f32> = u_xlat12;
        let x_1581 : vec3<f32> = vec3<f32>(x_1580.x, x_1580.z, x_1580.w);
        let x_1582 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1581.x, x_1582.y, x_1581.y, x_1581.z);
        let x_1584 : vec4<f32> = u_xlat6;
        let x_1587 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1590 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1584.x, x_1584.y, x_1584.x, x_1584.y) * vec4<f32>(x_1587.x, x_1587.y, x_1587.x, x_1587.y)) + vec4<f32>(x_1590.x, x_1590.y, x_1590.z, x_1590.y));
        let x_1594 : vec4<f32> = u_xlat6;
        let x_1597 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1600 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1594.x, x_1594.y) * vec2<f32>(x_1597.x, x_1597.y)) + vec2<f32>(x_1600.w, x_1600.y));
        let x_1604 : f32 = u_xlat9.x;
        u_xlat10.x = x_1604;
        let x_1606 : vec4<f32> = u_xlat6;
        let x_1609 : vec4<f32> = x_391.x_MainLightShadowmapSize;
        let x_1612 : vec4<f32> = u_xlat10;
        let x_1614 : vec2<f32> = ((vec2<f32>(x_1606.x, x_1606.y) * vec2<f32>(x_1609.x, x_1609.y)) + vec2<f32>(x_1612.x, x_1612.y));
        let x_1615 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1614.x, x_1614.y, x_1615.z, x_1615.w);
        let x_1618 : vec4<f32> = u_xlat8;
        let x_1620 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1618.x, x_1618.x, x_1618.x, x_1618.x) * x_1620);
        let x_1623 : vec4<f32> = u_xlat8;
        let x_1625 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1623.y, x_1623.y, x_1623.y, x_1623.y) * x_1625);
        let x_1628 : vec4<f32> = u_xlat8;
        let x_1630 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1628.z, x_1628.z, x_1628.z, x_1628.z) * x_1630);
        let x_1632 : vec4<f32> = u_xlat8;
        let x_1634 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1632.w, x_1632.w, x_1632.w, x_1632.w) * x_1634);
        let x_1637 : vec4<f32> = u_xlat13;
        let x_1638 : vec2<f32> = vec2<f32>(x_1637.x, x_1637.y);
        let x_1640 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1638.x, x_1638.y, x_1640);
        let x_1647 : vec3<f32> = txVec13;
        let x_1649 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1647.xy, x_1647.z);
        u_xlat70 = x_1649;
        let x_1651 : vec4<f32> = u_xlat13;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.z, x_1651.w);
        let x_1654 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec14;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat9.x = x_1663;
        let x_1666 : f32 = u_xlat9.x;
        let x_1668 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1666 * x_1668);
        let x_1672 : f32 = u_xlat18.x;
        let x_1673 : f32 = u_xlat70;
        let x_1676 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1672 * x_1673) + x_1676);
        let x_1679 : vec2<f32> = u_xlat48;
        let x_1681 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec15;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1688.xy, x_1688.z);
        u_xlat48.x = x_1690;
        let x_1693 : f32 = u_xlat18.z;
        let x_1695 : f32 = u_xlat48.x;
        let x_1697 : f32 = u_xlat70;
        u_xlat48.x = ((x_1693 * x_1695) + x_1697);
        let x_1701 : vec4<f32> = u_xlat16;
        let x_1702 : vec2<f32> = vec2<f32>(x_1701.x, x_1701.y);
        let x_1704 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1702.x, x_1702.y, x_1704);
        let x_1712 : vec3<f32> = txVec16;
        let x_1714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1712.xy, x_1712.z);
        u_xlat69 = x_1714;
        let x_1716 : f32 = u_xlat18.w;
        let x_1717 : f32 = u_xlat69;
        let x_1720 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1716 * x_1717) + x_1720);
        let x_1724 : vec4<f32> = u_xlat14;
        let x_1725 : vec2<f32> = vec2<f32>(x_1724.x, x_1724.y);
        let x_1727 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1725.x, x_1725.y, x_1727);
        let x_1734 : vec3<f32> = txVec17;
        let x_1736 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1734.xy, x_1734.z);
        u_xlat69 = x_1736;
        let x_1738 : f32 = u_xlat19.x;
        let x_1739 : f32 = u_xlat69;
        let x_1742 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1738 * x_1739) + x_1742);
        let x_1746 : vec4<f32> = u_xlat14;
        let x_1747 : vec2<f32> = vec2<f32>(x_1746.z, x_1746.w);
        let x_1749 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1747.x, x_1747.y, x_1749);
        let x_1756 : vec3<f32> = txVec18;
        let x_1758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1756.xy, x_1756.z);
        u_xlat69 = x_1758;
        let x_1760 : f32 = u_xlat19.y;
        let x_1761 : f32 = u_xlat69;
        let x_1764 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1760 * x_1761) + x_1764);
        let x_1768 : vec4<f32> = u_xlat15;
        let x_1769 : vec2<f32> = vec2<f32>(x_1768.x, x_1768.y);
        let x_1771 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1769.x, x_1769.y, x_1771);
        let x_1778 : vec3<f32> = txVec19;
        let x_1780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1778.xy, x_1778.z);
        u_xlat69 = x_1780;
        let x_1782 : f32 = u_xlat19.z;
        let x_1783 : f32 = u_xlat69;
        let x_1786 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1782 * x_1783) + x_1786);
        let x_1790 : vec4<f32> = u_xlat16;
        let x_1791 : vec2<f32> = vec2<f32>(x_1790.z, x_1790.w);
        let x_1793 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1791.x, x_1791.y, x_1793);
        let x_1800 : vec3<f32> = txVec20;
        let x_1802 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1800.xy, x_1800.z);
        u_xlat69 = x_1802;
        let x_1804 : f32 = u_xlat19.w;
        let x_1805 : f32 = u_xlat69;
        let x_1808 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1804 * x_1805) + x_1808);
        let x_1812 : vec4<f32> = u_xlat17;
        let x_1813 : vec2<f32> = vec2<f32>(x_1812.x, x_1812.y);
        let x_1815 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1813.x, x_1813.y, x_1815);
        let x_1822 : vec3<f32> = txVec21;
        let x_1824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1822.xy, x_1822.z);
        u_xlat69 = x_1824;
        let x_1826 : f32 = u_xlat20.x;
        let x_1827 : f32 = u_xlat69;
        let x_1830 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1826 * x_1827) + x_1830);
        let x_1834 : vec4<f32> = u_xlat17;
        let x_1835 : vec2<f32> = vec2<f32>(x_1834.z, x_1834.w);
        let x_1837 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
        let x_1844 : vec3<f32> = txVec22;
        let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1844.xy, x_1844.z);
        u_xlat69 = x_1846;
        let x_1848 : f32 = u_xlat20.y;
        let x_1849 : f32 = u_xlat69;
        let x_1852 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1848 * x_1849) + x_1852);
        let x_1856 : vec2<f32> = u_xlat30;
        let x_1858 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1856.x, x_1856.y, x_1858);
        let x_1865 : vec3<f32> = txVec23;
        let x_1867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1865.xy, x_1865.z);
        u_xlat69 = x_1867;
        let x_1869 : f32 = u_xlat20.z;
        let x_1870 : f32 = u_xlat69;
        let x_1873 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1869 * x_1870) + x_1873);
        let x_1877 : vec2<f32> = u_xlat57;
        let x_1879 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1877.x, x_1877.y, x_1879);
        let x_1886 : vec3<f32> = txVec24;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1886.xy, x_1886.z);
        u_xlat69 = x_1888;
        let x_1890 : f32 = u_xlat20.w;
        let x_1891 : f32 = u_xlat69;
        let x_1894 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1890 * x_1891) + x_1894);
        let x_1898 : vec4<f32> = u_xlat12;
        let x_1899 : vec2<f32> = vec2<f32>(x_1898.x, x_1898.y);
        let x_1901 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1899.x, x_1899.y, x_1901);
        let x_1908 : vec3<f32> = txVec25;
        let x_1910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1908.xy, x_1908.z);
        u_xlat69 = x_1910;
        let x_1912 : f32 = u_xlat8.x;
        let x_1913 : f32 = u_xlat69;
        let x_1916 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1912 * x_1913) + x_1916);
        let x_1920 : vec4<f32> = u_xlat12;
        let x_1921 : vec2<f32> = vec2<f32>(x_1920.z, x_1920.w);
        let x_1923 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
        let x_1930 : vec3<f32> = txVec26;
        let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1930.xy, x_1930.z);
        u_xlat69 = x_1932;
        let x_1934 : f32 = u_xlat8.y;
        let x_1935 : f32 = u_xlat69;
        let x_1938 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1934 * x_1935) + x_1938);
        let x_1942 : vec2<f32> = u_xlat52;
        let x_1944 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1942.x, x_1942.y, x_1944);
        let x_1951 : vec3<f32> = txVec27;
        let x_1953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1951.xy, x_1951.z);
        u_xlat69 = x_1953;
        let x_1955 : f32 = u_xlat8.z;
        let x_1956 : f32 = u_xlat69;
        let x_1959 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1955 * x_1956) + x_1959);
        let x_1963 : vec4<f32> = u_xlat6;
        let x_1964 : vec2<f32> = vec2<f32>(x_1963.x, x_1963.y);
        let x_1966 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1964.x, x_1964.y, x_1966);
        let x_1973 : vec3<f32> = txVec28;
        let x_1975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1973.xy, x_1973.z);
        u_xlat6.x = x_1975;
        let x_1978 : f32 = u_xlat8.w;
        let x_1980 : f32 = u_xlat6.x;
        let x_1983 : f32 = u_xlat48.x;
        u_xlat67 = ((x_1978 * x_1980) + x_1983);
      }
    }
  } else {
    let x_1987 : vec4<f32> = u_xlat4;
    let x_1988 : vec2<f32> = vec2<f32>(x_1987.x, x_1987.y);
    let x_1990 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1988.x, x_1988.y, x_1990);
    let x_1997 : vec3<f32> = txVec29;
    let x_1999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1997.xy, x_1997.z);
    u_xlat67 = x_1999;
  }
  let x_2001 : f32 = x_391.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2001) + 1.0f);
  let x_2005 : f32 = u_xlat67;
  let x_2007 : f32 = x_391.x_MainLightShadowParams.x;
  let x_2010 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2005 * x_2007) + x_2010);
  let x_2015 : f32 = u_xlat4.z;
  u_xlatb25.x = (0.0f >= x_2015);
  let x_2020 : f32 = u_xlat4.z;
  u_xlatb46 = (x_2020 >= 1.0f);
  let x_2022 : bool = u_xlatb46;
  let x_2024 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2022 | x_2024);
  let x_2028 : bool = u_xlatb25.x;
  if (x_2028) {
    x_2029 = 1.0f;
  } else {
    let x_2034 : f32 = u_xlat4.x;
    x_2029 = x_2034;
  }
  let x_2035 : f32 = x_2029;
  u_xlat4.x = x_2035;
  let x_2038 : vec3<f32> = vs_INTERP0;
  let x_2040 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_2038 + -(x_2040));
  let x_2043 : vec3<f32> = u_xlat25;
  let x_2044 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_2043, x_2044);
  let x_2048 : f32 = u_xlat25.x;
  let x_2050 : f32 = x_391.x_MainLightShadowParams.z;
  let x_2053 : f32 = x_391.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2048 * x_2050) + x_2053);
  let x_2057 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2057, 0.0f, 1.0f);
  let x_2062 : f32 = u_xlat4.x;
  u_xlat46 = (-(x_2062) + 1.0f);
  let x_2066 : f32 = u_xlat25.x;
  let x_2067 : f32 = u_xlat46;
  let x_2070 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2066 * x_2067) + x_2070);
  let x_2079 : f32 = x_2077.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2079 == -1.0f));
  let x_2083 : bool = u_xlatb25.x;
  if (x_2083) {
    let x_2086 : vec3<f32> = vs_INTERP0;
    let x_2089 : vec4<f32> = x_2077.x_MainLightWorldToLight[1i];
    let x_2091 : vec2<f32> = (vec2<f32>(x_2086.y, x_2086.y) * vec2<f32>(x_2089.x, x_2089.y));
    let x_2092 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2091.x, x_2091.y, x_2092.z);
    let x_2095 : vec4<f32> = x_2077.x_MainLightWorldToLight[0i];
    let x_2097 : vec3<f32> = vs_INTERP0;
    let x_2100 : vec3<f32> = u_xlat25;
    let x_2102 : vec2<f32> = ((vec2<f32>(x_2095.x, x_2095.y) * vec2<f32>(x_2097.x, x_2097.x)) + vec2<f32>(x_2100.x, x_2100.y));
    let x_2103 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2102.x, x_2102.y, x_2103.z);
    let x_2106 : vec4<f32> = x_2077.x_MainLightWorldToLight[2i];
    let x_2108 : vec3<f32> = vs_INTERP0;
    let x_2111 : vec3<f32> = u_xlat25;
    let x_2113 : vec2<f32> = ((vec2<f32>(x_2106.x, x_2106.y) * vec2<f32>(x_2108.z, x_2108.z)) + vec2<f32>(x_2111.x, x_2111.y));
    let x_2114 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2113.x, x_2113.y, x_2114.z);
    let x_2116 : vec3<f32> = u_xlat25;
    let x_2119 : vec4<f32> = x_2077.x_MainLightWorldToLight[3i];
    let x_2121 : vec2<f32> = (vec2<f32>(x_2116.x, x_2116.y) + vec2<f32>(x_2119.x, x_2119.y));
    let x_2122 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2121.x, x_2121.y, x_2122.z);
    let x_2124 : vec3<f32> = u_xlat25;
    let x_2127 : vec2<f32> = ((vec2<f32>(x_2124.x, x_2124.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2128 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2127.x, x_2127.y, x_2128.z);
    let x_2135 : vec3<f32> = u_xlat25;
    let x_2138 : f32 = x_44.x_GlobalMipBias.x;
    let x_2139 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2135.x, x_2135.y), x_2138);
    u_xlat6 = x_2139;
    let x_2141 : f32 = x_2077.x_MainLightCookieTextureFormat;
    let x_2143 : f32 = x_2077.x_MainLightCookieTextureFormat;
    let x_2145 : f32 = x_2077.x_MainLightCookieTextureFormat;
    let x_2147 : f32 = x_2077.x_MainLightCookieTextureFormat;
    let x_2148 : vec4<f32> = vec4<f32>(x_2141, x_2143, x_2145, x_2147);
    let x_2155 : vec4<bool> = (vec4<f32>(x_2148.x, x_2148.y, x_2148.z, x_2148.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2155.x, x_2155.y);
    let x_2158 : bool = u_xlatb25.y;
    if (x_2158) {
      let x_2163 : f32 = u_xlat6.w;
      x_2159 = x_2163;
    } else {
      let x_2166 : f32 = u_xlat6.x;
      x_2159 = x_2166;
    }
    let x_2167 : f32 = x_2159;
    u_xlat46 = x_2167;
    let x_2169 : bool = u_xlatb25.x;
    if (x_2169) {
      let x_2173 : vec4<f32> = u_xlat6;
      x_2170 = vec3<f32>(x_2173.x, x_2173.y, x_2173.z);
    } else {
      let x_2176 : f32 = u_xlat46;
      x_2170 = vec3<f32>(x_2176, x_2176, x_2176);
    }
    let x_2178 : vec3<f32> = x_2170;
    u_xlat25 = x_2178;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_2183 : vec3<f32> = u_xlat25;
  let x_2185 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (x_2183 * vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
  let x_2188 : f32 = u_xlat68;
  let x_2190 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2188, x_2188, x_2188) * x_2190);
  let x_2192 : vec3<f32> = u_xlat3;
  let x_2194 : vec3<f32> = u_xlat22;
  u_xlat6.x = dot(-(x_2192), x_2194);
  let x_2198 : f32 = u_xlat6.x;
  let x_2200 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2198 + x_2200);
  let x_2203 : vec3<f32> = u_xlat22;
  let x_2204 : vec4<f32> = u_xlat6;
  let x_2208 : vec3<f32> = u_xlat3;
  let x_2210 : vec3<f32> = ((x_2203 * -(vec3<f32>(x_2204.x, x_2204.x, x_2204.x))) + -(x_2208));
  let x_2211 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
  let x_2213 : vec3<f32> = u_xlat22;
  let x_2214 : vec3<f32> = u_xlat3;
  u_xlat69 = dot(x_2213, x_2214);
  let x_2216 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2216, 0.0f, 1.0f);
  let x_2218 : f32 = u_xlat69;
  u_xlat69 = (-(x_2218) + 1.0f);
  let x_2221 : f32 = u_xlat69;
  let x_2222 : f32 = u_xlat69;
  u_xlat69 = (x_2221 * x_2222);
  let x_2224 : f32 = u_xlat69;
  let x_2225 : f32 = u_xlat69;
  u_xlat69 = (x_2224 * x_2225);
  let x_2228 : f32 = u_xlat0.x;
  u_xlat70 = ((-(x_2228) * 0.699999988f) + 1.700000048f);
  let x_2235 : f32 = u_xlat0.x;
  let x_2236 : f32 = u_xlat70;
  u_xlat0.x = (x_2235 * x_2236);
  let x_2240 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2240 * 6.0f);
  let x_2252 : vec4<f32> = u_xlat6;
  let x_2255 : f32 = u_xlat0.x;
  let x_2256 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2252.x, x_2252.y, x_2252.z), x_2255);
  u_xlat8 = x_2256;
  let x_2258 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2258 + -1.0f);
  let x_2262 : f32 = x_274.unity_SpecCube0_HDR.w;
  let x_2264 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2262 * x_2264) + 1.0f);
  let x_2269 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2269, 0.0f);
  let x_2273 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2273);
  let x_2277 : f32 = u_xlat0.x;
  let x_2279 : f32 = x_274.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2277 * x_2279);
  let x_2283 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2283);
  let x_2287 : f32 = u_xlat0.x;
  let x_2289 : f32 = x_274.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2287 * x_2289);
  let x_2292 : vec4<f32> = u_xlat8;
  let x_2294 : vec4<f32> = u_xlat0;
  let x_2296 : vec3<f32> = (vec3<f32>(x_2292.x, x_2292.y, x_2292.z) * vec3<f32>(x_2294.x, x_2294.x, x_2294.x));
  let x_2297 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2296.x, x_2296.y, x_2296.z, x_2297.w);
  let x_2299 : f32 = u_xlat42;
  let x_2301 : f32 = u_xlat42;
  let x_2305 : vec2<f32> = ((vec2<f32>(x_2299, x_2299) * vec2<f32>(x_2301, x_2301)) + vec2<f32>(-1.0f, 1.0f));
  let x_2306 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2305.x, x_2306.y, x_2305.y, x_2306.w);
  let x_2309 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2309);
  let x_2311 : vec3<f32> = u_xlat2;
  let x_2313 : f32 = u_xlat65;
  let x_2315 : vec3<f32> = (-(x_2311) + vec3<f32>(x_2313, x_2313, x_2313));
  let x_2316 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2315.x, x_2315.y, x_2315.z, x_2316.w);
  let x_2318 : f32 = u_xlat69;
  let x_2320 : vec4<f32> = u_xlat8;
  let x_2323 : vec3<f32> = u_xlat2;
  let x_2324 : vec3<f32> = ((vec3<f32>(x_2318, x_2318, x_2318) * vec3<f32>(x_2320.x, x_2320.y, x_2320.z)) + x_2323);
  let x_2325 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
  let x_2327 : f32 = u_xlat42;
  let x_2329 : vec4<f32> = u_xlat8;
  let x_2331 : vec3<f32> = (vec3<f32>(x_2327, x_2327, x_2327) * vec3<f32>(x_2329.x, x_2329.y, x_2329.z));
  let x_2332 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2331.x, x_2331.y, x_2331.z, x_2332.w);
  let x_2334 : vec4<f32> = u_xlat6;
  let x_2336 : vec4<f32> = u_xlat8;
  let x_2338 : vec3<f32> = (vec3<f32>(x_2334.x, x_2334.y, x_2334.z) * vec3<f32>(x_2336.x, x_2336.y, x_2336.z));
  let x_2339 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
  let x_2341 : vec4<f32> = u_xlat5;
  let x_2343 : vec3<f32> = u_xlat7;
  let x_2345 : vec4<f32> = u_xlat6;
  let x_2347 : vec3<f32> = ((vec3<f32>(x_2341.x, x_2341.y, x_2341.z) * x_2343) + vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
  let x_2351 : f32 = u_xlat4.x;
  let x_2353 : f32 = x_274.unity_LightData.z;
  u_xlat42 = (x_2351 * x_2353);
  let x_2355 : vec3<f32> = u_xlat22;
  let x_2357 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat65 = dot(x_2355, vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
  let x_2360 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2360, 0.0f, 1.0f);
  let x_2362 : f32 = u_xlat42;
  let x_2363 : f32 = u_xlat65;
  u_xlat42 = (x_2362 * x_2363);
  let x_2365 : f32 = u_xlat42;
  let x_2367 : vec3<f32> = u_xlat25;
  let x_2368 : vec3<f32> = (vec3<f32>(x_2365, x_2365, x_2365) * x_2367);
  let x_2369 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2368.x, x_2368.y, x_2368.z, x_2369.w);
  let x_2371 : vec3<f32> = u_xlat3;
  let x_2373 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2375 : vec3<f32> = (x_2371 + vec3<f32>(x_2373.x, x_2373.y, x_2373.z));
  let x_2376 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2376.w);
  let x_2378 : vec4<f32> = u_xlat6;
  let x_2380 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2378.x, x_2378.y, x_2378.z), vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
  let x_2383 : f32 = u_xlat42;
  u_xlat42 = max(x_2383, 1.17549435e-37f);
  let x_2386 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2386);
  let x_2388 : f32 = u_xlat42;
  let x_2390 : vec4<f32> = u_xlat6;
  let x_2392 : vec3<f32> = (vec3<f32>(x_2388, x_2388, x_2388) * vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
  let x_2393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
  let x_2395 : vec3<f32> = u_xlat22;
  let x_2396 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_2395, vec3<f32>(x_2396.x, x_2396.y, x_2396.z));
  let x_2399 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2399, 0.0f, 1.0f);
  let x_2402 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2404 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_2402.x, x_2402.y, x_2402.z), vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2407 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2407, 0.0f, 1.0f);
  let x_2409 : f32 = u_xlat42;
  let x_2410 : f32 = u_xlat42;
  u_xlat42 = (x_2409 * x_2410);
  let x_2412 : f32 = u_xlat42;
  let x_2414 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2412 * x_2414) + 1.000010014f);
  let x_2418 : f32 = u_xlat65;
  let x_2419 : f32 = u_xlat65;
  u_xlat65 = (x_2418 * x_2419);
  let x_2421 : f32 = u_xlat42;
  let x_2422 : f32 = u_xlat42;
  u_xlat42 = (x_2421 * x_2422);
  let x_2424 : f32 = u_xlat65;
  u_xlat65 = max(x_2424, 0.100000001f);
  let x_2427 : f32 = u_xlat42;
  let x_2428 : f32 = u_xlat65;
  u_xlat42 = (x_2427 * x_2428);
  let x_2430 : f32 = u_xlat66;
  let x_2431 : f32 = u_xlat42;
  u_xlat42 = (x_2430 * x_2431);
  let x_2434 : f32 = u_xlat1.x;
  let x_2435 : f32 = u_xlat42;
  u_xlat42 = (x_2434 / x_2435);
  let x_2437 : vec3<f32> = u_xlat2;
  let x_2438 : f32 = u_xlat42;
  let x_2441 : vec3<f32> = u_xlat7;
  let x_2442 : vec3<f32> = ((x_2437 * vec3<f32>(x_2438, x_2438, x_2438)) + x_2441);
  let x_2443 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
  let x_2445 : vec4<f32> = u_xlat4;
  let x_2447 : vec4<f32> = u_xlat6;
  let x_2449 : vec3<f32> = (vec3<f32>(x_2445.x, x_2445.y, x_2445.z) * vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
  let x_2450 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2449.x, x_2449.y, x_2449.z, x_2450.w);
  let x_2453 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2455 : f32 = x_274.unity_LightData.y;
  u_xlat42 = min(x_2453, x_2455);
  let x_2458 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2458));
  let x_2462 : f32 = x_2077.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2464 : f32 = x_2077.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2466 : f32 = x_2077.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2468 : f32 = x_2077.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2469 : vec4<f32> = vec4<f32>(x_2462, x_2464, x_2466, x_2468);
  let x_2475 : vec4<bool> = (vec4<f32>(x_2469.x, x_2469.y, x_2469.z, x_2469.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2475.x, x_2475.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2486 : u32 = u_xlatu_loop_1;
    let x_2487 : u32 = u_xlatu42;
    if ((x_2486 < x_2487)) {
    } else {
      break;
    }
    let x_2490 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2490 >> 2u);
    let x_2493 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_2493 & 3u));
    let x_2496 : u32 = u_xlatu67;
    let x_2499 : vec4<f32> = x_274.unity_LightIndices[bitcast<i32>(x_2496)];
    let x_2509 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2514 : vec4<u32> = indexable[x_2509];
    u_xlat67 = dot(x_2499, bitcast<vec4<f32>>(x_2514));
    let x_2517 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2517));
    let x_2520 : vec3<f32> = vs_INTERP0;
    let x_2532 : u32 = u_xlatu67;
    let x_2535 : vec4<f32> = x_2531.x_AdditionalLightsPosition[bitcast<i32>(x_2532)];
    let x_2538 : u32 = u_xlatu67;
    let x_2541 : vec4<f32> = x_2531.x_AdditionalLightsPosition[bitcast<i32>(x_2538)];
    let x_2543 : vec3<f32> = ((-(x_2520) * vec3<f32>(x_2535.w, x_2535.w, x_2535.w)) + vec3<f32>(x_2541.x, x_2541.y, x_2541.z));
    let x_2544 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
    let x_2546 : vec4<f32> = u_xlat9;
    let x_2548 : vec4<f32> = u_xlat9;
    u_xlat48.x = dot(vec3<f32>(x_2546.x, x_2546.y, x_2546.z), vec3<f32>(x_2548.x, x_2548.y, x_2548.z));
    let x_2553 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_2553, 6.10351562e-05f);
    let x_2558 : f32 = u_xlat48.x;
    u_xlat69 = inverseSqrt(x_2558);
    let x_2560 : f32 = u_xlat69;
    let x_2562 : vec4<f32> = u_xlat9;
    let x_2564 : vec3<f32> = (vec3<f32>(x_2560, x_2560, x_2560) * vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
    let x_2565 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
    let x_2568 : f32 = u_xlat48.x;
    u_xlat70 = (1.0f / x_2568);
    let x_2571 : f32 = u_xlat48.x;
    let x_2572 : u32 = u_xlatu67;
    let x_2575 : f32 = x_2531.x_AdditionalLightsAttenuation[bitcast<i32>(x_2572)].x;
    u_xlat48.x = (x_2571 * x_2575);
    let x_2579 : f32 = u_xlat48.x;
    let x_2582 : f32 = u_xlat48.x;
    u_xlat48.x = ((-(x_2579) * x_2582) + 1.0f);
    let x_2587 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_2587, 0.0f);
    let x_2591 : f32 = u_xlat48.x;
    let x_2593 : f32 = u_xlat48.x;
    u_xlat48.x = (x_2591 * x_2593);
    let x_2597 : f32 = u_xlat48.x;
    let x_2598 : f32 = u_xlat70;
    u_xlat48.x = (x_2597 * x_2598);
    let x_2601 : u32 = u_xlatu67;
    let x_2604 : vec4<f32> = x_2531.x_AdditionalLightsSpotDir[bitcast<i32>(x_2601)];
    let x_2606 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2604.x, x_2604.y, x_2604.z), vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
    let x_2609 : f32 = u_xlat70;
    let x_2610 : u32 = u_xlatu67;
    let x_2613 : f32 = x_2531.x_AdditionalLightsAttenuation[bitcast<i32>(x_2610)].z;
    let x_2615 : u32 = u_xlatu67;
    let x_2618 : f32 = x_2531.x_AdditionalLightsAttenuation[bitcast<i32>(x_2615)].w;
    u_xlat70 = ((x_2609 * x_2613) + x_2618);
    let x_2620 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2620, 0.0f, 1.0f);
    let x_2622 : f32 = u_xlat70;
    let x_2623 : f32 = u_xlat70;
    u_xlat70 = (x_2622 * x_2623);
    let x_2626 : f32 = u_xlat48.x;
    let x_2627 : f32 = u_xlat70;
    u_xlat48.x = (x_2626 * x_2627);
    let x_2631 : u32 = u_xlatu67;
    u_xlatu70 = (x_2631 >> 5u);
    let x_2634 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2634) & 31i)));
    let x_2640 : i32 = u_xlati71;
    let x_2642 : u32 = u_xlatu70;
    let x_2645 : f32 = x_2077.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2642)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2640) & bitcast<u32>(x_2645)));
    let x_2649 : i32 = u_xlati70;
    if ((x_2649 != 0i)) {
      let x_2659 : u32 = u_xlatu67;
      let x_2662 : f32 = x_2658.x_AdditionalLightsLightTypes[bitcast<i32>(x_2659)].el;
      u_xlati70 = i32(x_2662);
      let x_2664 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2664 != 0i));
      let x_2668 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_2668) << bitcast<u32>(2i));
      let x_2671 : i32 = u_xlati71;
      if ((x_2671 != 0i)) {
        let x_2675 : vec3<f32> = vs_INTERP0;
        let x_2677 : i32 = u_xlati72;
        let x_2680 : i32 = u_xlati72;
        let x_2684 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2677 + 1i) / 4i)][((x_2680 + 1i) % 4i)];
        let x_2686 : vec3<f32> = (vec3<f32>(x_2675.y, x_2675.y, x_2675.y) * vec3<f32>(x_2684.x, x_2684.y, x_2684.w));
        let x_2687 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2686.x, x_2686.y, x_2686.z, x_2687.w);
        let x_2689 : i32 = u_xlati72;
        let x_2691 : i32 = u_xlati72;
        let x_2694 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[(x_2689 / 4i)][(x_2691 % 4i)];
        let x_2696 : vec3<f32> = vs_INTERP0;
        let x_2699 : vec4<f32> = u_xlat11;
        let x_2701 : vec3<f32> = ((vec3<f32>(x_2694.x, x_2694.y, x_2694.w) * vec3<f32>(x_2696.x, x_2696.x, x_2696.x)) + vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
        let x_2702 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2701.x, x_2701.y, x_2701.z, x_2702.w);
        let x_2704 : i32 = u_xlati72;
        let x_2707 : i32 = u_xlati72;
        let x_2711 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2704 + 2i) / 4i)][((x_2707 + 2i) % 4i)];
        let x_2713 : vec3<f32> = vs_INTERP0;
        let x_2716 : vec4<f32> = u_xlat11;
        let x_2718 : vec3<f32> = ((vec3<f32>(x_2711.x, x_2711.y, x_2711.w) * vec3<f32>(x_2713.z, x_2713.z, x_2713.z)) + vec3<f32>(x_2716.x, x_2716.y, x_2716.z));
        let x_2719 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
        let x_2721 : vec4<f32> = u_xlat11;
        let x_2723 : i32 = u_xlati72;
        let x_2726 : i32 = u_xlati72;
        let x_2730 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2723 + 3i) / 4i)][((x_2726 + 3i) % 4i)];
        let x_2732 : vec3<f32> = (vec3<f32>(x_2721.x, x_2721.y, x_2721.z) + vec3<f32>(x_2730.x, x_2730.y, x_2730.w));
        let x_2733 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2732.x, x_2732.y, x_2732.z, x_2733.w);
        let x_2735 : vec4<f32> = u_xlat11;
        let x_2737 : vec4<f32> = u_xlat11;
        let x_2739 : vec2<f32> = (vec2<f32>(x_2735.x, x_2735.y) / vec2<f32>(x_2737.z, x_2737.z));
        let x_2740 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2739.x, x_2739.y, x_2740.z, x_2740.w);
        let x_2742 : vec4<f32> = u_xlat11;
        let x_2745 : vec2<f32> = ((vec2<f32>(x_2742.x, x_2742.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2746 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
        let x_2748 : vec4<f32> = u_xlat11;
        let x_2752 : vec2<f32> = clamp(vec2<f32>(x_2748.x, x_2748.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2753 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2752.x, x_2752.y, x_2753.z, x_2753.w);
        let x_2755 : u32 = u_xlatu67;
        let x_2758 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2755)];
        let x_2760 : vec4<f32> = u_xlat11;
        let x_2763 : u32 = u_xlatu67;
        let x_2766 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2763)];
        let x_2768 : vec2<f32> = ((vec2<f32>(x_2758.x, x_2758.y) * vec2<f32>(x_2760.x, x_2760.y)) + vec2<f32>(x_2766.z, x_2766.w));
        let x_2769 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2768.x, x_2768.y, x_2769.z, x_2769.w);
      } else {
        let x_2773 : i32 = u_xlati70;
        u_xlatb70 = (x_2773 == 1i);
        let x_2775 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2775);
        let x_2777 : i32 = u_xlati70;
        if ((x_2777 != 0i)) {
          let x_2782 : vec3<f32> = vs_INTERP0;
          let x_2784 : i32 = u_xlati72;
          let x_2787 : i32 = u_xlati72;
          let x_2791 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2784 + 1i) / 4i)][((x_2787 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2782.y, x_2782.y) * vec2<f32>(x_2791.x, x_2791.y));
          let x_2794 : i32 = u_xlati72;
          let x_2796 : i32 = u_xlati72;
          let x_2799 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[(x_2794 / 4i)][(x_2796 % 4i)];
          let x_2801 : vec3<f32> = vs_INTERP0;
          let x_2804 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2799.x, x_2799.y) * vec2<f32>(x_2801.x, x_2801.x)) + x_2804);
          let x_2806 : i32 = u_xlati72;
          let x_2809 : i32 = u_xlati72;
          let x_2813 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2806 + 2i) / 4i)][((x_2809 + 2i) % 4i)];
          let x_2815 : vec3<f32> = vs_INTERP0;
          let x_2818 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2813.x, x_2813.y) * vec2<f32>(x_2815.z, x_2815.z)) + x_2818);
          let x_2820 : vec2<f32> = u_xlat53;
          let x_2821 : i32 = u_xlati72;
          let x_2824 : i32 = u_xlati72;
          let x_2828 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2821 + 3i) / 4i)][((x_2824 + 3i) % 4i)];
          u_xlat53 = (x_2820 + vec2<f32>(x_2828.x, x_2828.y));
          let x_2831 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2831 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2834 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2834);
          let x_2836 : u32 = u_xlatu67;
          let x_2839 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2836)];
          let x_2841 : vec2<f32> = u_xlat53;
          let x_2843 : u32 = u_xlatu67;
          let x_2846 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2843)];
          let x_2848 : vec2<f32> = ((vec2<f32>(x_2839.x, x_2839.y) * x_2841) + vec2<f32>(x_2846.z, x_2846.w));
          let x_2849 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2848.x, x_2848.y, x_2849.z, x_2849.w);
        } else {
          let x_2852 : vec3<f32> = vs_INTERP0;
          let x_2854 : i32 = u_xlati72;
          let x_2857 : i32 = u_xlati72;
          let x_2861 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2854 + 1i) / 4i)][((x_2857 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2852.y, x_2852.y, x_2852.y, x_2852.y) * x_2861);
          let x_2863 : i32 = u_xlati72;
          let x_2865 : i32 = u_xlati72;
          let x_2868 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[(x_2863 / 4i)][(x_2865 % 4i)];
          let x_2869 : vec3<f32> = vs_INTERP0;
          let x_2872 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2868 * vec4<f32>(x_2869.x, x_2869.x, x_2869.x, x_2869.x)) + x_2872);
          let x_2874 : i32 = u_xlati72;
          let x_2877 : i32 = u_xlati72;
          let x_2881 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2874 + 2i) / 4i)][((x_2877 + 2i) % 4i)];
          let x_2882 : vec3<f32> = vs_INTERP0;
          let x_2885 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2881 * vec4<f32>(x_2882.z, x_2882.z, x_2882.z, x_2882.z)) + x_2885);
          let x_2887 : vec4<f32> = u_xlat12;
          let x_2888 : i32 = u_xlati72;
          let x_2891 : i32 = u_xlati72;
          let x_2895 : vec4<f32> = x_2658.x_AdditionalLightsWorldToLights[((x_2888 + 3i) / 4i)][((x_2891 + 3i) % 4i)];
          u_xlat12 = (x_2887 + x_2895);
          let x_2897 : vec4<f32> = u_xlat12;
          let x_2899 : vec4<f32> = u_xlat12;
          let x_2901 : vec3<f32> = (vec3<f32>(x_2897.x, x_2897.y, x_2897.z) / vec3<f32>(x_2899.w, x_2899.w, x_2899.w));
          let x_2902 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2901.x, x_2901.y, x_2901.z, x_2902.w);
          let x_2904 : vec4<f32> = u_xlat12;
          let x_2906 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2904.x, x_2904.y, x_2904.z), vec3<f32>(x_2906.x, x_2906.y, x_2906.z));
          let x_2909 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2909);
          let x_2911 : f32 = u_xlat70;
          let x_2913 : vec4<f32> = u_xlat12;
          let x_2915 : vec3<f32> = (vec3<f32>(x_2911, x_2911, x_2911) * vec3<f32>(x_2913.x, x_2913.y, x_2913.z));
          let x_2916 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2916.w);
          let x_2918 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2918.x, x_2918.y, x_2918.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2922 : f32 = u_xlat70;
          u_xlat70 = max(x_2922, 0.000001f);
          let x_2925 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2925);
          let x_2927 : f32 = u_xlat70;
          let x_2929 : vec4<f32> = u_xlat12;
          let x_2931 : vec3<f32> = (vec3<f32>(x_2927, x_2927, x_2927) * vec3<f32>(x_2929.z, x_2929.x, x_2929.y));
          let x_2932 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2931.x, x_2931.y, x_2931.z, x_2932.w);
          let x_2935 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2935);
          let x_2939 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2939, 0.0f, 1.0f);
          let x_2943 : vec4<f32> = u_xlat13;
          let x_2946 : vec4<bool> = (vec4<f32>(x_2943.y, x_2943.z, x_2943.y, x_2943.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2946.x, x_2946.y);
          let x_2949 : bool = u_xlatb53.x;
          if (x_2949) {
            let x_2954 : f32 = u_xlat13.x;
            x_2950 = x_2954;
          } else {
            let x_2957 : f32 = u_xlat13.x;
            x_2950 = -(x_2957);
          }
          let x_2959 : f32 = x_2950;
          u_xlat53.x = x_2959;
          let x_2962 : bool = u_xlatb53.y;
          if (x_2962) {
            let x_2967 : f32 = u_xlat13.x;
            x_2963 = x_2967;
          } else {
            let x_2970 : f32 = u_xlat13.x;
            x_2963 = -(x_2970);
          }
          let x_2972 : f32 = x_2963;
          u_xlat53.y = x_2972;
          let x_2974 : vec4<f32> = u_xlat12;
          let x_2976 : f32 = u_xlat70;
          let x_2979 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2974.x, x_2974.y) * vec2<f32>(x_2976, x_2976)) + x_2979);
          let x_2981 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2981 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2984 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2984, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2988 : u32 = u_xlatu67;
          let x_2991 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2988)];
          let x_2993 : vec2<f32> = u_xlat53;
          let x_2995 : u32 = u_xlatu67;
          let x_2998 : vec4<f32> = x_2658.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2995)];
          let x_3000 : vec2<f32> = ((vec2<f32>(x_2991.x, x_2991.y) * x_2993) + vec2<f32>(x_2998.z, x_2998.w));
          let x_3001 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3000.x, x_3000.y, x_3001.z, x_3001.w);
        }
      }
      let x_3008 : vec4<f32> = u_xlat11;
      let x_3011 : f32 = x_44.x_GlobalMipBias.x;
      let x_3012 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3008.x, x_3008.y), x_3011);
      u_xlat11 = x_3012;
      let x_3014 : bool = u_xlatb6.y;
      if (x_3014) {
        let x_3019 : f32 = u_xlat11.w;
        x_3015 = x_3019;
      } else {
        let x_3022 : f32 = u_xlat11.x;
        x_3015 = x_3022;
      }
      let x_3023 : f32 = x_3015;
      u_xlat70 = x_3023;
      let x_3025 : bool = u_xlatb6.x;
      if (x_3025) {
        let x_3029 : vec4<f32> = u_xlat11;
        x_3026 = vec3<f32>(x_3029.x, x_3029.y, x_3029.z);
      } else {
        let x_3032 : f32 = u_xlat70;
        x_3026 = vec3<f32>(x_3032, x_3032, x_3032);
      }
      let x_3034 : vec3<f32> = x_3026;
      let x_3035 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3034.x, x_3034.y, x_3034.z, x_3035.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3041 : vec4<f32> = u_xlat11;
    let x_3043 : u32 = u_xlatu67;
    let x_3046 : vec4<f32> = x_2531.x_AdditionalLightsColor[bitcast<i32>(x_3043)];
    let x_3048 : vec3<f32> = (vec3<f32>(x_3041.x, x_3041.y, x_3041.z) * vec3<f32>(x_3046.x, x_3046.y, x_3046.z));
    let x_3049 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3048.x, x_3048.y, x_3048.z, x_3049.w);
    let x_3051 : f32 = u_xlat68;
    let x_3053 : vec4<f32> = u_xlat11;
    let x_3055 : vec3<f32> = (vec3<f32>(x_3051, x_3051, x_3051) * vec3<f32>(x_3053.x, x_3053.y, x_3053.z));
    let x_3056 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3055.x, x_3055.y, x_3055.z, x_3056.w);
    let x_3058 : vec3<f32> = u_xlat22;
    let x_3059 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(x_3058, vec3<f32>(x_3059.x, x_3059.y, x_3059.z));
    let x_3062 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3062, 0.0f, 1.0f);
    let x_3064 : f32 = u_xlat67;
    let x_3066 : f32 = u_xlat48.x;
    u_xlat67 = (x_3064 * x_3066);
    let x_3068 : f32 = u_xlat67;
    let x_3070 : vec4<f32> = u_xlat11;
    let x_3072 : vec3<f32> = (vec3<f32>(x_3068, x_3068, x_3068) * vec3<f32>(x_3070.x, x_3070.y, x_3070.z));
    let x_3073 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3072.x, x_3072.y, x_3072.z, x_3073.w);
    let x_3075 : vec4<f32> = u_xlat9;
    let x_3077 : f32 = u_xlat69;
    let x_3080 : vec3<f32> = u_xlat3;
    let x_3081 : vec3<f32> = ((vec3<f32>(x_3075.x, x_3075.y, x_3075.z) * vec3<f32>(x_3077, x_3077, x_3077)) + x_3080);
    let x_3082 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3082.w);
    let x_3084 : vec4<f32> = u_xlat9;
    let x_3086 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3084.x, x_3084.y, x_3084.z), vec3<f32>(x_3086.x, x_3086.y, x_3086.z));
    let x_3089 : f32 = u_xlat67;
    u_xlat67 = max(x_3089, 1.17549435e-37f);
    let x_3091 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_3091);
    let x_3093 : f32 = u_xlat67;
    let x_3095 : vec4<f32> = u_xlat9;
    let x_3097 : vec3<f32> = (vec3<f32>(x_3093, x_3093, x_3093) * vec3<f32>(x_3095.x, x_3095.y, x_3095.z));
    let x_3098 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3097.x, x_3097.y, x_3097.z, x_3098.w);
    let x_3100 : vec3<f32> = u_xlat22;
    let x_3101 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(x_3100, vec3<f32>(x_3101.x, x_3101.y, x_3101.z));
    let x_3104 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3104, 0.0f, 1.0f);
    let x_3106 : vec4<f32> = u_xlat10;
    let x_3108 : vec4<f32> = u_xlat9;
    u_xlat48.x = dot(vec3<f32>(x_3106.x, x_3106.y, x_3106.z), vec3<f32>(x_3108.x, x_3108.y, x_3108.z));
    let x_3113 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_3113, 0.0f, 1.0f);
    let x_3116 : f32 = u_xlat67;
    let x_3117 : f32 = u_xlat67;
    u_xlat67 = (x_3116 * x_3117);
    let x_3119 : f32 = u_xlat67;
    let x_3121 : f32 = u_xlat0.x;
    u_xlat67 = ((x_3119 * x_3121) + 1.000010014f);
    let x_3125 : f32 = u_xlat48.x;
    let x_3127 : f32 = u_xlat48.x;
    u_xlat48.x = (x_3125 * x_3127);
    let x_3130 : f32 = u_xlat67;
    let x_3131 : f32 = u_xlat67;
    u_xlat67 = (x_3130 * x_3131);
    let x_3134 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_3134, 0.100000001f);
    let x_3137 : f32 = u_xlat67;
    let x_3139 : f32 = u_xlat48.x;
    u_xlat67 = (x_3137 * x_3139);
    let x_3141 : f32 = u_xlat66;
    let x_3142 : f32 = u_xlat67;
    u_xlat67 = (x_3141 * x_3142);
    let x_3145 : f32 = u_xlat1.x;
    let x_3146 : f32 = u_xlat67;
    u_xlat67 = (x_3145 / x_3146);
    let x_3148 : vec3<f32> = u_xlat2;
    let x_3149 : f32 = u_xlat67;
    let x_3152 : vec3<f32> = u_xlat7;
    let x_3153 : vec3<f32> = ((x_3148 * vec3<f32>(x_3149, x_3149, x_3149)) + x_3152);
    let x_3154 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3153.x, x_3153.y, x_3153.z, x_3154.w);
    let x_3156 : vec4<f32> = u_xlat9;
    let x_3158 : vec4<f32> = u_xlat11;
    let x_3161 : vec4<f32> = u_xlat8;
    let x_3163 : vec3<f32> = ((vec3<f32>(x_3156.x, x_3156.y, x_3156.z) * vec3<f32>(x_3158.x, x_3158.y, x_3158.z)) + vec3<f32>(x_3161.x, x_3161.y, x_3161.z));
    let x_3164 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3163.x, x_3163.y, x_3163.z, x_3164.w);

    continuing {
      let x_3166 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3166 + bitcast<u32>(1i));
    }
  }
  let x_3168 : vec4<f32> = u_xlat5;
  let x_3170 : f32 = u_xlat63;
  let x_3173 : vec4<f32> = u_xlat4;
  let x_3175 : vec3<f32> = ((vec3<f32>(x_3168.x, x_3168.y, x_3168.z) * vec3<f32>(x_3170, x_3170, x_3170)) + vec3<f32>(x_3173.x, x_3173.y, x_3173.z));
  let x_3176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3175.x, x_3176.y, x_3175.y, x_3175.z);
  let x_3178 : vec4<f32> = u_xlat8;
  let x_3180 : vec4<f32> = u_xlat0;
  let x_3182 : vec3<f32> = (vec3<f32>(x_3178.x, x_3178.y, x_3178.z) + vec3<f32>(x_3180.x, x_3180.z, x_3180.w));
  let x_3183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3182.x, x_3183.y, x_3182.y, x_3182.z);
  let x_3186 : f32 = u_xlat21.x;
  let x_3188 : f32 = u_xlat21.x;
  u_xlat21.x = (x_3186 * -(x_3188));
  let x_3193 : f32 = u_xlat21.x;
  u_xlat21.x = exp2(x_3193);
  let x_3196 : vec4<f32> = u_xlat0;
  let x_3200 : vec4<f32> = x_44.unity_FogColor;
  let x_3203 : vec3<f32> = (vec3<f32>(x_3196.x, x_3196.z, x_3196.w) + -(vec3<f32>(x_3200.x, x_3200.y, x_3200.z)));
  let x_3204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3203.x, x_3204.y, x_3203.y, x_3203.z);
  let x_3208 : vec2<f32> = u_xlat21;
  let x_3210 : vec4<f32> = u_xlat0;
  let x_3214 : vec4<f32> = x_44.unity_FogColor;
  let x_3216 : vec3<f32> = ((vec3<f32>(x_3208.x, x_3208.x, x_3208.x) * vec3<f32>(x_3210.x, x_3210.z, x_3210.w)) + vec3<f32>(x_3214.x, x_3214.y, x_3214.z));
  let x_3217 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3216.x, x_3216.y, x_3216.z, x_3217.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

