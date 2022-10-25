struct x_Terrain {
  x_NormalScale0 : f32,
  x_NormalScale1 : f32,
  x_NormalScale2 : f32,
  x_NormalScale3 : f32,
  x_Metallic0 : f32,
  x_Metallic1 : f32,
  x_Metallic2 : f32,
  x_Metallic3 : f32,
  x_Smoothness0 : f32,
  x_Smoothness1 : f32,
  x_Smoothness2 : f32,
  x_Smoothness3 : f32,
  x_DiffuseRemapScale0 : vec4<f32>,
  x_DiffuseRemapScale1 : vec4<f32>,
  x_DiffuseRemapScale2 : vec4<f32>,
  x_DiffuseRemapScale3 : vec4<f32>,
  x_MaskMapRemapOffset0 : vec4<f32>,
  x_MaskMapRemapOffset1 : vec4<f32>,
  x_MaskMapRemapOffset2 : vec4<f32>,
  x_MaskMapRemapOffset3 : vec4<f32>,
  x_MaskMapRemapScale0 : vec4<f32>,
  x_MaskMapRemapScale1 : vec4<f32>,
  x_MaskMapRemapScale2 : vec4<f32>,
  x_MaskMapRemapScale3 : vec4<f32>,
  x_Control_ST : vec4<f32>,
  x_Control_TexelSize : vec4<f32>,
  x_DiffuseHasAlpha0 : f32,
  x_DiffuseHasAlpha1 : f32,
  x_DiffuseHasAlpha2 : f32,
  x_DiffuseHasAlpha3 : f32,
  x_LayerHasMask0 : f32,
  x_LayerHasMask1 : f32,
  x_LayerHasMask2 : f32,
  x_LayerHasMask3 : f32,
  x_Splat0_ST : vec4<f32>,
  x_Splat1_ST : vec4<f32>,
  x_Splat2_ST : vec4<f32>,
  x_Splat3_ST : vec4<f32>,
  x_HeightTransition : f32,
  x_NumLayersCount : f32,
}

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

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_125 : PGlobals;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_837 : UnityPerDraw;

@group(0) @binding(10) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1043 : MainLightShadows;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_1116 : LightCookies;

@group(0) @binding(12) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(14) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1602 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1711 : AdditionalLightsCookies;

@group(0) @binding(13) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb43 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlat44 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb45 : bool;
  var u_xlatb46 : bool;
  var x_1068 : f32;
  var u_xlat46 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_1199 : f32;
  var x_1210 : vec3<f32>;
  var u_xlatu28 : u32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati47 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlatu49 : u32;
  var u_xlati50 : i32;
  var u_xlati49 : i32;
  var u_xlati51 : i32;
  var u_xlatb49 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_2005 : f32;
  var x_2018 : f32;
  var x_2070 : f32;
  var x_2081 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_35 : vec4<f32> = x_30.x_MaskMapRemapScale0;
  let x_42 : vec4<f32> = x_30.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_35.x, x_35.y, x_35.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_42.x, x_42.y, x_42.w));
  let x_48 : vec4<f32> = x_30.x_MaskMapRemapScale1;
  let x_53 : vec4<f32> = x_30.x_MaskMapRemapOffset1;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_53.x, x_53.y, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_61 : vec4<f32> = x_30.x_MaskMapRemapScale2;
  let x_66 : vec4<f32> = x_30.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_61.x, x_61.y, x_61.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_66.x, x_66.y, x_66.w));
  let x_72 : vec4<f32> = x_30.x_MaskMapRemapScale3;
  let x_77 : vec4<f32> = x_30.x_MaskMapRemapOffset3;
  let x_79 : vec3<f32> = ((vec3<f32>(x_72.x, x_72.w, x_72.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_77.x, x_77.w, x_77.y));
  let x_80 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_79.z);
  let x_86 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.z, x_86.w) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = u_xlat4;
  let x_100 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(0.5f, 0.5f));
  let x_101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat4;
  let x_106 : vec4<f32> = x_30.x_Control_TexelSize;
  let x_108 : vec2<f32> = (vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_106.x, x_106.y));
  let x_109 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_121 : vec4<f32> = u_xlat4;
  let x_130 : f32 = x_125.x_GlobalMipBias.x;
  let x_131 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_130);
  u_xlat4 = x_131;
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_134, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_125.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat5 = x_148;
  let x_154 : vec4<f32> = vs_TEXCOORD1;
  let x_157 : f32 = x_125.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_154.z, x_154.w), x_157);
  u_xlat6 = x_158;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_125.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_165.x, x_165.y), x_168);
  u_xlat7 = x_169;
  let x_175 : vec4<f32> = vs_TEXCOORD2;
  let x_178 : f32 = x_125.x_GlobalMipBias.x;
  let x_179 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_175.z, x_175.w), x_178);
  u_xlat8 = x_179;
  let x_182 : f32 = u_xlat5.w;
  u_xlat9.x = x_182;
  let x_185 : f32 = u_xlat6.w;
  u_xlat9.y = x_185;
  let x_189 : f32 = u_xlat7.w;
  u_xlat9.z = x_189;
  let x_193 : f32 = u_xlat8.w;
  u_xlat9.w = x_193;
  let x_196 : vec4<f32> = u_xlat9;
  let x_199 : f32 = x_30.x_Smoothness0;
  let x_202 : f32 = x_30.x_Smoothness1;
  let x_205 : f32 = x_30.x_Smoothness2;
  let x_208 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_196 * vec4<f32>(x_199, x_202, x_205, x_208));
  let x_217 : f32 = x_30.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_217);
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_220) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_223 : vec4<f32> = u_xlat9;
  let x_224 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_223 + -(x_224));
  let x_227 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_227 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_231, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_236 : vec4<f32> = u_xlat4;
  let x_240 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_236 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_240);
  let x_243 : vec4<f32> = u_xlat4;
  let x_244 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_243 + -(x_244));
  let x_249 : f32 = u_xlat12.x;
  let x_252 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_249 * x_252);
  let x_256 : f32 = u_xlat12.y;
  let x_259 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_256 * x_259);
  let x_263 : f32 = u_xlat12.z;
  let x_266 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.w;
  let x_273 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_270 * x_273);
  let x_276 : vec4<f32> = u_xlat11;
  let x_277 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_276 + x_277);
  let x_279 : bool = u_xlatb43;
  let x_280 : vec4<f32> = u_xlat11;
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_281, x_280, vec4<bool>(x_279, x_279, x_279, x_279));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_286, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_288 : f32 = u_xlat43;
  u_xlat43 = (x_288 + 6.10351562e-05f);
  let x_291 : vec4<f32> = u_xlat4;
  let x_292 : f32 = u_xlat43;
  u_xlat4 = (x_291 / vec4<f32>(x_292, x_292, x_292, x_292));
  let x_295 : vec4<f32> = u_xlat4;
  let x_298 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_300 : vec3<f32> = (vec3<f32>(x_295.x, x_295.x, x_295.x) * vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat4;
  let x_306 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_308 : vec3<f32> = (vec3<f32>(x_303.y, x_303.y, x_303.y) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat6;
  let x_313 : vec4<f32> = u_xlat12;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat5;
  let x_320 : vec4<f32> = u_xlat11;
  let x_323 : vec4<f32> = u_xlat6;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.x, x_320.y, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.z, x_328.z, x_328.z) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat7;
  let x_338 : vec4<f32> = u_xlat6;
  let x_341 : vec4<f32> = u_xlat5;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat4;
  let x_349 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_351 : vec3<f32> = (vec3<f32>(x_346.w, x_346.w, x_346.w) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat8;
  let x_356 : vec4<f32> = u_xlat6;
  let x_359 : vec4<f32> = u_xlat5;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.y, x_356.z)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_369 : vec4<f32> = vs_TEXCOORD1;
  let x_372 : f32 = x_125.x_GlobalMipBias.x;
  let x_373 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_369.x, x_369.y), x_372);
  let x_374 : vec3<f32> = vec3<f32>(x_373.x, x_373.y, x_373.w);
  let x_375 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : f32 = u_xlat6.x;
  let x_380 : f32 = u_xlat6.z;
  u_xlat6.x = (x_378 * x_380);
  let x_383 : vec4<f32> = u_xlat6;
  let x_388 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_391.x, x_391.y), vec2<f32>(x_393.x, x_393.y));
  let x_396 : f32 = u_xlat43;
  u_xlat43 = min(x_396, 1.0f);
  let x_398 : f32 = u_xlat43;
  u_xlat43 = (-(x_398) + 1.0f);
  let x_401 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_401);
  let x_403 : f32 = u_xlat43;
  u_xlat7.z = max(x_403, 1.00000002e-16f);
  let x_407 : vec4<f32> = u_xlat6;
  let x_411 : f32 = x_30.x_NormalScale0;
  let x_413 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) * vec2<f32>(x_411, x_411));
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_420 : vec4<f32> = vs_TEXCOORD1;
  let x_423 : f32 = x_125.x_GlobalMipBias.x;
  let x_424 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_420.z, x_420.w), x_423);
  let x_425 : vec3<f32> = vec3<f32>(x_424.x, x_424.y, x_424.w);
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = u_xlat6.x;
  let x_431 : f32 = u_xlat6.z;
  u_xlat6.x = (x_429 * x_431);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : vec2<f32> = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_438 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat6;
  let x_442 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_440.x, x_440.y), vec2<f32>(x_442.x, x_442.y));
  let x_445 : f32 = u_xlat43;
  u_xlat43 = min(x_445, 1.0f);
  let x_447 : f32 = u_xlat43;
  u_xlat43 = (-(x_447) + 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_450);
  let x_452 : f32 = u_xlat43;
  u_xlat8.z = max(x_452, 1.00000002e-16f);
  let x_455 : vec4<f32> = u_xlat6;
  let x_458 : f32 = x_30.x_NormalScale1;
  let x_460 : f32 = x_30.x_NormalScale1;
  let x_461 : vec2<f32> = vec2<f32>(x_458, x_460);
  let x_465 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) * vec2<f32>(x_461.x, x_461.y));
  let x_466 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec4<f32> = u_xlat8;
  let x_472 : vec3<f32> = (vec3<f32>(x_468.y, x_468.y, x_468.y) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.x, x_475.x) * vec3<f32>(x_477.x, x_477.y, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_489 : vec4<f32> = vs_TEXCOORD2;
  let x_492 : f32 = x_125.x_GlobalMipBias.x;
  let x_493 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_489.x, x_489.y), x_492);
  let x_494 : vec3<f32> = vec3<f32>(x_493.x, x_493.y, x_493.w);
  let x_495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = u_xlat7.x;
  let x_500 : f32 = u_xlat7.z;
  u_xlat7.x = (x_498 * x_500);
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec2<f32> = ((vec2<f32>(x_503.x, x_503.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat7;
  let x_511 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_509.x, x_509.y), vec2<f32>(x_511.x, x_511.y));
  let x_514 : f32 = u_xlat43;
  u_xlat43 = min(x_514, 1.0f);
  let x_516 : f32 = u_xlat43;
  u_xlat43 = (-(x_516) + 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_519);
  let x_521 : f32 = u_xlat43;
  u_xlat8.z = max(x_521, 1.00000002e-16f);
  let x_524 : vec4<f32> = u_xlat7;
  let x_528 : f32 = x_30.x_NormalScale2;
  let x_530 : f32 = x_30.x_NormalScale2;
  let x_531 : vec2<f32> = vec2<f32>(x_528, x_530);
  let x_535 : vec2<f32> = (vec2<f32>(x_524.x, x_524.y) * vec2<f32>(x_531.x, x_531.y));
  let x_536 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat8;
  let x_543 : vec4<f32> = u_xlat6;
  let x_545 : vec3<f32> = ((vec3<f32>(x_538.z, x_538.z, x_538.z) * vec3<f32>(x_540.x, x_540.y, x_540.z)) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_552 : vec4<f32> = vs_TEXCOORD2;
  let x_555 : f32 = x_125.x_GlobalMipBias.x;
  let x_556 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_552.z, x_552.w), x_555);
  let x_557 : vec3<f32> = vec3<f32>(x_556.x, x_556.y, x_556.w);
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : f32 = u_xlat7.x;
  let x_563 : f32 = u_xlat7.z;
  u_xlat7.x = (x_561 * x_563);
  let x_566 : vec4<f32> = u_xlat7;
  let x_569 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat7;
  let x_574 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_572.x, x_572.y), vec2<f32>(x_574.x, x_574.y));
  let x_577 : f32 = u_xlat43;
  u_xlat43 = min(x_577, 1.0f);
  let x_579 : f32 = u_xlat43;
  u_xlat43 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_582);
  let x_584 : f32 = u_xlat43;
  u_xlat8.z = max(x_584, 1.00000002e-16f);
  let x_587 : vec4<f32> = u_xlat7;
  let x_591 : f32 = x_30.x_NormalScale3;
  let x_593 : f32 = x_30.x_NormalScale3;
  let x_594 : vec2<f32> = vec2<f32>(x_591, x_593);
  let x_598 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_594.x, x_594.y));
  let x_599 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat4;
  let x_603 : vec4<f32> = u_xlat8;
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec3<f32> = ((vec3<f32>(x_601.w, x_601.w, x_601.w) * vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = u_xlat6.z;
  u_xlat6.w = (x_612 + 0.00001f);
  let x_616 : vec4<f32> = u_xlat6;
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_616.x, x_616.y, x_616.w), vec3<f32>(x_618.x, x_618.y, x_618.w));
  let x_621 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_621);
  let x_623 : f32 = u_xlat43;
  let x_625 : vec4<f32> = u_xlat6;
  let x_627 : vec3<f32> = (vec3<f32>(x_623, x_623, x_623) * vec3<f32>(x_625.x, x_625.y, x_625.w));
  let x_628 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_631;
  let x_634 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_634;
  let x_637 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_637;
  let x_640 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_640;
  let x_643 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_643;
  let x_646 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_652;
  let x_654 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_654 + x_655);
  let x_658 : f32 = u_xlat0.z;
  u_xlat8.x = x_658;
  let x_661 : f32 = u_xlat1.z;
  u_xlat8.y = x_661;
  let x_664 : f32 = u_xlat2.z;
  u_xlat8.z = x_664;
  let x_667 : f32 = u_xlat3.y;
  u_xlat8.w = x_667;
  let x_669 : vec4<f32> = u_xlat9;
  let x_672 : f32 = x_30.x_Smoothness0;
  let x_674 : f32 = x_30.x_Smoothness1;
  let x_676 : f32 = x_30.x_Smoothness2;
  let x_678 : f32 = x_30.x_Smoothness3;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_669) * vec4<f32>(x_672, x_674, x_676, x_678)) + x_681);
  let x_685 : f32 = x_30.x_LayerHasMask0;
  let x_688 : f32 = x_30.x_LayerHasMask1;
  let x_691 : f32 = x_30.x_LayerHasMask2;
  let x_694 : f32 = x_30.x_LayerHasMask3;
  let x_696 : vec4<f32> = u_xlat8;
  let x_698 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_685, x_688, x_691, x_694) * x_696) + x_698);
  let x_701 : vec4<f32> = u_xlat4;
  let x_702 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_701, x_702);
  let x_705 : f32 = u_xlat0.x;
  u_xlat8.x = x_705;
  let x_708 : f32 = u_xlat1.x;
  u_xlat8.y = x_708;
  let x_711 : f32 = u_xlat2.x;
  u_xlat8.z = x_711;
  let x_714 : f32 = u_xlat3.x;
  u_xlat8.w = x_714;
  let x_716 : vec4<f32> = u_xlat8;
  let x_719 : f32 = x_30.x_Metallic0;
  let x_722 : f32 = x_30.x_Metallic1;
  let x_725 : f32 = x_30.x_Metallic2;
  let x_728 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_716 + -(vec4<f32>(x_719, x_722, x_725, x_728)));
  let x_733 : f32 = x_30.x_LayerHasMask0;
  let x_735 : f32 = x_30.x_LayerHasMask1;
  let x_737 : f32 = x_30.x_LayerHasMask2;
  let x_739 : f32 = x_30.x_LayerHasMask3;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_30.x_Metallic0;
  let x_746 : f32 = x_30.x_Metallic1;
  let x_748 : f32 = x_30.x_Metallic2;
  let x_750 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_733, x_735, x_737, x_739) * x_741) + vec4<f32>(x_744, x_746, x_748, x_750));
  let x_753 : vec4<f32> = u_xlat4;
  let x_754 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_753, x_754);
  let x_758 : f32 = u_xlat0.y;
  u_xlat3.x = x_758;
  let x_761 : f32 = u_xlat1.y;
  u_xlat3.y = x_761;
  let x_764 : f32 = u_xlat2.y;
  u_xlat3.z = x_764;
  let x_766 : vec4<f32> = u_xlat7;
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_766) + x_768);
  let x_771 : f32 = x_30.x_LayerHasMask0;
  let x_773 : f32 = x_30.x_LayerHasMask1;
  let x_775 : f32 = x_30.x_LayerHasMask2;
  let x_777 : f32 = x_30.x_LayerHasMask3;
  let x_779 : vec4<f32> = u_xlat1;
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_771, x_773, x_775, x_777) * x_779) + x_781);
  let x_784 : vec4<f32> = u_xlat4;
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_784, x_785);
  let x_787 : vec4<f32> = u_xlat6;
  let x_790 : vec4<f32> = vs_TEXCOORD5;
  let x_792 : vec3<f32> = (vec3<f32>(x_787.y, x_787.y, x_787.y) * vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat6;
  let x_798 : vec4<f32> = vs_TEXCOORD4;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.x, x_795.x) * -(vec3<f32>(x_798.x, x_798.y, x_798.z))) + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat6;
  let x_810 : vec4<f32> = vs_TEXCOORD3;
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : vec3<f32> = ((vec3<f32>(x_807.z, x_807.z, x_807.z) * vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_818.x, x_818.y, x_818.z), vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_823);
  let x_825 : f32 = u_xlat43;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = (vec3<f32>(x_825, x_825, x_825) * vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  u_xlat1.w = 1.0f;
  let x_839 : vec4<f32> = x_837.unity_SHAr;
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_839, x_840);
  let x_844 : vec4<f32> = x_837.unity_SHAg;
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_844, x_845);
  let x_849 : vec4<f32> = x_837.unity_SHAb;
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_849, x_850);
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_853.y, x_853.z, x_853.z, x_853.x) * vec4<f32>(x_855.x, x_855.y, x_855.z, x_855.z));
  let x_859 : vec4<f32> = x_837.unity_SHBr;
  let x_860 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_859, x_860);
  let x_864 : vec4<f32> = x_837.unity_SHBg;
  let x_865 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_864, x_865);
  let x_869 : vec4<f32> = x_837.unity_SHBb;
  let x_870 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_869, x_870);
  let x_874 : f32 = u_xlat1.y;
  let x_876 : f32 = u_xlat1.y;
  u_xlat43 = (x_874 * x_876);
  let x_879 : f32 = u_xlat1.x;
  let x_881 : f32 = u_xlat1.x;
  let x_883 : f32 = u_xlat43;
  u_xlat43 = ((x_879 * x_881) + -(x_883));
  let x_888 : vec4<f32> = x_837.unity_SHC;
  let x_890 : f32 = u_xlat43;
  let x_893 : vec4<f32> = u_xlat4;
  let x_895 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(x_890, x_890, x_890)) + vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_898 : vec3<f32> = u_xlat2;
  let x_899 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_898 + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_902, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_907 : vec4<f32> = x_125.x_ScaledScreenParams;
  let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
  let x_912 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_908.x, x_908.y));
  let x_913 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_912.x, x_912.y, x_913.z, x_913.w);
  let x_915 : vec4<f32> = u_xlat3;
  let x_917 : vec4<f32> = hlslcc_FragCoord;
  let x_919 : vec2<f32> = (vec2<f32>(x_915.x, x_915.y) * vec2<f32>(x_917.x, x_917.y));
  let x_920 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_919.x, x_919.y, x_920.z, x_920.w);
  let x_923 : f32 = u_xlat3.y;
  let x_925 : f32 = x_125.x_ScaleBiasRt.x;
  let x_928 : f32 = x_125.x_ScaleBiasRt.y;
  u_xlat43 = ((x_923 * x_925) + x_928);
  let x_930 : f32 = u_xlat43;
  u_xlat3.z = (-(x_930) + 1.0f);
  let x_935 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_935) * 0.959999979f) + 0.959999979f);
  let x_941 : f32 = u_xlat28;
  let x_942 : f32 = u_xlat43;
  u_xlat44 = (x_941 + -(x_942));
  let x_945 : f32 = u_xlat43;
  let x_947 : vec4<f32> = u_xlat5;
  let x_949 : vec3<f32> = (vec3<f32>(x_945, x_945, x_945) * vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat5;
  let x_956 : vec3<f32> = (vec3<f32>(x_952.x, x_952.y, x_952.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_957 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec3<f32> = u_xlat0;
  let x_961 : vec4<f32> = u_xlat5;
  let x_966 : vec3<f32> = ((vec3<f32>(x_959.x, x_959.x, x_959.x) * vec3<f32>(x_961.x, x_961.y, x_961.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_967 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : f32 = u_xlat28;
  u_xlat0.x = (-(x_969) + 1.0f);
  let x_974 : f32 = u_xlat0.x;
  let x_976 : f32 = u_xlat0.x;
  u_xlat28 = (x_974 * x_976);
  let x_978 : f32 = u_xlat28;
  u_xlat28 = max(x_978, 0.0078125f);
  let x_981 : f32 = u_xlat28;
  let x_982 : f32 = u_xlat28;
  u_xlat43 = (x_981 * x_982);
  let x_984 : f32 = u_xlat44;
  u_xlat44 = (x_984 + 1.0f);
  let x_986 : f32 = u_xlat44;
  u_xlat44 = clamp(x_986, 0.0f, 1.0f);
  let x_989 : f32 = u_xlat28;
  u_xlat17 = ((x_989 * 4.0f) + 2.0f);
  let x_997 : vec4<f32> = u_xlat3;
  let x_1000 : f32 = x_125.x_GlobalMipBias.x;
  let x_1001 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_997.x, x_997.z), x_1000);
  u_xlat3.x = x_1001.x;
  let x_1006 : f32 = u_xlat3.x;
  u_xlat31 = (x_1006 + -1.0f);
  let x_1009 : f32 = x_125.x_AmbientOcclusionParam.w;
  let x_1010 : f32 = u_xlat31;
  u_xlat31 = ((x_1009 * x_1010) + 1.0f);
  let x_1013 : f32 = u_xlat14;
  let x_1015 : f32 = u_xlat3.x;
  u_xlat14 = min(x_1013, x_1015);
  let x_1019 : vec4<f32> = vs_TEXCOORD8;
  let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
  let x_1022 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
  let x_1034 : vec3<f32> = txVec0;
  let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1034.xy, x_1034.z);
  u_xlat3.x = x_1036;
  let x_1045 : f32 = x_1043.x_MainLightShadowParams.x;
  u_xlat45 = (-(x_1045) + 1.0f);
  let x_1049 : f32 = u_xlat3.x;
  let x_1051 : f32 = x_1043.x_MainLightShadowParams.x;
  let x_1053 : f32 = u_xlat45;
  u_xlat3.x = ((x_1049 * x_1051) + x_1053);
  let x_1058 : f32 = vs_TEXCOORD8.z;
  u_xlatb45 = (0.0f >= x_1058);
  let x_1062 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_1062 >= 1.0f);
  let x_1064 : bool = u_xlatb45;
  let x_1065 : bool = u_xlatb46;
  u_xlatb45 = (x_1064 | x_1065);
  let x_1067 : bool = u_xlatb45;
  if (x_1067) {
    x_1068 = 1.0f;
  } else {
    let x_1073 : f32 = u_xlat3.x;
    x_1068 = x_1073;
  }
  let x_1074 : f32 = x_1068;
  u_xlat3.x = x_1074;
  let x_1078 : vec3<f32> = vs_TEXCOORD7;
  let x_1081 : vec3<f32> = x_125.x_WorldSpaceCameraPos;
  let x_1083 : vec3<f32> = (x_1078 + -(x_1081));
  let x_1084 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat6;
  let x_1088 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(vec3<f32>(x_1086.x, x_1086.y, x_1086.z), vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1091 : f32 = u_xlat45;
  let x_1093 : f32 = x_1043.x_MainLightShadowParams.z;
  let x_1096 : f32 = x_1043.x_MainLightShadowParams.w;
  u_xlat45 = ((x_1091 * x_1093) + x_1096);
  let x_1098 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1098, 0.0f, 1.0f);
  let x_1102 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_1102) + 1.0f);
  let x_1105 : f32 = u_xlat45;
  let x_1106 : f32 = u_xlat46;
  let x_1109 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1105 * x_1106) + x_1109);
  let x_1118 : f32 = x_1116.x_MainLightCookieTextureFormat;
  u_xlatb45 = !((x_1118 == -1.0f));
  let x_1120 : bool = u_xlatb45;
  if (x_1120) {
    let x_1123 : vec3<f32> = vs_TEXCOORD7;
    let x_1126 : vec4<f32> = x_1116.x_MainLightWorldToLight[1i];
    let x_1128 : vec2<f32> = (vec2<f32>(x_1123.y, x_1123.y) * vec2<f32>(x_1126.x, x_1126.y));
    let x_1129 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
    let x_1132 : vec4<f32> = x_1116.x_MainLightWorldToLight[0i];
    let x_1134 : vec3<f32> = vs_TEXCOORD7;
    let x_1137 : vec4<f32> = u_xlat6;
    let x_1139 : vec2<f32> = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1134.x, x_1134.x)) + vec2<f32>(x_1137.x, x_1137.y));
    let x_1140 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
    let x_1143 : vec4<f32> = x_1116.x_MainLightWorldToLight[2i];
    let x_1145 : vec3<f32> = vs_TEXCOORD7;
    let x_1148 : vec4<f32> = u_xlat6;
    let x_1150 : vec2<f32> = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1145.z, x_1145.z)) + vec2<f32>(x_1148.x, x_1148.y));
    let x_1151 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
    let x_1153 : vec4<f32> = u_xlat6;
    let x_1156 : vec4<f32> = x_1116.x_MainLightWorldToLight[3i];
    let x_1158 : vec2<f32> = (vec2<f32>(x_1153.x, x_1153.y) + vec2<f32>(x_1156.x, x_1156.y));
    let x_1159 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
    let x_1161 : vec4<f32> = u_xlat6;
    let x_1164 : vec2<f32> = ((vec2<f32>(x_1161.x, x_1161.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1165 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1165.w);
    let x_1172 : vec4<f32> = u_xlat6;
    let x_1175 : f32 = x_125.x_GlobalMipBias.x;
    let x_1176 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1172.x, x_1172.y), x_1175);
    u_xlat6 = x_1176;
    let x_1181 : f32 = x_1116.x_MainLightCookieTextureFormat;
    let x_1183 : f32 = x_1116.x_MainLightCookieTextureFormat;
    let x_1185 : f32 = x_1116.x_MainLightCookieTextureFormat;
    let x_1187 : f32 = x_1116.x_MainLightCookieTextureFormat;
    let x_1188 : vec4<f32> = vec4<f32>(x_1181, x_1183, x_1185, x_1187);
    let x_1195 : vec4<bool> = (vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1188.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1195.x, x_1195.y);
    let x_1198 : bool = u_xlatb7.y;
    if (x_1198) {
      let x_1203 : f32 = u_xlat6.w;
      x_1199 = x_1203;
    } else {
      let x_1206 : f32 = u_xlat6.x;
      x_1199 = x_1206;
    }
    let x_1207 : f32 = x_1199;
    u_xlat45 = x_1207;
    let x_1209 : bool = u_xlatb7.x;
    if (x_1209) {
      let x_1213 : vec4<f32> = u_xlat6;
      x_1210 = vec3<f32>(x_1213.x, x_1213.y, x_1213.z);
    } else {
      let x_1216 : f32 = u_xlat45;
      x_1210 = vec3<f32>(x_1216, x_1216, x_1216);
    }
    let x_1218 : vec3<f32> = x_1210;
    let x_1219 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1225 : vec4<f32> = u_xlat6;
  let x_1228 : vec4<f32> = x_125.x_MainLightColor;
  let x_1230 : vec3<f32> = (vec3<f32>(x_1225.x, x_1225.y, x_1225.z) * vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : f32 = u_xlat31;
  let x_1235 : vec4<f32> = u_xlat6;
  let x_1237 : vec3<f32> = (vec3<f32>(x_1233, x_1233, x_1233) * vec3<f32>(x_1235.x, x_1235.y, x_1235.z));
  let x_1238 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
  let x_1241 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1241;
  let x_1244 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1244;
  let x_1247 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1247;
  let x_1249 : vec4<f32> = u_xlat7;
  let x_1252 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(-(vec3<f32>(x_1249.x, x_1249.y, x_1249.z)), vec3<f32>(x_1252.x, x_1252.y, x_1252.z));
  let x_1255 : f32 = u_xlat45;
  let x_1256 : f32 = u_xlat45;
  u_xlat45 = (x_1255 + x_1256);
  let x_1258 : vec4<f32> = u_xlat1;
  let x_1260 : f32 = u_xlat45;
  let x_1264 : vec4<f32> = u_xlat7;
  let x_1267 : vec3<f32> = ((vec3<f32>(x_1258.x, x_1258.y, x_1258.z) * -(vec3<f32>(x_1260, x_1260, x_1260))) + -(vec3<f32>(x_1264.x, x_1264.y, x_1264.z)));
  let x_1268 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  let x_1270 : vec4<f32> = u_xlat1;
  let x_1272 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1270.x, x_1270.y, x_1270.z), vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1275, 0.0f, 1.0f);
  let x_1277 : f32 = u_xlat45;
  u_xlat45 = (-(x_1277) + 1.0f);
  let x_1280 : f32 = u_xlat45;
  let x_1281 : f32 = u_xlat45;
  u_xlat45 = (x_1280 * x_1281);
  let x_1283 : f32 = u_xlat45;
  let x_1284 : f32 = u_xlat45;
  u_xlat45 = (x_1283 * x_1284);
  let x_1287 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1287) * 0.699999988f) + 1.700000048f);
  let x_1294 : f32 = u_xlat0.x;
  let x_1295 : f32 = u_xlat46;
  u_xlat0.x = (x_1294 * x_1295);
  let x_1299 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1299 * 6.0f);
  let x_1311 : vec4<f32> = u_xlat8;
  let x_1314 : f32 = u_xlat0.x;
  let x_1315 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1311.x, x_1311.y, x_1311.z), x_1314);
  u_xlat8 = x_1315;
  let x_1317 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1317 + -1.0f);
  let x_1321 : f32 = x_837.unity_SpecCube0_HDR.w;
  let x_1323 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1321 * x_1323) + 1.0f);
  let x_1328 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1328, 0.0f);
  let x_1332 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1332);
  let x_1336 : f32 = u_xlat0.x;
  let x_1338 : f32 = x_837.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1336 * x_1338);
  let x_1342 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1342);
  let x_1346 : f32 = u_xlat0.x;
  let x_1348 : f32 = x_837.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1346 * x_1348);
  let x_1351 : vec4<f32> = u_xlat8;
  let x_1353 : vec3<f32> = u_xlat0;
  let x_1355 : vec3<f32> = (vec3<f32>(x_1351.x, x_1351.y, x_1351.z) * vec3<f32>(x_1353.x, x_1353.x, x_1353.x));
  let x_1356 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : f32 = u_xlat28;
  let x_1360 : f32 = u_xlat28;
  let x_1364 : vec2<f32> = ((vec2<f32>(x_1358, x_1358) * vec2<f32>(x_1360, x_1360)) + vec2<f32>(-1.0f, 1.0f));
  let x_1365 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1364.x, x_1365.y, x_1364.y);
  let x_1368 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1368);
  let x_1370 : vec4<f32> = u_xlat5;
  let x_1373 : f32 = u_xlat44;
  let x_1375 : vec3<f32> = (-(vec3<f32>(x_1370.x, x_1370.y, x_1370.z)) + vec3<f32>(x_1373, x_1373, x_1373));
  let x_1376 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1376.w);
  let x_1378 : f32 = u_xlat45;
  let x_1380 : vec4<f32> = u_xlat9;
  let x_1383 : vec4<f32> = u_xlat5;
  let x_1385 : vec3<f32> = ((vec3<f32>(x_1378, x_1378, x_1378) * vec3<f32>(x_1380.x, x_1380.y, x_1380.z)) + vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
  let x_1386 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
  let x_1388 : f32 = u_xlat28;
  let x_1390 : vec4<f32> = u_xlat9;
  let x_1392 : vec3<f32> = (vec3<f32>(x_1388, x_1388, x_1388) * vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
  let x_1395 : vec4<f32> = u_xlat8;
  let x_1397 : vec4<f32> = u_xlat9;
  let x_1399 : vec3<f32> = (vec3<f32>(x_1395.x, x_1395.y, x_1395.z) * vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec3<f32> = u_xlat2;
  let x_1403 : vec4<f32> = u_xlat4;
  let x_1406 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_1402 * vec3<f32>(x_1403.x, x_1403.y, x_1403.z)) + vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
  let x_1410 : f32 = u_xlat3.x;
  let x_1412 : f32 = x_837.unity_LightData.z;
  u_xlat28 = (x_1410 * x_1412);
  let x_1414 : vec4<f32> = u_xlat1;
  let x_1417 : vec4<f32> = x_125.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1414.x, x_1414.y, x_1414.z), vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
  let x_1420 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1420, 0.0f, 1.0f);
  let x_1422 : f32 = u_xlat28;
  let x_1423 : f32 = u_xlat44;
  u_xlat28 = (x_1422 * x_1423);
  let x_1425 : f32 = u_xlat28;
  let x_1427 : vec4<f32> = u_xlat6;
  let x_1429 : vec3<f32> = (vec3<f32>(x_1425, x_1425, x_1425) * vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1430 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1432 : vec4<f32> = u_xlat7;
  let x_1435 : vec4<f32> = x_125.x_MainLightPosition;
  let x_1437 : vec3<f32> = (vec3<f32>(x_1432.x, x_1432.y, x_1432.z) + vec3<f32>(x_1435.x, x_1435.y, x_1435.z));
  let x_1438 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
  let x_1440 : vec4<f32> = u_xlat8;
  let x_1442 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1440.x, x_1440.y, x_1440.z), vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
  let x_1445 : f32 = u_xlat28;
  u_xlat28 = max(x_1445, 1.17549435e-37f);
  let x_1448 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1448);
  let x_1450 : f32 = u_xlat28;
  let x_1452 : vec4<f32> = u_xlat8;
  let x_1454 : vec3<f32> = (vec3<f32>(x_1450, x_1450, x_1450) * vec3<f32>(x_1452.x, x_1452.y, x_1452.z));
  let x_1455 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1455.w);
  let x_1457 : vec4<f32> = u_xlat1;
  let x_1459 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1457.x, x_1457.y, x_1457.z), vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
  let x_1462 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1462, 0.0f, 1.0f);
  let x_1465 : vec4<f32> = x_125.x_MainLightPosition;
  let x_1467 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1465.x, x_1465.y, x_1465.z), vec3<f32>(x_1467.x, x_1467.y, x_1467.z));
  let x_1470 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1470, 0.0f, 1.0f);
  let x_1472 : f32 = u_xlat28;
  let x_1473 : f32 = u_xlat28;
  u_xlat28 = (x_1472 * x_1473);
  let x_1475 : f32 = u_xlat28;
  let x_1477 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1475 * x_1477) + 1.000010014f);
  let x_1481 : f32 = u_xlat44;
  let x_1482 : f32 = u_xlat44;
  u_xlat44 = (x_1481 * x_1482);
  let x_1484 : f32 = u_xlat28;
  let x_1485 : f32 = u_xlat28;
  u_xlat28 = (x_1484 * x_1485);
  let x_1487 : f32 = u_xlat44;
  u_xlat44 = max(x_1487, 0.100000001f);
  let x_1490 : f32 = u_xlat28;
  let x_1491 : f32 = u_xlat44;
  u_xlat28 = (x_1490 * x_1491);
  let x_1493 : f32 = u_xlat17;
  let x_1494 : f32 = u_xlat28;
  u_xlat28 = (x_1493 * x_1494);
  let x_1496 : f32 = u_xlat43;
  let x_1497 : f32 = u_xlat28;
  u_xlat28 = (x_1496 / x_1497);
  let x_1499 : vec4<f32> = u_xlat5;
  let x_1501 : f32 = u_xlat28;
  let x_1504 : vec4<f32> = u_xlat4;
  let x_1506 : vec3<f32> = ((vec3<f32>(x_1499.x, x_1499.y, x_1499.z) * vec3<f32>(x_1501, x_1501, x_1501)) + vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
  let x_1507 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
  let x_1509 : vec4<f32> = u_xlat6;
  let x_1511 : vec4<f32> = u_xlat8;
  let x_1513 : vec3<f32> = (vec3<f32>(x_1509.x, x_1509.y, x_1509.z) * vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
  let x_1514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1517 : f32 = x_125.x_AdditionalLightsCount.x;
  let x_1519 : f32 = x_837.unity_LightData.y;
  u_xlat28 = min(x_1517, x_1519);
  let x_1523 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1523));
  let x_1529 : f32 = x_1116.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1531 : f32 = x_1116.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1533 : f32 = x_1116.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1535 : f32 = x_1116.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1536 : vec4<f32> = vec4<f32>(x_1529, x_1531, x_1533, x_1535);
  let x_1543 : vec4<bool> = (vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1536.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_1544 : vec2<bool> = vec2<bool>(x_1543.x, x_1543.w);
  let x_1545 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1544.x, x_1545.y, x_1545.z, x_1544.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1556 : u32 = u_xlatu_loop_1;
    let x_1557 : u32 = u_xlatu28;
    if ((x_1556 < x_1557)) {
    } else {
      break;
    }
    let x_1560 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1560 >> 2u);
    let x_1564 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1564 & 3u));
    let x_1567 : u32 = u_xlatu46;
    let x_1570 : vec4<f32> = x_837.unity_LightIndices[bitcast<i32>(x_1567)];
    let x_1580 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1585 : vec4<u32> = indexable[x_1580];
    u_xlat46 = dot(x_1570, bitcast<vec4<f32>>(x_1585));
    let x_1588 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1588));
    let x_1591 : vec3<f32> = vs_TEXCOORD7;
    let x_1603 : u32 = u_xlatu46;
    let x_1606 : vec4<f32> = x_1602.x_AdditionalLightsPosition[bitcast<i32>(x_1603)];
    let x_1609 : u32 = u_xlatu46;
    let x_1612 : vec4<f32> = x_1602.x_AdditionalLightsPosition[bitcast<i32>(x_1609)];
    let x_1614 : vec3<f32> = ((-(x_1591) * vec3<f32>(x_1606.w, x_1606.w, x_1606.w)) + vec3<f32>(x_1612.x, x_1612.y, x_1612.z));
    let x_1615 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
    let x_1618 : vec4<f32> = u_xlat9;
    let x_1620 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1618.x, x_1618.y, x_1618.z), vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
    let x_1623 : f32 = u_xlat47;
    u_xlat47 = max(x_1623, 6.10351562e-05f);
    let x_1626 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1626);
    let x_1628 : f32 = u_xlat48;
    let x_1630 : vec4<f32> = u_xlat9;
    let x_1632 : vec3<f32> = (vec3<f32>(x_1628, x_1628, x_1628) * vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
    let x_1633 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
    let x_1636 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1636);
    let x_1638 : f32 = u_xlat47;
    let x_1639 : u32 = u_xlatu46;
    let x_1642 : f32 = x_1602.x_AdditionalLightsAttenuation[bitcast<i32>(x_1639)].x;
    u_xlat47 = (x_1638 * x_1642);
    let x_1644 : f32 = u_xlat47;
    let x_1646 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1644) * x_1646) + 1.0f);
    let x_1649 : f32 = u_xlat47;
    u_xlat47 = max(x_1649, 0.0f);
    let x_1651 : f32 = u_xlat47;
    let x_1652 : f32 = u_xlat47;
    u_xlat47 = (x_1651 * x_1652);
    let x_1654 : f32 = u_xlat47;
    let x_1655 : f32 = u_xlat49;
    u_xlat47 = (x_1654 * x_1655);
    let x_1657 : u32 = u_xlatu46;
    let x_1660 : vec4<f32> = x_1602.x_AdditionalLightsSpotDir[bitcast<i32>(x_1657)];
    let x_1662 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1660.x, x_1660.y, x_1660.z), vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
    let x_1665 : f32 = u_xlat49;
    let x_1666 : u32 = u_xlatu46;
    let x_1669 : f32 = x_1602.x_AdditionalLightsAttenuation[bitcast<i32>(x_1666)].z;
    let x_1671 : u32 = u_xlatu46;
    let x_1674 : f32 = x_1602.x_AdditionalLightsAttenuation[bitcast<i32>(x_1671)].w;
    u_xlat49 = ((x_1665 * x_1669) + x_1674);
    let x_1676 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1676, 0.0f, 1.0f);
    let x_1678 : f32 = u_xlat49;
    let x_1679 : f32 = u_xlat49;
    u_xlat49 = (x_1678 * x_1679);
    let x_1681 : f32 = u_xlat47;
    let x_1682 : f32 = u_xlat49;
    u_xlat47 = (x_1681 * x_1682);
    let x_1685 : u32 = u_xlatu46;
    u_xlatu49 = (x_1685 >> 5u);
    let x_1688 : u32 = u_xlatu46;
    u_xlati50 = (1i << bitcast<u32>((bitcast<i32>(x_1688) & 31i)));
    let x_1693 : i32 = u_xlati50;
    let x_1695 : u32 = u_xlatu49;
    let x_1698 : f32 = x_1116.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1695)].el;
    u_xlati49 = bitcast<i32>((bitcast<u32>(x_1693) & bitcast<u32>(x_1698)));
    let x_1702 : i32 = u_xlati49;
    if ((x_1702 != 0i)) {
      let x_1712 : u32 = u_xlatu46;
      let x_1715 : f32 = x_1711.x_AdditionalLightsLightTypes[bitcast<i32>(x_1712)].el;
      u_xlati49 = i32(x_1715);
      let x_1717 : i32 = u_xlati49;
      u_xlati50 = select(1i, 0i, (x_1717 != 0i));
      let x_1721 : u32 = u_xlatu46;
      u_xlati51 = (bitcast<i32>(x_1721) << bitcast<u32>(2i));
      let x_1724 : i32 = u_xlati50;
      if ((x_1724 != 0i)) {
        let x_1728 : vec3<f32> = vs_TEXCOORD7;
        let x_1730 : i32 = u_xlati51;
        let x_1733 : i32 = u_xlati51;
        let x_1737 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1730 + 1i) / 4i)][((x_1733 + 1i) % 4i)];
        let x_1739 : vec3<f32> = (vec3<f32>(x_1728.y, x_1728.y, x_1728.y) * vec3<f32>(x_1737.x, x_1737.y, x_1737.w));
        let x_1740 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
        let x_1742 : i32 = u_xlati51;
        let x_1744 : i32 = u_xlati51;
        let x_1747 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[(x_1742 / 4i)][(x_1744 % 4i)];
        let x_1749 : vec3<f32> = vs_TEXCOORD7;
        let x_1752 : vec4<f32> = u_xlat11;
        let x_1754 : vec3<f32> = ((vec3<f32>(x_1747.x, x_1747.y, x_1747.w) * vec3<f32>(x_1749.x, x_1749.x, x_1749.x)) + vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
        let x_1755 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1754.x, x_1754.y, x_1754.z, x_1755.w);
        let x_1757 : i32 = u_xlati51;
        let x_1760 : i32 = u_xlati51;
        let x_1764 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1757 + 2i) / 4i)][((x_1760 + 2i) % 4i)];
        let x_1766 : vec3<f32> = vs_TEXCOORD7;
        let x_1769 : vec4<f32> = u_xlat11;
        let x_1771 : vec3<f32> = ((vec3<f32>(x_1764.x, x_1764.y, x_1764.w) * vec3<f32>(x_1766.z, x_1766.z, x_1766.z)) + vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
        let x_1772 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
        let x_1774 : vec4<f32> = u_xlat11;
        let x_1776 : i32 = u_xlati51;
        let x_1779 : i32 = u_xlati51;
        let x_1783 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1776 + 3i) / 4i)][((x_1779 + 3i) % 4i)];
        let x_1785 : vec3<f32> = (vec3<f32>(x_1774.x, x_1774.y, x_1774.z) + vec3<f32>(x_1783.x, x_1783.y, x_1783.w));
        let x_1786 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
        let x_1788 : vec4<f32> = u_xlat11;
        let x_1790 : vec4<f32> = u_xlat11;
        let x_1792 : vec2<f32> = (vec2<f32>(x_1788.x, x_1788.y) / vec2<f32>(x_1790.z, x_1790.z));
        let x_1793 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1792.x, x_1792.y, x_1793.z, x_1793.w);
        let x_1795 : vec4<f32> = u_xlat11;
        let x_1798 : vec2<f32> = ((vec2<f32>(x_1795.x, x_1795.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1799 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1798.x, x_1798.y, x_1799.z, x_1799.w);
        let x_1801 : vec4<f32> = u_xlat11;
        let x_1805 : vec2<f32> = clamp(vec2<f32>(x_1801.x, x_1801.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1806 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1805.x, x_1805.y, x_1806.z, x_1806.w);
        let x_1808 : u32 = u_xlatu46;
        let x_1811 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1808)];
        let x_1813 : vec4<f32> = u_xlat11;
        let x_1816 : u32 = u_xlatu46;
        let x_1819 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1816)];
        let x_1821 : vec2<f32> = ((vec2<f32>(x_1811.x, x_1811.y) * vec2<f32>(x_1813.x, x_1813.y)) + vec2<f32>(x_1819.z, x_1819.w));
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1821.x, x_1821.y, x_1822.z, x_1822.w);
      } else {
        let x_1826 : i32 = u_xlati49;
        u_xlatb49 = (x_1826 == 1i);
        let x_1828 : bool = u_xlatb49;
        u_xlati49 = select(0i, 1i, x_1828);
        let x_1830 : i32 = u_xlati49;
        if ((x_1830 != 0i)) {
          let x_1836 : vec3<f32> = vs_TEXCOORD7;
          let x_1838 : i32 = u_xlati51;
          let x_1841 : i32 = u_xlati51;
          let x_1845 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1838 + 1i) / 4i)][((x_1841 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1836.y, x_1836.y) * vec2<f32>(x_1845.x, x_1845.y));
          let x_1848 : i32 = u_xlati51;
          let x_1850 : i32 = u_xlati51;
          let x_1853 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[(x_1848 / 4i)][(x_1850 % 4i)];
          let x_1855 : vec3<f32> = vs_TEXCOORD7;
          let x_1858 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1853.x, x_1853.y) * vec2<f32>(x_1855.x, x_1855.x)) + x_1858);
          let x_1860 : i32 = u_xlati51;
          let x_1863 : i32 = u_xlati51;
          let x_1867 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1860 + 2i) / 4i)][((x_1863 + 2i) % 4i)];
          let x_1869 : vec3<f32> = vs_TEXCOORD7;
          let x_1872 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1867.x, x_1867.y) * vec2<f32>(x_1869.z, x_1869.z)) + x_1872);
          let x_1874 : vec2<f32> = u_xlat39;
          let x_1875 : i32 = u_xlati51;
          let x_1878 : i32 = u_xlati51;
          let x_1882 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1875 + 3i) / 4i)][((x_1878 + 3i) % 4i)];
          u_xlat39 = (x_1874 + vec2<f32>(x_1882.x, x_1882.y));
          let x_1885 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1885 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1888 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1888);
          let x_1890 : u32 = u_xlatu46;
          let x_1893 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1890)];
          let x_1895 : vec2<f32> = u_xlat39;
          let x_1897 : u32 = u_xlatu46;
          let x_1900 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1897)];
          let x_1902 : vec2<f32> = ((vec2<f32>(x_1893.x, x_1893.y) * x_1895) + vec2<f32>(x_1900.z, x_1900.w));
          let x_1903 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1902.x, x_1902.y, x_1903.z, x_1903.w);
        } else {
          let x_1906 : vec3<f32> = vs_TEXCOORD7;
          let x_1908 : i32 = u_xlati51;
          let x_1911 : i32 = u_xlati51;
          let x_1915 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1908 + 1i) / 4i)][((x_1911 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1906.y, x_1906.y, x_1906.y, x_1906.y) * x_1915);
          let x_1917 : i32 = u_xlati51;
          let x_1919 : i32 = u_xlati51;
          let x_1922 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[(x_1917 / 4i)][(x_1919 % 4i)];
          let x_1923 : vec3<f32> = vs_TEXCOORD7;
          let x_1926 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1922 * vec4<f32>(x_1923.x, x_1923.x, x_1923.x, x_1923.x)) + x_1926);
          let x_1928 : i32 = u_xlati51;
          let x_1931 : i32 = u_xlati51;
          let x_1935 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1928 + 2i) / 4i)][((x_1931 + 2i) % 4i)];
          let x_1936 : vec3<f32> = vs_TEXCOORD7;
          let x_1939 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1935 * vec4<f32>(x_1936.z, x_1936.z, x_1936.z, x_1936.z)) + x_1939);
          let x_1941 : vec4<f32> = u_xlat12;
          let x_1942 : i32 = u_xlati51;
          let x_1945 : i32 = u_xlati51;
          let x_1949 : vec4<f32> = x_1711.x_AdditionalLightsWorldToLights[((x_1942 + 3i) / 4i)][((x_1945 + 3i) % 4i)];
          u_xlat12 = (x_1941 + x_1949);
          let x_1951 : vec4<f32> = u_xlat12;
          let x_1953 : vec4<f32> = u_xlat12;
          let x_1955 : vec3<f32> = (vec3<f32>(x_1951.x, x_1951.y, x_1951.z) / vec3<f32>(x_1953.w, x_1953.w, x_1953.w));
          let x_1956 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
          let x_1958 : vec4<f32> = u_xlat12;
          let x_1960 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(vec3<f32>(x_1958.x, x_1958.y, x_1958.z), vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
          let x_1963 : f32 = u_xlat49;
          u_xlat49 = inverseSqrt(x_1963);
          let x_1965 : f32 = u_xlat49;
          let x_1967 : vec4<f32> = u_xlat12;
          let x_1969 : vec3<f32> = (vec3<f32>(x_1965, x_1965, x_1965) * vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
          let x_1970 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
          let x_1972 : vec4<f32> = u_xlat12;
          u_xlat49 = dot(abs(vec3<f32>(x_1972.x, x_1972.y, x_1972.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1977 : f32 = u_xlat49;
          u_xlat49 = max(x_1977, 0.000001f);
          let x_1980 : f32 = u_xlat49;
          u_xlat49 = (1.0f / x_1980);
          let x_1982 : f32 = u_xlat49;
          let x_1984 : vec4<f32> = u_xlat12;
          let x_1986 : vec3<f32> = (vec3<f32>(x_1982, x_1982, x_1982) * vec3<f32>(x_1984.z, x_1984.x, x_1984.y));
          let x_1987 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_1986.x, x_1986.y, x_1986.z, x_1987.w);
          let x_1990 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1990);
          let x_1994 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1994, 0.0f, 1.0f);
          let x_1998 : vec4<f32> = u_xlat13;
          let x_2001 : vec4<bool> = (vec4<f32>(x_1998.y, x_1998.z, x_1998.y, x_1998.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2001.x, x_2001.y);
          let x_2004 : bool = u_xlatb39.x;
          if (x_2004) {
            let x_2009 : f32 = u_xlat13.x;
            x_2005 = x_2009;
          } else {
            let x_2012 : f32 = u_xlat13.x;
            x_2005 = -(x_2012);
          }
          let x_2014 : f32 = x_2005;
          u_xlat39.x = x_2014;
          let x_2017 : bool = u_xlatb39.y;
          if (x_2017) {
            let x_2022 : f32 = u_xlat13.x;
            x_2018 = x_2022;
          } else {
            let x_2025 : f32 = u_xlat13.x;
            x_2018 = -(x_2025);
          }
          let x_2027 : f32 = x_2018;
          u_xlat39.y = x_2027;
          let x_2029 : vec4<f32> = u_xlat12;
          let x_2031 : f32 = u_xlat49;
          let x_2034 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2029.x, x_2029.y) * vec2<f32>(x_2031, x_2031)) + x_2034);
          let x_2036 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2036 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2039 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2039, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2043 : u32 = u_xlatu46;
          let x_2046 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2043)];
          let x_2048 : vec2<f32> = u_xlat39;
          let x_2050 : u32 = u_xlatu46;
          let x_2053 : vec4<f32> = x_1711.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2050)];
          let x_2055 : vec2<f32> = ((vec2<f32>(x_2046.x, x_2046.y) * x_2048) + vec2<f32>(x_2053.z, x_2053.w));
          let x_2056 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2055.x, x_2055.y, x_2056.z, x_2056.w);
        }
      }
      let x_2063 : vec4<f32> = u_xlat11;
      let x_2066 : f32 = x_125.x_GlobalMipBias.x;
      let x_2067 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2063.x, x_2063.y), x_2066);
      u_xlat11 = x_2067;
      let x_2069 : bool = u_xlatb3.w;
      if (x_2069) {
        let x_2074 : f32 = u_xlat11.w;
        x_2070 = x_2074;
      } else {
        let x_2077 : f32 = u_xlat11.x;
        x_2070 = x_2077;
      }
      let x_2078 : f32 = x_2070;
      u_xlat49 = x_2078;
      let x_2080 : bool = u_xlatb3.x;
      if (x_2080) {
        let x_2084 : vec4<f32> = u_xlat11;
        x_2081 = vec3<f32>(x_2084.x, x_2084.y, x_2084.z);
      } else {
        let x_2087 : f32 = u_xlat49;
        x_2081 = vec3<f32>(x_2087, x_2087, x_2087);
      }
      let x_2089 : vec3<f32> = x_2081;
      let x_2090 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2096 : vec4<f32> = u_xlat11;
    let x_2098 : u32 = u_xlatu46;
    let x_2101 : vec4<f32> = x_1602.x_AdditionalLightsColor[bitcast<i32>(x_2098)];
    let x_2103 : vec3<f32> = (vec3<f32>(x_2096.x, x_2096.y, x_2096.z) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2104 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
    let x_2106 : f32 = u_xlat31;
    let x_2108 : vec4<f32> = u_xlat11;
    let x_2110 : vec3<f32> = (vec3<f32>(x_2106, x_2106, x_2106) * vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
    let x_2111 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2110.x, x_2110.y, x_2110.z, x_2111.w);
    let x_2113 : vec4<f32> = u_xlat1;
    let x_2115 : vec4<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2113.x, x_2113.y, x_2113.z), vec3<f32>(x_2115.x, x_2115.y, x_2115.z));
    let x_2118 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2118, 0.0f, 1.0f);
    let x_2120 : f32 = u_xlat46;
    let x_2121 : f32 = u_xlat47;
    u_xlat46 = (x_2120 * x_2121);
    let x_2123 : f32 = u_xlat46;
    let x_2125 : vec4<f32> = u_xlat11;
    let x_2127 : vec3<f32> = (vec3<f32>(x_2123, x_2123, x_2123) * vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
    let x_2128 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2127.x, x_2127.y, x_2127.z, x_2128.w);
    let x_2130 : vec4<f32> = u_xlat9;
    let x_2132 : f32 = u_xlat48;
    let x_2135 : vec4<f32> = u_xlat7;
    let x_2137 : vec3<f32> = ((vec3<f32>(x_2130.x, x_2130.y, x_2130.z) * vec3<f32>(x_2132, x_2132, x_2132)) + vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
    let x_2138 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2137.x, x_2137.y, x_2137.z, x_2138.w);
    let x_2140 : vec4<f32> = u_xlat9;
    let x_2142 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2140.x, x_2140.y, x_2140.z), vec3<f32>(x_2142.x, x_2142.y, x_2142.z));
    let x_2145 : f32 = u_xlat46;
    u_xlat46 = max(x_2145, 1.17549435e-37f);
    let x_2147 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2147);
    let x_2149 : f32 = u_xlat46;
    let x_2151 : vec4<f32> = u_xlat9;
    let x_2153 : vec3<f32> = (vec3<f32>(x_2149, x_2149, x_2149) * vec3<f32>(x_2151.x, x_2151.y, x_2151.z));
    let x_2154 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2153.x, x_2153.y, x_2153.z, x_2154.w);
    let x_2156 : vec4<f32> = u_xlat1;
    let x_2158 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2156.x, x_2156.y, x_2156.z), vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
    let x_2161 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2161, 0.0f, 1.0f);
    let x_2163 : vec4<f32> = u_xlat10;
    let x_2165 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2163.x, x_2163.y, x_2163.z), vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
    let x_2168 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2168, 0.0f, 1.0f);
    let x_2170 : f32 = u_xlat46;
    let x_2171 : f32 = u_xlat46;
    u_xlat46 = (x_2170 * x_2171);
    let x_2173 : f32 = u_xlat46;
    let x_2175 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2173 * x_2175) + 1.000010014f);
    let x_2178 : f32 = u_xlat47;
    let x_2179 : f32 = u_xlat47;
    u_xlat47 = (x_2178 * x_2179);
    let x_2181 : f32 = u_xlat46;
    let x_2182 : f32 = u_xlat46;
    u_xlat46 = (x_2181 * x_2182);
    let x_2184 : f32 = u_xlat47;
    u_xlat47 = max(x_2184, 0.100000001f);
    let x_2186 : f32 = u_xlat46;
    let x_2187 : f32 = u_xlat47;
    u_xlat46 = (x_2186 * x_2187);
    let x_2189 : f32 = u_xlat17;
    let x_2190 : f32 = u_xlat46;
    u_xlat46 = (x_2189 * x_2190);
    let x_2192 : f32 = u_xlat43;
    let x_2193 : f32 = u_xlat46;
    u_xlat46 = (x_2192 / x_2193);
    let x_2195 : vec4<f32> = u_xlat5;
    let x_2197 : f32 = u_xlat46;
    let x_2200 : vec4<f32> = u_xlat4;
    let x_2202 : vec3<f32> = ((vec3<f32>(x_2195.x, x_2195.y, x_2195.z) * vec3<f32>(x_2197, x_2197, x_2197)) + vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
    let x_2203 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
    let x_2205 : vec4<f32> = u_xlat9;
    let x_2207 : vec4<f32> = u_xlat11;
    let x_2210 : vec4<f32> = u_xlat8;
    let x_2212 : vec3<f32> = ((vec3<f32>(x_2205.x, x_2205.y, x_2205.z) * vec3<f32>(x_2207.x, x_2207.y, x_2207.z)) + vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
    let x_2213 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2212.x, x_2212.y, x_2212.z, x_2213.w);

    continuing {
      let x_2215 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2215 + bitcast<u32>(1i));
    }
  }
  let x_2217 : vec3<f32> = u_xlat2;
  let x_2218 : f32 = u_xlat14;
  let x_2221 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2217 * vec3<f32>(x_2218, x_2218, x_2218)) + vec3<f32>(x_2221.x, x_2221.y, x_2221.z));
  let x_2224 : vec4<f32> = u_xlat8;
  let x_2226 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2224.x, x_2224.y, x_2224.z) + x_2226);
  let x_2230 : f32 = u_xlat42;
  let x_2232 : vec3<f32> = u_xlat0;
  let x_2233 : vec3<f32> = (vec3<f32>(x_2230, x_2230, x_2230) * x_2232);
  let x_2234 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

