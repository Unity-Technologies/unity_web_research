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
  @size(8)
  padding : u32,
  x_TerrainHeightmapRecipSize : vec4<f32>,
  x_TerrainHeightmapScale : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_787 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2062 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2257 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2539 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2647 : AdditionalLightsCookies;

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
  var u_xlat63 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb64 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat64 : f32;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : vec3<f32>;
  var x_559 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlat46 : f32;
  var u_xlatb4 : vec4<bool>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb67 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat67 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb68 : bool;
  var x_2018 : f32;
  var u_xlatb8 : vec2<bool>;
  var x_2145 : f32;
  var x_2156 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlatu71 : u32;
  var u_xlati72 : i32;
  var u_xlati71 : i32;
  var u_xlati73 : i32;
  var u_xlatb71 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2940 : f32;
  var x_2953 : f32;
  var x_3005 : f32;
  var x_3016 : vec3<f32>;
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
  u_xlat63 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb64 = (4.0f >= x_218);
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
  let x_280 : bool = u_xlatb64;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_289 : f32 = u_xlat64;
  u_xlat64 = (x_289 + 6.10351562e-05f);
  let x_292 : vec4<f32> = u_xlat4;
  let x_293 : f32 = u_xlat64;
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
  u_xlat42 = dot(x_436, x_437);
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
  u_xlat21 = dot(x_519, x_520);
  let x_524 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_524 == 0.0f);
  let x_529 : vec3<f32> = vs_TEXCOORD7;
  let x_533 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat22;
  let x_536 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat22;
  let x_544 : vec3<f32> = u_xlat2;
  u_xlat22 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_549 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_549;
  let x_552 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_552;
  let x_556 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_556;
  let x_558 : bool = u_xlatb1;
  if (x_558) {
    let x_562 : vec3<f32> = u_xlat22;
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
  u_xlat64 = dot(x_569, x_570);
  let x_572 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_572);
  let x_574 : f32 = u_xlat64;
  let x_576 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_574, x_574, x_574) * x_576);
  let x_579 : f32 = vs_TEXCOORD7.y;
  let x_581 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat64 = (x_579 * x_581);
  let x_584 : f32 = x_126.unity_MatrixV[0i].z;
  let x_586 : f32 = vs_TEXCOORD7.x;
  let x_588 : f32 = u_xlat64;
  u_xlat64 = ((x_584 * x_586) + x_588);
  let x_591 : f32 = x_126.unity_MatrixV[2i].z;
  let x_593 : f32 = vs_TEXCOORD7.z;
  let x_595 : f32 = u_xlat64;
  u_xlat64 = ((x_591 * x_593) + x_595);
  let x_597 : f32 = u_xlat64;
  let x_600 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat64 = (x_597 + x_600);
  let x_602 : f32 = u_xlat64;
  let x_605 : f32 = x_126.x_ProjectionParams.y;
  u_xlat64 = (-(x_602) + -(x_605));
  let x_608 : f32 = u_xlat64;
  u_xlat64 = max(x_608, 0.0f);
  let x_610 : f32 = u_xlat64;
  let x_612 : f32 = x_126.unity_FogParams.x;
  u_xlat64 = (x_610 * x_612);
  let x_619 : vec4<f32> = vs_TEXCOORD0;
  let x_622 : f32 = x_126.x_GlobalMipBias.x;
  let x_623 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_619.z, x_619.w), x_622);
  u_xlat3 = x_623;
  let x_628 : vec4<f32> = vs_TEXCOORD0;
  let x_631 : f32 = x_126.x_GlobalMipBias.x;
  let x_632 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_628.z, x_628.w), x_631);
  let x_633 : vec3<f32> = vec3<f32>(x_632.x, x_632.y, x_632.z);
  let x_634 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat3;
  let x_640 : vec3<f32> = (vec3<f32>(x_636.x, x_636.y, x_636.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_641 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_644 : vec3<f32> = u_xlat2;
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat65 = dot(x_644, vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : f32 = u_xlat65;
  u_xlat65 = (x_648 + 0.5f);
  let x_650 : f32 = u_xlat65;
  let x_652 : vec4<f32> = u_xlat4;
  let x_654 : vec3<f32> = (vec3<f32>(x_650, x_650, x_650) * vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_658 : f32 = u_xlat3.w;
  u_xlat65 = max(x_658, 0.0001f);
  let x_661 : vec4<f32> = u_xlat3;
  let x_663 : f32 = u_xlat65;
  let x_665 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) / vec3<f32>(x_663, x_663, x_663));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_670 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_671 : vec2<f32> = vec2<f32>(x_670.x, x_670.y);
  let x_675 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_671.x, x_671.y));
  let x_676 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
  let x_678 : vec4<f32> = u_xlat4;
  let x_680 : vec4<f32> = hlslcc_FragCoord;
  let x_682 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) * vec2<f32>(x_680.x, x_680.y));
  let x_683 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
  let x_686 : f32 = u_xlat4.y;
  let x_688 : f32 = x_126.x_ScaleBiasRt.x;
  let x_691 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat65 = ((x_686 * x_688) + x_691);
  let x_693 : f32 = u_xlat65;
  u_xlat4.z = (-(x_693) + 1.0f);
  let x_698 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_698) * 0.959999979f) + 0.959999979f);
  let x_704 : f32 = u_xlat42;
  let x_705 : f32 = u_xlat65;
  u_xlat66 = (x_704 + -(x_705));
  let x_708 : f32 = u_xlat65;
  let x_710 : vec4<f32> = u_xlat5;
  let x_712 : vec3<f32> = (vec3<f32>(x_708, x_708, x_708) * vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat5;
  let x_719 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_720 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec3<f32> = u_xlat0;
  let x_724 : vec4<f32> = u_xlat5;
  let x_729 : vec3<f32> = ((vec3<f32>(x_722.x, x_722.x, x_722.x) * vec3<f32>(x_724.x, x_724.y, x_724.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_730 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : f32 = u_xlat42;
  u_xlat0.x = (-(x_732) + 1.0f);
  let x_737 : f32 = u_xlat0.x;
  let x_739 : f32 = u_xlat0.x;
  u_xlat42 = (x_737 * x_739);
  let x_741 : f32 = u_xlat42;
  u_xlat42 = max(x_741, 0.0078125f);
  let x_744 : f32 = u_xlat42;
  let x_745 : f32 = u_xlat42;
  u_xlat65 = (x_744 * x_745);
  let x_747 : f32 = u_xlat66;
  u_xlat66 = (x_747 + 1.0f);
  let x_749 : f32 = u_xlat66;
  u_xlat66 = clamp(x_749, 0.0f, 1.0f);
  let x_752 : f32 = u_xlat42;
  u_xlat25 = ((x_752 * 4.0f) + 2.0f);
  let x_761 : vec4<f32> = u_xlat4;
  let x_764 : f32 = x_126.x_GlobalMipBias.x;
  let x_765 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_761.x, x_761.z), x_764);
  u_xlat4.x = x_765.x;
  let x_770 : f32 = u_xlat4.x;
  u_xlat46 = (x_770 + -1.0f);
  let x_773 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_774 : f32 = u_xlat46;
  u_xlat46 = ((x_773 * x_774) + 1.0f);
  let x_777 : f32 = u_xlat21;
  let x_779 : f32 = u_xlat4.x;
  u_xlat21 = min(x_777, x_779);
  let x_789 : f32 = x_787.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_789);
  let x_793 : bool = u_xlatb4.x;
  if (x_793) {
    let x_797 : f32 = x_787.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_797 == 1.0f);
    let x_801 : bool = u_xlatb4.x;
    if (x_801) {
      let x_805 : vec4<f32> = vs_TEXCOORD8;
      let x_808 : vec4<f32> = x_787.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y) + x_808);
      let x_811 : vec4<f32> = u_xlat7;
      let x_812 : vec2<f32> = vec2<f32>(x_811.x, x_811.y);
      let x_814 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_812.x, x_812.y, x_814);
      let x_826 : vec3<f32> = txVec0;
      let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_826.xy, x_826.z);
      u_xlat8.x = x_828;
      let x_831 : vec4<f32> = u_xlat7;
      let x_832 : vec2<f32> = vec2<f32>(x_831.z, x_831.w);
      let x_834 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_832.x, x_832.y, x_834);
      let x_841 : vec3<f32> = txVec1;
      let x_843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_841.xy, x_841.z);
      u_xlat8.y = x_843;
      let x_845 : vec4<f32> = vs_TEXCOORD8;
      let x_848 : vec4<f32> = x_787.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_845.x, x_845.y, x_845.x, x_845.y) + x_848);
      let x_851 : vec4<f32> = u_xlat7;
      let x_852 : vec2<f32> = vec2<f32>(x_851.x, x_851.y);
      let x_854 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_852.x, x_852.y, x_854);
      let x_861 : vec3<f32> = txVec2;
      let x_863 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_861.xy, x_861.z);
      u_xlat8.z = x_863;
      let x_866 : vec4<f32> = u_xlat7;
      let x_867 : vec2<f32> = vec2<f32>(x_866.z, x_866.w);
      let x_869 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_867.x, x_867.y, x_869);
      let x_876 : vec3<f32> = txVec3;
      let x_878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_876.xy, x_876.z);
      u_xlat8.w = x_878;
      let x_880 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_880, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_888 : f32 = x_787.x_MainLightShadowParams.y;
      u_xlatb67 = (x_888 == 2.0f);
      let x_890 : bool = u_xlatb67;
      if (x_890) {
        let x_893 : vec4<f32> = vs_TEXCOORD8;
        let x_896 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_899 : vec2<f32> = ((vec2<f32>(x_893.x, x_893.y) * vec2<f32>(x_896.z, x_896.w)) + vec2<f32>(0.5f, 0.5f));
        let x_900 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_902 : vec4<f32> = u_xlat7;
        let x_904 : vec2<f32> = floor(vec2<f32>(x_902.x, x_902.y));
        let x_905 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_909 : vec4<f32> = vs_TEXCOORD8;
        let x_912 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_915 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_909.x, x_909.y) * vec2<f32>(x_912.z, x_912.w)) + -(vec2<f32>(x_915.x, x_915.y)));
        let x_919 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_919.x, x_919.x, x_919.y, x_919.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_923 : vec4<f32> = u_xlat8;
        let x_925 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_923.x, x_923.x, x_923.z, x_923.z) * vec4<f32>(x_925.x, x_925.x, x_925.z, x_925.z));
        let x_928 : vec4<f32> = u_xlat9;
        let x_932 : vec2<f32> = (vec2<f32>(x_928.y, x_928.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_933 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_932.x, x_933.y, x_932.y, x_933.w);
        let x_935 : vec4<f32> = u_xlat9;
        let x_938 : vec2<f32> = u_xlat49;
        let x_940 : vec2<f32> = ((vec2<f32>(x_935.x, x_935.z) * vec2<f32>(0.5f, 0.5f)) + -(x_938));
        let x_941 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_944 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_944) + vec2<f32>(1.0f, 1.0f));
        let x_947 : vec2<f32> = u_xlat49;
        let x_949 : vec2<f32> = min(x_947, vec2<f32>(0.0f, 0.0f));
        let x_950 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat10;
        let x_955 : vec4<f32> = u_xlat10;
        let x_958 : vec2<f32> = u_xlat51;
        let x_959 : vec2<f32> = ((-(vec2<f32>(x_952.x, x_952.y)) * vec2<f32>(x_955.x, x_955.y)) + x_958);
        let x_960 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_962, vec2<f32>(0.0f, 0.0f));
        let x_964 : vec2<f32> = u_xlat49;
        let x_966 : vec2<f32> = u_xlat49;
        let x_968 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_964) * x_966) + vec2<f32>(x_968.y, x_968.w));
        let x_971 : vec4<f32> = u_xlat10;
        let x_973 : vec2<f32> = (vec2<f32>(x_971.x, x_971.y) + vec2<f32>(1.0f, 1.0f));
        let x_974 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_976 + vec2<f32>(1.0f, 1.0f));
        let x_978 : vec4<f32> = u_xlat9;
        let x_982 : vec2<f32> = (vec2<f32>(x_978.x, x_978.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_983 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_985 : vec2<f32> = u_xlat51;
        let x_986 : vec2<f32> = (x_985 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_987 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_986.x, x_986.y, x_987.z, x_987.w);
        let x_989 : vec4<f32> = u_xlat10;
        let x_991 : vec2<f32> = (vec2<f32>(x_989.x, x_989.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_992 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
        let x_994 : vec2<f32> = u_xlat49;
        let x_995 : vec2<f32> = (x_994 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_996 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_998.y, x_998.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1002 : f32 = u_xlat10.x;
        u_xlat11.z = x_1002;
        let x_1005 : f32 = u_xlat49.x;
        u_xlat11.w = x_1005;
        let x_1008 : f32 = u_xlat12.x;
        u_xlat9.z = x_1008;
        let x_1011 : f32 = u_xlat8.x;
        u_xlat9.w = x_1011;
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1015 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1013.z, x_1013.w, x_1013.x, x_1013.z) + vec4<f32>(x_1015.z, x_1015.w, x_1015.x, x_1015.z));
        let x_1019 : f32 = u_xlat11.y;
        u_xlat10.z = x_1019;
        let x_1022 : f32 = u_xlat49.y;
        u_xlat10.w = x_1022;
        let x_1025 : f32 = u_xlat9.y;
        u_xlat12.z = x_1025;
        let x_1028 : f32 = u_xlat8.z;
        u_xlat12.w = x_1028;
        let x_1030 : vec4<f32> = u_xlat10;
        let x_1032 : vec4<f32> = u_xlat12;
        let x_1034 : vec3<f32> = (vec3<f32>(x_1030.z, x_1030.y, x_1030.w) + vec3<f32>(x_1032.z, x_1032.y, x_1032.w));
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1039 : vec4<f32> = u_xlat13;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.z, x_1037.w) / vec3<f32>(x_1039.z, x_1039.w, x_1039.y));
        let x_1042 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1049 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.y, x_1044.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
        let x_1052 : vec4<f32> = u_xlat12;
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1052.z, x_1052.y, x_1052.w) / vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
        let x_1057 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat10;
        let x_1061 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1062 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat9;
        let x_1067 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1069 : vec3<f32> = (vec3<f32>(x_1064.y, x_1064.x, x_1064.z) * vec3<f32>(x_1067.x, x_1067.x, x_1067.x));
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat10;
        let x_1075 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1077 : vec3<f32> = (vec3<f32>(x_1072.x, x_1072.y, x_1072.z) * vec3<f32>(x_1075.y, x_1075.y, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
        let x_1081 : f32 = u_xlat10.x;
        u_xlat9.w = x_1081;
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1086 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y) * vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y)) + vec4<f32>(x_1089.y, x_1089.w, x_1089.x, x_1089.w));
        let x_1092 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1092.x, x_1092.y) * vec2<f32>(x_1095.x, x_1095.y)) + vec2<f32>(x_1098.z, x_1098.w));
        let x_1102 : f32 = u_xlat9.y;
        u_xlat10.w = x_1102;
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.y, x_1104.z);
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1105.x, x_1106.z, x_1105.y);
        let x_1108 : vec4<f32> = u_xlat7;
        let x_1111 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y) * vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y)) + vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1114.y));
        let x_1117 : vec4<f32> = u_xlat7;
        let x_1120 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.w, x_1123.y, x_1123.w, x_1123.z));
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1129 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y) * vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y)) + vec4<f32>(x_1132.x, x_1132.w, x_1132.z, x_1132.w));
        let x_1136 : vec4<f32> = u_xlat8;
        let x_1138 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1136.x, x_1136.x, x_1136.x, x_1136.y) * vec4<f32>(x_1138.z, x_1138.w, x_1138.y, x_1138.z));
        let x_1142 : vec4<f32> = u_xlat8;
        let x_1144 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1142.y, x_1142.y, x_1142.z, x_1142.z) * x_1144);
        let x_1148 : f32 = u_xlat8.z;
        let x_1150 : f32 = u_xlat13.y;
        u_xlat67 = (x_1148 * x_1150);
        let x_1153 : vec4<f32> = u_xlat11;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.x, x_1153.y);
        let x_1156 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1164 : vec3<f32> = txVec4;
        let x_1166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1164.xy, x_1164.z);
        u_xlat68 = x_1166;
        let x_1168 : vec4<f32> = u_xlat11;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.z, x_1168.w);
        let x_1171 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1179 : vec3<f32> = txVec5;
        let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1179.xy, x_1179.z);
        u_xlat69 = x_1181;
        let x_1182 : f32 = u_xlat69;
        let x_1184 : f32 = u_xlat14.y;
        u_xlat69 = (x_1182 * x_1184);
        let x_1187 : f32 = u_xlat14.x;
        let x_1188 : f32 = u_xlat68;
        let x_1190 : f32 = u_xlat69;
        u_xlat68 = ((x_1187 * x_1188) + x_1190);
        let x_1193 : vec2<f32> = u_xlat49;
        let x_1195 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
        let x_1202 : vec3<f32> = txVec6;
        let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1202.xy, x_1202.z);
        u_xlat69 = x_1204;
        let x_1206 : f32 = u_xlat14.z;
        let x_1207 : f32 = u_xlat69;
        let x_1209 : f32 = u_xlat68;
        u_xlat68 = ((x_1206 * x_1207) + x_1209);
        let x_1212 : vec4<f32> = u_xlat10;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.x, x_1212.y);
        let x_1215 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1222 : vec3<f32> = txVec7;
        let x_1224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1222.xy, x_1222.z);
        u_xlat69 = x_1224;
        let x_1226 : f32 = u_xlat14.w;
        let x_1227 : f32 = u_xlat69;
        let x_1229 : f32 = u_xlat68;
        u_xlat68 = ((x_1226 * x_1227) + x_1229);
        let x_1232 : vec4<f32> = u_xlat12;
        let x_1233 : vec2<f32> = vec2<f32>(x_1232.x, x_1232.y);
        let x_1235 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1233.x, x_1233.y, x_1235);
        let x_1242 : vec3<f32> = txVec8;
        let x_1244 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1242.xy, x_1242.z);
        u_xlat69 = x_1244;
        let x_1246 : f32 = u_xlat15.x;
        let x_1247 : f32 = u_xlat69;
        let x_1249 : f32 = u_xlat68;
        u_xlat68 = ((x_1246 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat12;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.z, x_1252.w);
        let x_1255 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec9;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1262.xy, x_1262.z);
        u_xlat69 = x_1264;
        let x_1266 : f32 = u_xlat15.y;
        let x_1267 : f32 = u_xlat69;
        let x_1269 : f32 = u_xlat68;
        u_xlat68 = ((x_1266 * x_1267) + x_1269);
        let x_1272 : vec4<f32> = u_xlat10;
        let x_1273 : vec2<f32> = vec2<f32>(x_1272.z, x_1272.w);
        let x_1275 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1273.x, x_1273.y, x_1275);
        let x_1282 : vec3<f32> = txVec10;
        let x_1284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1282.xy, x_1282.z);
        u_xlat69 = x_1284;
        let x_1286 : f32 = u_xlat15.z;
        let x_1287 : f32 = u_xlat69;
        let x_1289 : f32 = u_xlat68;
        u_xlat68 = ((x_1286 * x_1287) + x_1289);
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1293 : vec2<f32> = vec2<f32>(x_1292.x, x_1292.y);
        let x_1295 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1293.x, x_1293.y, x_1295);
        let x_1302 : vec3<f32> = txVec11;
        let x_1304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1302.xy, x_1302.z);
        u_xlat69 = x_1304;
        let x_1306 : f32 = u_xlat15.w;
        let x_1307 : f32 = u_xlat69;
        let x_1309 : f32 = u_xlat68;
        u_xlat68 = ((x_1306 * x_1307) + x_1309);
        let x_1312 : vec4<f32> = u_xlat9;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.z, x_1312.w);
        let x_1315 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1322 : vec3<f32> = txVec12;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1322.xy, x_1322.z);
        u_xlat69 = x_1324;
        let x_1325 : f32 = u_xlat67;
        let x_1326 : f32 = u_xlat69;
        let x_1328 : f32 = u_xlat68;
        u_xlat4.x = ((x_1325 * x_1326) + x_1328);
      } else {
        let x_1332 : vec4<f32> = vs_TEXCOORD8;
        let x_1335 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1338 : vec2<f32> = ((vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1335.z, x_1335.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1339 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
        let x_1341 : vec4<f32> = u_xlat7;
        let x_1343 : vec2<f32> = floor(vec2<f32>(x_1341.x, x_1341.y));
        let x_1344 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1343.x, x_1343.y, x_1344.z, x_1344.w);
        let x_1346 : vec4<f32> = vs_TEXCOORD8;
        let x_1349 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1346.x, x_1346.y) * vec2<f32>(x_1349.z, x_1349.w)) + -(vec2<f32>(x_1352.x, x_1352.y)));
        let x_1356 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1356.x, x_1356.x, x_1356.y, x_1356.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1359 : vec4<f32> = u_xlat8;
        let x_1361 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1359.x, x_1359.x, x_1359.z, x_1359.z) * vec4<f32>(x_1361.x, x_1361.x, x_1361.z, x_1361.z));
        let x_1364 : vec4<f32> = u_xlat9;
        let x_1368 : vec2<f32> = (vec2<f32>(x_1364.y, x_1364.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1369 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1369.x, x_1368.x, x_1369.z, x_1368.y);
        let x_1371 : vec4<f32> = u_xlat9;
        let x_1374 : vec2<f32> = u_xlat49;
        let x_1376 : vec2<f32> = ((vec2<f32>(x_1371.x, x_1371.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1374));
        let x_1377 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1376.x, x_1377.y, x_1376.y, x_1377.w);
        let x_1379 : vec2<f32> = u_xlat49;
        let x_1381 : vec2<f32> = (-(x_1379) + vec2<f32>(1.0f, 1.0f));
        let x_1382 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1384, vec2<f32>(0.0f, 0.0f));
        let x_1386 : vec2<f32> = u_xlat51;
        let x_1388 : vec2<f32> = u_xlat51;
        let x_1390 : vec4<f32> = u_xlat9;
        let x_1392 : vec2<f32> = ((-(x_1386) * x_1388) + vec2<f32>(x_1390.x, x_1390.y));
        let x_1393 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1392.x, x_1392.y, x_1393.z, x_1393.w);
        let x_1395 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1395, vec2<f32>(0.0f, 0.0f));
        let x_1398 : vec2<f32> = u_xlat51;
        let x_1400 : vec2<f32> = u_xlat51;
        let x_1402 : vec4<f32> = u_xlat8;
        let x_1404 : vec2<f32> = ((-(x_1398) * x_1400) + vec2<f32>(x_1402.y, x_1402.w));
        let x_1405 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1404.x, x_1405.y, x_1404.y);
        let x_1407 : vec4<f32> = u_xlat9;
        let x_1410 : vec2<f32> = (vec2<f32>(x_1407.x, x_1407.y) + vec2<f32>(2.0f, 2.0f));
        let x_1411 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1410.x, x_1410.y, x_1411.z, x_1411.w);
        let x_1413 : vec3<f32> = u_xlat29;
        let x_1415 : vec2<f32> = (vec2<f32>(x_1413.x, x_1413.z) + vec2<f32>(2.0f, 2.0f));
        let x_1416 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1416.x, x_1415.x, x_1416.z, x_1415.y);
        let x_1419 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1419 * 0.081632003f);
        let x_1423 : vec4<f32> = u_xlat8;
        let x_1426 : vec3<f32> = (vec3<f32>(x_1423.z, x_1423.x, x_1423.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1427 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
        let x_1429 : vec4<f32> = u_xlat9;
        let x_1432 : vec2<f32> = (vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1433 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1432.x, x_1432.y, x_1433.z, x_1433.w);
        let x_1436 : f32 = u_xlat12.y;
        u_xlat11.x = x_1436;
        let x_1438 : vec2<f32> = u_xlat49;
        let x_1445 : vec2<f32> = ((vec2<f32>(x_1438.x, x_1438.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1446 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1446.x, x_1445.x, x_1446.z, x_1445.y);
        let x_1448 : vec2<f32> = u_xlat49;
        let x_1452 : vec2<f32> = ((vec2<f32>(x_1448.x, x_1448.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1453 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1452.x, x_1453.y, x_1452.y, x_1453.w);
        let x_1456 : f32 = u_xlat8.x;
        u_xlat9.y = x_1456;
        let x_1459 : f32 = u_xlat10.y;
        u_xlat9.w = x_1459;
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1462 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1461 + x_1462);
        let x_1464 : vec2<f32> = u_xlat49;
        let x_1467 : vec2<f32> = ((vec2<f32>(x_1464.y, x_1464.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1468 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1468.x, x_1467.x, x_1468.z, x_1467.y);
        let x_1470 : vec2<f32> = u_xlat49;
        let x_1473 : vec2<f32> = ((vec2<f32>(x_1470.y, x_1470.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1474 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1473.x, x_1474.y, x_1473.y, x_1474.w);
        let x_1477 : f32 = u_xlat8.y;
        u_xlat10.y = x_1477;
        let x_1479 : vec4<f32> = u_xlat10;
        let x_1480 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1479 + x_1480);
        let x_1482 : vec4<f32> = u_xlat9;
        let x_1483 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1482 / x_1483);
        let x_1485 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1485 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1491 : vec4<f32> = u_xlat10;
        let x_1492 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1491 / x_1492);
        let x_1494 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1494 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1496 : vec4<f32> = u_xlat9;
        let x_1499 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1496.w, x_1496.x, x_1496.y, x_1496.z) * vec4<f32>(x_1499.x, x_1499.x, x_1499.x, x_1499.x));
        let x_1502 : vec4<f32> = u_xlat10;
        let x_1505 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1502.x, x_1502.w, x_1502.y, x_1502.z) * vec4<f32>(x_1505.y, x_1505.y, x_1505.y, x_1505.y));
        let x_1508 : vec4<f32> = u_xlat9;
        let x_1509 : vec3<f32> = vec3<f32>(x_1508.y, x_1508.z, x_1508.w);
        let x_1510 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1509.x, x_1510.y, x_1509.y, x_1509.z);
        let x_1513 : f32 = u_xlat10.x;
        u_xlat12.y = x_1513;
        let x_1515 : vec4<f32> = u_xlat7;
        let x_1518 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1521 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1515.x, x_1515.y, x_1515.x, x_1515.y) * vec4<f32>(x_1518.x, x_1518.y, x_1518.x, x_1518.y)) + vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1521.y));
        let x_1524 : vec4<f32> = u_xlat7;
        let x_1527 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1530 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1524.x, x_1524.y) * vec2<f32>(x_1527.x, x_1527.y)) + vec2<f32>(x_1530.w, x_1530.y));
        let x_1534 : f32 = u_xlat12.y;
        u_xlat9.y = x_1534;
        let x_1537 : f32 = u_xlat10.z;
        u_xlat12.y = x_1537;
        let x_1539 : vec4<f32> = u_xlat7;
        let x_1542 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1539.x, x_1539.y, x_1539.x, x_1539.y) * vec4<f32>(x_1542.x, x_1542.y, x_1542.x, x_1542.y)) + vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1545.y));
        let x_1548 : vec4<f32> = u_xlat7;
        let x_1551 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1554 : vec4<f32> = u_xlat12;
        let x_1556 : vec2<f32> = ((vec2<f32>(x_1548.x, x_1548.y) * vec2<f32>(x_1551.x, x_1551.y)) + vec2<f32>(x_1554.w, x_1554.y));
        let x_1557 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1556.x, x_1556.y, x_1557.z, x_1557.w);
        let x_1560 : f32 = u_xlat12.y;
        u_xlat9.z = x_1560;
        let x_1563 : vec4<f32> = u_xlat7;
        let x_1566 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1569 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1563.x, x_1563.y, x_1563.x, x_1563.y) * vec4<f32>(x_1566.x, x_1566.y, x_1566.x, x_1566.y)) + vec4<f32>(x_1569.x, x_1569.y, x_1569.x, x_1569.z));
        let x_1573 : f32 = u_xlat10.w;
        u_xlat12.y = x_1573;
        let x_1576 : vec4<f32> = u_xlat7;
        let x_1579 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1582 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.y) * vec4<f32>(x_1579.x, x_1579.y, x_1579.x, x_1579.y)) + vec4<f32>(x_1582.x, x_1582.y, x_1582.z, x_1582.y));
        let x_1586 : vec4<f32> = u_xlat7;
        let x_1589 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1592 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1589.x, x_1589.y)) + vec2<f32>(x_1592.w, x_1592.y));
        let x_1596 : f32 = u_xlat12.y;
        u_xlat9.w = x_1596;
        let x_1599 : vec4<f32> = u_xlat7;
        let x_1602 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1605 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1599.x, x_1599.y) * vec2<f32>(x_1602.x, x_1602.y)) + vec2<f32>(x_1605.x, x_1605.w));
        let x_1608 : vec4<f32> = u_xlat12;
        let x_1609 : vec3<f32> = vec3<f32>(x_1608.x, x_1608.z, x_1608.w);
        let x_1610 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1609.x, x_1610.y, x_1609.y, x_1609.z);
        let x_1612 : vec4<f32> = u_xlat7;
        let x_1615 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1618 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1612.x, x_1612.y, x_1612.x, x_1612.y) * vec4<f32>(x_1615.x, x_1615.y, x_1615.x, x_1615.y)) + vec4<f32>(x_1618.x, x_1618.y, x_1618.z, x_1618.y));
        let x_1622 : vec4<f32> = u_xlat7;
        let x_1625 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1628 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1622.x, x_1622.y) * vec2<f32>(x_1625.x, x_1625.y)) + vec2<f32>(x_1628.w, x_1628.y));
        let x_1632 : f32 = u_xlat9.x;
        u_xlat10.x = x_1632;
        let x_1634 : vec4<f32> = u_xlat7;
        let x_1637 : vec4<f32> = x_787.x_MainLightShadowmapSize;
        let x_1640 : vec4<f32> = u_xlat10;
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.x, x_1640.y));
        let x_1643 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1642.x, x_1642.y, x_1643.z, x_1643.w);
        let x_1646 : vec4<f32> = u_xlat8;
        let x_1648 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1646.x, x_1646.x, x_1646.x, x_1646.x) * x_1648);
        let x_1651 : vec4<f32> = u_xlat8;
        let x_1653 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1651.y, x_1651.y, x_1651.y, x_1651.y) * x_1653);
        let x_1656 : vec4<f32> = u_xlat8;
        let x_1658 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1656.z, x_1656.z, x_1656.z, x_1656.z) * x_1658);
        let x_1660 : vec4<f32> = u_xlat8;
        let x_1662 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1660.w, x_1660.w, x_1660.w, x_1660.w) * x_1662);
        let x_1665 : vec4<f32> = u_xlat13;
        let x_1666 : vec2<f32> = vec2<f32>(x_1665.x, x_1665.y);
        let x_1668 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec13;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
        u_xlat67 = x_1677;
        let x_1679 : vec4<f32> = u_xlat13;
        let x_1680 : vec2<f32> = vec2<f32>(x_1679.z, x_1679.w);
        let x_1682 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec14;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1689.xy, x_1689.z);
        u_xlat68 = x_1691;
        let x_1692 : f32 = u_xlat68;
        let x_1694 : f32 = u_xlat18.y;
        u_xlat68 = (x_1692 * x_1694);
        let x_1697 : f32 = u_xlat18.x;
        let x_1698 : f32 = u_xlat67;
        let x_1700 : f32 = u_xlat68;
        u_xlat67 = ((x_1697 * x_1698) + x_1700);
        let x_1703 : vec2<f32> = u_xlat49;
        let x_1705 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1703.x, x_1703.y, x_1705);
        let x_1712 : vec3<f32> = txVec15;
        let x_1714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1712.xy, x_1712.z);
        u_xlat68 = x_1714;
        let x_1716 : f32 = u_xlat18.z;
        let x_1717 : f32 = u_xlat68;
        let x_1719 : f32 = u_xlat67;
        u_xlat67 = ((x_1716 * x_1717) + x_1719);
        let x_1722 : vec4<f32> = u_xlat16;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.x, x_1722.y);
        let x_1725 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec16;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1732.xy, x_1732.z);
        u_xlat68 = x_1734;
        let x_1736 : f32 = u_xlat18.w;
        let x_1737 : f32 = u_xlat68;
        let x_1739 : f32 = u_xlat67;
        u_xlat67 = ((x_1736 * x_1737) + x_1739);
        let x_1742 : vec4<f32> = u_xlat14;
        let x_1743 : vec2<f32> = vec2<f32>(x_1742.x, x_1742.y);
        let x_1745 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1743.x, x_1743.y, x_1745);
        let x_1752 : vec3<f32> = txVec17;
        let x_1754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1752.xy, x_1752.z);
        u_xlat68 = x_1754;
        let x_1756 : f32 = u_xlat19.x;
        let x_1757 : f32 = u_xlat68;
        let x_1759 : f32 = u_xlat67;
        u_xlat67 = ((x_1756 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat14;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.z, x_1762.w);
        let x_1765 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec18;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1772.xy, x_1772.z);
        u_xlat68 = x_1774;
        let x_1776 : f32 = u_xlat19.y;
        let x_1777 : f32 = u_xlat68;
        let x_1779 : f32 = u_xlat67;
        u_xlat67 = ((x_1776 * x_1777) + x_1779);
        let x_1782 : vec4<f32> = u_xlat15;
        let x_1783 : vec2<f32> = vec2<f32>(x_1782.x, x_1782.y);
        let x_1785 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec19;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1792.xy, x_1792.z);
        u_xlat68 = x_1794;
        let x_1796 : f32 = u_xlat19.z;
        let x_1797 : f32 = u_xlat68;
        let x_1799 : f32 = u_xlat67;
        u_xlat67 = ((x_1796 * x_1797) + x_1799);
        let x_1802 : vec4<f32> = u_xlat16;
        let x_1803 : vec2<f32> = vec2<f32>(x_1802.z, x_1802.w);
        let x_1805 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1803.x, x_1803.y, x_1805);
        let x_1812 : vec3<f32> = txVec20;
        let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1812.xy, x_1812.z);
        u_xlat68 = x_1814;
        let x_1816 : f32 = u_xlat19.w;
        let x_1817 : f32 = u_xlat68;
        let x_1819 : f32 = u_xlat67;
        u_xlat67 = ((x_1816 * x_1817) + x_1819);
        let x_1822 : vec4<f32> = u_xlat17;
        let x_1823 : vec2<f32> = vec2<f32>(x_1822.x, x_1822.y);
        let x_1825 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1823.x, x_1823.y, x_1825);
        let x_1832 : vec3<f32> = txVec21;
        let x_1834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1832.xy, x_1832.z);
        u_xlat68 = x_1834;
        let x_1836 : f32 = u_xlat20.x;
        let x_1837 : f32 = u_xlat68;
        let x_1839 : f32 = u_xlat67;
        u_xlat67 = ((x_1836 * x_1837) + x_1839);
        let x_1842 : vec4<f32> = u_xlat17;
        let x_1843 : vec2<f32> = vec2<f32>(x_1842.z, x_1842.w);
        let x_1845 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1843.x, x_1843.y, x_1845);
        let x_1852 : vec3<f32> = txVec22;
        let x_1854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1852.xy, x_1852.z);
        u_xlat68 = x_1854;
        let x_1856 : f32 = u_xlat20.y;
        let x_1857 : f32 = u_xlat68;
        let x_1859 : f32 = u_xlat67;
        u_xlat67 = ((x_1856 * x_1857) + x_1859);
        let x_1862 : vec2<f32> = u_xlat30;
        let x_1864 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1862.x, x_1862.y, x_1864);
        let x_1871 : vec3<f32> = txVec23;
        let x_1873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1871.xy, x_1871.z);
        u_xlat68 = x_1873;
        let x_1875 : f32 = u_xlat20.z;
        let x_1876 : f32 = u_xlat68;
        let x_1878 : f32 = u_xlat67;
        u_xlat67 = ((x_1875 * x_1876) + x_1878);
        let x_1881 : vec2<f32> = u_xlat57;
        let x_1883 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec24;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1890.xy, x_1890.z);
        u_xlat68 = x_1892;
        let x_1894 : f32 = u_xlat20.w;
        let x_1895 : f32 = u_xlat68;
        let x_1897 : f32 = u_xlat67;
        u_xlat67 = ((x_1894 * x_1895) + x_1897);
        let x_1900 : vec4<f32> = u_xlat12;
        let x_1901 : vec2<f32> = vec2<f32>(x_1900.x, x_1900.y);
        let x_1903 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1901.x, x_1901.y, x_1903);
        let x_1910 : vec3<f32> = txVec25;
        let x_1912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1910.xy, x_1910.z);
        u_xlat68 = x_1912;
        let x_1914 : f32 = u_xlat8.x;
        let x_1915 : f32 = u_xlat68;
        let x_1917 : f32 = u_xlat67;
        u_xlat67 = ((x_1914 * x_1915) + x_1917);
        let x_1920 : vec4<f32> = u_xlat12;
        let x_1921 : vec2<f32> = vec2<f32>(x_1920.z, x_1920.w);
        let x_1923 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
        let x_1930 : vec3<f32> = txVec26;
        let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1930.xy, x_1930.z);
        u_xlat68 = x_1932;
        let x_1934 : f32 = u_xlat8.y;
        let x_1935 : f32 = u_xlat68;
        let x_1937 : f32 = u_xlat67;
        u_xlat67 = ((x_1934 * x_1935) + x_1937);
        let x_1940 : vec2<f32> = u_xlat52;
        let x_1942 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1940.x, x_1940.y, x_1942);
        let x_1949 : vec3<f32> = txVec27;
        let x_1951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1949.xy, x_1949.z);
        u_xlat68 = x_1951;
        let x_1953 : f32 = u_xlat8.z;
        let x_1954 : f32 = u_xlat68;
        let x_1956 : f32 = u_xlat67;
        u_xlat67 = ((x_1953 * x_1954) + x_1956);
        let x_1959 : vec4<f32> = u_xlat7;
        let x_1960 : vec2<f32> = vec2<f32>(x_1959.x, x_1959.y);
        let x_1962 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1960.x, x_1960.y, x_1962);
        let x_1969 : vec3<f32> = txVec28;
        let x_1971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1969.xy, x_1969.z);
        u_xlat68 = x_1971;
        let x_1973 : f32 = u_xlat8.w;
        let x_1974 : f32 = u_xlat68;
        let x_1976 : f32 = u_xlat67;
        u_xlat4.x = ((x_1973 * x_1974) + x_1976);
      }
    }
  } else {
    let x_1981 : vec4<f32> = vs_TEXCOORD8;
    let x_1982 : vec2<f32> = vec2<f32>(x_1981.x, x_1981.y);
    let x_1984 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1982.x, x_1982.y, x_1984);
    let x_1991 : vec3<f32> = txVec29;
    let x_1993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1991.xy, x_1991.z);
    u_xlat4.x = x_1993;
  }
  let x_1996 : f32 = x_787.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_1996) + 1.0f);
  let x_2000 : f32 = u_xlat4.x;
  let x_2002 : f32 = x_787.x_MainLightShadowParams.x;
  let x_2004 : f32 = u_xlat67;
  u_xlat4.x = ((x_2000 * x_2002) + x_2004);
  let x_2008 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (0.0f >= x_2008);
  let x_2012 : f32 = vs_TEXCOORD8.z;
  u_xlatb68 = (x_2012 >= 1.0f);
  let x_2014 : bool = u_xlatb67;
  let x_2015 : bool = u_xlatb68;
  u_xlatb67 = (x_2014 | x_2015);
  let x_2017 : bool = u_xlatb67;
  if (x_2017) {
    x_2018 = 1.0f;
  } else {
    let x_2023 : f32 = u_xlat4.x;
    x_2018 = x_2023;
  }
  let x_2024 : f32 = x_2018;
  u_xlat4.x = x_2024;
  let x_2026 : vec3<f32> = vs_TEXCOORD7;
  let x_2028 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2030 : vec3<f32> = (x_2026 + -(x_2028));
  let x_2031 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
  let x_2033 : vec4<f32> = u_xlat7;
  let x_2035 : vec4<f32> = u_xlat7;
  u_xlat67 = dot(vec3<f32>(x_2033.x, x_2033.y, x_2033.z), vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
  let x_2038 : f32 = u_xlat67;
  let x_2040 : f32 = x_787.x_MainLightShadowParams.z;
  let x_2043 : f32 = x_787.x_MainLightShadowParams.w;
  u_xlat67 = ((x_2038 * x_2040) + x_2043);
  let x_2045 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2045, 0.0f, 1.0f);
  let x_2048 : f32 = u_xlat4.x;
  u_xlat68 = (-(x_2048) + 1.0f);
  let x_2051 : f32 = u_xlat67;
  let x_2052 : f32 = u_xlat68;
  let x_2055 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2051 * x_2052) + x_2055);
  let x_2064 : f32 = x_2062.x_MainLightCookieTextureFormat;
  u_xlatb67 = !((x_2064 == -1.0f));
  let x_2066 : bool = u_xlatb67;
  if (x_2066) {
    let x_2069 : vec3<f32> = vs_TEXCOORD7;
    let x_2072 : vec4<f32> = x_2062.x_MainLightWorldToLight[1i];
    let x_2074 : vec2<f32> = (vec2<f32>(x_2069.y, x_2069.y) * vec2<f32>(x_2072.x, x_2072.y));
    let x_2075 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2074.x, x_2074.y, x_2075.z, x_2075.w);
    let x_2078 : vec4<f32> = x_2062.x_MainLightWorldToLight[0i];
    let x_2080 : vec3<f32> = vs_TEXCOORD7;
    let x_2083 : vec4<f32> = u_xlat7;
    let x_2085 : vec2<f32> = ((vec2<f32>(x_2078.x, x_2078.y) * vec2<f32>(x_2080.x, x_2080.x)) + vec2<f32>(x_2083.x, x_2083.y));
    let x_2086 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2085.x, x_2085.y, x_2086.z, x_2086.w);
    let x_2089 : vec4<f32> = x_2062.x_MainLightWorldToLight[2i];
    let x_2091 : vec3<f32> = vs_TEXCOORD7;
    let x_2094 : vec4<f32> = u_xlat7;
    let x_2096 : vec2<f32> = ((vec2<f32>(x_2089.x, x_2089.y) * vec2<f32>(x_2091.z, x_2091.z)) + vec2<f32>(x_2094.x, x_2094.y));
    let x_2097 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2096.x, x_2096.y, x_2097.z, x_2097.w);
    let x_2099 : vec4<f32> = u_xlat7;
    let x_2102 : vec4<f32> = x_2062.x_MainLightWorldToLight[3i];
    let x_2104 : vec2<f32> = (vec2<f32>(x_2099.x, x_2099.y) + vec2<f32>(x_2102.x, x_2102.y));
    let x_2105 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2104.x, x_2104.y, x_2105.z, x_2105.w);
    let x_2107 : vec4<f32> = u_xlat7;
    let x_2110 : vec2<f32> = ((vec2<f32>(x_2107.x, x_2107.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2111 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2110.x, x_2110.y, x_2111.z, x_2111.w);
    let x_2118 : vec4<f32> = u_xlat7;
    let x_2121 : f32 = x_126.x_GlobalMipBias.x;
    let x_2122 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2118.x, x_2118.y), x_2121);
    u_xlat7 = x_2122;
    let x_2127 : f32 = x_2062.x_MainLightCookieTextureFormat;
    let x_2129 : f32 = x_2062.x_MainLightCookieTextureFormat;
    let x_2131 : f32 = x_2062.x_MainLightCookieTextureFormat;
    let x_2133 : f32 = x_2062.x_MainLightCookieTextureFormat;
    let x_2134 : vec4<f32> = vec4<f32>(x_2127, x_2129, x_2131, x_2133);
    let x_2141 : vec4<bool> = (vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2134.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2141.x, x_2141.y);
    let x_2144 : bool = u_xlatb8.y;
    if (x_2144) {
      let x_2149 : f32 = u_xlat7.w;
      x_2145 = x_2149;
    } else {
      let x_2152 : f32 = u_xlat7.x;
      x_2145 = x_2152;
    }
    let x_2153 : f32 = x_2145;
    u_xlat67 = x_2153;
    let x_2155 : bool = u_xlatb8.x;
    if (x_2155) {
      let x_2159 : vec4<f32> = u_xlat7;
      x_2156 = vec3<f32>(x_2159.x, x_2159.y, x_2159.z);
    } else {
      let x_2162 : f32 = u_xlat67;
      x_2156 = vec3<f32>(x_2162, x_2162, x_2162);
    }
    let x_2164 : vec3<f32> = x_2156;
    let x_2165 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2164.x, x_2164.y, x_2164.z, x_2165.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2171 : vec4<f32> = u_xlat7;
  let x_2174 : vec4<f32> = x_126.x_MainLightColor;
  let x_2176 : vec3<f32> = (vec3<f32>(x_2171.x, x_2171.y, x_2171.z) * vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
  let x_2177 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  let x_2179 : f32 = u_xlat46;
  let x_2181 : vec4<f32> = u_xlat7;
  let x_2183 : vec3<f32> = (vec3<f32>(x_2179, x_2179, x_2179) * vec3<f32>(x_2181.x, x_2181.y, x_2181.z));
  let x_2184 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
  let x_2186 : vec4<f32> = u_xlat1;
  let x_2189 : vec3<f32> = u_xlat2;
  u_xlat67 = dot(-(vec3<f32>(x_2186.x, x_2186.y, x_2186.z)), x_2189);
  let x_2191 : f32 = u_xlat67;
  let x_2192 : f32 = u_xlat67;
  u_xlat67 = (x_2191 + x_2192);
  let x_2194 : vec3<f32> = u_xlat2;
  let x_2195 : f32 = u_xlat67;
  let x_2199 : vec4<f32> = u_xlat1;
  let x_2202 : vec3<f32> = ((x_2194 * -(vec3<f32>(x_2195, x_2195, x_2195))) + -(vec3<f32>(x_2199.x, x_2199.y, x_2199.z)));
  let x_2203 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
  let x_2205 : vec3<f32> = u_xlat2;
  let x_2206 : vec4<f32> = u_xlat1;
  u_xlat67 = dot(x_2205, vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2209, 0.0f, 1.0f);
  let x_2211 : f32 = u_xlat67;
  u_xlat67 = (-(x_2211) + 1.0f);
  let x_2214 : f32 = u_xlat67;
  let x_2215 : f32 = u_xlat67;
  u_xlat67 = (x_2214 * x_2215);
  let x_2217 : f32 = u_xlat67;
  let x_2218 : f32 = u_xlat67;
  u_xlat67 = (x_2217 * x_2218);
  let x_2221 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_2221) * 0.699999988f) + 1.700000048f);
  let x_2228 : f32 = u_xlat0.x;
  let x_2229 : f32 = u_xlat68;
  u_xlat0.x = (x_2228 * x_2229);
  let x_2233 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2233 * 6.0f);
  let x_2245 : vec4<f32> = u_xlat8;
  let x_2248 : f32 = u_xlat0.x;
  let x_2249 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2245.x, x_2245.y, x_2245.z), x_2248);
  u_xlat8 = x_2249;
  let x_2251 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2251 + -1.0f);
  let x_2259 : f32 = x_2257.unity_SpecCube0_HDR.w;
  let x_2261 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2259 * x_2261) + 1.0f);
  let x_2266 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2266, 0.0f);
  let x_2270 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2270);
  let x_2274 : f32 = u_xlat0.x;
  let x_2276 : f32 = x_2257.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2274 * x_2276);
  let x_2280 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2280);
  let x_2284 : f32 = u_xlat0.x;
  let x_2286 : f32 = x_2257.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2284 * x_2286);
  let x_2289 : vec4<f32> = u_xlat8;
  let x_2291 : vec3<f32> = u_xlat0;
  let x_2293 : vec3<f32> = (vec3<f32>(x_2289.x, x_2289.y, x_2289.z) * vec3<f32>(x_2291.x, x_2291.x, x_2291.x));
  let x_2294 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
  let x_2296 : f32 = u_xlat42;
  let x_2298 : f32 = u_xlat42;
  let x_2302 : vec2<f32> = ((vec2<f32>(x_2296, x_2296) * vec2<f32>(x_2298, x_2298)) + vec2<f32>(-1.0f, 1.0f));
  let x_2303 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2302.x, x_2303.y, x_2302.y);
  let x_2306 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2306);
  let x_2308 : vec4<f32> = u_xlat5;
  let x_2311 : f32 = u_xlat66;
  let x_2313 : vec3<f32> = (-(vec3<f32>(x_2308.x, x_2308.y, x_2308.z)) + vec3<f32>(x_2311, x_2311, x_2311));
  let x_2314 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
  let x_2316 : f32 = u_xlat67;
  let x_2318 : vec4<f32> = u_xlat9;
  let x_2321 : vec4<f32> = u_xlat5;
  let x_2323 : vec3<f32> = ((vec3<f32>(x_2316, x_2316, x_2316) * vec3<f32>(x_2318.x, x_2318.y, x_2318.z)) + vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
  let x_2324 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
  let x_2326 : f32 = u_xlat42;
  let x_2328 : vec4<f32> = u_xlat9;
  let x_2330 : vec3<f32> = (vec3<f32>(x_2326, x_2326, x_2326) * vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
  let x_2331 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
  let x_2333 : vec4<f32> = u_xlat8;
  let x_2335 : vec4<f32> = u_xlat9;
  let x_2337 : vec3<f32> = (vec3<f32>(x_2333.x, x_2333.y, x_2333.z) * vec3<f32>(x_2335.x, x_2335.y, x_2335.z));
  let x_2338 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
  let x_2340 : vec4<f32> = u_xlat3;
  let x_2342 : vec4<f32> = u_xlat6;
  let x_2345 : vec4<f32> = u_xlat8;
  let x_2347 : vec3<f32> = ((vec3<f32>(x_2340.x, x_2340.y, x_2340.z) * vec3<f32>(x_2342.x, x_2342.y, x_2342.z)) + vec3<f32>(x_2345.x, x_2345.y, x_2345.z));
  let x_2348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
  let x_2351 : f32 = u_xlat4.x;
  let x_2353 : f32 = x_2257.unity_LightData.z;
  u_xlat42 = (x_2351 * x_2353);
  let x_2355 : vec3<f32> = u_xlat2;
  let x_2357 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat66 = dot(x_2355, vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
  let x_2360 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2360, 0.0f, 1.0f);
  let x_2362 : f32 = u_xlat42;
  let x_2363 : f32 = u_xlat66;
  u_xlat42 = (x_2362 * x_2363);
  let x_2365 : f32 = u_xlat42;
  let x_2367 : vec4<f32> = u_xlat7;
  let x_2369 : vec3<f32> = (vec3<f32>(x_2365, x_2365, x_2365) * vec3<f32>(x_2367.x, x_2367.y, x_2367.z));
  let x_2370 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
  let x_2372 : vec4<f32> = u_xlat1;
  let x_2375 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2377 : vec3<f32> = (vec3<f32>(x_2372.x, x_2372.y, x_2372.z) + vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
  let x_2378 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
  let x_2380 : vec4<f32> = u_xlat8;
  let x_2382 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2380.x, x_2380.y, x_2380.z), vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
  let x_2385 : f32 = u_xlat42;
  u_xlat42 = max(x_2385, 1.17549435e-37f);
  let x_2388 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2388);
  let x_2390 : f32 = u_xlat42;
  let x_2392 : vec4<f32> = u_xlat8;
  let x_2394 : vec3<f32> = (vec3<f32>(x_2390, x_2390, x_2390) * vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
  let x_2395 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
  let x_2397 : vec3<f32> = u_xlat2;
  let x_2398 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_2397, vec3<f32>(x_2398.x, x_2398.y, x_2398.z));
  let x_2401 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2401, 0.0f, 1.0f);
  let x_2404 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2406 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_2404.x, x_2404.y, x_2404.z), vec3<f32>(x_2406.x, x_2406.y, x_2406.z));
  let x_2409 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2409, 0.0f, 1.0f);
  let x_2411 : f32 = u_xlat42;
  let x_2412 : f32 = u_xlat42;
  u_xlat42 = (x_2411 * x_2412);
  let x_2414 : f32 = u_xlat42;
  let x_2416 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2414 * x_2416) + 1.000010014f);
  let x_2420 : f32 = u_xlat66;
  let x_2421 : f32 = u_xlat66;
  u_xlat66 = (x_2420 * x_2421);
  let x_2423 : f32 = u_xlat42;
  let x_2424 : f32 = u_xlat42;
  u_xlat42 = (x_2423 * x_2424);
  let x_2426 : f32 = u_xlat66;
  u_xlat66 = max(x_2426, 0.100000001f);
  let x_2429 : f32 = u_xlat42;
  let x_2430 : f32 = u_xlat66;
  u_xlat42 = (x_2429 * x_2430);
  let x_2432 : f32 = u_xlat25;
  let x_2433 : f32 = u_xlat42;
  u_xlat42 = (x_2432 * x_2433);
  let x_2435 : f32 = u_xlat65;
  let x_2436 : f32 = u_xlat42;
  u_xlat42 = (x_2435 / x_2436);
  let x_2438 : vec4<f32> = u_xlat5;
  let x_2440 : f32 = u_xlat42;
  let x_2443 : vec4<f32> = u_xlat6;
  let x_2445 : vec3<f32> = ((vec3<f32>(x_2438.x, x_2438.y, x_2438.z) * vec3<f32>(x_2440, x_2440, x_2440)) + vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
  let x_2446 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2445.x, x_2445.y, x_2445.z, x_2446.w);
  let x_2448 : vec4<f32> = u_xlat7;
  let x_2450 : vec4<f32> = u_xlat8;
  let x_2452 : vec3<f32> = (vec3<f32>(x_2448.x, x_2448.y, x_2448.z) * vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2453 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  let x_2456 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2458 : f32 = x_2257.unity_LightData.y;
  u_xlat42 = min(x_2456, x_2458);
  let x_2462 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2462));
  let x_2466 : f32 = x_2062.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2468 : f32 = x_2062.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2470 : f32 = x_2062.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2472 : f32 = x_2062.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2473 : vec4<f32> = vec4<f32>(x_2466, x_2468, x_2470, x_2472);
  let x_2480 : vec4<bool> = (vec4<f32>(x_2473.x, x_2473.y, x_2473.z, x_2473.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2481 : vec2<bool> = vec2<bool>(x_2480.x, x_2480.w);
  let x_2482 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_2481.x, x_2482.y, x_2482.z, x_2481.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2493 : u32 = u_xlatu_loop_1;
    let x_2494 : u32 = u_xlatu42;
    if ((x_2493 < x_2494)) {
    } else {
      break;
    }
    let x_2497 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2497 >> 2u);
    let x_2501 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2501 & 3u));
    let x_2504 : u32 = u_xlatu68;
    let x_2507 : vec4<f32> = x_2257.unity_LightIndices[bitcast<i32>(x_2504)];
    let x_2517 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2522 : vec4<u32> = indexable[x_2517];
    u_xlat68 = dot(x_2507, bitcast<vec4<f32>>(x_2522));
    let x_2525 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2525));
    let x_2528 : vec3<f32> = vs_TEXCOORD7;
    let x_2540 : u32 = u_xlatu68;
    let x_2543 : vec4<f32> = x_2539.x_AdditionalLightsPosition[bitcast<i32>(x_2540)];
    let x_2546 : u32 = u_xlatu68;
    let x_2549 : vec4<f32> = x_2539.x_AdditionalLightsPosition[bitcast<i32>(x_2546)];
    let x_2551 : vec3<f32> = ((-(x_2528) * vec3<f32>(x_2543.w, x_2543.w, x_2543.w)) + vec3<f32>(x_2549.x, x_2549.y, x_2549.z));
    let x_2552 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2551.x, x_2551.y, x_2551.z, x_2552.w);
    let x_2554 : vec4<f32> = u_xlat9;
    let x_2556 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2554.x, x_2554.y, x_2554.z), vec3<f32>(x_2556.x, x_2556.y, x_2556.z));
    let x_2559 : f32 = u_xlat69;
    u_xlat69 = max(x_2559, 6.10351562e-05f);
    let x_2562 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2562);
    let x_2564 : f32 = u_xlat70;
    let x_2566 : vec4<f32> = u_xlat9;
    let x_2568 : vec3<f32> = (vec3<f32>(x_2564, x_2564, x_2564) * vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
    let x_2569 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
    let x_2572 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2572);
    let x_2574 : f32 = u_xlat69;
    let x_2575 : u32 = u_xlatu68;
    let x_2578 : f32 = x_2539.x_AdditionalLightsAttenuation[bitcast<i32>(x_2575)].x;
    u_xlat69 = (x_2574 * x_2578);
    let x_2580 : f32 = u_xlat69;
    let x_2582 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2580) * x_2582) + 1.0f);
    let x_2585 : f32 = u_xlat69;
    u_xlat69 = max(x_2585, 0.0f);
    let x_2587 : f32 = u_xlat69;
    let x_2588 : f32 = u_xlat69;
    u_xlat69 = (x_2587 * x_2588);
    let x_2590 : f32 = u_xlat69;
    let x_2591 : f32 = u_xlat71;
    u_xlat69 = (x_2590 * x_2591);
    let x_2593 : u32 = u_xlatu68;
    let x_2596 : vec4<f32> = x_2539.x_AdditionalLightsSpotDir[bitcast<i32>(x_2593)];
    let x_2598 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(vec3<f32>(x_2596.x, x_2596.y, x_2596.z), vec3<f32>(x_2598.x, x_2598.y, x_2598.z));
    let x_2601 : f32 = u_xlat71;
    let x_2602 : u32 = u_xlatu68;
    let x_2605 : f32 = x_2539.x_AdditionalLightsAttenuation[bitcast<i32>(x_2602)].z;
    let x_2607 : u32 = u_xlatu68;
    let x_2610 : f32 = x_2539.x_AdditionalLightsAttenuation[bitcast<i32>(x_2607)].w;
    u_xlat71 = ((x_2601 * x_2605) + x_2610);
    let x_2612 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2612, 0.0f, 1.0f);
    let x_2614 : f32 = u_xlat71;
    let x_2615 : f32 = u_xlat71;
    u_xlat71 = (x_2614 * x_2615);
    let x_2617 : f32 = u_xlat69;
    let x_2618 : f32 = u_xlat71;
    u_xlat69 = (x_2617 * x_2618);
    let x_2621 : u32 = u_xlatu68;
    u_xlatu71 = (x_2621 >> 5u);
    let x_2624 : u32 = u_xlatu68;
    u_xlati72 = (1i << bitcast<u32>((bitcast<i32>(x_2624) & 31i)));
    let x_2629 : i32 = u_xlati72;
    let x_2631 : u32 = u_xlatu71;
    let x_2634 : f32 = x_2062.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2631)].el;
    u_xlati71 = bitcast<i32>((bitcast<u32>(x_2629) & bitcast<u32>(x_2634)));
    let x_2638 : i32 = u_xlati71;
    if ((x_2638 != 0i)) {
      let x_2648 : u32 = u_xlatu68;
      let x_2651 : f32 = x_2647.x_AdditionalLightsLightTypes[bitcast<i32>(x_2648)].el;
      u_xlati71 = i32(x_2651);
      let x_2653 : i32 = u_xlati71;
      u_xlati72 = select(1i, 0i, (x_2653 != 0i));
      let x_2657 : u32 = u_xlatu68;
      u_xlati73 = (bitcast<i32>(x_2657) << bitcast<u32>(2i));
      let x_2660 : i32 = u_xlati72;
      if ((x_2660 != 0i)) {
        let x_2664 : vec3<f32> = vs_TEXCOORD7;
        let x_2666 : i32 = u_xlati73;
        let x_2669 : i32 = u_xlati73;
        let x_2673 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[((x_2666 + 1i) / 4i)][((x_2669 + 1i) % 4i)];
        let x_2675 : vec3<f32> = (vec3<f32>(x_2664.y, x_2664.y, x_2664.y) * vec3<f32>(x_2673.x, x_2673.y, x_2673.w));
        let x_2676 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
        let x_2678 : i32 = u_xlati73;
        let x_2680 : i32 = u_xlati73;
        let x_2683 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[(x_2678 / 4i)][(x_2680 % 4i)];
        let x_2685 : vec3<f32> = vs_TEXCOORD7;
        let x_2688 : vec4<f32> = u_xlat11;
        let x_2690 : vec3<f32> = ((vec3<f32>(x_2683.x, x_2683.y, x_2683.w) * vec3<f32>(x_2685.x, x_2685.x, x_2685.x)) + vec3<f32>(x_2688.x, x_2688.y, x_2688.z));
        let x_2691 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2690.x, x_2690.y, x_2690.z, x_2691.w);
        let x_2693 : i32 = u_xlati73;
        let x_2696 : i32 = u_xlati73;
        let x_2700 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[((x_2693 + 2i) / 4i)][((x_2696 + 2i) % 4i)];
        let x_2702 : vec3<f32> = vs_TEXCOORD7;
        let x_2705 : vec4<f32> = u_xlat11;
        let x_2707 : vec3<f32> = ((vec3<f32>(x_2700.x, x_2700.y, x_2700.w) * vec3<f32>(x_2702.z, x_2702.z, x_2702.z)) + vec3<f32>(x_2705.x, x_2705.y, x_2705.z));
        let x_2708 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
        let x_2710 : vec4<f32> = u_xlat11;
        let x_2712 : i32 = u_xlati73;
        let x_2715 : i32 = u_xlati73;
        let x_2719 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[((x_2712 + 3i) / 4i)][((x_2715 + 3i) % 4i)];
        let x_2721 : vec3<f32> = (vec3<f32>(x_2710.x, x_2710.y, x_2710.z) + vec3<f32>(x_2719.x, x_2719.y, x_2719.w));
        let x_2722 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2721.x, x_2721.y, x_2721.z, x_2722.w);
        let x_2724 : vec4<f32> = u_xlat11;
        let x_2726 : vec4<f32> = u_xlat11;
        let x_2728 : vec2<f32> = (vec2<f32>(x_2724.x, x_2724.y) / vec2<f32>(x_2726.z, x_2726.z));
        let x_2729 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2728.x, x_2728.y, x_2729.z, x_2729.w);
        let x_2731 : vec4<f32> = u_xlat11;
        let x_2734 : vec2<f32> = ((vec2<f32>(x_2731.x, x_2731.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2735 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2734.x, x_2734.y, x_2735.z, x_2735.w);
        let x_2737 : vec4<f32> = u_xlat11;
        let x_2741 : vec2<f32> = clamp(vec2<f32>(x_2737.x, x_2737.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2742 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2741.x, x_2741.y, x_2742.z, x_2742.w);
        let x_2744 : u32 = u_xlatu68;
        let x_2747 : vec4<f32> = x_2647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2744)];
        let x_2749 : vec4<f32> = u_xlat11;
        let x_2752 : u32 = u_xlatu68;
        let x_2755 : vec4<f32> = x_2647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2752)];
        let x_2757 : vec2<f32> = ((vec2<f32>(x_2747.x, x_2747.y) * vec2<f32>(x_2749.x, x_2749.y)) + vec2<f32>(x_2755.z, x_2755.w));
        let x_2758 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2757.x, x_2757.y, x_2758.z, x_2758.w);
      } else {
        let x_2762 : i32 = u_xlati71;
        u_xlatb71 = (x_2762 == 1i);
        let x_2764 : bool = u_xlatb71;
        u_xlati71 = select(0i, 1i, x_2764);
        let x_2766 : i32 = u_xlati71;
        if ((x_2766 != 0i)) {
          let x_2771 : vec3<f32> = vs_TEXCOORD7;
          let x_2773 : i32 = u_xlati73;
          let x_2776 : i32 = u_xlati73;
          let x_2780 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[((x_2773 + 1i) / 4i)][((x_2776 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2771.y, x_2771.y) * vec2<f32>(x_2780.x, x_2780.y));
          let x_2783 : i32 = u_xlati73;
          let x_2785 : i32 = u_xlati73;
          let x_2788 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[(x_2783 / 4i)][(x_2785 % 4i)];
          let x_2790 : vec3<f32> = vs_TEXCOORD7;
          let x_2793 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2788.x, x_2788.y) * vec2<f32>(x_2790.x, x_2790.x)) + x_2793);
          let x_2795 : i32 = u_xlati73;
          let x_2798 : i32 = u_xlati73;
          let x_2802 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[((x_2795 + 2i) / 4i)][((x_2798 + 2i) % 4i)];
          let x_2804 : vec3<f32> = vs_TEXCOORD7;
          let x_2807 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2802.x, x_2802.y) * vec2<f32>(x_2804.z, x_2804.z)) + x_2807);
          let x_2809 : vec2<f32> = u_xlat53;
          let x_2810 : i32 = u_xlati73;
          let x_2813 : i32 = u_xlati73;
          let x_2817 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[((x_2810 + 3i) / 4i)][((x_2813 + 3i) % 4i)];
          u_xlat53 = (x_2809 + vec2<f32>(x_2817.x, x_2817.y));
          let x_2820 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2820 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2823 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2823);
          let x_2825 : u32 = u_xlatu68;
          let x_2828 : vec4<f32> = x_2647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2825)];
          let x_2830 : vec2<f32> = u_xlat53;
          let x_2832 : u32 = u_xlatu68;
          let x_2835 : vec4<f32> = x_2647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2832)];
          let x_2837 : vec2<f32> = ((vec2<f32>(x_2828.x, x_2828.y) * x_2830) + vec2<f32>(x_2835.z, x_2835.w));
          let x_2838 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2837.x, x_2837.y, x_2838.z, x_2838.w);
        } else {
          let x_2841 : vec3<f32> = vs_TEXCOORD7;
          let x_2843 : i32 = u_xlati73;
          let x_2846 : i32 = u_xlati73;
          let x_2850 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[((x_2843 + 1i) / 4i)][((x_2846 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2841.y, x_2841.y, x_2841.y, x_2841.y) * x_2850);
          let x_2852 : i32 = u_xlati73;
          let x_2854 : i32 = u_xlati73;
          let x_2857 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[(x_2852 / 4i)][(x_2854 % 4i)];
          let x_2858 : vec3<f32> = vs_TEXCOORD7;
          let x_2861 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2857 * vec4<f32>(x_2858.x, x_2858.x, x_2858.x, x_2858.x)) + x_2861);
          let x_2863 : i32 = u_xlati73;
          let x_2866 : i32 = u_xlati73;
          let x_2870 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[((x_2863 + 2i) / 4i)][((x_2866 + 2i) % 4i)];
          let x_2871 : vec3<f32> = vs_TEXCOORD7;
          let x_2874 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2870 * vec4<f32>(x_2871.z, x_2871.z, x_2871.z, x_2871.z)) + x_2874);
          let x_2876 : vec4<f32> = u_xlat12;
          let x_2877 : i32 = u_xlati73;
          let x_2880 : i32 = u_xlati73;
          let x_2884 : vec4<f32> = x_2647.x_AdditionalLightsWorldToLights[((x_2877 + 3i) / 4i)][((x_2880 + 3i) % 4i)];
          u_xlat12 = (x_2876 + x_2884);
          let x_2886 : vec4<f32> = u_xlat12;
          let x_2888 : vec4<f32> = u_xlat12;
          let x_2890 : vec3<f32> = (vec3<f32>(x_2886.x, x_2886.y, x_2886.z) / vec3<f32>(x_2888.w, x_2888.w, x_2888.w));
          let x_2891 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2891.w);
          let x_2893 : vec4<f32> = u_xlat12;
          let x_2895 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(vec3<f32>(x_2893.x, x_2893.y, x_2893.z), vec3<f32>(x_2895.x, x_2895.y, x_2895.z));
          let x_2898 : f32 = u_xlat71;
          u_xlat71 = inverseSqrt(x_2898);
          let x_2900 : f32 = u_xlat71;
          let x_2902 : vec4<f32> = u_xlat12;
          let x_2904 : vec3<f32> = (vec3<f32>(x_2900, x_2900, x_2900) * vec3<f32>(x_2902.x, x_2902.y, x_2902.z));
          let x_2905 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2904.x, x_2904.y, x_2904.z, x_2905.w);
          let x_2907 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(abs(vec3<f32>(x_2907.x, x_2907.y, x_2907.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2912 : f32 = u_xlat71;
          u_xlat71 = max(x_2912, 0.000001f);
          let x_2915 : f32 = u_xlat71;
          u_xlat71 = (1.0f / x_2915);
          let x_2917 : f32 = u_xlat71;
          let x_2919 : vec4<f32> = u_xlat12;
          let x_2921 : vec3<f32> = (vec3<f32>(x_2917, x_2917, x_2917) * vec3<f32>(x_2919.z, x_2919.x, x_2919.y));
          let x_2922 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2921.x, x_2921.y, x_2921.z, x_2922.w);
          let x_2925 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2925);
          let x_2929 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2929, 0.0f, 1.0f);
          let x_2933 : vec4<f32> = u_xlat13;
          let x_2936 : vec4<bool> = (vec4<f32>(x_2933.y, x_2933.z, x_2933.y, x_2933.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2936.x, x_2936.y);
          let x_2939 : bool = u_xlatb53.x;
          if (x_2939) {
            let x_2944 : f32 = u_xlat13.x;
            x_2940 = x_2944;
          } else {
            let x_2947 : f32 = u_xlat13.x;
            x_2940 = -(x_2947);
          }
          let x_2949 : f32 = x_2940;
          u_xlat53.x = x_2949;
          let x_2952 : bool = u_xlatb53.y;
          if (x_2952) {
            let x_2957 : f32 = u_xlat13.x;
            x_2953 = x_2957;
          } else {
            let x_2960 : f32 = u_xlat13.x;
            x_2953 = -(x_2960);
          }
          let x_2962 : f32 = x_2953;
          u_xlat53.y = x_2962;
          let x_2964 : vec4<f32> = u_xlat12;
          let x_2966 : f32 = u_xlat71;
          let x_2969 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2964.x, x_2964.y) * vec2<f32>(x_2966, x_2966)) + x_2969);
          let x_2971 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2971 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2974 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2974, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2978 : u32 = u_xlatu68;
          let x_2981 : vec4<f32> = x_2647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2978)];
          let x_2983 : vec2<f32> = u_xlat53;
          let x_2985 : u32 = u_xlatu68;
          let x_2988 : vec4<f32> = x_2647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2985)];
          let x_2990 : vec2<f32> = ((vec2<f32>(x_2981.x, x_2981.y) * x_2983) + vec2<f32>(x_2988.z, x_2988.w));
          let x_2991 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2990.x, x_2990.y, x_2991.z, x_2991.w);
        }
      }
      let x_2998 : vec4<f32> = u_xlat11;
      let x_3001 : f32 = x_126.x_GlobalMipBias.x;
      let x_3002 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2998.x, x_2998.y), x_3001);
      u_xlat11 = x_3002;
      let x_3004 : bool = u_xlatb4.w;
      if (x_3004) {
        let x_3009 : f32 = u_xlat11.w;
        x_3005 = x_3009;
      } else {
        let x_3012 : f32 = u_xlat11.x;
        x_3005 = x_3012;
      }
      let x_3013 : f32 = x_3005;
      u_xlat71 = x_3013;
      let x_3015 : bool = u_xlatb4.x;
      if (x_3015) {
        let x_3019 : vec4<f32> = u_xlat11;
        x_3016 = vec3<f32>(x_3019.x, x_3019.y, x_3019.z);
      } else {
        let x_3022 : f32 = u_xlat71;
        x_3016 = vec3<f32>(x_3022, x_3022, x_3022);
      }
      let x_3024 : vec3<f32> = x_3016;
      let x_3025 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3024.x, x_3024.y, x_3024.z, x_3025.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3031 : vec4<f32> = u_xlat11;
    let x_3033 : u32 = u_xlatu68;
    let x_3036 : vec4<f32> = x_2539.x_AdditionalLightsColor[bitcast<i32>(x_3033)];
    let x_3038 : vec3<f32> = (vec3<f32>(x_3031.x, x_3031.y, x_3031.z) * vec3<f32>(x_3036.x, x_3036.y, x_3036.z));
    let x_3039 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3038.x, x_3038.y, x_3038.z, x_3039.w);
    let x_3041 : f32 = u_xlat46;
    let x_3043 : vec4<f32> = u_xlat11;
    let x_3045 : vec3<f32> = (vec3<f32>(x_3041, x_3041, x_3041) * vec3<f32>(x_3043.x, x_3043.y, x_3043.z));
    let x_3046 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3045.x, x_3045.y, x_3045.z, x_3046.w);
    let x_3048 : vec3<f32> = u_xlat2;
    let x_3049 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(x_3048, vec3<f32>(x_3049.x, x_3049.y, x_3049.z));
    let x_3052 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3052, 0.0f, 1.0f);
    let x_3054 : f32 = u_xlat68;
    let x_3055 : f32 = u_xlat69;
    u_xlat68 = (x_3054 * x_3055);
    let x_3057 : f32 = u_xlat68;
    let x_3059 : vec4<f32> = u_xlat11;
    let x_3061 : vec3<f32> = (vec3<f32>(x_3057, x_3057, x_3057) * vec3<f32>(x_3059.x, x_3059.y, x_3059.z));
    let x_3062 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3061.x, x_3061.y, x_3061.z, x_3062.w);
    let x_3064 : vec4<f32> = u_xlat9;
    let x_3066 : f32 = u_xlat70;
    let x_3069 : vec4<f32> = u_xlat1;
    let x_3071 : vec3<f32> = ((vec3<f32>(x_3064.x, x_3064.y, x_3064.z) * vec3<f32>(x_3066, x_3066, x_3066)) + vec3<f32>(x_3069.x, x_3069.y, x_3069.z));
    let x_3072 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3071.x, x_3071.y, x_3071.z, x_3072.w);
    let x_3074 : vec4<f32> = u_xlat9;
    let x_3076 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3074.x, x_3074.y, x_3074.z), vec3<f32>(x_3076.x, x_3076.y, x_3076.z));
    let x_3079 : f32 = u_xlat68;
    u_xlat68 = max(x_3079, 1.17549435e-37f);
    let x_3081 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3081);
    let x_3083 : f32 = u_xlat68;
    let x_3085 : vec4<f32> = u_xlat9;
    let x_3087 : vec3<f32> = (vec3<f32>(x_3083, x_3083, x_3083) * vec3<f32>(x_3085.x, x_3085.y, x_3085.z));
    let x_3088 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3087.x, x_3087.y, x_3087.z, x_3088.w);
    let x_3090 : vec3<f32> = u_xlat2;
    let x_3091 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(x_3090, vec3<f32>(x_3091.x, x_3091.y, x_3091.z));
    let x_3094 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3094, 0.0f, 1.0f);
    let x_3096 : vec4<f32> = u_xlat10;
    let x_3098 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3096.x, x_3096.y, x_3096.z), vec3<f32>(x_3098.x, x_3098.y, x_3098.z));
    let x_3101 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3101, 0.0f, 1.0f);
    let x_3103 : f32 = u_xlat68;
    let x_3104 : f32 = u_xlat68;
    u_xlat68 = (x_3103 * x_3104);
    let x_3106 : f32 = u_xlat68;
    let x_3108 : f32 = u_xlat0.x;
    u_xlat68 = ((x_3106 * x_3108) + 1.000010014f);
    let x_3111 : f32 = u_xlat69;
    let x_3112 : f32 = u_xlat69;
    u_xlat69 = (x_3111 * x_3112);
    let x_3114 : f32 = u_xlat68;
    let x_3115 : f32 = u_xlat68;
    u_xlat68 = (x_3114 * x_3115);
    let x_3117 : f32 = u_xlat69;
    u_xlat69 = max(x_3117, 0.100000001f);
    let x_3119 : f32 = u_xlat68;
    let x_3120 : f32 = u_xlat69;
    u_xlat68 = (x_3119 * x_3120);
    let x_3122 : f32 = u_xlat25;
    let x_3123 : f32 = u_xlat68;
    u_xlat68 = (x_3122 * x_3123);
    let x_3125 : f32 = u_xlat65;
    let x_3126 : f32 = u_xlat68;
    u_xlat68 = (x_3125 / x_3126);
    let x_3128 : vec4<f32> = u_xlat5;
    let x_3130 : f32 = u_xlat68;
    let x_3133 : vec4<f32> = u_xlat6;
    let x_3135 : vec3<f32> = ((vec3<f32>(x_3128.x, x_3128.y, x_3128.z) * vec3<f32>(x_3130, x_3130, x_3130)) + vec3<f32>(x_3133.x, x_3133.y, x_3133.z));
    let x_3136 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3135.x, x_3135.y, x_3135.z, x_3136.w);
    let x_3138 : vec4<f32> = u_xlat9;
    let x_3140 : vec4<f32> = u_xlat11;
    let x_3143 : vec4<f32> = u_xlat8;
    let x_3145 : vec3<f32> = ((vec3<f32>(x_3138.x, x_3138.y, x_3138.z) * vec3<f32>(x_3140.x, x_3140.y, x_3140.z)) + vec3<f32>(x_3143.x, x_3143.y, x_3143.z));
    let x_3146 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3145.x, x_3145.y, x_3145.z, x_3146.w);

    continuing {
      let x_3148 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3148 + bitcast<u32>(1i));
    }
  }
  let x_3150 : vec4<f32> = u_xlat3;
  let x_3152 : f32 = u_xlat21;
  let x_3155 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_3150.x, x_3150.y, x_3150.z) * vec3<f32>(x_3152, x_3152, x_3152)) + vec3<f32>(x_3155.x, x_3155.y, x_3155.z));
  let x_3158 : vec4<f32> = u_xlat8;
  let x_3160 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3158.x, x_3158.y, x_3158.z) + x_3160);
  let x_3162 : f32 = u_xlat64;
  let x_3163 : f32 = u_xlat64;
  u_xlat1.x = (x_3162 * -(x_3163));
  let x_3168 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3168);
  let x_3171 : vec3<f32> = u_xlat0;
  let x_3172 : f32 = u_xlat63;
  let x_3176 : vec4<f32> = x_126.unity_FogColor;
  u_xlat0 = ((x_3171 * vec3<f32>(x_3172, x_3172, x_3172)) + -(vec3<f32>(x_3176.x, x_3176.y, x_3176.z)));
  let x_3182 : vec4<f32> = u_xlat1;
  let x_3184 : vec3<f32> = u_xlat0;
  let x_3187 : vec4<f32> = x_126.unity_FogColor;
  let x_3189 : vec3<f32> = ((vec3<f32>(x_3182.x, x_3182.x, x_3182.x) * x_3184) + vec3<f32>(x_3187.x, x_3187.y, x_3187.z));
  let x_3190 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3189.x, x_3189.y, x_3189.z, x_3190.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

