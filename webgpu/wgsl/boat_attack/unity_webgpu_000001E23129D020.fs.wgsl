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
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(14) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(15) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_583 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2269 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2470 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2736 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2843 : AdditionalLightsCookies;

@group(0) @binding(11) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat66 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb67 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat67 : f32;
  var u_xlat44 : f32;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
  var u_xlat23 : vec3<f32>;
  var x_559 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu67 : u32;
  var u_xlati67 : i32;
  var u_xlat68 : f32;
  var u_xlat69 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlatb71 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb28 : vec2<bool>;
  var u_xlat28 : vec3<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat50 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat72 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat58 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat31 : vec2<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat73 : f32;
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
  var u_xlatb25 : vec2<bool>;
  var u_xlatb47 : bool;
  var x_2221 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat47 : f32;
  var x_2351 : f32;
  var x_2362 : vec3<f32>;
  var u_xlatu44 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu71 : u32;
  var u_xlati72 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat74 : f32;
  var u_xlatu74 : u32;
  var u_xlati75 : i32;
  var u_xlati74 : i32;
  var u_xlati76 : i32;
  var u_xlatb74 : bool;
  var u_xlatb55 : vec2<bool>;
  var x_3135 : f32;
  var x_3148 : f32;
  var x_3200 : f32;
  var x_3211 : vec3<f32>;
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
  let x_131 : f32 = x_126.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_131);
  u_xlat4 = x_132;
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat66 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_145 : vec4<f32> = vs_TEXCOORD1;
  let x_148 : f32 = x_126.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_145.x, x_145.y), x_148);
  u_xlat5 = x_149;
  let x_155 : vec4<f32> = vs_TEXCOORD1;
  let x_158 : f32 = x_126.x_GlobalMipBias.x;
  let x_159 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_155.z, x_155.w), x_158);
  u_xlat6 = x_159;
  let x_166 : vec4<f32> = vs_TEXCOORD2;
  let x_169 : f32 = x_126.x_GlobalMipBias.x;
  let x_170 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_166.x, x_166.y), x_169);
  u_xlat7 = x_170;
  let x_176 : vec4<f32> = vs_TEXCOORD2;
  let x_179 : f32 = x_126.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat8 = x_180;
  let x_183 : f32 = u_xlat5.w;
  u_xlat9.x = x_183;
  let x_186 : f32 = u_xlat6.w;
  u_xlat9.y = x_186;
  let x_190 : f32 = u_xlat7.w;
  u_xlat9.z = x_190;
  let x_194 : f32 = u_xlat8.w;
  u_xlat9.w = x_194;
  let x_197 : vec4<f32> = u_xlat9;
  let x_200 : f32 = x_30.x_Smoothness0;
  let x_203 : f32 = x_30.x_Smoothness1;
  let x_206 : f32 = x_30.x_Smoothness2;
  let x_209 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_197 * vec4<f32>(x_200, x_203, x_206, x_209));
  let x_218 : f32 = x_30.x_NumLayersCount;
  u_xlatb67 = (4.0f >= x_218);
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_221) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat9;
  let x_225 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_224 + -(x_225));
  let x_228 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_228 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_232 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_232, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat4;
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_237 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_241);
  let x_244 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_244 + -(x_245));
  let x_250 : f32 = u_xlat12.x;
  let x_253 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_250 * x_253);
  let x_257 : f32 = u_xlat12.y;
  let x_260 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_257 * x_260);
  let x_264 : f32 = u_xlat12.z;
  let x_267 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_264 * x_267);
  let x_271 : f32 = u_xlat12.w;
  let x_274 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_271 * x_274);
  let x_277 : vec4<f32> = u_xlat11;
  let x_278 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_277 + x_278);
  let x_280 : bool = u_xlatb67;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat67;
  u_xlat67 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat67;
  u_xlat4 = (x_292 / vec4<f32>(x_293, x_293, x_293, x_293));
  let x_296 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_309 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec4<f32> = u_xlat12;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat11;
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.y, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.z, x_329.z, x_329.z) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat4;
  let x_350 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_352 : vec3<f32> = (vec3<f32>(x_347.w, x_347.w, x_347.w) * vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = u_xlat5;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_366 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_366;
  let x_369 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_369;
  let x_372 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_372;
  let x_375 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_375;
  let x_378 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_378;
  let x_381 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_381;
  let x_384 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_384;
  let x_387 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_387;
  let x_389 : vec4<f32> = u_xlat6;
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_389 + x_390);
  let x_393 : f32 = u_xlat0.z;
  u_xlat7.x = x_393;
  let x_396 : f32 = u_xlat1.z;
  u_xlat7.y = x_396;
  let x_399 : f32 = u_xlat2.z;
  u_xlat7.z = x_399;
  let x_402 : f32 = u_xlat3.y;
  u_xlat7.w = x_402;
  let x_404 : vec4<f32> = u_xlat9;
  let x_407 : f32 = x_30.x_Smoothness0;
  let x_409 : f32 = x_30.x_Smoothness1;
  let x_411 : f32 = x_30.x_Smoothness2;
  let x_413 : f32 = x_30.x_Smoothness3;
  let x_416 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_404) * vec4<f32>(x_407, x_409, x_411, x_413)) + x_416);
  let x_420 : f32 = x_30.x_LayerHasMask0;
  let x_423 : f32 = x_30.x_LayerHasMask1;
  let x_426 : f32 = x_30.x_LayerHasMask2;
  let x_429 : f32 = x_30.x_LayerHasMask3;
  let x_431 : vec4<f32> = u_xlat7;
  let x_433 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_420, x_423, x_426, x_429) * x_431) + x_433);
  let x_436 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(x_436, x_437);
  let x_440 : f32 = u_xlat0.x;
  u_xlat7.x = x_440;
  let x_443 : f32 = u_xlat1.x;
  u_xlat7.y = x_443;
  let x_446 : f32 = u_xlat2.x;
  u_xlat7.z = x_446;
  let x_449 : f32 = u_xlat3.x;
  u_xlat7.w = x_449;
  let x_451 : vec4<f32> = u_xlat7;
  let x_454 : f32 = x_30.x_Metallic0;
  let x_457 : f32 = x_30.x_Metallic1;
  let x_460 : f32 = x_30.x_Metallic2;
  let x_463 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_451 + -(vec4<f32>(x_454, x_457, x_460, x_463)));
  let x_468 : f32 = x_30.x_LayerHasMask0;
  let x_470 : f32 = x_30.x_LayerHasMask1;
  let x_472 : f32 = x_30.x_LayerHasMask2;
  let x_474 : f32 = x_30.x_LayerHasMask3;
  let x_476 : vec4<f32> = u_xlat7;
  let x_479 : f32 = x_30.x_Metallic0;
  let x_481 : f32 = x_30.x_Metallic1;
  let x_483 : f32 = x_30.x_Metallic2;
  let x_485 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_468, x_470, x_472, x_474) * x_476) + vec4<f32>(x_479, x_481, x_483, x_485));
  let x_488 : vec4<f32> = u_xlat4;
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_488, x_489);
  let x_493 : f32 = u_xlat0.y;
  u_xlat3.x = x_493;
  let x_496 : f32 = u_xlat1.y;
  u_xlat3.y = x_496;
  let x_499 : f32 = u_xlat2.y;
  u_xlat3.z = x_499;
  let x_501 : vec4<f32> = u_xlat6;
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_501) + x_503);
  let x_506 : f32 = x_30.x_LayerHasMask0;
  let x_508 : f32 = x_30.x_LayerHasMask1;
  let x_510 : f32 = x_30.x_LayerHasMask2;
  let x_512 : f32 = x_30.x_LayerHasMask3;
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_506, x_508, x_510, x_512) * x_514) + x_516);
  let x_519 : vec4<f32> = u_xlat4;
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat22 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat23 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat23;
  let x_536 : vec3<f32> = u_xlat23;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat23;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat23 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_549 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_562 : vec3<f32> = u_xlat23;
    x_559 = x_562;
  } else {
    let x_564 : vec3<f32> = u_xlat2;
    x_559 = x_564;
  }
  let x_565 : vec3<f32> = x_559;
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : vec3<f32> = vs_TEXCOORD3;
  let x_570 : vec3<f32> = vs_TEXCOORD3;
  u_xlat67 = dot(x_569, x_570);
  let x_572 : f32 = u_xlat67;
  u_xlat67 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat67;
  let x_576 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_578 : vec3<f32> = vs_TEXCOORD7;
  let x_585 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres0;
  let x_588 : vec3<f32> = (x_578 + -(vec3<f32>(x_585.x, x_585.y, x_585.z)));
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = vs_TEXCOORD7;
  let x_593 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres1;
  let x_596 : vec3<f32> = (x_591 + -(vec3<f32>(x_593.x, x_593.y, x_593.z)));
  let x_597 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = vs_TEXCOORD7;
  let x_602 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres2;
  let x_605 : vec3<f32> = (x_599 + -(vec3<f32>(x_602.x, x_602.y, x_602.z)));
  let x_606 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec3<f32> = vs_TEXCOORD7;
  let x_610 : vec4<f32> = x_583.x_CascadeShadowSplitSpheres3;
  let x_613 : vec3<f32> = (x_608 + -(vec3<f32>(x_610.x, x_610.y, x_610.z)));
  let x_614 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat3;
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_628 : vec4<f32> = u_xlat6;
  let x_630 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_634 : vec4<f32> = u_xlat7;
  let x_636 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_642 : vec4<f32> = u_xlat3;
  let x_644 : vec4<f32> = x_583.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_642 < x_644);
  let x_647 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_647);
  let x_651 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_651);
  let x_655 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_655);
  let x_659 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_663);
  let x_668 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_668);
  let x_672 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_672);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec4<f32> = u_xlat4;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(x_677.y, x_677.z, x_677.w));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat3;
  let x_685 : vec3<f32> = max(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_686 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_686.x, x_685.x, x_685.y, x_685.z);
  let x_688 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_688, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_693 : f32 = u_xlat67;
  u_xlat67 = (-(x_693) + 4.0f);
  let x_698 : f32 = u_xlat67;
  u_xlatu67 = u32(x_698);
  let x_702 : u32 = u_xlatu67;
  u_xlati67 = (bitcast<i32>(x_702) << bitcast<u32>(2i));
  let x_705 : vec3<f32> = vs_TEXCOORD7;
  let x_707 : i32 = u_xlati67;
  let x_710 : i32 = u_xlati67;
  let x_714 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_707 + 1i) / 4i)][((x_710 + 1i) % 4i)];
  let x_716 : vec3<f32> = (vec3<f32>(x_705.y, x_705.y, x_705.y) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : i32 = u_xlati67;
  let x_721 : i32 = u_xlati67;
  let x_724 : vec4<f32> = x_583.x_MainLightWorldToShadow[(x_719 / 4i)][(x_721 % 4i)];
  let x_726 : vec3<f32> = vs_TEXCOORD7;
  let x_729 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726.x, x_726.x, x_726.x)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : i32 = u_xlati67;
  let x_737 : i32 = u_xlati67;
  let x_741 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_734 + 2i) / 4i)][((x_737 + 2i) % 4i)];
  let x_743 : vec3<f32> = vs_TEXCOORD7;
  let x_746 : vec4<f32> = u_xlat3;
  let x_748 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.z, x_743.z, x_743.z)) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat3;
  let x_753 : i32 = u_xlati67;
  let x_756 : i32 = u_xlati67;
  let x_760 : vec4<f32> = x_583.x_MainLightWorldToShadow[((x_753 + 3i) / 4i)][((x_756 + 3i) % 4i)];
  let x_762 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_766 : f32 = vs_TEXCOORD7.y;
  let x_768 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat67 = (x_766 * x_768);
  let x_771 : f32 = x_126.unity_MatrixV[0i].z;
  let x_773 : f32 = vs_TEXCOORD7.x;
  let x_775 : f32 = u_xlat67;
  u_xlat67 = ((x_771 * x_773) + x_775);
  let x_778 : f32 = x_126.unity_MatrixV[2i].z;
  let x_780 : f32 = vs_TEXCOORD7.z;
  let x_782 : f32 = u_xlat67;
  u_xlat67 = ((x_778 * x_780) + x_782);
  let x_784 : f32 = u_xlat67;
  let x_786 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat67 = (x_784 + x_786);
  let x_788 : f32 = u_xlat67;
  let x_791 : f32 = x_126.x_ProjectionParams.y;
  u_xlat67 = (-(x_788) + -(x_791));
  let x_794 : f32 = u_xlat67;
  u_xlat67 = max(x_794, 0.0f);
  let x_796 : f32 = u_xlat67;
  let x_798 : f32 = x_126.unity_FogParams.x;
  u_xlat67 = (x_796 * x_798);
  let x_805 : vec4<f32> = vs_TEXCOORD0;
  let x_808 : f32 = x_126.x_GlobalMipBias.x;
  let x_809 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_805.z, x_805.w), x_808);
  u_xlat4 = x_809;
  let x_814 : vec4<f32> = vs_TEXCOORD0;
  let x_817 : f32 = x_126.x_GlobalMipBias.x;
  let x_818 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_814.z, x_814.w), x_817);
  let x_819 : vec3<f32> = vec3<f32>(x_818.x, x_818.y, x_818.z);
  let x_820 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat4;
  let x_826 : vec3<f32> = (vec3<f32>(x_822.x, x_822.y, x_822.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_827 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_830 : vec3<f32> = u_xlat2;
  let x_831 : vec4<f32> = u_xlat4;
  u_xlat68 = dot(x_830, vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : f32 = u_xlat68;
  u_xlat68 = (x_834 + 0.5f);
  let x_836 : f32 = u_xlat68;
  let x_838 : vec4<f32> = u_xlat6;
  let x_840 : vec3<f32> = (vec3<f32>(x_836, x_836, x_836) * vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_844 : f32 = u_xlat4.w;
  u_xlat68 = max(x_844, 0.0001f);
  let x_847 : vec4<f32> = u_xlat4;
  let x_849 : f32 = u_xlat68;
  let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) / vec3<f32>(x_849, x_849, x_849));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_856 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_857 : vec2<f32> = vec2<f32>(x_856.x, x_856.y);
  let x_861 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_857.x, x_857.y));
  let x_862 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat6;
  let x_866 : vec4<f32> = hlslcc_FragCoord;
  let x_868 : vec2<f32> = (vec2<f32>(x_864.x, x_864.y) * vec2<f32>(x_866.x, x_866.y));
  let x_869 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
  let x_872 : f32 = u_xlat6.y;
  let x_874 : f32 = x_126.x_ScaleBiasRt.x;
  let x_877 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat68 = ((x_872 * x_874) + x_877);
  let x_879 : f32 = u_xlat68;
  u_xlat6.z = (-(x_879) + 1.0f);
  let x_884 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_884) * 0.959999979f) + 0.959999979f);
  let x_890 : f32 = u_xlat44;
  let x_891 : f32 = u_xlat68;
  u_xlat69 = (x_890 + -(x_891));
  let x_894 : f32 = u_xlat68;
  let x_896 : vec4<f32> = u_xlat5;
  let x_898 : vec3<f32> = (vec3<f32>(x_894, x_894, x_894) * vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_901 : vec4<f32> = u_xlat5;
  let x_905 : vec3<f32> = (vec3<f32>(x_901.x, x_901.y, x_901.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_906 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec3<f32> = u_xlat0;
  let x_910 : vec4<f32> = u_xlat5;
  let x_915 : vec3<f32> = ((vec3<f32>(x_908.x, x_908.x, x_908.x) * vec3<f32>(x_910.x, x_910.y, x_910.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_916 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : f32 = u_xlat44;
  u_xlat0.x = (-(x_918) + 1.0f);
  let x_923 : f32 = u_xlat0.x;
  let x_925 : f32 = u_xlat0.x;
  u_xlat44 = (x_923 * x_925);
  let x_927 : f32 = u_xlat44;
  u_xlat44 = max(x_927, 0.0078125f);
  let x_930 : f32 = u_xlat44;
  let x_931 : f32 = u_xlat44;
  u_xlat68 = (x_930 * x_931);
  let x_933 : f32 = u_xlat69;
  u_xlat69 = (x_933 + 1.0f);
  let x_935 : f32 = u_xlat69;
  u_xlat69 = clamp(x_935, 0.0f, 1.0f);
  let x_938 : f32 = u_xlat44;
  u_xlat70 = ((x_938 * 4.0f) + 2.0f);
  let x_947 : vec4<f32> = u_xlat6;
  let x_950 : f32 = x_126.x_GlobalMipBias.x;
  let x_951 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_947.x, x_947.z), x_950);
  u_xlat71 = x_951.x;
  let x_953 : f32 = u_xlat71;
  u_xlat6.x = (x_953 + -1.0f);
  let x_957 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_959 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_957 * x_959) + 1.0f);
  let x_963 : f32 = u_xlat22;
  let x_964 : f32 = u_xlat71;
  u_xlat22 = min(x_963, x_964);
  let x_968 : f32 = x_583.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_968);
  let x_970 : bool = u_xlatb71;
  if (x_970) {
    let x_974 : f32 = x_583.x_MainLightShadowParams.y;
    u_xlatb71 = (x_974 == 1.0f);
    let x_976 : bool = u_xlatb71;
    if (x_976) {
      let x_979 : vec4<f32> = u_xlat3;
      let x_982 : vec4<f32> = x_583.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_979.x, x_979.y, x_979.x, x_979.y) + x_982);
      let x_985 : vec4<f32> = u_xlat8;
      let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
      let x_988 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_986.x, x_986.y, x_988);
      let x_1000 : vec3<f32> = txVec0;
      let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1000.xy, x_1000.z);
      u_xlat9.x = x_1002;
      let x_1005 : vec4<f32> = u_xlat8;
      let x_1006 : vec2<f32> = vec2<f32>(x_1005.z, x_1005.w);
      let x_1008 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1006.x, x_1006.y, x_1008);
      let x_1015 : vec3<f32> = txVec1;
      let x_1017 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1015.xy, x_1015.z);
      u_xlat9.y = x_1017;
      let x_1019 : vec4<f32> = u_xlat3;
      let x_1022 : vec4<f32> = x_583.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y) + x_1022);
      let x_1025 : vec4<f32> = u_xlat8;
      let x_1026 : vec2<f32> = vec2<f32>(x_1025.x, x_1025.y);
      let x_1028 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1026.x, x_1026.y, x_1028);
      let x_1035 : vec3<f32> = txVec2;
      let x_1037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1035.xy, x_1035.z);
      u_xlat9.z = x_1037;
      let x_1040 : vec4<f32> = u_xlat8;
      let x_1041 : vec2<f32> = vec2<f32>(x_1040.z, x_1040.w);
      let x_1043 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1041.x, x_1041.y, x_1043);
      let x_1050 : vec3<f32> = txVec3;
      let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1050.xy, x_1050.z);
      u_xlat9.w = x_1052;
      let x_1054 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_1054, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1063 : f32 = x_583.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_1063 == 2.0f);
      let x_1067 : bool = u_xlatb28.x;
      if (x_1067) {
        let x_1071 : vec4<f32> = u_xlat3;
        let x_1074 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(x_1074.z, x_1074.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1078 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1077.x, x_1077.y, x_1078.z);
        let x_1080 : vec3<f32> = u_xlat28;
        let x_1082 : vec2<f32> = floor(vec2<f32>(x_1080.x, x_1080.y));
        let x_1083 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1082.x, x_1082.y, x_1083.z);
        let x_1085 : vec4<f32> = u_xlat3;
        let x_1088 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1091 : vec3<f32> = u_xlat28;
        let x_1094 : vec2<f32> = ((vec2<f32>(x_1085.x, x_1085.y) * vec2<f32>(x_1088.z, x_1088.w)) + -(vec2<f32>(x_1091.x, x_1091.y)));
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1097.x, x_1097.x, x_1097.y, x_1097.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1101.x, x_1101.x, x_1101.z, x_1101.z) * vec4<f32>(x_1103.x, x_1103.x, x_1103.z, x_1103.z));
        let x_1108 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1108.y, x_1108.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1113 : vec4<f32> = u_xlat10;
        let x_1116 : vec4<f32> = u_xlat8;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1113.x, x_1113.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1116.x, x_1116.y)));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat8;
        let x_1125 : vec2<f32> = (-(vec2<f32>(x_1122.x, x_1122.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1126 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1129.x, x_1129.y), vec2<f32>(0.0f, 0.0f));
        let x_1133 : vec2<f32> = u_xlat54;
        let x_1135 : vec2<f32> = u_xlat54;
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1133) * x_1135) + vec2<f32>(x_1137.x, x_1137.y));
        let x_1140 : vec4<f32> = u_xlat8;
        let x_1142 : vec2<f32> = max(vec2<f32>(x_1140.x, x_1140.y), vec2<f32>(0.0f, 0.0f));
        let x_1143 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1142.x, x_1142.y, x_1143.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat8;
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1153 : vec2<f32> = ((-(vec2<f32>(x_1145.x, x_1145.y)) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.y, x_1151.w));
        let x_1154 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1156 + vec2<f32>(1.0f, 1.0f));
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1160 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.y) + vec2<f32>(1.0f, 1.0f));
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat9;
        let x_1167 : vec2<f32> = (vec2<f32>(x_1163.x, x_1163.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1168 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1167.x, x_1167.y, x_1168.z, x_1168.w);
        let x_1170 : vec4<f32> = u_xlat10;
        let x_1172 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1173 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : vec2<f32> = u_xlat54;
        let x_1176 : vec2<f32> = (x_1175 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1181 : vec2<f32> = (vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1182 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1181.x, x_1181.y, x_1182.z, x_1182.w);
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1186 : vec2<f32> = (vec2<f32>(x_1184.y, x_1184.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1190 : f32 = u_xlat10.x;
        u_xlat11.z = x_1190;
        let x_1193 : f32 = u_xlat8.x;
        u_xlat11.w = x_1193;
        let x_1196 : f32 = u_xlat13.x;
        u_xlat12.z = x_1196;
        let x_1199 : f32 = u_xlat52.x;
        u_xlat12.w = x_1199;
        let x_1201 : vec4<f32> = u_xlat11;
        let x_1203 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1201.z, x_1201.w, x_1201.x, x_1201.z) + vec4<f32>(x_1203.z, x_1203.w, x_1203.x, x_1203.z));
        let x_1207 : f32 = u_xlat11.y;
        u_xlat10.z = x_1207;
        let x_1210 : f32 = u_xlat8.y;
        u_xlat10.w = x_1210;
        let x_1213 : f32 = u_xlat12.y;
        u_xlat13.z = x_1213;
        let x_1216 : f32 = u_xlat52.y;
        u_xlat13.w = x_1216;
        let x_1218 : vec4<f32> = u_xlat10;
        let x_1220 : vec4<f32> = u_xlat13;
        let x_1222 : vec3<f32> = (vec3<f32>(x_1218.z, x_1218.y, x_1218.w) + vec3<f32>(x_1220.z, x_1220.y, x_1220.w));
        let x_1223 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
        let x_1225 : vec4<f32> = u_xlat12;
        let x_1227 : vec4<f32> = u_xlat9;
        let x_1229 : vec3<f32> = (vec3<f32>(x_1225.x, x_1225.z, x_1225.w) / vec3<f32>(x_1227.z, x_1227.w, x_1227.y));
        let x_1230 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
        let x_1232 : vec4<f32> = u_xlat10;
        let x_1237 : vec3<f32> = (vec3<f32>(x_1232.x, x_1232.y, x_1232.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat13;
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1244 : vec3<f32> = (vec3<f32>(x_1240.z, x_1240.y, x_1240.w) / vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
        let x_1245 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat11;
        let x_1249 : vec3<f32> = (vec3<f32>(x_1247.x, x_1247.y, x_1247.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1250 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat10;
        let x_1255 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1257 : vec3<f32> = (vec3<f32>(x_1252.y, x_1252.x, x_1252.z) * vec3<f32>(x_1255.x, x_1255.x, x_1255.x));
        let x_1258 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
        let x_1260 : vec4<f32> = u_xlat11;
        let x_1263 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1265 : vec3<f32> = (vec3<f32>(x_1260.x, x_1260.y, x_1260.z) * vec3<f32>(x_1263.y, x_1263.y, x_1263.y));
        let x_1266 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
        let x_1269 : f32 = u_xlat11.x;
        u_xlat10.w = x_1269;
        let x_1271 : vec3<f32> = u_xlat28;
        let x_1274 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1277 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y) * vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y)) + vec4<f32>(x_1277.y, x_1277.w, x_1277.x, x_1277.w));
        let x_1280 : vec3<f32> = u_xlat28;
        let x_1283 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat10;
        let x_1288 : vec2<f32> = ((vec2<f32>(x_1280.x, x_1280.y) * vec2<f32>(x_1283.x, x_1283.y)) + vec2<f32>(x_1286.z, x_1286.w));
        let x_1289 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1288.x, x_1288.y, x_1289.z, x_1289.w);
        let x_1292 : f32 = u_xlat10.y;
        u_xlat11.w = x_1292;
        let x_1294 : vec4<f32> = u_xlat11;
        let x_1295 : vec2<f32> = vec2<f32>(x_1294.y, x_1294.z);
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1296.x, x_1295.x, x_1296.z, x_1295.y);
        let x_1299 : vec3<f32> = u_xlat28;
        let x_1302 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y) * vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y)) + vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1305.y));
        let x_1308 : vec3<f32> = u_xlat28;
        let x_1311 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1314 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y) * vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y)) + vec4<f32>(x_1314.w, x_1314.y, x_1314.w, x_1314.z));
        let x_1317 : vec3<f32> = u_xlat28;
        let x_1320 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y) * vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y)) + vec4<f32>(x_1323.x, x_1323.w, x_1323.z, x_1323.w));
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1327.x, x_1327.x, x_1327.x, x_1327.y) * vec4<f32>(x_1329.z, x_1329.w, x_1329.y, x_1329.z));
        let x_1333 : vec4<f32> = u_xlat8;
        let x_1335 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1333.y, x_1333.y, x_1333.z, x_1333.z) * x_1335);
        let x_1338 : f32 = u_xlat8.z;
        let x_1340 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1338 * x_1340);
        let x_1344 : vec4<f32> = u_xlat12;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.x, x_1344.y);
        let x_1347 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1355 : vec3<f32> = txVec4;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1355.xy, x_1355.z);
        u_xlat50 = x_1357;
        let x_1359 : vec4<f32> = u_xlat12;
        let x_1360 : vec2<f32> = vec2<f32>(x_1359.z, x_1359.w);
        let x_1362 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1360.x, x_1360.y, x_1362);
        let x_1370 : vec3<f32> = txVec5;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1370.xy, x_1370.z);
        u_xlat72 = x_1372;
        let x_1373 : f32 = u_xlat72;
        let x_1375 : f32 = u_xlat15.y;
        u_xlat72 = (x_1373 * x_1375);
        let x_1378 : f32 = u_xlat15.x;
        let x_1379 : f32 = u_xlat50;
        let x_1381 : f32 = u_xlat72;
        u_xlat50 = ((x_1378 * x_1379) + x_1381);
        let x_1384 : vec4<f32> = u_xlat13;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec6;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1394.xy, x_1394.z);
        u_xlat72 = x_1396;
        let x_1398 : f32 = u_xlat15.z;
        let x_1399 : f32 = u_xlat72;
        let x_1401 : f32 = u_xlat50;
        u_xlat50 = ((x_1398 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat11;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.x, x_1404.y);
        let x_1407 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec7;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1414.xy, x_1414.z);
        u_xlat72 = x_1416;
        let x_1418 : f32 = u_xlat15.w;
        let x_1419 : f32 = u_xlat72;
        let x_1421 : f32 = u_xlat50;
        u_xlat50 = ((x_1418 * x_1419) + x_1421);
        let x_1424 : vec4<f32> = u_xlat14;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.x, x_1424.y);
        let x_1427 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec8;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat72 = x_1436;
        let x_1438 : f32 = u_xlat16.x;
        let x_1439 : f32 = u_xlat72;
        let x_1441 : f32 = u_xlat50;
        u_xlat50 = ((x_1438 * x_1439) + x_1441);
        let x_1444 : vec4<f32> = u_xlat14;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.z, x_1444.w);
        let x_1447 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec9;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1454.xy, x_1454.z);
        u_xlat72 = x_1456;
        let x_1458 : f32 = u_xlat16.y;
        let x_1459 : f32 = u_xlat72;
        let x_1461 : f32 = u_xlat50;
        u_xlat50 = ((x_1458 * x_1459) + x_1461);
        let x_1464 : vec4<f32> = u_xlat11;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.z, x_1464.w);
        let x_1467 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec10;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1474.xy, x_1474.z);
        u_xlat72 = x_1476;
        let x_1478 : f32 = u_xlat16.z;
        let x_1479 : f32 = u_xlat72;
        let x_1481 : f32 = u_xlat50;
        u_xlat50 = ((x_1478 * x_1479) + x_1481);
        let x_1484 : vec4<f32> = u_xlat10;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.x, x_1484.y);
        let x_1487 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec11;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1494.xy, x_1494.z);
        u_xlat72 = x_1496;
        let x_1498 : f32 = u_xlat16.w;
        let x_1499 : f32 = u_xlat72;
        let x_1501 : f32 = u_xlat50;
        u_xlat50 = ((x_1498 * x_1499) + x_1501);
        let x_1504 : vec4<f32> = u_xlat10;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.z, x_1504.w);
        let x_1507 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec12;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1514.xy, x_1514.z);
        u_xlat72 = x_1516;
        let x_1518 : f32 = u_xlat28.x;
        let x_1519 : f32 = u_xlat72;
        let x_1521 : f32 = u_xlat50;
        u_xlat71 = ((x_1518 * x_1519) + x_1521);
      } else {
        let x_1524 : vec4<f32> = u_xlat3;
        let x_1527 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1530 : vec2<f32> = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1527.z, x_1527.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1531 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1530.x, x_1530.y, x_1531.z);
        let x_1533 : vec3<f32> = u_xlat28;
        let x_1535 : vec2<f32> = floor(vec2<f32>(x_1533.x, x_1533.y));
        let x_1536 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1535.x, x_1535.y, x_1536.z);
        let x_1538 : vec4<f32> = u_xlat3;
        let x_1541 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1544 : vec3<f32> = u_xlat28;
        let x_1547 : vec2<f32> = ((vec2<f32>(x_1538.x, x_1538.y) * vec2<f32>(x_1541.z, x_1541.w)) + -(vec2<f32>(x_1544.x, x_1544.y)));
        let x_1548 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1547.x, x_1547.y, x_1548.z, x_1548.w);
        let x_1550 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1550.x, x_1550.x, x_1550.y, x_1550.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1553 : vec4<f32> = u_xlat9;
        let x_1555 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1553.x, x_1553.x, x_1553.z, x_1553.z) * vec4<f32>(x_1555.x, x_1555.x, x_1555.z, x_1555.z));
        let x_1558 : vec4<f32> = u_xlat10;
        let x_1562 : vec2<f32> = (vec2<f32>(x_1558.y, x_1558.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1563 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1563.x, x_1562.x, x_1563.z, x_1562.y);
        let x_1565 : vec4<f32> = u_xlat10;
        let x_1568 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1565.x, x_1565.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1568.x, x_1568.y)));
        let x_1572 : vec4<f32> = u_xlat8;
        let x_1575 : vec2<f32> = (-(vec2<f32>(x_1572.x, x_1572.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1576 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1575.x, x_1576.y, x_1575.y, x_1576.w);
        let x_1578 : vec4<f32> = u_xlat8;
        let x_1580 : vec2<f32> = min(vec2<f32>(x_1578.x, x_1578.y), vec2<f32>(0.0f, 0.0f));
        let x_1581 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1580.x, x_1580.y, x_1581.z, x_1581.w);
        let x_1583 : vec4<f32> = u_xlat10;
        let x_1586 : vec4<f32> = u_xlat10;
        let x_1589 : vec4<f32> = u_xlat9;
        let x_1591 : vec2<f32> = ((-(vec2<f32>(x_1583.x, x_1583.y)) * vec2<f32>(x_1586.x, x_1586.y)) + vec2<f32>(x_1589.x, x_1589.z));
        let x_1592 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1591.x, x_1592.y, x_1591.y, x_1592.w);
        let x_1594 : vec4<f32> = u_xlat8;
        let x_1596 : vec2<f32> = max(vec2<f32>(x_1594.x, x_1594.y), vec2<f32>(0.0f, 0.0f));
        let x_1597 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1596.x, x_1596.y, x_1597.z, x_1597.w);
        let x_1599 : vec4<f32> = u_xlat10;
        let x_1602 : vec4<f32> = u_xlat10;
        let x_1605 : vec4<f32> = u_xlat9;
        let x_1607 : vec2<f32> = ((-(vec2<f32>(x_1599.x, x_1599.y)) * vec2<f32>(x_1602.x, x_1602.y)) + vec2<f32>(x_1605.y, x_1605.w));
        let x_1608 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1608.x, x_1607.x, x_1608.z, x_1607.y);
        let x_1610 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1610 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1614 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1614 * 0.081632003f);
        let x_1618 : vec2<f32> = u_xlat52;
        let x_1621 : vec2<f32> = (vec2<f32>(x_1618.y, x_1618.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1622 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1621.x, x_1621.y, x_1622.z, x_1622.w);
        let x_1624 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1624.x, x_1624.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1628 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1628 * 0.081632003f);
        let x_1632 : f32 = u_xlat12.y;
        u_xlat10.x = x_1632;
        let x_1634 : vec4<f32> = u_xlat8;
        let x_1641 : vec2<f32> = ((vec2<f32>(x_1634.x, x_1634.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1642 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1642.x, x_1641.x, x_1642.z, x_1641.y);
        let x_1644 : vec4<f32> = u_xlat8;
        let x_1648 : vec2<f32> = ((vec2<f32>(x_1644.x, x_1644.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1648.x, x_1649.y, x_1648.y, x_1649.w);
        let x_1652 : f32 = u_xlat52.x;
        u_xlat9.y = x_1652;
        let x_1655 : f32 = u_xlat11.y;
        u_xlat9.w = x_1655;
        let x_1657 : vec4<f32> = u_xlat9;
        let x_1658 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1657 + x_1658);
        let x_1660 : vec4<f32> = u_xlat8;
        let x_1663 : vec2<f32> = ((vec2<f32>(x_1660.y, x_1660.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1664 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1664.x, x_1663.x, x_1664.z, x_1663.y);
        let x_1666 : vec4<f32> = u_xlat8;
        let x_1669 : vec2<f32> = ((vec2<f32>(x_1666.y, x_1666.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1670 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1669.x, x_1670.y, x_1669.y, x_1670.w);
        let x_1673 : f32 = u_xlat52.y;
        u_xlat11.y = x_1673;
        let x_1675 : vec4<f32> = u_xlat11;
        let x_1676 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1675 + x_1676);
        let x_1678 : vec4<f32> = u_xlat9;
        let x_1679 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1678 / x_1679);
        let x_1681 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1681 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1687 : vec4<f32> = u_xlat11;
        let x_1688 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1687 / x_1688);
        let x_1690 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1690 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1692 : vec4<f32> = u_xlat9;
        let x_1695 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1692.w, x_1692.x, x_1692.y, x_1692.z) * vec4<f32>(x_1695.x, x_1695.x, x_1695.x, x_1695.x));
        let x_1698 : vec4<f32> = u_xlat11;
        let x_1701 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1698.x, x_1698.w, x_1698.y, x_1698.z) * vec4<f32>(x_1701.y, x_1701.y, x_1701.y, x_1701.y));
        let x_1704 : vec4<f32> = u_xlat9;
        let x_1705 : vec3<f32> = vec3<f32>(x_1704.y, x_1704.z, x_1704.w);
        let x_1706 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1705.x, x_1706.y, x_1705.y, x_1705.z);
        let x_1709 : f32 = u_xlat11.x;
        u_xlat12.y = x_1709;
        let x_1711 : vec3<f32> = u_xlat28;
        let x_1714 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1717 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.y) * vec4<f32>(x_1714.x, x_1714.y, x_1714.x, x_1714.y)) + vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1717.y));
        let x_1720 : vec3<f32> = u_xlat28;
        let x_1723 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1726 : vec4<f32> = u_xlat12;
        let x_1728 : vec2<f32> = ((vec2<f32>(x_1720.x, x_1720.y) * vec2<f32>(x_1723.x, x_1723.y)) + vec2<f32>(x_1726.w, x_1726.y));
        let x_1729 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1728.x, x_1728.y, x_1729.z, x_1729.w);
        let x_1732 : f32 = u_xlat12.y;
        u_xlat9.y = x_1732;
        let x_1735 : f32 = u_xlat11.z;
        u_xlat12.y = x_1735;
        let x_1737 : vec3<f32> = u_xlat28;
        let x_1740 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1743 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1737.x, x_1737.y, x_1737.x, x_1737.y) * vec4<f32>(x_1740.x, x_1740.y, x_1740.x, x_1740.y)) + vec4<f32>(x_1743.x, x_1743.y, x_1743.z, x_1743.y));
        let x_1747 : vec3<f32> = u_xlat28;
        let x_1750 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1753 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(x_1750.x, x_1750.y)) + vec2<f32>(x_1753.w, x_1753.y));
        let x_1757 : f32 = u_xlat12.y;
        u_xlat9.z = x_1757;
        let x_1759 : vec3<f32> = u_xlat28;
        let x_1762 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1765 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1759.x, x_1759.y, x_1759.x, x_1759.y) * vec4<f32>(x_1762.x, x_1762.y, x_1762.x, x_1762.y)) + vec4<f32>(x_1765.x, x_1765.y, x_1765.x, x_1765.z));
        let x_1769 : f32 = u_xlat11.w;
        u_xlat12.y = x_1769;
        let x_1772 : vec3<f32> = u_xlat28;
        let x_1775 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1778 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1772.x, x_1772.y, x_1772.x, x_1772.y) * vec4<f32>(x_1775.x, x_1775.y, x_1775.x, x_1775.y)) + vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1778.y));
        let x_1782 : vec3<f32> = u_xlat28;
        let x_1785 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1788 : vec4<f32> = u_xlat12;
        u_xlat31 = ((vec2<f32>(x_1782.x, x_1782.y) * vec2<f32>(x_1785.x, x_1785.y)) + vec2<f32>(x_1788.w, x_1788.y));
        let x_1792 : f32 = u_xlat12.y;
        u_xlat9.w = x_1792;
        let x_1795 : vec3<f32> = u_xlat28;
        let x_1798 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1801 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1795.x, x_1795.y) * vec2<f32>(x_1798.x, x_1798.y)) + vec2<f32>(x_1801.x, x_1801.w));
        let x_1804 : vec4<f32> = u_xlat12;
        let x_1805 : vec3<f32> = vec3<f32>(x_1804.x, x_1804.z, x_1804.w);
        let x_1806 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1805.x, x_1806.y, x_1805.y, x_1805.z);
        let x_1808 : vec3<f32> = u_xlat28;
        let x_1811 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1814 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1808.x, x_1808.y, x_1808.x, x_1808.y) * vec4<f32>(x_1811.x, x_1811.y, x_1811.x, x_1811.y)) + vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1814.y));
        let x_1818 : vec3<f32> = u_xlat28;
        let x_1821 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1824 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1818.x, x_1818.y) * vec2<f32>(x_1821.x, x_1821.y)) + vec2<f32>(x_1824.w, x_1824.y));
        let x_1828 : f32 = u_xlat9.x;
        u_xlat11.x = x_1828;
        let x_1830 : vec3<f32> = u_xlat28;
        let x_1833 : vec4<f32> = x_583.x_MainLightShadowmapSize;
        let x_1836 : vec4<f32> = u_xlat11;
        let x_1838 : vec2<f32> = ((vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(x_1833.x, x_1833.y)) + vec2<f32>(x_1836.x, x_1836.y));
        let x_1839 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1838.x, x_1838.y, x_1839.z);
        let x_1842 : vec4<f32> = u_xlat8;
        let x_1844 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1842.x, x_1842.x, x_1842.x, x_1842.x) * x_1844);
        let x_1847 : vec4<f32> = u_xlat8;
        let x_1849 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1847.y, x_1847.y, x_1847.y, x_1847.y) * x_1849);
        let x_1852 : vec4<f32> = u_xlat8;
        let x_1854 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1852.z, x_1852.z, x_1852.z, x_1852.z) * x_1854);
        let x_1856 : vec4<f32> = u_xlat8;
        let x_1858 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1856.w, x_1856.w, x_1856.w, x_1856.w) * x_1858);
        let x_1861 : vec4<f32> = u_xlat13;
        let x_1862 : vec2<f32> = vec2<f32>(x_1861.x, x_1861.y);
        let x_1864 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1862.x, x_1862.y, x_1864);
        let x_1871 : vec3<f32> = txVec13;
        let x_1873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1871.xy, x_1871.z);
        u_xlat72 = x_1873;
        let x_1875 : vec4<f32> = u_xlat13;
        let x_1876 : vec2<f32> = vec2<f32>(x_1875.z, x_1875.w);
        let x_1878 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
        let x_1886 : vec3<f32> = txVec14;
        let x_1888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1886.xy, x_1886.z);
        u_xlat73 = x_1888;
        let x_1889 : f32 = u_xlat73;
        let x_1891 : f32 = u_xlat19.y;
        u_xlat73 = (x_1889 * x_1891);
        let x_1894 : f32 = u_xlat19.x;
        let x_1895 : f32 = u_xlat72;
        let x_1897 : f32 = u_xlat73;
        u_xlat72 = ((x_1894 * x_1895) + x_1897);
        let x_1900 : vec4<f32> = u_xlat14;
        let x_1901 : vec2<f32> = vec2<f32>(x_1900.x, x_1900.y);
        let x_1903 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1901.x, x_1901.y, x_1903);
        let x_1910 : vec3<f32> = txVec15;
        let x_1912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1910.xy, x_1910.z);
        u_xlat73 = x_1912;
        let x_1914 : f32 = u_xlat19.z;
        let x_1915 : f32 = u_xlat73;
        let x_1917 : f32 = u_xlat72;
        u_xlat72 = ((x_1914 * x_1915) + x_1917);
        let x_1920 : vec4<f32> = u_xlat16;
        let x_1921 : vec2<f32> = vec2<f32>(x_1920.x, x_1920.y);
        let x_1923 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
        let x_1930 : vec3<f32> = txVec16;
        let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1930.xy, x_1930.z);
        u_xlat73 = x_1932;
        let x_1934 : f32 = u_xlat19.w;
        let x_1935 : f32 = u_xlat73;
        let x_1937 : f32 = u_xlat72;
        u_xlat72 = ((x_1934 * x_1935) + x_1937);
        let x_1940 : vec4<f32> = u_xlat15;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.x, x_1940.y);
        let x_1943 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec17;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1950.xy, x_1950.z);
        u_xlat73 = x_1952;
        let x_1954 : f32 = u_xlat20.x;
        let x_1955 : f32 = u_xlat73;
        let x_1957 : f32 = u_xlat72;
        u_xlat72 = ((x_1954 * x_1955) + x_1957);
        let x_1960 : vec4<f32> = u_xlat15;
        let x_1961 : vec2<f32> = vec2<f32>(x_1960.z, x_1960.w);
        let x_1963 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1961.x, x_1961.y, x_1963);
        let x_1970 : vec3<f32> = txVec18;
        let x_1972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1970.xy, x_1970.z);
        u_xlat73 = x_1972;
        let x_1974 : f32 = u_xlat20.y;
        let x_1975 : f32 = u_xlat73;
        let x_1977 : f32 = u_xlat72;
        u_xlat72 = ((x_1974 * x_1975) + x_1977);
        let x_1980 : vec2<f32> = u_xlat58;
        let x_1982 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec19;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1989.xy, x_1989.z);
        u_xlat73 = x_1991;
        let x_1993 : f32 = u_xlat20.z;
        let x_1994 : f32 = u_xlat73;
        let x_1996 : f32 = u_xlat72;
        u_xlat72 = ((x_1993 * x_1994) + x_1996);
        let x_1999 : vec4<f32> = u_xlat16;
        let x_2000 : vec2<f32> = vec2<f32>(x_1999.z, x_1999.w);
        let x_2002 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2000.x, x_2000.y, x_2002);
        let x_2009 : vec3<f32> = txVec20;
        let x_2011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2009.xy, x_2009.z);
        u_xlat73 = x_2011;
        let x_2013 : f32 = u_xlat20.w;
        let x_2014 : f32 = u_xlat73;
        let x_2016 : f32 = u_xlat72;
        u_xlat72 = ((x_2013 * x_2014) + x_2016);
        let x_2019 : vec4<f32> = u_xlat17;
        let x_2020 : vec2<f32> = vec2<f32>(x_2019.x, x_2019.y);
        let x_2022 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2020.x, x_2020.y, x_2022);
        let x_2029 : vec3<f32> = txVec21;
        let x_2031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2029.xy, x_2029.z);
        u_xlat73 = x_2031;
        let x_2033 : f32 = u_xlat21.x;
        let x_2034 : f32 = u_xlat73;
        let x_2036 : f32 = u_xlat72;
        u_xlat72 = ((x_2033 * x_2034) + x_2036);
        let x_2039 : vec4<f32> = u_xlat17;
        let x_2040 : vec2<f32> = vec2<f32>(x_2039.z, x_2039.w);
        let x_2042 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2040.x, x_2040.y, x_2042);
        let x_2049 : vec3<f32> = txVec22;
        let x_2051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2049.xy, x_2049.z);
        u_xlat73 = x_2051;
        let x_2053 : f32 = u_xlat21.y;
        let x_2054 : f32 = u_xlat73;
        let x_2056 : f32 = u_xlat72;
        u_xlat72 = ((x_2053 * x_2054) + x_2056);
        let x_2059 : vec2<f32> = u_xlat31;
        let x_2061 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2059.x, x_2059.y, x_2061);
        let x_2068 : vec3<f32> = txVec23;
        let x_2070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2068.xy, x_2068.z);
        u_xlat73 = x_2070;
        let x_2072 : f32 = u_xlat21.z;
        let x_2073 : f32 = u_xlat73;
        let x_2075 : f32 = u_xlat72;
        u_xlat72 = ((x_2072 * x_2073) + x_2075);
        let x_2078 : vec2<f32> = u_xlat18;
        let x_2080 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2078.x, x_2078.y, x_2080);
        let x_2087 : vec3<f32> = txVec24;
        let x_2089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2087.xy, x_2087.z);
        u_xlat73 = x_2089;
        let x_2091 : f32 = u_xlat21.w;
        let x_2092 : f32 = u_xlat73;
        let x_2094 : f32 = u_xlat72;
        u_xlat72 = ((x_2091 * x_2092) + x_2094);
        let x_2097 : vec4<f32> = u_xlat12;
        let x_2098 : vec2<f32> = vec2<f32>(x_2097.x, x_2097.y);
        let x_2100 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2098.x, x_2098.y, x_2100);
        let x_2107 : vec3<f32> = txVec25;
        let x_2109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2107.xy, x_2107.z);
        u_xlat73 = x_2109;
        let x_2111 : f32 = u_xlat8.x;
        let x_2112 : f32 = u_xlat73;
        let x_2114 : f32 = u_xlat72;
        u_xlat72 = ((x_2111 * x_2112) + x_2114);
        let x_2117 : vec4<f32> = u_xlat12;
        let x_2118 : vec2<f32> = vec2<f32>(x_2117.z, x_2117.w);
        let x_2120 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2118.x, x_2118.y, x_2120);
        let x_2127 : vec3<f32> = txVec26;
        let x_2129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2127.xy, x_2127.z);
        u_xlat73 = x_2129;
        let x_2131 : f32 = u_xlat8.y;
        let x_2132 : f32 = u_xlat73;
        let x_2134 : f32 = u_xlat72;
        u_xlat72 = ((x_2131 * x_2132) + x_2134);
        let x_2137 : vec2<f32> = u_xlat55;
        let x_2139 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
        let x_2146 : vec3<f32> = txVec27;
        let x_2148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2146.xy, x_2146.z);
        u_xlat73 = x_2148;
        let x_2150 : f32 = u_xlat8.z;
        let x_2151 : f32 = u_xlat73;
        let x_2153 : f32 = u_xlat72;
        u_xlat72 = ((x_2150 * x_2151) + x_2153);
        let x_2156 : vec3<f32> = u_xlat28;
        let x_2157 : vec2<f32> = vec2<f32>(x_2156.x, x_2156.y);
        let x_2159 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2157.x, x_2157.y, x_2159);
        let x_2166 : vec3<f32> = txVec28;
        let x_2168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2166.xy, x_2166.z);
        u_xlat28.x = x_2168;
        let x_2171 : f32 = u_xlat8.w;
        let x_2173 : f32 = u_xlat28.x;
        let x_2175 : f32 = u_xlat72;
        u_xlat71 = ((x_2171 * x_2173) + x_2175);
      }
    }
  } else {
    let x_2179 : vec4<f32> = u_xlat3;
    let x_2180 : vec2<f32> = vec2<f32>(x_2179.x, x_2179.y);
    let x_2182 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2180.x, x_2180.y, x_2182);
    let x_2189 : vec3<f32> = txVec29;
    let x_2191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2189.xy, x_2189.z);
    u_xlat71 = x_2191;
  }
  let x_2193 : f32 = x_583.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2193) + 1.0f);
  let x_2197 : f32 = u_xlat71;
  let x_2199 : f32 = x_583.x_MainLightShadowParams.x;
  let x_2202 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2197 * x_2199) + x_2202);
  let x_2207 : f32 = u_xlat3.z;
  u_xlatb25.x = (0.0f >= x_2207);
  let x_2212 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2212 >= 1.0f);
  let x_2214 : bool = u_xlatb47;
  let x_2216 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2214 | x_2216);
  let x_2220 : bool = u_xlatb25.x;
  if (x_2220) {
    x_2221 = 1.0f;
  } else {
    let x_2226 : f32 = u_xlat3.x;
    x_2221 = x_2226;
  }
  let x_2227 : f32 = x_2221;
  u_xlat3.x = x_2227;
  let x_2229 : vec3<f32> = vs_TEXCOORD7;
  let x_2231 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2229 + -(x_2231));
  let x_2235 : vec3<f32> = u_xlat28;
  let x_2236 : vec3<f32> = u_xlat28;
  u_xlat25.x = dot(x_2235, x_2236);
  let x_2240 : f32 = u_xlat25.x;
  let x_2242 : f32 = x_583.x_MainLightShadowParams.z;
  let x_2245 : f32 = x_583.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2240 * x_2242) + x_2245);
  let x_2249 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2249, 0.0f, 1.0f);
  let x_2254 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2254) + 1.0f);
  let x_2258 : f32 = u_xlat25.x;
  let x_2259 : f32 = u_xlat47;
  let x_2262 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2258 * x_2259) + x_2262);
  let x_2271 : f32 = x_2269.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2271 == -1.0f));
  let x_2275 : bool = u_xlatb25.x;
  if (x_2275) {
    let x_2278 : vec3<f32> = vs_TEXCOORD7;
    let x_2281 : vec4<f32> = x_2269.x_MainLightWorldToLight[1i];
    let x_2283 : vec2<f32> = (vec2<f32>(x_2278.y, x_2278.y) * vec2<f32>(x_2281.x, x_2281.y));
    let x_2284 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2283.x, x_2283.y, x_2284.z);
    let x_2287 : vec4<f32> = x_2269.x_MainLightWorldToLight[0i];
    let x_2289 : vec3<f32> = vs_TEXCOORD7;
    let x_2292 : vec3<f32> = u_xlat25;
    let x_2294 : vec2<f32> = ((vec2<f32>(x_2287.x, x_2287.y) * vec2<f32>(x_2289.x, x_2289.x)) + vec2<f32>(x_2292.x, x_2292.y));
    let x_2295 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2294.x, x_2294.y, x_2295.z);
    let x_2298 : vec4<f32> = x_2269.x_MainLightWorldToLight[2i];
    let x_2300 : vec3<f32> = vs_TEXCOORD7;
    let x_2303 : vec3<f32> = u_xlat25;
    let x_2305 : vec2<f32> = ((vec2<f32>(x_2298.x, x_2298.y) * vec2<f32>(x_2300.z, x_2300.z)) + vec2<f32>(x_2303.x, x_2303.y));
    let x_2306 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2305.x, x_2305.y, x_2306.z);
    let x_2308 : vec3<f32> = u_xlat25;
    let x_2311 : vec4<f32> = x_2269.x_MainLightWorldToLight[3i];
    let x_2313 : vec2<f32> = (vec2<f32>(x_2308.x, x_2308.y) + vec2<f32>(x_2311.x, x_2311.y));
    let x_2314 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2313.x, x_2313.y, x_2314.z);
    let x_2316 : vec3<f32> = u_xlat25;
    let x_2319 : vec2<f32> = ((vec2<f32>(x_2316.x, x_2316.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2320 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2319.x, x_2319.y, x_2320.z);
    let x_2327 : vec3<f32> = u_xlat25;
    let x_2330 : f32 = x_126.x_GlobalMipBias.x;
    let x_2331 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2327.x, x_2327.y), x_2330);
    u_xlat8 = x_2331;
    let x_2333 : f32 = x_2269.x_MainLightCookieTextureFormat;
    let x_2335 : f32 = x_2269.x_MainLightCookieTextureFormat;
    let x_2337 : f32 = x_2269.x_MainLightCookieTextureFormat;
    let x_2339 : f32 = x_2269.x_MainLightCookieTextureFormat;
    let x_2340 : vec4<f32> = vec4<f32>(x_2333, x_2335, x_2337, x_2339);
    let x_2347 : vec4<bool> = (vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2340.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2347.x, x_2347.y);
    let x_2350 : bool = u_xlatb25.y;
    if (x_2350) {
      let x_2355 : f32 = u_xlat8.w;
      x_2351 = x_2355;
    } else {
      let x_2358 : f32 = u_xlat8.x;
      x_2351 = x_2358;
    }
    let x_2359 : f32 = x_2351;
    u_xlat47 = x_2359;
    let x_2361 : bool = u_xlatb25.x;
    if (x_2361) {
      let x_2365 : vec4<f32> = u_xlat8;
      x_2362 = vec3<f32>(x_2365.x, x_2365.y, x_2365.z);
    } else {
      let x_2368 : f32 = u_xlat47;
      x_2362 = vec3<f32>(x_2368, x_2368, x_2368);
    }
    let x_2370 : vec3<f32> = x_2362;
    u_xlat28 = x_2370;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_2375 : vec3<f32> = u_xlat28;
  let x_2377 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat28 = (x_2375 * vec3<f32>(x_2377.x, x_2377.y, x_2377.z));
  let x_2380 : vec4<f32> = u_xlat6;
  let x_2382 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2380.x, x_2380.x, x_2380.x) * x_2382);
  let x_2384 : vec4<f32> = u_xlat1;
  let x_2387 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(-(vec3<f32>(x_2384.x, x_2384.y, x_2384.z)), x_2387);
  let x_2391 : f32 = u_xlat25.x;
  let x_2393 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2391 + x_2393);
  let x_2396 : vec3<f32> = u_xlat2;
  let x_2397 : vec3<f32> = u_xlat25;
  let x_2401 : vec4<f32> = u_xlat1;
  let x_2404 : vec3<f32> = ((x_2396 * -(vec3<f32>(x_2397.x, x_2397.x, x_2397.x))) + -(vec3<f32>(x_2401.x, x_2401.y, x_2401.z)));
  let x_2405 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2404.x, x_2404.y, x_2404.z, x_2405.w);
  let x_2407 : vec3<f32> = u_xlat2;
  let x_2408 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2407, vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
  let x_2413 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2413, 0.0f, 1.0f);
  let x_2417 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2417) + 1.0f);
  let x_2422 : f32 = u_xlat25.x;
  let x_2424 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2422 * x_2424);
  let x_2428 : f32 = u_xlat25.x;
  let x_2430 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2428 * x_2430);
  let x_2434 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2434) * 0.699999988f) + 1.700000048f);
  let x_2441 : f32 = u_xlat0.x;
  let x_2442 : f32 = u_xlat47;
  u_xlat0.x = (x_2441 * x_2442);
  let x_2446 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2446 * 6.0f);
  let x_2458 : vec4<f32> = u_xlat8;
  let x_2461 : f32 = u_xlat0.x;
  let x_2462 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2458.x, x_2458.y, x_2458.z), x_2461);
  u_xlat8 = x_2462;
  let x_2464 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2464 + -1.0f);
  let x_2472 : f32 = x_2470.unity_SpecCube0_HDR.w;
  let x_2474 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2472 * x_2474) + 1.0f);
  let x_2479 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2479, 0.0f);
  let x_2483 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2483);
  let x_2487 : f32 = u_xlat0.x;
  let x_2489 : f32 = x_2470.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2487 * x_2489);
  let x_2493 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2493);
  let x_2497 : f32 = u_xlat0.x;
  let x_2499 : f32 = x_2470.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2497 * x_2499);
  let x_2502 : vec4<f32> = u_xlat8;
  let x_2504 : vec3<f32> = u_xlat0;
  let x_2506 : vec3<f32> = (vec3<f32>(x_2502.x, x_2502.y, x_2502.z) * vec3<f32>(x_2504.x, x_2504.x, x_2504.x));
  let x_2507 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
  let x_2509 : f32 = u_xlat44;
  let x_2511 : f32 = u_xlat44;
  let x_2515 : vec2<f32> = ((vec2<f32>(x_2509, x_2509) * vec2<f32>(x_2511, x_2511)) + vec2<f32>(-1.0f, 1.0f));
  let x_2516 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2515.x, x_2516.y, x_2515.y);
  let x_2519 : f32 = u_xlat0.z;
  u_xlat44 = (1.0f / x_2519);
  let x_2521 : vec4<f32> = u_xlat5;
  let x_2524 : f32 = u_xlat69;
  let x_2526 : vec3<f32> = (-(vec3<f32>(x_2521.x, x_2521.y, x_2521.z)) + vec3<f32>(x_2524, x_2524, x_2524));
  let x_2527 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2526.x, x_2526.y, x_2526.z, x_2527.w);
  let x_2529 : vec3<f32> = u_xlat25;
  let x_2531 : vec4<f32> = u_xlat9;
  let x_2534 : vec4<f32> = u_xlat5;
  u_xlat25 = ((vec3<f32>(x_2529.x, x_2529.x, x_2529.x) * vec3<f32>(x_2531.x, x_2531.y, x_2531.z)) + vec3<f32>(x_2534.x, x_2534.y, x_2534.z));
  let x_2537 : f32 = u_xlat44;
  let x_2539 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2537, x_2537, x_2537) * x_2539);
  let x_2541 : vec3<f32> = u_xlat25;
  let x_2542 : vec4<f32> = u_xlat8;
  u_xlat25 = (x_2541 * vec3<f32>(x_2542.x, x_2542.y, x_2542.z));
  let x_2545 : vec4<f32> = u_xlat4;
  let x_2547 : vec4<f32> = u_xlat7;
  let x_2550 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_2545.x, x_2545.y, x_2545.z) * vec3<f32>(x_2547.x, x_2547.y, x_2547.z)) + x_2550);
  let x_2553 : f32 = u_xlat3.x;
  let x_2555 : f32 = x_2470.unity_LightData.z;
  u_xlat44 = (x_2553 * x_2555);
  let x_2557 : vec3<f32> = u_xlat2;
  let x_2559 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_2557, vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
  let x_2564 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2564, 0.0f, 1.0f);
  let x_2567 : f32 = u_xlat44;
  let x_2569 : f32 = u_xlat3.x;
  u_xlat44 = (x_2567 * x_2569);
  let x_2571 : f32 = u_xlat44;
  let x_2573 : vec3<f32> = u_xlat28;
  let x_2574 : vec3<f32> = (vec3<f32>(x_2571, x_2571, x_2571) * x_2573);
  let x_2575 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
  let x_2577 : vec4<f32> = u_xlat1;
  let x_2580 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2577.x, x_2577.y, x_2577.z) + vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
  let x_2583 : vec3<f32> = u_xlat28;
  let x_2584 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2583, x_2584);
  let x_2586 : f32 = u_xlat44;
  u_xlat44 = max(x_2586, 1.17549435e-37f);
  let x_2589 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_2589);
  let x_2591 : f32 = u_xlat44;
  let x_2593 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2591, x_2591, x_2591) * x_2593);
  let x_2595 : vec3<f32> = u_xlat2;
  let x_2596 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2595, x_2596);
  let x_2598 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2598, 0.0f, 1.0f);
  let x_2601 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2603 : vec3<f32> = u_xlat28;
  u_xlat3.x = dot(vec3<f32>(x_2601.x, x_2601.y, x_2601.z), x_2603);
  let x_2607 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2607, 0.0f, 1.0f);
  let x_2610 : f32 = u_xlat44;
  let x_2611 : f32 = u_xlat44;
  u_xlat44 = (x_2610 * x_2611);
  let x_2613 : f32 = u_xlat44;
  let x_2615 : f32 = u_xlat0.x;
  u_xlat44 = ((x_2613 * x_2615) + 1.000010014f);
  let x_2620 : f32 = u_xlat3.x;
  let x_2622 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2620 * x_2622);
  let x_2625 : f32 = u_xlat44;
  let x_2626 : f32 = u_xlat44;
  u_xlat44 = (x_2625 * x_2626);
  let x_2629 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2629, 0.100000001f);
  let x_2633 : f32 = u_xlat44;
  let x_2635 : f32 = u_xlat3.x;
  u_xlat44 = (x_2633 * x_2635);
  let x_2637 : f32 = u_xlat70;
  let x_2638 : f32 = u_xlat44;
  u_xlat44 = (x_2637 * x_2638);
  let x_2640 : f32 = u_xlat68;
  let x_2641 : f32 = u_xlat44;
  u_xlat44 = (x_2640 / x_2641);
  let x_2643 : vec4<f32> = u_xlat5;
  let x_2645 : f32 = u_xlat44;
  let x_2648 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2643.x, x_2643.y, x_2643.z) * vec3<f32>(x_2645, x_2645, x_2645)) + vec3<f32>(x_2648.x, x_2648.y, x_2648.z));
  let x_2651 : vec4<f32> = u_xlat4;
  let x_2653 : vec3<f32> = u_xlat28;
  let x_2654 : vec3<f32> = (vec3<f32>(x_2651.x, x_2651.y, x_2651.z) * x_2653);
  let x_2655 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
  let x_2658 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2660 : f32 = x_2470.unity_LightData.y;
  u_xlat44 = min(x_2658, x_2660);
  let x_2663 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_2663));
  let x_2667 : f32 = x_2269.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2669 : f32 = x_2269.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2671 : f32 = x_2269.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2673 : f32 = x_2269.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2674 : vec4<f32> = vec4<f32>(x_2667, x_2669, x_2671, x_2673);
  let x_2680 : vec4<bool> = (vec4<f32>(x_2674.x, x_2674.y, x_2674.z, x_2674.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_2680.x, x_2680.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2691 : u32 = u_xlatu_loop_1;
    let x_2692 : u32 = u_xlatu44;
    if ((x_2691 < x_2692)) {
    } else {
      break;
    }
    let x_2695 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2695 >> 2u);
    let x_2698 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_2698 & 3u));
    let x_2701 : u32 = u_xlatu71;
    let x_2704 : vec4<f32> = x_2470.unity_LightIndices[bitcast<i32>(x_2701)];
    let x_2714 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2719 : vec4<u32> = indexable[x_2714];
    u_xlat71 = dot(x_2704, bitcast<vec4<f32>>(x_2719));
    let x_2722 : f32 = u_xlat71;
    u_xlatu71 = bitcast<u32>(i32(x_2722));
    let x_2725 : vec3<f32> = vs_TEXCOORD7;
    let x_2737 : u32 = u_xlatu71;
    let x_2740 : vec4<f32> = x_2736.x_AdditionalLightsPosition[bitcast<i32>(x_2737)];
    let x_2743 : u32 = u_xlatu71;
    let x_2746 : vec4<f32> = x_2736.x_AdditionalLightsPosition[bitcast<i32>(x_2743)];
    let x_2748 : vec3<f32> = ((-(x_2725) * vec3<f32>(x_2740.w, x_2740.w, x_2740.w)) + vec3<f32>(x_2746.x, x_2746.y, x_2746.z));
    let x_2749 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
    let x_2751 : vec4<f32> = u_xlat9;
    let x_2753 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2751.x, x_2751.y, x_2751.z), vec3<f32>(x_2753.x, x_2753.y, x_2753.z));
    let x_2756 : f32 = u_xlat72;
    u_xlat72 = max(x_2756, 6.10351562e-05f);
    let x_2758 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2758);
    let x_2760 : f32 = u_xlat73;
    let x_2762 : vec4<f32> = u_xlat9;
    let x_2764 : vec3<f32> = (vec3<f32>(x_2760, x_2760, x_2760) * vec3<f32>(x_2762.x, x_2762.y, x_2762.z));
    let x_2765 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2765.w);
    let x_2768 : f32 = u_xlat72;
    u_xlat74 = (1.0f / x_2768);
    let x_2770 : f32 = u_xlat72;
    let x_2771 : u32 = u_xlatu71;
    let x_2774 : f32 = x_2736.x_AdditionalLightsAttenuation[bitcast<i32>(x_2771)].x;
    u_xlat72 = (x_2770 * x_2774);
    let x_2776 : f32 = u_xlat72;
    let x_2778 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2776) * x_2778) + 1.0f);
    let x_2781 : f32 = u_xlat72;
    u_xlat72 = max(x_2781, 0.0f);
    let x_2783 : f32 = u_xlat72;
    let x_2784 : f32 = u_xlat72;
    u_xlat72 = (x_2783 * x_2784);
    let x_2786 : f32 = u_xlat72;
    let x_2787 : f32 = u_xlat74;
    u_xlat72 = (x_2786 * x_2787);
    let x_2789 : u32 = u_xlatu71;
    let x_2792 : vec4<f32> = x_2736.x_AdditionalLightsSpotDir[bitcast<i32>(x_2789)];
    let x_2794 : vec4<f32> = u_xlat10;
    u_xlat74 = dot(vec3<f32>(x_2792.x, x_2792.y, x_2792.z), vec3<f32>(x_2794.x, x_2794.y, x_2794.z));
    let x_2797 : f32 = u_xlat74;
    let x_2798 : u32 = u_xlatu71;
    let x_2801 : f32 = x_2736.x_AdditionalLightsAttenuation[bitcast<i32>(x_2798)].z;
    let x_2803 : u32 = u_xlatu71;
    let x_2806 : f32 = x_2736.x_AdditionalLightsAttenuation[bitcast<i32>(x_2803)].w;
    u_xlat74 = ((x_2797 * x_2801) + x_2806);
    let x_2808 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2808, 0.0f, 1.0f);
    let x_2810 : f32 = u_xlat74;
    let x_2811 : f32 = u_xlat74;
    u_xlat74 = (x_2810 * x_2811);
    let x_2813 : f32 = u_xlat72;
    let x_2814 : f32 = u_xlat74;
    u_xlat72 = (x_2813 * x_2814);
    let x_2817 : u32 = u_xlatu71;
    u_xlatu74 = (x_2817 >> 5u);
    let x_2820 : u32 = u_xlatu71;
    u_xlati75 = (1i << bitcast<u32>((bitcast<i32>(x_2820) & 31i)));
    let x_2825 : i32 = u_xlati75;
    let x_2827 : u32 = u_xlatu74;
    let x_2830 : f32 = x_2269.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2827)].el;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_2825) & bitcast<u32>(x_2830)));
    let x_2834 : i32 = u_xlati74;
    if ((x_2834 != 0i)) {
      let x_2844 : u32 = u_xlatu71;
      let x_2847 : f32 = x_2843.x_AdditionalLightsLightTypes[bitcast<i32>(x_2844)].el;
      u_xlati74 = i32(x_2847);
      let x_2849 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_2849 != 0i));
      let x_2853 : u32 = u_xlatu71;
      u_xlati76 = (bitcast<i32>(x_2853) << bitcast<u32>(2i));
      let x_2856 : i32 = u_xlati75;
      if ((x_2856 != 0i)) {
        let x_2860 : vec3<f32> = vs_TEXCOORD7;
        let x_2862 : i32 = u_xlati76;
        let x_2865 : i32 = u_xlati76;
        let x_2869 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[((x_2862 + 1i) / 4i)][((x_2865 + 1i) % 4i)];
        let x_2871 : vec3<f32> = (vec3<f32>(x_2860.y, x_2860.y, x_2860.y) * vec3<f32>(x_2869.x, x_2869.y, x_2869.w));
        let x_2872 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2871.x, x_2871.y, x_2871.z, x_2872.w);
        let x_2874 : i32 = u_xlati76;
        let x_2876 : i32 = u_xlati76;
        let x_2879 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[(x_2874 / 4i)][(x_2876 % 4i)];
        let x_2881 : vec3<f32> = vs_TEXCOORD7;
        let x_2884 : vec4<f32> = u_xlat11;
        let x_2886 : vec3<f32> = ((vec3<f32>(x_2879.x, x_2879.y, x_2879.w) * vec3<f32>(x_2881.x, x_2881.x, x_2881.x)) + vec3<f32>(x_2884.x, x_2884.y, x_2884.z));
        let x_2887 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2886.x, x_2886.y, x_2886.z, x_2887.w);
        let x_2889 : i32 = u_xlati76;
        let x_2892 : i32 = u_xlati76;
        let x_2896 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[((x_2889 + 2i) / 4i)][((x_2892 + 2i) % 4i)];
        let x_2898 : vec3<f32> = vs_TEXCOORD7;
        let x_2901 : vec4<f32> = u_xlat11;
        let x_2903 : vec3<f32> = ((vec3<f32>(x_2896.x, x_2896.y, x_2896.w) * vec3<f32>(x_2898.z, x_2898.z, x_2898.z)) + vec3<f32>(x_2901.x, x_2901.y, x_2901.z));
        let x_2904 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2903.x, x_2903.y, x_2903.z, x_2904.w);
        let x_2906 : vec4<f32> = u_xlat11;
        let x_2908 : i32 = u_xlati76;
        let x_2911 : i32 = u_xlati76;
        let x_2915 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[((x_2908 + 3i) / 4i)][((x_2911 + 3i) % 4i)];
        let x_2917 : vec3<f32> = (vec3<f32>(x_2906.x, x_2906.y, x_2906.z) + vec3<f32>(x_2915.x, x_2915.y, x_2915.w));
        let x_2918 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2917.x, x_2917.y, x_2917.z, x_2918.w);
        let x_2920 : vec4<f32> = u_xlat11;
        let x_2922 : vec4<f32> = u_xlat11;
        let x_2924 : vec2<f32> = (vec2<f32>(x_2920.x, x_2920.y) / vec2<f32>(x_2922.z, x_2922.z));
        let x_2925 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2924.x, x_2924.y, x_2925.z, x_2925.w);
        let x_2927 : vec4<f32> = u_xlat11;
        let x_2930 : vec2<f32> = ((vec2<f32>(x_2927.x, x_2927.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2931 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2930.x, x_2930.y, x_2931.z, x_2931.w);
        let x_2933 : vec4<f32> = u_xlat11;
        let x_2937 : vec2<f32> = clamp(vec2<f32>(x_2933.x, x_2933.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2938 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2937.x, x_2937.y, x_2938.z, x_2938.w);
        let x_2940 : u32 = u_xlatu71;
        let x_2943 : vec4<f32> = x_2843.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2940)];
        let x_2945 : vec4<f32> = u_xlat11;
        let x_2948 : u32 = u_xlatu71;
        let x_2951 : vec4<f32> = x_2843.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2948)];
        let x_2953 : vec2<f32> = ((vec2<f32>(x_2943.x, x_2943.y) * vec2<f32>(x_2945.x, x_2945.y)) + vec2<f32>(x_2951.z, x_2951.w));
        let x_2954 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2953.x, x_2953.y, x_2954.z, x_2954.w);
      } else {
        let x_2958 : i32 = u_xlati74;
        u_xlatb74 = (x_2958 == 1i);
        let x_2960 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_2960);
        let x_2962 : i32 = u_xlati74;
        if ((x_2962 != 0i)) {
          let x_2966 : vec3<f32> = vs_TEXCOORD7;
          let x_2968 : i32 = u_xlati76;
          let x_2971 : i32 = u_xlati76;
          let x_2975 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[((x_2968 + 1i) / 4i)][((x_2971 + 1i) % 4i)];
          u_xlat55 = (vec2<f32>(x_2966.y, x_2966.y) * vec2<f32>(x_2975.x, x_2975.y));
          let x_2978 : i32 = u_xlati76;
          let x_2980 : i32 = u_xlati76;
          let x_2983 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[(x_2978 / 4i)][(x_2980 % 4i)];
          let x_2985 : vec3<f32> = vs_TEXCOORD7;
          let x_2988 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_2983.x, x_2983.y) * vec2<f32>(x_2985.x, x_2985.x)) + x_2988);
          let x_2990 : i32 = u_xlati76;
          let x_2993 : i32 = u_xlati76;
          let x_2997 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[((x_2990 + 2i) / 4i)][((x_2993 + 2i) % 4i)];
          let x_2999 : vec3<f32> = vs_TEXCOORD7;
          let x_3002 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_2997.x, x_2997.y) * vec2<f32>(x_2999.z, x_2999.z)) + x_3002);
          let x_3004 : vec2<f32> = u_xlat55;
          let x_3005 : i32 = u_xlati76;
          let x_3008 : i32 = u_xlati76;
          let x_3012 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[((x_3005 + 3i) / 4i)][((x_3008 + 3i) % 4i)];
          u_xlat55 = (x_3004 + vec2<f32>(x_3012.x, x_3012.y));
          let x_3015 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3015 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3018 : vec2<f32> = u_xlat55;
          u_xlat55 = fract(x_3018);
          let x_3020 : u32 = u_xlatu71;
          let x_3023 : vec4<f32> = x_2843.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3020)];
          let x_3025 : vec2<f32> = u_xlat55;
          let x_3027 : u32 = u_xlatu71;
          let x_3030 : vec4<f32> = x_2843.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3027)];
          let x_3032 : vec2<f32> = ((vec2<f32>(x_3023.x, x_3023.y) * x_3025) + vec2<f32>(x_3030.z, x_3030.w));
          let x_3033 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3032.x, x_3032.y, x_3033.z, x_3033.w);
        } else {
          let x_3036 : vec3<f32> = vs_TEXCOORD7;
          let x_3038 : i32 = u_xlati76;
          let x_3041 : i32 = u_xlati76;
          let x_3045 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[((x_3038 + 1i) / 4i)][((x_3041 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3036.y, x_3036.y, x_3036.y, x_3036.y) * x_3045);
          let x_3047 : i32 = u_xlati76;
          let x_3049 : i32 = u_xlati76;
          let x_3052 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[(x_3047 / 4i)][(x_3049 % 4i)];
          let x_3053 : vec3<f32> = vs_TEXCOORD7;
          let x_3056 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3052 * vec4<f32>(x_3053.x, x_3053.x, x_3053.x, x_3053.x)) + x_3056);
          let x_3058 : i32 = u_xlati76;
          let x_3061 : i32 = u_xlati76;
          let x_3065 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[((x_3058 + 2i) / 4i)][((x_3061 + 2i) % 4i)];
          let x_3066 : vec3<f32> = vs_TEXCOORD7;
          let x_3069 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3065 * vec4<f32>(x_3066.z, x_3066.z, x_3066.z, x_3066.z)) + x_3069);
          let x_3071 : vec4<f32> = u_xlat12;
          let x_3072 : i32 = u_xlati76;
          let x_3075 : i32 = u_xlati76;
          let x_3079 : vec4<f32> = x_2843.x_AdditionalLightsWorldToLights[((x_3072 + 3i) / 4i)][((x_3075 + 3i) % 4i)];
          u_xlat12 = (x_3071 + x_3079);
          let x_3081 : vec4<f32> = u_xlat12;
          let x_3083 : vec4<f32> = u_xlat12;
          let x_3085 : vec3<f32> = (vec3<f32>(x_3081.x, x_3081.y, x_3081.z) / vec3<f32>(x_3083.w, x_3083.w, x_3083.w));
          let x_3086 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3085.x, x_3085.y, x_3085.z, x_3086.w);
          let x_3088 : vec4<f32> = u_xlat12;
          let x_3090 : vec4<f32> = u_xlat12;
          u_xlat74 = dot(vec3<f32>(x_3088.x, x_3088.y, x_3088.z), vec3<f32>(x_3090.x, x_3090.y, x_3090.z));
          let x_3093 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3093);
          let x_3095 : f32 = u_xlat74;
          let x_3097 : vec4<f32> = u_xlat12;
          let x_3099 : vec3<f32> = (vec3<f32>(x_3095, x_3095, x_3095) * vec3<f32>(x_3097.x, x_3097.y, x_3097.z));
          let x_3100 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3099.x, x_3099.y, x_3099.z, x_3100.w);
          let x_3102 : vec4<f32> = u_xlat12;
          u_xlat74 = dot(abs(vec3<f32>(x_3102.x, x_3102.y, x_3102.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3107 : f32 = u_xlat74;
          u_xlat74 = max(x_3107, 0.000001f);
          let x_3110 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3110);
          let x_3112 : f32 = u_xlat74;
          let x_3114 : vec4<f32> = u_xlat12;
          let x_3116 : vec3<f32> = (vec3<f32>(x_3112, x_3112, x_3112) * vec3<f32>(x_3114.z, x_3114.x, x_3114.y));
          let x_3117 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3116.x, x_3116.y, x_3116.z, x_3117.w);
          let x_3120 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3120);
          let x_3124 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3124, 0.0f, 1.0f);
          let x_3128 : vec4<f32> = u_xlat13;
          let x_3131 : vec4<bool> = (vec4<f32>(x_3128.y, x_3128.z, x_3128.y, x_3128.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3131.x, x_3131.y);
          let x_3134 : bool = u_xlatb55.x;
          if (x_3134) {
            let x_3139 : f32 = u_xlat13.x;
            x_3135 = x_3139;
          } else {
            let x_3142 : f32 = u_xlat13.x;
            x_3135 = -(x_3142);
          }
          let x_3144 : f32 = x_3135;
          u_xlat55.x = x_3144;
          let x_3147 : bool = u_xlatb55.y;
          if (x_3147) {
            let x_3152 : f32 = u_xlat13.x;
            x_3148 = x_3152;
          } else {
            let x_3155 : f32 = u_xlat13.x;
            x_3148 = -(x_3155);
          }
          let x_3157 : f32 = x_3148;
          u_xlat55.y = x_3157;
          let x_3159 : vec4<f32> = u_xlat12;
          let x_3161 : f32 = u_xlat74;
          let x_3164 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3159.x, x_3159.y) * vec2<f32>(x_3161, x_3161)) + x_3164);
          let x_3166 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3166 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3169 : vec2<f32> = u_xlat55;
          u_xlat55 = clamp(x_3169, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3173 : u32 = u_xlatu71;
          let x_3176 : vec4<f32> = x_2843.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3173)];
          let x_3178 : vec2<f32> = u_xlat55;
          let x_3180 : u32 = u_xlatu71;
          let x_3183 : vec4<f32> = x_2843.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3180)];
          let x_3185 : vec2<f32> = ((vec2<f32>(x_3176.x, x_3176.y) * x_3178) + vec2<f32>(x_3183.z, x_3183.w));
          let x_3186 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3185.x, x_3185.y, x_3186.z, x_3186.w);
        }
      }
      let x_3193 : vec4<f32> = u_xlat11;
      let x_3196 : f32 = x_126.x_GlobalMipBias.x;
      let x_3197 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3193.x, x_3193.y), x_3196);
      u_xlat11 = x_3197;
      let x_3199 : bool = u_xlatb28.y;
      if (x_3199) {
        let x_3204 : f32 = u_xlat11.w;
        x_3200 = x_3204;
      } else {
        let x_3207 : f32 = u_xlat11.x;
        x_3200 = x_3207;
      }
      let x_3208 : f32 = x_3200;
      u_xlat74 = x_3208;
      let x_3210 : bool = u_xlatb28.x;
      if (x_3210) {
        let x_3214 : vec4<f32> = u_xlat11;
        x_3211 = vec3<f32>(x_3214.x, x_3214.y, x_3214.z);
      } else {
        let x_3217 : f32 = u_xlat74;
        x_3211 = vec3<f32>(x_3217, x_3217, x_3217);
      }
      let x_3219 : vec3<f32> = x_3211;
      let x_3220 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3219.x, x_3219.y, x_3219.z, x_3220.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3226 : vec4<f32> = u_xlat11;
    let x_3228 : u32 = u_xlatu71;
    let x_3231 : vec4<f32> = x_2736.x_AdditionalLightsColor[bitcast<i32>(x_3228)];
    let x_3233 : vec3<f32> = (vec3<f32>(x_3226.x, x_3226.y, x_3226.z) * vec3<f32>(x_3231.x, x_3231.y, x_3231.z));
    let x_3234 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3233.x, x_3233.y, x_3233.z, x_3234.w);
    let x_3236 : vec4<f32> = u_xlat6;
    let x_3238 : vec4<f32> = u_xlat11;
    let x_3240 : vec3<f32> = (vec3<f32>(x_3236.x, x_3236.x, x_3236.x) * vec3<f32>(x_3238.x, x_3238.y, x_3238.z));
    let x_3241 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3241.w);
    let x_3243 : vec3<f32> = u_xlat2;
    let x_3244 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(x_3243, vec3<f32>(x_3244.x, x_3244.y, x_3244.z));
    let x_3247 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3247, 0.0f, 1.0f);
    let x_3249 : f32 = u_xlat71;
    let x_3250 : f32 = u_xlat72;
    u_xlat71 = (x_3249 * x_3250);
    let x_3252 : f32 = u_xlat71;
    let x_3254 : vec4<f32> = u_xlat11;
    let x_3256 : vec3<f32> = (vec3<f32>(x_3252, x_3252, x_3252) * vec3<f32>(x_3254.x, x_3254.y, x_3254.z));
    let x_3257 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3256.x, x_3256.y, x_3256.z, x_3257.w);
    let x_3259 : vec4<f32> = u_xlat9;
    let x_3261 : f32 = u_xlat73;
    let x_3264 : vec4<f32> = u_xlat1;
    let x_3266 : vec3<f32> = ((vec3<f32>(x_3259.x, x_3259.y, x_3259.z) * vec3<f32>(x_3261, x_3261, x_3261)) + vec3<f32>(x_3264.x, x_3264.y, x_3264.z));
    let x_3267 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3266.x, x_3266.y, x_3266.z, x_3267.w);
    let x_3269 : vec4<f32> = u_xlat9;
    let x_3271 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_3269.x, x_3269.y, x_3269.z), vec3<f32>(x_3271.x, x_3271.y, x_3271.z));
    let x_3274 : f32 = u_xlat71;
    u_xlat71 = max(x_3274, 1.17549435e-37f);
    let x_3276 : f32 = u_xlat71;
    u_xlat71 = inverseSqrt(x_3276);
    let x_3278 : f32 = u_xlat71;
    let x_3280 : vec4<f32> = u_xlat9;
    let x_3282 : vec3<f32> = (vec3<f32>(x_3278, x_3278, x_3278) * vec3<f32>(x_3280.x, x_3280.y, x_3280.z));
    let x_3283 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3282.x, x_3282.y, x_3282.z, x_3283.w);
    let x_3285 : vec3<f32> = u_xlat2;
    let x_3286 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(x_3285, vec3<f32>(x_3286.x, x_3286.y, x_3286.z));
    let x_3289 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3289, 0.0f, 1.0f);
    let x_3291 : vec4<f32> = u_xlat10;
    let x_3293 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_3291.x, x_3291.y, x_3291.z), vec3<f32>(x_3293.x, x_3293.y, x_3293.z));
    let x_3296 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3296, 0.0f, 1.0f);
    let x_3298 : f32 = u_xlat71;
    let x_3299 : f32 = u_xlat71;
    u_xlat71 = (x_3298 * x_3299);
    let x_3301 : f32 = u_xlat71;
    let x_3303 : f32 = u_xlat0.x;
    u_xlat71 = ((x_3301 * x_3303) + 1.000010014f);
    let x_3306 : f32 = u_xlat72;
    let x_3307 : f32 = u_xlat72;
    u_xlat72 = (x_3306 * x_3307);
    let x_3309 : f32 = u_xlat71;
    let x_3310 : f32 = u_xlat71;
    u_xlat71 = (x_3309 * x_3310);
    let x_3312 : f32 = u_xlat72;
    u_xlat72 = max(x_3312, 0.100000001f);
    let x_3314 : f32 = u_xlat71;
    let x_3315 : f32 = u_xlat72;
    u_xlat71 = (x_3314 * x_3315);
    let x_3317 : f32 = u_xlat70;
    let x_3318 : f32 = u_xlat71;
    u_xlat71 = (x_3317 * x_3318);
    let x_3320 : f32 = u_xlat68;
    let x_3321 : f32 = u_xlat71;
    u_xlat71 = (x_3320 / x_3321);
    let x_3323 : vec4<f32> = u_xlat5;
    let x_3325 : f32 = u_xlat71;
    let x_3328 : vec4<f32> = u_xlat7;
    let x_3330 : vec3<f32> = ((vec3<f32>(x_3323.x, x_3323.y, x_3323.z) * vec3<f32>(x_3325, x_3325, x_3325)) + vec3<f32>(x_3328.x, x_3328.y, x_3328.z));
    let x_3331 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3330.x, x_3330.y, x_3330.z, x_3331.w);
    let x_3333 : vec4<f32> = u_xlat9;
    let x_3335 : vec4<f32> = u_xlat11;
    let x_3338 : vec4<f32> = u_xlat8;
    let x_3340 : vec3<f32> = ((vec3<f32>(x_3333.x, x_3333.y, x_3333.z) * vec3<f32>(x_3335.x, x_3335.y, x_3335.z)) + vec3<f32>(x_3338.x, x_3338.y, x_3338.z));
    let x_3341 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3340.x, x_3340.y, x_3340.z, x_3341.w);

    continuing {
      let x_3343 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3343 + bitcast<u32>(1i));
    }
  }
  let x_3345 : vec3<f32> = u_xlat25;
  let x_3346 : f32 = u_xlat22;
  let x_3349 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_3345 * vec3<f32>(x_3346, x_3346, x_3346)) + vec3<f32>(x_3349.x, x_3349.y, x_3349.z));
  let x_3352 : vec4<f32> = u_xlat8;
  let x_3354 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3352.x, x_3352.y, x_3352.z) + x_3354);
  let x_3356 : f32 = u_xlat67;
  let x_3357 : f32 = u_xlat67;
  u_xlat1.x = (x_3356 * -(x_3357));
  let x_3362 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3362);
  let x_3365 : vec3<f32> = u_xlat0;
  let x_3366 : f32 = u_xlat66;
  let x_3370 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_3365 * vec3<f32>(x_3366, x_3366, x_3366)) + -(vec3<f32>(x_3370.x, x_3370.y, x_3370.z)));
  let x_3376 : vec4<f32> = u_xlat1;
  let x_3378 : vec3<f32> = u_xlat0;
  let x_3381 : vec4<f32> = x_126.unity_FogColor;
  let x_3383 : vec3<f32> = ((vec3<f32>(x_3376.x, x_3376.x, x_3376.x) * x_3378) + vec3<f32>(x_3381.x, x_3381.y, x_3381.z));
  let x_3384 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3383.x, x_3383.y, x_3383.z, x_3384.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

