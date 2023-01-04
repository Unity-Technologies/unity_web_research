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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(17) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(7) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(19) var sampler_Normal0 : sampler;

@group(0) @binding(8) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(16) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1013 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2305 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2510 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2801 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2910 : AdditionalLightsCookies;

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(23) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat60 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb61 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat61 : f32;
  var u_xlatb62 : bool;
  var u_xlat40 : f32;
  var u_xlat20 : f32;
  var u_xlat62 : f32;
  var u_xlat23 : f32;
  var u_xlat63 : f32;
  var u_xlat43 : f32;
  var u_xlatb3 : vec2<bool>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb64 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat64 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec5 : vec3<f32>;
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
  var u_xlatb65 : bool;
  var x_2260 : f32;
  var u_xlatb7 : vec2<bool>;
  var x_2386 : f32;
  var x_2397 : vec3<f32>;
  var u_xlatu40 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu65 : u32;
  var u_xlati66 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var u_xlati68 : i32;
  var u_xlati70 : i32;
  var u_xlatb68 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb51 : vec2<bool>;
  var x_3203 : f32;
  var x_3216 : f32;
  var x_3268 : f32;
  var x_3279 : vec3<f32>;
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
  u_xlat60 = dot(x_135, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb61 = (4.0f >= x_218);
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
  let x_280 : bool = u_xlatb61;
  let x_281 : vec4<f32> = u_xlat11;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_282, x_281, vec4<bool>(x_280, x_280, x_280, x_280));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_287, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_291 : f32 = u_xlat61;
  u_xlatb62 = (0.005f >= x_291);
  let x_293 : bool = u_xlatb62;
  if (((select(0i, 1i, x_293) * -1i) != 0i)) {
    discard;
  }
  let x_302 : f32 = u_xlat61;
  u_xlat61 = (x_302 + 6.10351562e-05f);
  let x_305 : vec4<f32> = u_xlat4;
  let x_306 : f32 = u_xlat61;
  u_xlat4 = (x_305 / vec4<f32>(x_306, x_306, x_306, x_306));
  let x_309 : vec4<f32> = u_xlat4;
  let x_312 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.x, x_309.x) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_322 : vec3<f32> = (vec3<f32>(x_317.y, x_317.y, x_317.y) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec4<f32> = u_xlat12;
  let x_329 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : vec4<f32> = u_xlat11;
  let x_337 : vec4<f32> = u_xlat6;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.x, x_334.y, x_334.z)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat4;
  let x_345 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_347 : vec3<f32> = (vec3<f32>(x_342.z, x_342.z, x_342.z) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat7;
  let x_352 : vec4<f32> = u_xlat6;
  let x_355 : vec4<f32> = u_xlat5;
  let x_357 : vec3<f32> = ((vec3<f32>(x_350.x, x_350.y, x_350.z) * vec3<f32>(x_352.x, x_352.y, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat4;
  let x_363 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_365 : vec3<f32> = (vec3<f32>(x_360.w, x_360.w, x_360.w) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat8;
  let x_370 : vec4<f32> = u_xlat6;
  let x_373 : vec4<f32> = u_xlat5;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.x, x_370.y, x_370.z)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_383 : vec4<f32> = vs_TEXCOORD1;
  let x_386 : f32 = x_126.x_GlobalMipBias.x;
  let x_387 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_383.x, x_383.y), x_386);
  let x_388 : vec3<f32> = vec3<f32>(x_387.x, x_387.y, x_387.w);
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat6.x;
  let x_394 : f32 = u_xlat6.z;
  u_xlat6.x = (x_392 * x_394);
  let x_397 : vec4<f32> = u_xlat6;
  let x_402 : vec2<f32> = ((vec2<f32>(x_397.x, x_397.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_403 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat6;
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_405.x, x_405.y), vec2<f32>(x_407.x, x_407.y));
  let x_410 : f32 = u_xlat61;
  u_xlat61 = min(x_410, 1.0f);
  let x_412 : f32 = u_xlat61;
  u_xlat61 = (-(x_412) + 1.0f);
  let x_415 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_415);
  let x_417 : f32 = u_xlat61;
  u_xlat7.z = max(x_417, 1.00000002e-16f);
  let x_421 : vec4<f32> = u_xlat6;
  let x_424 : f32 = x_30.x_NormalScale0;
  let x_426 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(x_424, x_424));
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_433 : vec4<f32> = vs_TEXCOORD1;
  let x_436 : f32 = x_126.x_GlobalMipBias.x;
  let x_437 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_433.z, x_433.w), x_436);
  let x_438 : vec3<f32> = vec3<f32>(x_437.x, x_437.y, x_437.w);
  let x_439 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_442 : f32 = u_xlat6.x;
  let x_444 : f32 = u_xlat6.z;
  u_xlat6.x = (x_442 * x_444);
  let x_447 : vec4<f32> = u_xlat6;
  let x_450 : vec2<f32> = ((vec2<f32>(x_447.x, x_447.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat6;
  let x_455 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_453.x, x_453.y), vec2<f32>(x_455.x, x_455.y));
  let x_458 : f32 = u_xlat61;
  u_xlat61 = min(x_458, 1.0f);
  let x_460 : f32 = u_xlat61;
  u_xlat61 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_463);
  let x_465 : f32 = u_xlat61;
  u_xlat8.z = max(x_465, 1.00000002e-16f);
  let x_468 : vec4<f32> = u_xlat6;
  let x_471 : f32 = x_30.x_NormalScale1;
  let x_473 : f32 = x_30.x_NormalScale1;
  let x_474 : vec2<f32> = vec2<f32>(x_471, x_473);
  let x_478 : vec2<f32> = (vec2<f32>(x_468.x, x_468.y) * vec2<f32>(x_474.x, x_474.y));
  let x_479 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec4<f32> = u_xlat8;
  let x_485 : vec3<f32> = (vec3<f32>(x_481.y, x_481.y, x_481.y) * vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat4;
  let x_490 : vec4<f32> = u_xlat7;
  let x_493 : vec4<f32> = u_xlat6;
  let x_495 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.x, x_488.x) * vec3<f32>(x_490.x, x_490.y, x_490.z)) + vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_502 : vec4<f32> = vs_TEXCOORD2;
  let x_505 : f32 = x_126.x_GlobalMipBias.x;
  let x_506 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_502.x, x_502.y), x_505);
  let x_507 : vec3<f32> = vec3<f32>(x_506.x, x_506.y, x_506.w);
  let x_508 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_511 : f32 = u_xlat7.x;
  let x_513 : f32 = u_xlat7.z;
  u_xlat7.x = (x_511 * x_513);
  let x_516 : vec4<f32> = u_xlat7;
  let x_519 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat7;
  let x_524 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_522.x, x_522.y), vec2<f32>(x_524.x, x_524.y));
  let x_527 : f32 = u_xlat61;
  u_xlat61 = min(x_527, 1.0f);
  let x_529 : f32 = u_xlat61;
  u_xlat61 = (-(x_529) + 1.0f);
  let x_532 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_532);
  let x_534 : f32 = u_xlat61;
  u_xlat8.z = max(x_534, 1.00000002e-16f);
  let x_537 : vec4<f32> = u_xlat7;
  let x_541 : f32 = x_30.x_NormalScale2;
  let x_543 : f32 = x_30.x_NormalScale2;
  let x_544 : vec2<f32> = vec2<f32>(x_541, x_543);
  let x_548 : vec2<f32> = (vec2<f32>(x_537.x, x_537.y) * vec2<f32>(x_544.x, x_544.y));
  let x_549 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : vec4<f32> = u_xlat8;
  let x_556 : vec4<f32> = u_xlat6;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.z, x_551.z, x_551.z) * vec3<f32>(x_553.x, x_553.y, x_553.z)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_565 : vec4<f32> = vs_TEXCOORD2;
  let x_568 : f32 = x_126.x_GlobalMipBias.x;
  let x_569 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_565.z, x_565.w), x_568);
  let x_570 : vec3<f32> = vec3<f32>(x_569.x, x_569.y, x_569.w);
  let x_571 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_574 : f32 = u_xlat7.x;
  let x_576 : f32 = u_xlat7.z;
  u_xlat7.x = (x_574 * x_576);
  let x_579 : vec4<f32> = u_xlat7;
  let x_582 : vec2<f32> = ((vec2<f32>(x_579.x, x_579.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_583 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat7;
  let x_587 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_585.x, x_585.y), vec2<f32>(x_587.x, x_587.y));
  let x_590 : f32 = u_xlat61;
  u_xlat61 = min(x_590, 1.0f);
  let x_592 : f32 = u_xlat61;
  u_xlat61 = (-(x_592) + 1.0f);
  let x_595 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_595);
  let x_597 : f32 = u_xlat61;
  u_xlat8.z = max(x_597, 1.00000002e-16f);
  let x_600 : vec4<f32> = u_xlat7;
  let x_604 : f32 = x_30.x_NormalScale3;
  let x_606 : f32 = x_30.x_NormalScale3;
  let x_607 : vec2<f32> = vec2<f32>(x_604, x_606);
  let x_611 : vec2<f32> = (vec2<f32>(x_600.x, x_600.y) * vec2<f32>(x_607.x, x_607.y));
  let x_612 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat4;
  let x_616 : vec4<f32> = u_xlat8;
  let x_619 : vec4<f32> = u_xlat6;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.w, x_614.w, x_614.w) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = u_xlat6.z;
  u_xlat6.w = (x_625 + 0.00001f);
  let x_629 : vec4<f32> = u_xlat6;
  let x_631 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_629.x, x_629.y, x_629.w), vec3<f32>(x_631.x, x_631.y, x_631.w));
  let x_634 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_634);
  let x_636 : f32 = u_xlat61;
  let x_638 : vec4<f32> = u_xlat6;
  let x_640 : vec3<f32> = (vec3<f32>(x_636, x_636, x_636) * vec3<f32>(x_638.x, x_638.y, x_638.w));
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_644 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_644;
  let x_647 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_647;
  let x_650 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_650;
  let x_653 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_653;
  let x_656 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_656;
  let x_659 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_659;
  let x_662 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_662;
  let x_665 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_665;
  let x_667 : vec4<f32> = u_xlat7;
  let x_668 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_667 + x_668);
  let x_671 : f32 = u_xlat0.z;
  u_xlat8.x = x_671;
  let x_674 : f32 = u_xlat1.z;
  u_xlat8.y = x_674;
  let x_677 : f32 = u_xlat2.z;
  u_xlat8.z = x_677;
  let x_680 : f32 = u_xlat3.y;
  u_xlat8.w = x_680;
  let x_682 : vec4<f32> = u_xlat9;
  let x_685 : f32 = x_30.x_Smoothness0;
  let x_687 : f32 = x_30.x_Smoothness1;
  let x_689 : f32 = x_30.x_Smoothness2;
  let x_691 : f32 = x_30.x_Smoothness3;
  let x_694 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_682) * vec4<f32>(x_685, x_687, x_689, x_691)) + x_694);
  let x_698 : f32 = x_30.x_LayerHasMask0;
  let x_701 : f32 = x_30.x_LayerHasMask1;
  let x_704 : f32 = x_30.x_LayerHasMask2;
  let x_707 : f32 = x_30.x_LayerHasMask3;
  let x_709 : vec4<f32> = u_xlat8;
  let x_711 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_698, x_701, x_704, x_707) * x_709) + x_711);
  let x_714 : vec4<f32> = u_xlat4;
  let x_715 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_714, x_715);
  let x_718 : f32 = u_xlat0.x;
  u_xlat8.x = x_718;
  let x_721 : f32 = u_xlat1.x;
  u_xlat8.y = x_721;
  let x_724 : f32 = u_xlat2.x;
  u_xlat8.z = x_724;
  let x_727 : f32 = u_xlat3.x;
  u_xlat8.w = x_727;
  let x_729 : vec4<f32> = u_xlat8;
  let x_732 : f32 = x_30.x_Metallic0;
  let x_735 : f32 = x_30.x_Metallic1;
  let x_738 : f32 = x_30.x_Metallic2;
  let x_741 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_729 + -(vec4<f32>(x_732, x_735, x_738, x_741)));
  let x_746 : f32 = x_30.x_LayerHasMask0;
  let x_748 : f32 = x_30.x_LayerHasMask1;
  let x_750 : f32 = x_30.x_LayerHasMask2;
  let x_752 : f32 = x_30.x_LayerHasMask3;
  let x_754 : vec4<f32> = u_xlat8;
  let x_757 : f32 = x_30.x_Metallic0;
  let x_759 : f32 = x_30.x_Metallic1;
  let x_761 : f32 = x_30.x_Metallic2;
  let x_763 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_746, x_748, x_750, x_752) * x_754) + vec4<f32>(x_757, x_759, x_761, x_763));
  let x_766 : vec4<f32> = u_xlat4;
  let x_767 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_766, x_767);
  let x_771 : f32 = u_xlat0.y;
  u_xlat3.x = x_771;
  let x_774 : f32 = u_xlat1.y;
  u_xlat3.y = x_774;
  let x_777 : f32 = u_xlat2.y;
  u_xlat3.z = x_777;
  let x_779 : vec4<f32> = u_xlat7;
  let x_781 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_779) + x_781);
  let x_784 : f32 = x_30.x_LayerHasMask0;
  let x_786 : f32 = x_30.x_LayerHasMask1;
  let x_788 : f32 = x_30.x_LayerHasMask2;
  let x_790 : f32 = x_30.x_LayerHasMask3;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_784, x_786, x_788, x_790) * x_792) + x_794);
  let x_797 : vec4<f32> = u_xlat4;
  let x_798 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_797, x_798);
  let x_800 : vec4<f32> = u_xlat6;
  let x_803 : vec4<f32> = vs_TEXCOORD5;
  let x_805 : vec3<f32> = (vec3<f32>(x_800.y, x_800.y, x_800.y) * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat6;
  let x_811 : vec4<f32> = vs_TEXCOORD4;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.x, x_808.x) * -(vec3<f32>(x_811.x, x_811.y, x_811.z))) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat6;
  let x_823 : vec4<f32> = vs_TEXCOORD3;
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec3<f32> = ((vec3<f32>(x_820.z, x_820.z, x_820.z) * vec3<f32>(x_823.x, x_823.y, x_823.z)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat1;
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_831.x, x_831.y, x_831.z), vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_836);
  let x_838 : f32 = u_xlat61;
  let x_840 : vec4<f32> = u_xlat1;
  let x_842 : vec3<f32> = (vec3<f32>(x_838, x_838, x_838) * vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_848 : f32 = vs_TEXCOORD7.y;
  let x_850 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat61 = (x_848 * x_850);
  let x_853 : f32 = x_126.unity_MatrixV[0i].z;
  let x_855 : f32 = vs_TEXCOORD7.x;
  let x_857 : f32 = u_xlat61;
  u_xlat61 = ((x_853 * x_855) + x_857);
  let x_860 : f32 = x_126.unity_MatrixV[2i].z;
  let x_862 : f32 = vs_TEXCOORD7.z;
  let x_864 : f32 = u_xlat61;
  u_xlat61 = ((x_860 * x_862) + x_864);
  let x_866 : f32 = u_xlat61;
  let x_868 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat61 = (x_866 + x_868);
  let x_870 : f32 = u_xlat61;
  let x_873 : f32 = x_126.x_ProjectionParams.y;
  u_xlat61 = (-(x_870) + -(x_873));
  let x_876 : f32 = u_xlat61;
  u_xlat61 = max(x_876, 0.0f);
  let x_878 : f32 = u_xlat61;
  let x_880 : f32 = x_126.unity_FogParams.x;
  u_xlat61 = (x_878 * x_880);
  let x_887 : vec4<f32> = vs_TEXCOORD0;
  let x_890 : f32 = x_126.x_GlobalMipBias.x;
  let x_891 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_887.z, x_887.w), x_890);
  u_xlat2 = vec3<f32>(x_891.x, x_891.y, x_891.z);
  let x_895 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_896 : vec2<f32> = vec2<f32>(x_895.x, x_895.y);
  let x_900 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_896.x, x_896.y));
  let x_901 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_900.x, x_900.y, x_901.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat3;
  let x_905 : vec4<f32> = hlslcc_FragCoord;
  let x_907 : vec2<f32> = (vec2<f32>(x_903.x, x_903.y) * vec2<f32>(x_905.x, x_905.y));
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
  let x_912 : f32 = u_xlat3.y;
  let x_914 : f32 = x_126.x_ScaleBiasRt.x;
  let x_917 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat62 = ((x_912 * x_914) + x_917);
  let x_919 : f32 = u_xlat62;
  u_xlat3.z = (-(x_919) + 1.0f);
  let x_924 : f32 = u_xlat0.x;
  u_xlat62 = ((-(x_924) * 0.959999979f) + 0.959999979f);
  let x_930 : f32 = u_xlat40;
  let x_931 : f32 = u_xlat62;
  u_xlat23 = (x_930 + -(x_931));
  let x_934 : f32 = u_xlat62;
  let x_936 : vec4<f32> = u_xlat5;
  let x_938 : vec3<f32> = (vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat5;
  let x_945 : vec3<f32> = (vec3<f32>(x_941.x, x_941.y, x_941.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_946 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec3<f32> = u_xlat0;
  let x_950 : vec4<f32> = u_xlat5;
  let x_955 : vec3<f32> = ((vec3<f32>(x_948.x, x_948.x, x_948.x) * vec3<f32>(x_950.x, x_950.y, x_950.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_956 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : f32 = u_xlat40;
  u_xlat0.x = (-(x_958) + 1.0f);
  let x_963 : f32 = u_xlat0.x;
  let x_965 : f32 = u_xlat0.x;
  u_xlat40 = (x_963 * x_965);
  let x_967 : f32 = u_xlat40;
  u_xlat40 = max(x_967, 0.0078125f);
  let x_970 : f32 = u_xlat40;
  let x_971 : f32 = u_xlat40;
  u_xlat62 = (x_970 * x_971);
  let x_973 : f32 = u_xlat23;
  u_xlat23 = (x_973 + 1.0f);
  let x_975 : f32 = u_xlat23;
  u_xlat23 = clamp(x_975, 0.0f, 1.0f);
  let x_978 : f32 = u_xlat40;
  u_xlat63 = ((x_978 * 4.0f) + 2.0f);
  let x_986 : vec4<f32> = u_xlat3;
  let x_989 : f32 = x_126.x_GlobalMipBias.x;
  let x_990 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_986.x, x_986.z), x_989);
  u_xlat3.x = x_990.x;
  let x_995 : f32 = u_xlat3.x;
  u_xlat43 = (x_995 + -1.0f);
  let x_998 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_999 : f32 = u_xlat43;
  u_xlat43 = ((x_998 * x_999) + 1.0f);
  let x_1002 : f32 = u_xlat20;
  let x_1004 : f32 = u_xlat3.x;
  u_xlat20 = min(x_1002, x_1004);
  let x_1015 : f32 = x_1013.x_MainLightShadowParams.y;
  u_xlatb3.x = (0.0f < x_1015);
  let x_1019 : bool = u_xlatb3.x;
  if (x_1019) {
    let x_1023 : f32 = x_1013.x_MainLightShadowParams.y;
    u_xlatb3.x = (x_1023 == 1.0f);
    let x_1027 : bool = u_xlatb3.x;
    if (x_1027) {
      let x_1031 : vec4<f32> = vs_TEXCOORD8;
      let x_1034 : vec4<f32> = x_1013.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.y) + x_1034);
      let x_1037 : vec4<f32> = u_xlat6;
      let x_1038 : vec2<f32> = vec2<f32>(x_1037.x, x_1037.y);
      let x_1040 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
      let x_1052 : vec3<f32> = txVec0;
      let x_1054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1052.xy, x_1052.z);
      u_xlat7.x = x_1054;
      let x_1057 : vec4<f32> = u_xlat6;
      let x_1058 : vec2<f32> = vec2<f32>(x_1057.z, x_1057.w);
      let x_1060 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
      let x_1067 : vec3<f32> = txVec1;
      let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1067.xy, x_1067.z);
      u_xlat7.y = x_1069;
      let x_1071 : vec4<f32> = vs_TEXCOORD8;
      let x_1074 : vec4<f32> = x_1013.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1071.x, x_1071.y, x_1071.x, x_1071.y) + x_1074);
      let x_1077 : vec4<f32> = u_xlat6;
      let x_1078 : vec2<f32> = vec2<f32>(x_1077.x, x_1077.y);
      let x_1080 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
      let x_1087 : vec3<f32> = txVec2;
      let x_1089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1087.xy, x_1087.z);
      u_xlat7.z = x_1089;
      let x_1092 : vec4<f32> = u_xlat6;
      let x_1093 : vec2<f32> = vec2<f32>(x_1092.z, x_1092.w);
      let x_1095 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1093.x, x_1093.y, x_1095);
      let x_1102 : vec3<f32> = txVec3;
      let x_1104 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1102.xy, x_1102.z);
      u_xlat7.w = x_1104;
      let x_1106 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1106, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1114 : f32 = x_1013.x_MainLightShadowParams.y;
      u_xlatb64 = (x_1114 == 2.0f);
      let x_1116 : bool = u_xlatb64;
      if (x_1116) {
        let x_1119 : vec4<f32> = vs_TEXCOORD8;
        let x_1122 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1122.z, x_1122.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1126 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
        let x_1128 : vec4<f32> = u_xlat6;
        let x_1130 : vec2<f32> = floor(vec2<f32>(x_1128.x, x_1128.y));
        let x_1131 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1135 : vec4<f32> = vs_TEXCOORD8;
        let x_1138 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.z, x_1138.w)) + -(vec2<f32>(x_1141.x, x_1141.y)));
        let x_1145 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1145.x, x_1145.x, x_1145.y, x_1145.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1149 : vec4<f32> = u_xlat7;
        let x_1151 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1149.x, x_1149.x, x_1149.z, x_1149.z) * vec4<f32>(x_1151.x, x_1151.x, x_1151.z, x_1151.z));
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1154.y, x_1154.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1159.w);
        let x_1161 : vec4<f32> = u_xlat8;
        let x_1164 : vec2<f32> = u_xlat46;
        let x_1166 : vec2<f32> = ((vec2<f32>(x_1161.x, x_1161.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1164));
        let x_1167 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1170 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1170) + vec2<f32>(1.0f, 1.0f));
        let x_1173 : vec2<f32> = u_xlat46;
        let x_1175 : vec2<f32> = min(x_1173, vec2<f32>(0.0f, 0.0f));
        let x_1176 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec4<f32> = u_xlat9;
        let x_1181 : vec4<f32> = u_xlat9;
        let x_1184 : vec2<f32> = u_xlat48;
        let x_1185 : vec2<f32> = ((-(vec2<f32>(x_1178.x, x_1178.y)) * vec2<f32>(x_1181.x, x_1181.y)) + x_1184);
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1186.w);
        let x_1188 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1188, vec2<f32>(0.0f, 0.0f));
        let x_1190 : vec2<f32> = u_xlat46;
        let x_1192 : vec2<f32> = u_xlat46;
        let x_1194 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1190) * x_1192) + vec2<f32>(x_1194.y, x_1194.w));
        let x_1197 : vec4<f32> = u_xlat9;
        let x_1199 : vec2<f32> = (vec2<f32>(x_1197.x, x_1197.y) + vec2<f32>(1.0f, 1.0f));
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1200.w);
        let x_1202 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1202 + vec2<f32>(1.0f, 1.0f));
        let x_1204 : vec4<f32> = u_xlat8;
        let x_1208 : vec2<f32> = (vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec2<f32> = u_xlat48;
        let x_1212 : vec2<f32> = (x_1211 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1213 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat9;
        let x_1217 : vec2<f32> = (vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1218 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1217.x, x_1217.y, x_1218.z, x_1218.w);
        let x_1220 : vec2<f32> = u_xlat46;
        let x_1221 : vec2<f32> = (x_1220 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1222 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1224.y, x_1224.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1228 : f32 = u_xlat9.x;
        u_xlat10.z = x_1228;
        let x_1231 : f32 = u_xlat46.x;
        u_xlat10.w = x_1231;
        let x_1234 : f32 = u_xlat11.x;
        u_xlat8.z = x_1234;
        let x_1237 : f32 = u_xlat7.x;
        u_xlat8.w = x_1237;
        let x_1239 : vec4<f32> = u_xlat8;
        let x_1241 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1239.z, x_1239.w, x_1239.x, x_1239.z) + vec4<f32>(x_1241.z, x_1241.w, x_1241.x, x_1241.z));
        let x_1245 : f32 = u_xlat10.y;
        u_xlat9.z = x_1245;
        let x_1248 : f32 = u_xlat46.y;
        u_xlat9.w = x_1248;
        let x_1251 : f32 = u_xlat8.y;
        u_xlat11.z = x_1251;
        let x_1254 : f32 = u_xlat7.z;
        u_xlat11.w = x_1254;
        let x_1256 : vec4<f32> = u_xlat9;
        let x_1258 : vec4<f32> = u_xlat11;
        let x_1260 : vec3<f32> = (vec3<f32>(x_1256.z, x_1256.y, x_1256.w) + vec3<f32>(x_1258.z, x_1258.y, x_1258.w));
        let x_1261 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
        let x_1263 : vec4<f32> = u_xlat8;
        let x_1265 : vec4<f32> = u_xlat12;
        let x_1267 : vec3<f32> = (vec3<f32>(x_1263.x, x_1263.z, x_1263.w) / vec3<f32>(x_1265.z, x_1265.w, x_1265.y));
        let x_1268 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
        let x_1270 : vec4<f32> = u_xlat8;
        let x_1276 : vec3<f32> = (vec3<f32>(x_1270.x, x_1270.y, x_1270.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1276.x, x_1276.y, x_1276.z, x_1277.w);
        let x_1279 : vec4<f32> = u_xlat11;
        let x_1281 : vec4<f32> = u_xlat7;
        let x_1283 : vec3<f32> = (vec3<f32>(x_1279.z, x_1279.y, x_1279.w) / vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat9;
        let x_1288 : vec3<f32> = (vec3<f32>(x_1286.x, x_1286.y, x_1286.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1289 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat8;
        let x_1294 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1296 : vec3<f32> = (vec3<f32>(x_1291.y, x_1291.x, x_1291.z) * vec3<f32>(x_1294.x, x_1294.x, x_1294.x));
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
        let x_1299 : vec4<f32> = u_xlat9;
        let x_1302 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1304 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.y, x_1299.z) * vec3<f32>(x_1302.y, x_1302.y, x_1302.y));
        let x_1305 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1305.w);
        let x_1308 : f32 = u_xlat9.x;
        u_xlat8.w = x_1308;
        let x_1310 : vec4<f32> = u_xlat6;
        let x_1313 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1316 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y) * vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y)) + vec4<f32>(x_1316.y, x_1316.w, x_1316.x, x_1316.w));
        let x_1319 : vec4<f32> = u_xlat6;
        let x_1322 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1325 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(x_1322.x, x_1322.y)) + vec2<f32>(x_1325.z, x_1325.w));
        let x_1329 : f32 = u_xlat8.y;
        u_xlat9.w = x_1329;
        let x_1331 : vec4<f32> = u_xlat9;
        let x_1332 : vec2<f32> = vec2<f32>(x_1331.y, x_1331.z);
        let x_1333 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1333.x, x_1332.x, x_1333.z, x_1332.y);
        let x_1335 : vec4<f32> = u_xlat6;
        let x_1338 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1341 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1335.x, x_1335.y, x_1335.x, x_1335.y) * vec4<f32>(x_1338.x, x_1338.y, x_1338.x, x_1338.y)) + vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1341.y));
        let x_1344 : vec4<f32> = u_xlat6;
        let x_1347 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1350 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y) * vec4<f32>(x_1347.x, x_1347.y, x_1347.x, x_1347.y)) + vec4<f32>(x_1350.w, x_1350.y, x_1350.w, x_1350.z));
        let x_1353 : vec4<f32> = u_xlat6;
        let x_1356 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1359 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y) * vec4<f32>(x_1356.x, x_1356.y, x_1356.x, x_1356.y)) + vec4<f32>(x_1359.x, x_1359.w, x_1359.z, x_1359.w));
        let x_1362 : vec4<f32> = u_xlat7;
        let x_1364 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1362.x, x_1362.x, x_1362.x, x_1362.y) * vec4<f32>(x_1364.z, x_1364.w, x_1364.y, x_1364.z));
        let x_1368 : vec4<f32> = u_xlat7;
        let x_1370 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1368.y, x_1368.y, x_1368.z, x_1368.z) * x_1370);
        let x_1374 : f32 = u_xlat7.z;
        let x_1376 : f32 = u_xlat12.y;
        u_xlat64 = (x_1374 * x_1376);
        let x_1379 : vec4<f32> = u_xlat10;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.x, x_1379.y);
        let x_1382 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1390 : vec3<f32> = txVec4;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1390.xy, x_1390.z);
        u_xlat65 = x_1392;
        let x_1394 : vec4<f32> = u_xlat10;
        let x_1395 : vec2<f32> = vec2<f32>(x_1394.z, x_1394.w);
        let x_1397 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec5;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1404.xy, x_1404.z);
        u_xlat6.x = x_1406;
        let x_1409 : f32 = u_xlat6.x;
        let x_1411 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1409 * x_1411);
        let x_1415 : f32 = u_xlat13.x;
        let x_1416 : f32 = u_xlat65;
        let x_1419 : f32 = u_xlat6.x;
        u_xlat65 = ((x_1415 * x_1416) + x_1419);
        let x_1422 : vec2<f32> = u_xlat46;
        let x_1424 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
        let x_1431 : vec3<f32> = txVec6;
        let x_1433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1431.xy, x_1431.z);
        u_xlat6.x = x_1433;
        let x_1436 : f32 = u_xlat13.z;
        let x_1438 : f32 = u_xlat6.x;
        let x_1440 : f32 = u_xlat65;
        u_xlat65 = ((x_1436 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat9;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.x, x_1443.y);
        let x_1446 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec7;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1453.xy, x_1453.z);
        u_xlat6.x = x_1455;
        let x_1458 : f32 = u_xlat13.w;
        let x_1460 : f32 = u_xlat6.x;
        let x_1462 : f32 = u_xlat65;
        u_xlat65 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat11;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.x, x_1465.y);
        let x_1468 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec8;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1475.xy, x_1475.z);
        u_xlat6.x = x_1477;
        let x_1480 : f32 = u_xlat14.x;
        let x_1482 : f32 = u_xlat6.x;
        let x_1484 : f32 = u_xlat65;
        u_xlat65 = ((x_1480 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat11;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.z, x_1487.w);
        let x_1490 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec9;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1497.xy, x_1497.z);
        u_xlat6.x = x_1499;
        let x_1502 : f32 = u_xlat14.y;
        let x_1504 : f32 = u_xlat6.x;
        let x_1506 : f32 = u_xlat65;
        u_xlat65 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec4<f32> = u_xlat9;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.z, x_1509.w);
        let x_1512 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec10;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1519.xy, x_1519.z);
        u_xlat6.x = x_1521;
        let x_1524 : f32 = u_xlat14.z;
        let x_1526 : f32 = u_xlat6.x;
        let x_1528 : f32 = u_xlat65;
        u_xlat65 = ((x_1524 * x_1526) + x_1528);
        let x_1531 : vec4<f32> = u_xlat8;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec11;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1541.xy, x_1541.z);
        u_xlat6.x = x_1543;
        let x_1546 : f32 = u_xlat14.w;
        let x_1548 : f32 = u_xlat6.x;
        let x_1550 : f32 = u_xlat65;
        u_xlat65 = ((x_1546 * x_1548) + x_1550);
        let x_1553 : vec4<f32> = u_xlat8;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec12;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
        u_xlat6.x = x_1565;
        let x_1567 : f32 = u_xlat64;
        let x_1569 : f32 = u_xlat6.x;
        let x_1571 : f32 = u_xlat65;
        u_xlat3.x = ((x_1567 * x_1569) + x_1571);
      } else {
        let x_1575 : vec4<f32> = vs_TEXCOORD8;
        let x_1578 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1581 : vec2<f32> = ((vec2<f32>(x_1575.x, x_1575.y) * vec2<f32>(x_1578.z, x_1578.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1582 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1581.x, x_1581.y, x_1582.z, x_1582.w);
        let x_1584 : vec4<f32> = u_xlat6;
        let x_1586 : vec2<f32> = floor(vec2<f32>(x_1584.x, x_1584.y));
        let x_1587 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1586.x, x_1586.y, x_1587.z, x_1587.w);
        let x_1589 : vec4<f32> = vs_TEXCOORD8;
        let x_1592 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1595 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1589.x, x_1589.y) * vec2<f32>(x_1592.z, x_1592.w)) + -(vec2<f32>(x_1595.x, x_1595.y)));
        let x_1599 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1599.x, x_1599.x, x_1599.y, x_1599.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1602 : vec4<f32> = u_xlat7;
        let x_1604 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1602.x, x_1602.x, x_1602.z, x_1602.z) * vec4<f32>(x_1604.x, x_1604.x, x_1604.z, x_1604.z));
        let x_1607 : vec4<f32> = u_xlat8;
        let x_1611 : vec2<f32> = (vec2<f32>(x_1607.y, x_1607.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1612 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1612.x, x_1611.x, x_1612.z, x_1611.y);
        let x_1614 : vec4<f32> = u_xlat8;
        let x_1617 : vec2<f32> = u_xlat46;
        let x_1619 : vec2<f32> = ((vec2<f32>(x_1614.x, x_1614.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1617));
        let x_1620 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1619.x, x_1620.y, x_1619.y, x_1620.w);
        let x_1622 : vec2<f32> = u_xlat46;
        let x_1624 : vec2<f32> = (-(x_1622) + vec2<f32>(1.0f, 1.0f));
        let x_1625 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1624.x, x_1624.y, x_1625.z, x_1625.w);
        let x_1627 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1627, vec2<f32>(0.0f, 0.0f));
        let x_1629 : vec2<f32> = u_xlat48;
        let x_1631 : vec2<f32> = u_xlat48;
        let x_1633 : vec4<f32> = u_xlat8;
        let x_1635 : vec2<f32> = ((-(x_1629) * x_1631) + vec2<f32>(x_1633.x, x_1633.y));
        let x_1636 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1635.x, x_1635.y, x_1636.z, x_1636.w);
        let x_1638 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1638, vec2<f32>(0.0f, 0.0f));
        let x_1641 : vec2<f32> = u_xlat48;
        let x_1643 : vec2<f32> = u_xlat48;
        let x_1645 : vec4<f32> = u_xlat7;
        let x_1647 : vec2<f32> = ((-(x_1641) * x_1643) + vec2<f32>(x_1645.y, x_1645.w));
        let x_1648 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1647.x, x_1648.y, x_1647.y);
        let x_1650 : vec4<f32> = u_xlat8;
        let x_1652 : vec2<f32> = (vec2<f32>(x_1650.x, x_1650.y) + vec2<f32>(2.0f, 2.0f));
        let x_1653 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1652.x, x_1652.y, x_1653.z, x_1653.w);
        let x_1655 : vec3<f32> = u_xlat27;
        let x_1657 : vec2<f32> = (vec2<f32>(x_1655.x, x_1655.z) + vec2<f32>(2.0f, 2.0f));
        let x_1658 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1658.x, x_1657.x, x_1658.z, x_1657.y);
        let x_1661 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1661 * 0.081632003f);
        let x_1665 : vec4<f32> = u_xlat7;
        let x_1668 : vec3<f32> = (vec3<f32>(x_1665.z, x_1665.x, x_1665.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1669 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1669.w);
        let x_1671 : vec4<f32> = u_xlat8;
        let x_1674 : vec2<f32> = (vec2<f32>(x_1671.x, x_1671.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1675 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1674.x, x_1674.y, x_1675.z, x_1675.w);
        let x_1678 : f32 = u_xlat11.y;
        u_xlat10.x = x_1678;
        let x_1680 : vec2<f32> = u_xlat46;
        let x_1687 : vec2<f32> = ((vec2<f32>(x_1680.x, x_1680.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1688 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1688.x, x_1687.x, x_1688.z, x_1687.y);
        let x_1690 : vec2<f32> = u_xlat46;
        let x_1694 : vec2<f32> = ((vec2<f32>(x_1690.x, x_1690.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1695 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1694.x, x_1695.y, x_1694.y, x_1695.w);
        let x_1698 : f32 = u_xlat7.x;
        u_xlat8.y = x_1698;
        let x_1701 : f32 = u_xlat9.y;
        u_xlat8.w = x_1701;
        let x_1703 : vec4<f32> = u_xlat8;
        let x_1704 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1703 + x_1704);
        let x_1706 : vec2<f32> = u_xlat46;
        let x_1709 : vec2<f32> = ((vec2<f32>(x_1706.y, x_1706.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1710 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1710.x, x_1709.x, x_1710.z, x_1709.y);
        let x_1712 : vec2<f32> = u_xlat46;
        let x_1715 : vec2<f32> = ((vec2<f32>(x_1712.y, x_1712.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1716 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1715.x, x_1716.y, x_1715.y, x_1716.w);
        let x_1719 : f32 = u_xlat7.y;
        u_xlat9.y = x_1719;
        let x_1721 : vec4<f32> = u_xlat9;
        let x_1722 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1721 + x_1722);
        let x_1724 : vec4<f32> = u_xlat8;
        let x_1725 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1724 / x_1725);
        let x_1727 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1727 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1733 : vec4<f32> = u_xlat9;
        let x_1734 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1733 / x_1734);
        let x_1736 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1736 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1738 : vec4<f32> = u_xlat8;
        let x_1741 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1738.w, x_1738.x, x_1738.y, x_1738.z) * vec4<f32>(x_1741.x, x_1741.x, x_1741.x, x_1741.x));
        let x_1744 : vec4<f32> = u_xlat9;
        let x_1747 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1744.x, x_1744.w, x_1744.y, x_1744.z) * vec4<f32>(x_1747.y, x_1747.y, x_1747.y, x_1747.y));
        let x_1750 : vec4<f32> = u_xlat8;
        let x_1751 : vec3<f32> = vec3<f32>(x_1750.y, x_1750.z, x_1750.w);
        let x_1752 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1751.x, x_1752.y, x_1751.y, x_1751.z);
        let x_1755 : f32 = u_xlat9.x;
        u_xlat11.y = x_1755;
        let x_1757 : vec4<f32> = u_xlat6;
        let x_1760 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1763 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1757.x, x_1757.y, x_1757.x, x_1757.y) * vec4<f32>(x_1760.x, x_1760.y, x_1760.x, x_1760.y)) + vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1763.y));
        let x_1766 : vec4<f32> = u_xlat6;
        let x_1769 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1772 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1766.x, x_1766.y) * vec2<f32>(x_1769.x, x_1769.y)) + vec2<f32>(x_1772.w, x_1772.y));
        let x_1776 : f32 = u_xlat11.y;
        u_xlat8.y = x_1776;
        let x_1779 : f32 = u_xlat9.z;
        u_xlat11.y = x_1779;
        let x_1781 : vec4<f32> = u_xlat6;
        let x_1784 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1787 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1781.x, x_1781.y, x_1781.x, x_1781.y) * vec4<f32>(x_1784.x, x_1784.y, x_1784.x, x_1784.y)) + vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1787.y));
        let x_1790 : vec4<f32> = u_xlat6;
        let x_1793 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1796 : vec4<f32> = u_xlat11;
        let x_1798 : vec2<f32> = ((vec2<f32>(x_1790.x, x_1790.y) * vec2<f32>(x_1793.x, x_1793.y)) + vec2<f32>(x_1796.w, x_1796.y));
        let x_1799 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1798.x, x_1798.y, x_1799.z, x_1799.w);
        let x_1802 : f32 = u_xlat11.y;
        u_xlat8.z = x_1802;
        let x_1805 : vec4<f32> = u_xlat6;
        let x_1808 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1811 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1805.x, x_1805.y, x_1805.x, x_1805.y) * vec4<f32>(x_1808.x, x_1808.y, x_1808.x, x_1808.y)) + vec4<f32>(x_1811.x, x_1811.y, x_1811.x, x_1811.z));
        let x_1815 : f32 = u_xlat9.w;
        u_xlat11.y = x_1815;
        let x_1818 : vec4<f32> = u_xlat6;
        let x_1821 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1824 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1818.x, x_1818.y, x_1818.x, x_1818.y) * vec4<f32>(x_1821.x, x_1821.y, x_1821.x, x_1821.y)) + vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1824.y));
        let x_1828 : vec4<f32> = u_xlat6;
        let x_1831 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1834 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1828.x, x_1828.y) * vec2<f32>(x_1831.x, x_1831.y)) + vec2<f32>(x_1834.w, x_1834.y));
        let x_1838 : f32 = u_xlat11.y;
        u_xlat8.w = x_1838;
        let x_1841 : vec4<f32> = u_xlat6;
        let x_1844 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1847 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1841.x, x_1841.y) * vec2<f32>(x_1844.x, x_1844.y)) + vec2<f32>(x_1847.x, x_1847.w));
        let x_1850 : vec4<f32> = u_xlat11;
        let x_1851 : vec3<f32> = vec3<f32>(x_1850.x, x_1850.z, x_1850.w);
        let x_1852 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1851.x, x_1852.y, x_1851.y, x_1851.z);
        let x_1854 : vec4<f32> = u_xlat6;
        let x_1857 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1860 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1854.x, x_1854.y, x_1854.x, x_1854.y) * vec4<f32>(x_1857.x, x_1857.y, x_1857.x, x_1857.y)) + vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1860.y));
        let x_1864 : vec4<f32> = u_xlat6;
        let x_1867 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1870 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1864.x, x_1864.y) * vec2<f32>(x_1867.x, x_1867.y)) + vec2<f32>(x_1870.w, x_1870.y));
        let x_1874 : f32 = u_xlat8.x;
        u_xlat9.x = x_1874;
        let x_1876 : vec4<f32> = u_xlat6;
        let x_1879 : vec4<f32> = x_1013.x_MainLightShadowmapSize;
        let x_1882 : vec4<f32> = u_xlat9;
        let x_1884 : vec2<f32> = ((vec2<f32>(x_1876.x, x_1876.y) * vec2<f32>(x_1879.x, x_1879.y)) + vec2<f32>(x_1882.x, x_1882.y));
        let x_1885 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1884.x, x_1884.y, x_1885.z, x_1885.w);
        let x_1888 : vec4<f32> = u_xlat7;
        let x_1890 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1888.x, x_1888.x, x_1888.x, x_1888.x) * x_1890);
        let x_1893 : vec4<f32> = u_xlat7;
        let x_1895 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1893.y, x_1893.y, x_1893.y, x_1893.y) * x_1895);
        let x_1898 : vec4<f32> = u_xlat7;
        let x_1900 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1898.z, x_1898.z, x_1898.z, x_1898.z) * x_1900);
        let x_1902 : vec4<f32> = u_xlat7;
        let x_1904 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1902.w, x_1902.w, x_1902.w, x_1902.w) * x_1904);
        let x_1907 : vec4<f32> = u_xlat12;
        let x_1908 : vec2<f32> = vec2<f32>(x_1907.x, x_1907.y);
        let x_1910 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1908.x, x_1908.y, x_1910);
        let x_1917 : vec3<f32> = txVec13;
        let x_1919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1917.xy, x_1917.z);
        u_xlat64 = x_1919;
        let x_1921 : vec4<f32> = u_xlat12;
        let x_1922 : vec2<f32> = vec2<f32>(x_1921.z, x_1921.w);
        let x_1924 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1922.x, x_1922.y, x_1924);
        let x_1931 : vec3<f32> = txVec14;
        let x_1933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1931.xy, x_1931.z);
        u_xlat65 = x_1933;
        let x_1934 : f32 = u_xlat65;
        let x_1936 : f32 = u_xlat17.y;
        u_xlat65 = (x_1934 * x_1936);
        let x_1939 : f32 = u_xlat17.x;
        let x_1940 : f32 = u_xlat64;
        let x_1942 : f32 = u_xlat65;
        u_xlat64 = ((x_1939 * x_1940) + x_1942);
        let x_1945 : vec2<f32> = u_xlat46;
        let x_1947 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1945.x, x_1945.y, x_1947);
        let x_1954 : vec3<f32> = txVec15;
        let x_1956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1954.xy, x_1954.z);
        u_xlat65 = x_1956;
        let x_1958 : f32 = u_xlat17.z;
        let x_1959 : f32 = u_xlat65;
        let x_1961 : f32 = u_xlat64;
        u_xlat64 = ((x_1958 * x_1959) + x_1961);
        let x_1964 : vec4<f32> = u_xlat15;
        let x_1965 : vec2<f32> = vec2<f32>(x_1964.x, x_1964.y);
        let x_1967 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1965.x, x_1965.y, x_1967);
        let x_1974 : vec3<f32> = txVec16;
        let x_1976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1974.xy, x_1974.z);
        u_xlat65 = x_1976;
        let x_1978 : f32 = u_xlat17.w;
        let x_1979 : f32 = u_xlat65;
        let x_1981 : f32 = u_xlat64;
        u_xlat64 = ((x_1978 * x_1979) + x_1981);
        let x_1984 : vec4<f32> = u_xlat13;
        let x_1985 : vec2<f32> = vec2<f32>(x_1984.x, x_1984.y);
        let x_1987 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1985.x, x_1985.y, x_1987);
        let x_1994 : vec3<f32> = txVec17;
        let x_1996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1994.xy, x_1994.z);
        u_xlat65 = x_1996;
        let x_1998 : f32 = u_xlat18.x;
        let x_1999 : f32 = u_xlat65;
        let x_2001 : f32 = u_xlat64;
        u_xlat64 = ((x_1998 * x_1999) + x_2001);
        let x_2004 : vec4<f32> = u_xlat13;
        let x_2005 : vec2<f32> = vec2<f32>(x_2004.z, x_2004.w);
        let x_2007 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
        let x_2014 : vec3<f32> = txVec18;
        let x_2016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2014.xy, x_2014.z);
        u_xlat65 = x_2016;
        let x_2018 : f32 = u_xlat18.y;
        let x_2019 : f32 = u_xlat65;
        let x_2021 : f32 = u_xlat64;
        u_xlat64 = ((x_2018 * x_2019) + x_2021);
        let x_2024 : vec4<f32> = u_xlat14;
        let x_2025 : vec2<f32> = vec2<f32>(x_2024.x, x_2024.y);
        let x_2027 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_2025.x, x_2025.y, x_2027);
        let x_2034 : vec3<f32> = txVec19;
        let x_2036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2034.xy, x_2034.z);
        u_xlat65 = x_2036;
        let x_2038 : f32 = u_xlat18.z;
        let x_2039 : f32 = u_xlat65;
        let x_2041 : f32 = u_xlat64;
        u_xlat64 = ((x_2038 * x_2039) + x_2041);
        let x_2044 : vec4<f32> = u_xlat15;
        let x_2045 : vec2<f32> = vec2<f32>(x_2044.z, x_2044.w);
        let x_2047 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_2045.x, x_2045.y, x_2047);
        let x_2054 : vec3<f32> = txVec20;
        let x_2056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2054.xy, x_2054.z);
        u_xlat65 = x_2056;
        let x_2058 : f32 = u_xlat18.w;
        let x_2059 : f32 = u_xlat65;
        let x_2061 : f32 = u_xlat64;
        u_xlat64 = ((x_2058 * x_2059) + x_2061);
        let x_2064 : vec4<f32> = u_xlat16;
        let x_2065 : vec2<f32> = vec2<f32>(x_2064.x, x_2064.y);
        let x_2067 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_2065.x, x_2065.y, x_2067);
        let x_2074 : vec3<f32> = txVec21;
        let x_2076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2074.xy, x_2074.z);
        u_xlat65 = x_2076;
        let x_2078 : f32 = u_xlat19.x;
        let x_2079 : f32 = u_xlat65;
        let x_2081 : f32 = u_xlat64;
        u_xlat64 = ((x_2078 * x_2079) + x_2081);
        let x_2084 : vec4<f32> = u_xlat16;
        let x_2085 : vec2<f32> = vec2<f32>(x_2084.z, x_2084.w);
        let x_2087 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2085.x, x_2085.y, x_2087);
        let x_2094 : vec3<f32> = txVec22;
        let x_2096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2094.xy, x_2094.z);
        u_xlat65 = x_2096;
        let x_2098 : f32 = u_xlat19.y;
        let x_2099 : f32 = u_xlat65;
        let x_2101 : f32 = u_xlat64;
        u_xlat64 = ((x_2098 * x_2099) + x_2101);
        let x_2104 : vec2<f32> = u_xlat28;
        let x_2106 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2104.x, x_2104.y, x_2106);
        let x_2113 : vec3<f32> = txVec23;
        let x_2115 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2113.xy, x_2113.z);
        u_xlat65 = x_2115;
        let x_2117 : f32 = u_xlat19.z;
        let x_2118 : f32 = u_xlat65;
        let x_2120 : f32 = u_xlat64;
        u_xlat64 = ((x_2117 * x_2118) + x_2120);
        let x_2123 : vec2<f32> = u_xlat54;
        let x_2125 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2123.x, x_2123.y, x_2125);
        let x_2132 : vec3<f32> = txVec24;
        let x_2134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2132.xy, x_2132.z);
        u_xlat65 = x_2134;
        let x_2136 : f32 = u_xlat19.w;
        let x_2137 : f32 = u_xlat65;
        let x_2139 : f32 = u_xlat64;
        u_xlat64 = ((x_2136 * x_2137) + x_2139);
        let x_2142 : vec4<f32> = u_xlat11;
        let x_2143 : vec2<f32> = vec2<f32>(x_2142.x, x_2142.y);
        let x_2145 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2143.x, x_2143.y, x_2145);
        let x_2152 : vec3<f32> = txVec25;
        let x_2154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2152.xy, x_2152.z);
        u_xlat65 = x_2154;
        let x_2156 : f32 = u_xlat7.x;
        let x_2157 : f32 = u_xlat65;
        let x_2159 : f32 = u_xlat64;
        u_xlat64 = ((x_2156 * x_2157) + x_2159);
        let x_2162 : vec4<f32> = u_xlat11;
        let x_2163 : vec2<f32> = vec2<f32>(x_2162.z, x_2162.w);
        let x_2165 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2163.x, x_2163.y, x_2165);
        let x_2172 : vec3<f32> = txVec26;
        let x_2174 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2172.xy, x_2172.z);
        u_xlat65 = x_2174;
        let x_2176 : f32 = u_xlat7.y;
        let x_2177 : f32 = u_xlat65;
        let x_2179 : f32 = u_xlat64;
        u_xlat64 = ((x_2176 * x_2177) + x_2179);
        let x_2182 : vec2<f32> = u_xlat49;
        let x_2184 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2182.x, x_2182.y, x_2184);
        let x_2191 : vec3<f32> = txVec27;
        let x_2193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2191.xy, x_2191.z);
        u_xlat65 = x_2193;
        let x_2195 : f32 = u_xlat7.z;
        let x_2196 : f32 = u_xlat65;
        let x_2198 : f32 = u_xlat64;
        u_xlat64 = ((x_2195 * x_2196) + x_2198);
        let x_2201 : vec4<f32> = u_xlat6;
        let x_2202 : vec2<f32> = vec2<f32>(x_2201.x, x_2201.y);
        let x_2204 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2202.x, x_2202.y, x_2204);
        let x_2211 : vec3<f32> = txVec28;
        let x_2213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2211.xy, x_2211.z);
        u_xlat65 = x_2213;
        let x_2215 : f32 = u_xlat7.w;
        let x_2216 : f32 = u_xlat65;
        let x_2218 : f32 = u_xlat64;
        u_xlat3.x = ((x_2215 * x_2216) + x_2218);
      }
    }
  } else {
    let x_2223 : vec4<f32> = vs_TEXCOORD8;
    let x_2224 : vec2<f32> = vec2<f32>(x_2223.x, x_2223.y);
    let x_2226 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2224.x, x_2224.y, x_2226);
    let x_2233 : vec3<f32> = txVec29;
    let x_2235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2233.xy, x_2233.z);
    u_xlat3.x = x_2235;
  }
  let x_2238 : f32 = x_1013.x_MainLightShadowParams.x;
  u_xlat64 = (-(x_2238) + 1.0f);
  let x_2242 : f32 = u_xlat3.x;
  let x_2244 : f32 = x_1013.x_MainLightShadowParams.x;
  let x_2246 : f32 = u_xlat64;
  u_xlat3.x = ((x_2242 * x_2244) + x_2246);
  let x_2250 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (0.0f >= x_2250);
  let x_2254 : f32 = vs_TEXCOORD8.z;
  u_xlatb65 = (x_2254 >= 1.0f);
  let x_2256 : bool = u_xlatb64;
  let x_2257 : bool = u_xlatb65;
  u_xlatb64 = (x_2256 | x_2257);
  let x_2259 : bool = u_xlatb64;
  if (x_2259) {
    x_2260 = 1.0f;
  } else {
    let x_2265 : f32 = u_xlat3.x;
    x_2260 = x_2265;
  }
  let x_2266 : f32 = x_2260;
  u_xlat3.x = x_2266;
  let x_2268 : vec3<f32> = vs_TEXCOORD7;
  let x_2271 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2273 : vec3<f32> = (x_2268 + -(x_2271));
  let x_2274 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2273.x, x_2273.y, x_2273.z, x_2274.w);
  let x_2276 : vec4<f32> = u_xlat6;
  let x_2278 : vec4<f32> = u_xlat6;
  u_xlat64 = dot(vec3<f32>(x_2276.x, x_2276.y, x_2276.z), vec3<f32>(x_2278.x, x_2278.y, x_2278.z));
  let x_2281 : f32 = u_xlat64;
  let x_2283 : f32 = x_1013.x_MainLightShadowParams.z;
  let x_2286 : f32 = x_1013.x_MainLightShadowParams.w;
  u_xlat64 = ((x_2281 * x_2283) + x_2286);
  let x_2288 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2288, 0.0f, 1.0f);
  let x_2291 : f32 = u_xlat3.x;
  u_xlat65 = (-(x_2291) + 1.0f);
  let x_2294 : f32 = u_xlat64;
  let x_2295 : f32 = u_xlat65;
  let x_2298 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2294 * x_2295) + x_2298);
  let x_2307 : f32 = x_2305.x_MainLightCookieTextureFormat;
  u_xlatb64 = !((x_2307 == -1.0f));
  let x_2309 : bool = u_xlatb64;
  if (x_2309) {
    let x_2312 : vec3<f32> = vs_TEXCOORD7;
    let x_2315 : vec4<f32> = x_2305.x_MainLightWorldToLight[1i];
    let x_2317 : vec2<f32> = (vec2<f32>(x_2312.y, x_2312.y) * vec2<f32>(x_2315.x, x_2315.y));
    let x_2318 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2317.x, x_2317.y, x_2318.z, x_2318.w);
    let x_2321 : vec4<f32> = x_2305.x_MainLightWorldToLight[0i];
    let x_2323 : vec3<f32> = vs_TEXCOORD7;
    let x_2326 : vec4<f32> = u_xlat6;
    let x_2328 : vec2<f32> = ((vec2<f32>(x_2321.x, x_2321.y) * vec2<f32>(x_2323.x, x_2323.x)) + vec2<f32>(x_2326.x, x_2326.y));
    let x_2329 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2328.x, x_2328.y, x_2329.z, x_2329.w);
    let x_2332 : vec4<f32> = x_2305.x_MainLightWorldToLight[2i];
    let x_2334 : vec3<f32> = vs_TEXCOORD7;
    let x_2337 : vec4<f32> = u_xlat6;
    let x_2339 : vec2<f32> = ((vec2<f32>(x_2332.x, x_2332.y) * vec2<f32>(x_2334.z, x_2334.z)) + vec2<f32>(x_2337.x, x_2337.y));
    let x_2340 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2339.x, x_2339.y, x_2340.z, x_2340.w);
    let x_2342 : vec4<f32> = u_xlat6;
    let x_2345 : vec4<f32> = x_2305.x_MainLightWorldToLight[3i];
    let x_2347 : vec2<f32> = (vec2<f32>(x_2342.x, x_2342.y) + vec2<f32>(x_2345.x, x_2345.y));
    let x_2348 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2347.x, x_2347.y, x_2348.z, x_2348.w);
    let x_2350 : vec4<f32> = u_xlat6;
    let x_2353 : vec2<f32> = ((vec2<f32>(x_2350.x, x_2350.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2354 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2353.x, x_2353.y, x_2354.z, x_2354.w);
    let x_2361 : vec4<f32> = u_xlat6;
    let x_2364 : f32 = x_126.x_GlobalMipBias.x;
    let x_2365 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2361.x, x_2361.y), x_2364);
    u_xlat6 = x_2365;
    let x_2368 : f32 = x_2305.x_MainLightCookieTextureFormat;
    let x_2370 : f32 = x_2305.x_MainLightCookieTextureFormat;
    let x_2372 : f32 = x_2305.x_MainLightCookieTextureFormat;
    let x_2374 : f32 = x_2305.x_MainLightCookieTextureFormat;
    let x_2375 : vec4<f32> = vec4<f32>(x_2368, x_2370, x_2372, x_2374);
    let x_2382 : vec4<bool> = (vec4<f32>(x_2375.x, x_2375.y, x_2375.z, x_2375.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2382.x, x_2382.y);
    let x_2385 : bool = u_xlatb7.y;
    if (x_2385) {
      let x_2390 : f32 = u_xlat6.w;
      x_2386 = x_2390;
    } else {
      let x_2393 : f32 = u_xlat6.x;
      x_2386 = x_2393;
    }
    let x_2394 : f32 = x_2386;
    u_xlat64 = x_2394;
    let x_2396 : bool = u_xlatb7.x;
    if (x_2396) {
      let x_2400 : vec4<f32> = u_xlat6;
      x_2397 = vec3<f32>(x_2400.x, x_2400.y, x_2400.z);
    } else {
      let x_2403 : f32 = u_xlat64;
      x_2397 = vec3<f32>(x_2403, x_2403, x_2403);
    }
    let x_2405 : vec3<f32> = x_2397;
    let x_2406 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2412 : vec4<f32> = u_xlat6;
  let x_2415 : vec4<f32> = x_126.x_MainLightColor;
  let x_2417 : vec3<f32> = (vec3<f32>(x_2412.x, x_2412.y, x_2412.z) * vec3<f32>(x_2415.x, x_2415.y, x_2415.z));
  let x_2418 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
  let x_2420 : f32 = u_xlat43;
  let x_2422 : vec4<f32> = u_xlat6;
  let x_2424 : vec3<f32> = (vec3<f32>(x_2420, x_2420, x_2420) * vec3<f32>(x_2422.x, x_2422.y, x_2422.z));
  let x_2425 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);
  let x_2428 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2428;
  let x_2431 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2431;
  let x_2434 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2434;
  let x_2436 : vec4<f32> = u_xlat7;
  let x_2439 : vec4<f32> = u_xlat1;
  u_xlat64 = dot(-(vec3<f32>(x_2436.x, x_2436.y, x_2436.z)), vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
  let x_2442 : f32 = u_xlat64;
  let x_2443 : f32 = u_xlat64;
  u_xlat64 = (x_2442 + x_2443);
  let x_2445 : vec4<f32> = u_xlat1;
  let x_2447 : f32 = u_xlat64;
  let x_2451 : vec4<f32> = u_xlat7;
  let x_2454 : vec3<f32> = ((vec3<f32>(x_2445.x, x_2445.y, x_2445.z) * -(vec3<f32>(x_2447, x_2447, x_2447))) + -(vec3<f32>(x_2451.x, x_2451.y, x_2451.z)));
  let x_2455 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2454.x, x_2454.y, x_2454.z, x_2455.w);
  let x_2457 : vec4<f32> = u_xlat1;
  let x_2459 : vec4<f32> = u_xlat7;
  u_xlat64 = dot(vec3<f32>(x_2457.x, x_2457.y, x_2457.z), vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
  let x_2462 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2462, 0.0f, 1.0f);
  let x_2464 : f32 = u_xlat64;
  u_xlat64 = (-(x_2464) + 1.0f);
  let x_2467 : f32 = u_xlat64;
  let x_2468 : f32 = u_xlat64;
  u_xlat64 = (x_2467 * x_2468);
  let x_2470 : f32 = u_xlat64;
  let x_2471 : f32 = u_xlat64;
  u_xlat64 = (x_2470 * x_2471);
  let x_2474 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_2474) * 0.699999988f) + 1.700000048f);
  let x_2481 : f32 = u_xlat0.x;
  let x_2482 : f32 = u_xlat65;
  u_xlat0.x = (x_2481 * x_2482);
  let x_2486 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2486 * 6.0f);
  let x_2498 : vec4<f32> = u_xlat8;
  let x_2501 : f32 = u_xlat0.x;
  let x_2502 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2498.x, x_2498.y, x_2498.z), x_2501);
  u_xlat8 = x_2502;
  let x_2504 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2504 + -1.0f);
  let x_2512 : f32 = x_2510.unity_SpecCube0_HDR.w;
  let x_2514 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2512 * x_2514) + 1.0f);
  let x_2519 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2519, 0.0f);
  let x_2523 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2523);
  let x_2527 : f32 = u_xlat0.x;
  let x_2529 : f32 = x_2510.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2527 * x_2529);
  let x_2533 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2533);
  let x_2537 : f32 = u_xlat0.x;
  let x_2539 : f32 = x_2510.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2537 * x_2539);
  let x_2542 : vec4<f32> = u_xlat8;
  let x_2544 : vec3<f32> = u_xlat0;
  let x_2546 : vec3<f32> = (vec3<f32>(x_2542.x, x_2542.y, x_2542.z) * vec3<f32>(x_2544.x, x_2544.x, x_2544.x));
  let x_2547 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2546.x, x_2546.y, x_2546.z, x_2547.w);
  let x_2549 : f32 = u_xlat40;
  let x_2551 : f32 = u_xlat40;
  let x_2555 : vec2<f32> = ((vec2<f32>(x_2549, x_2549) * vec2<f32>(x_2551, x_2551)) + vec2<f32>(-1.0f, 1.0f));
  let x_2556 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2555.x, x_2556.y, x_2555.y);
  let x_2559 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2559);
  let x_2561 : vec4<f32> = u_xlat5;
  let x_2564 : f32 = u_xlat23;
  let x_2566 : vec3<f32> = (-(vec3<f32>(x_2561.x, x_2561.y, x_2561.z)) + vec3<f32>(x_2564, x_2564, x_2564));
  let x_2567 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);
  let x_2569 : f32 = u_xlat64;
  let x_2571 : vec4<f32> = u_xlat9;
  let x_2574 : vec4<f32> = u_xlat5;
  let x_2576 : vec3<f32> = ((vec3<f32>(x_2569, x_2569, x_2569) * vec3<f32>(x_2571.x, x_2571.y, x_2571.z)) + vec3<f32>(x_2574.x, x_2574.y, x_2574.z));
  let x_2577 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2576.x, x_2576.y, x_2576.z, x_2577.w);
  let x_2579 : f32 = u_xlat40;
  let x_2581 : vec4<f32> = u_xlat9;
  let x_2583 : vec3<f32> = (vec3<f32>(x_2579, x_2579, x_2579) * vec3<f32>(x_2581.x, x_2581.y, x_2581.z));
  let x_2584 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2583.x, x_2583.y, x_2583.z, x_2584.w);
  let x_2586 : vec4<f32> = u_xlat8;
  let x_2588 : vec4<f32> = u_xlat9;
  let x_2590 : vec3<f32> = (vec3<f32>(x_2586.x, x_2586.y, x_2586.z) * vec3<f32>(x_2588.x, x_2588.y, x_2588.z));
  let x_2591 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2590.x, x_2590.y, x_2590.z, x_2591.w);
  let x_2593 : vec3<f32> = u_xlat2;
  let x_2594 : vec4<f32> = u_xlat4;
  let x_2597 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_2593 * vec3<f32>(x_2594.x, x_2594.y, x_2594.z)) + vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
  let x_2601 : f32 = u_xlat3.x;
  let x_2603 : f32 = x_2510.unity_LightData.z;
  u_xlat40 = (x_2601 * x_2603);
  let x_2605 : vec4<f32> = u_xlat1;
  let x_2608 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2605.x, x_2605.y, x_2605.z), vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
  let x_2613 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2613, 0.0f, 1.0f);
  let x_2616 : f32 = u_xlat40;
  let x_2618 : f32 = u_xlat3.x;
  u_xlat40 = (x_2616 * x_2618);
  let x_2620 : f32 = u_xlat40;
  let x_2622 : vec4<f32> = u_xlat6;
  let x_2624 : vec3<f32> = (vec3<f32>(x_2620, x_2620, x_2620) * vec3<f32>(x_2622.x, x_2622.y, x_2622.z));
  let x_2625 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2624.x, x_2624.y, x_2624.z, x_2625.w);
  let x_2627 : vec4<f32> = u_xlat7;
  let x_2630 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2632 : vec3<f32> = (vec3<f32>(x_2627.x, x_2627.y, x_2627.z) + vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
  let x_2633 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
  let x_2635 : vec4<f32> = u_xlat8;
  let x_2637 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2635.x, x_2635.y, x_2635.z), vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
  let x_2640 : f32 = u_xlat40;
  u_xlat40 = max(x_2640, 1.17549435e-37f);
  let x_2643 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2643);
  let x_2645 : f32 = u_xlat40;
  let x_2647 : vec4<f32> = u_xlat8;
  let x_2649 : vec3<f32> = (vec3<f32>(x_2645, x_2645, x_2645) * vec3<f32>(x_2647.x, x_2647.y, x_2647.z));
  let x_2650 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2650.w);
  let x_2652 : vec4<f32> = u_xlat1;
  let x_2654 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2652.x, x_2652.y, x_2652.z), vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
  let x_2657 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2657, 0.0f, 1.0f);
  let x_2660 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2662 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2660.x, x_2660.y, x_2660.z), vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
  let x_2667 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2667, 0.0f, 1.0f);
  let x_2670 : f32 = u_xlat40;
  let x_2671 : f32 = u_xlat40;
  u_xlat40 = (x_2670 * x_2671);
  let x_2673 : f32 = u_xlat40;
  let x_2675 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2673 * x_2675) + 1.000010014f);
  let x_2680 : f32 = u_xlat3.x;
  let x_2682 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2680 * x_2682);
  let x_2685 : f32 = u_xlat40;
  let x_2686 : f32 = u_xlat40;
  u_xlat40 = (x_2685 * x_2686);
  let x_2689 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2689, 0.100000001f);
  let x_2693 : f32 = u_xlat40;
  let x_2695 : f32 = u_xlat3.x;
  u_xlat40 = (x_2693 * x_2695);
  let x_2697 : f32 = u_xlat63;
  let x_2698 : f32 = u_xlat40;
  u_xlat40 = (x_2697 * x_2698);
  let x_2700 : f32 = u_xlat62;
  let x_2701 : f32 = u_xlat40;
  u_xlat40 = (x_2700 / x_2701);
  let x_2703 : vec4<f32> = u_xlat5;
  let x_2705 : f32 = u_xlat40;
  let x_2708 : vec4<f32> = u_xlat4;
  let x_2710 : vec3<f32> = ((vec3<f32>(x_2703.x, x_2703.y, x_2703.z) * vec3<f32>(x_2705, x_2705, x_2705)) + vec3<f32>(x_2708.x, x_2708.y, x_2708.z));
  let x_2711 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2710.x, x_2710.y, x_2710.z, x_2711.w);
  let x_2713 : vec4<f32> = u_xlat6;
  let x_2715 : vec4<f32> = u_xlat8;
  let x_2717 : vec3<f32> = (vec3<f32>(x_2713.x, x_2713.y, x_2713.z) * vec3<f32>(x_2715.x, x_2715.y, x_2715.z));
  let x_2718 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2717.x, x_2717.y, x_2717.z, x_2718.w);
  let x_2721 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2723 : f32 = x_2510.unity_LightData.y;
  u_xlat40 = min(x_2721, x_2723);
  let x_2727 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2727));
  let x_2731 : f32 = x_2305.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2733 : f32 = x_2305.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2735 : f32 = x_2305.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2737 : f32 = x_2305.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2738 : vec4<f32> = vec4<f32>(x_2731, x_2733, x_2735, x_2737);
  let x_2744 : vec4<bool> = (vec4<f32>(x_2738.x, x_2738.y, x_2738.z, x_2738.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb3 = vec2<bool>(x_2744.x, x_2744.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2755 : u32 = u_xlatu_loop_1;
    let x_2756 : u32 = u_xlatu40;
    if ((x_2755 < x_2756)) {
    } else {
      break;
    }
    let x_2759 : u32 = u_xlatu_loop_1;
    u_xlatu65 = (x_2759 >> 2u);
    let x_2763 : u32 = u_xlatu_loop_1;
    u_xlati66 = bitcast<i32>((x_2763 & 3u));
    let x_2766 : u32 = u_xlatu65;
    let x_2769 : vec4<f32> = x_2510.unity_LightIndices[bitcast<i32>(x_2766)];
    let x_2779 : i32 = u_xlati66;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2784 : vec4<u32> = indexable[x_2779];
    u_xlat65 = dot(x_2769, bitcast<vec4<f32>>(x_2784));
    let x_2787 : f32 = u_xlat65;
    u_xlatu65 = bitcast<u32>(i32(x_2787));
    let x_2790 : vec3<f32> = vs_TEXCOORD7;
    let x_2802 : u32 = u_xlatu65;
    let x_2805 : vec4<f32> = x_2801.x_AdditionalLightsPosition[bitcast<i32>(x_2802)];
    let x_2808 : u32 = u_xlatu65;
    let x_2811 : vec4<f32> = x_2801.x_AdditionalLightsPosition[bitcast<i32>(x_2808)];
    let x_2813 : vec3<f32> = ((-(x_2790) * vec3<f32>(x_2805.w, x_2805.w, x_2805.w)) + vec3<f32>(x_2811.x, x_2811.y, x_2811.z));
    let x_2814 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2813.x, x_2813.y, x_2813.z, x_2814.w);
    let x_2817 : vec4<f32> = u_xlat9;
    let x_2819 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_2817.x, x_2817.y, x_2817.z), vec3<f32>(x_2819.x, x_2819.y, x_2819.z));
    let x_2822 : f32 = u_xlat66;
    u_xlat66 = max(x_2822, 6.10351562e-05f);
    let x_2825 : f32 = u_xlat66;
    u_xlat67 = inverseSqrt(x_2825);
    let x_2827 : f32 = u_xlat67;
    let x_2829 : vec4<f32> = u_xlat9;
    let x_2831 : vec3<f32> = (vec3<f32>(x_2827, x_2827, x_2827) * vec3<f32>(x_2829.x, x_2829.y, x_2829.z));
    let x_2832 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2831.x, x_2831.y, x_2831.z, x_2832.w);
    let x_2835 : f32 = u_xlat66;
    u_xlat68 = (1.0f / x_2835);
    let x_2837 : f32 = u_xlat66;
    let x_2838 : u32 = u_xlatu65;
    let x_2841 : f32 = x_2801.x_AdditionalLightsAttenuation[bitcast<i32>(x_2838)].x;
    u_xlat66 = (x_2837 * x_2841);
    let x_2843 : f32 = u_xlat66;
    let x_2845 : f32 = u_xlat66;
    u_xlat66 = ((-(x_2843) * x_2845) + 1.0f);
    let x_2848 : f32 = u_xlat66;
    u_xlat66 = max(x_2848, 0.0f);
    let x_2850 : f32 = u_xlat66;
    let x_2851 : f32 = u_xlat66;
    u_xlat66 = (x_2850 * x_2851);
    let x_2853 : f32 = u_xlat66;
    let x_2854 : f32 = u_xlat68;
    u_xlat66 = (x_2853 * x_2854);
    let x_2856 : u32 = u_xlatu65;
    let x_2859 : vec4<f32> = x_2801.x_AdditionalLightsSpotDir[bitcast<i32>(x_2856)];
    let x_2861 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_2859.x, x_2859.y, x_2859.z), vec3<f32>(x_2861.x, x_2861.y, x_2861.z));
    let x_2864 : f32 = u_xlat68;
    let x_2865 : u32 = u_xlatu65;
    let x_2868 : f32 = x_2801.x_AdditionalLightsAttenuation[bitcast<i32>(x_2865)].z;
    let x_2870 : u32 = u_xlatu65;
    let x_2873 : f32 = x_2801.x_AdditionalLightsAttenuation[bitcast<i32>(x_2870)].w;
    u_xlat68 = ((x_2864 * x_2868) + x_2873);
    let x_2875 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2875, 0.0f, 1.0f);
    let x_2877 : f32 = u_xlat68;
    let x_2878 : f32 = u_xlat68;
    u_xlat68 = (x_2877 * x_2878);
    let x_2880 : f32 = u_xlat66;
    let x_2881 : f32 = u_xlat68;
    u_xlat66 = (x_2880 * x_2881);
    let x_2884 : u32 = u_xlatu65;
    u_xlatu68 = (x_2884 >> 5u);
    let x_2887 : u32 = u_xlatu65;
    u_xlati69 = (1i << bitcast<u32>((bitcast<i32>(x_2887) & 31i)));
    let x_2892 : i32 = u_xlati69;
    let x_2894 : u32 = u_xlatu68;
    let x_2897 : f32 = x_2305.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2894)].el;
    u_xlati68 = bitcast<i32>((bitcast<u32>(x_2892) & bitcast<u32>(x_2897)));
    let x_2901 : i32 = u_xlati68;
    if ((x_2901 != 0i)) {
      let x_2911 : u32 = u_xlatu65;
      let x_2914 : f32 = x_2910.x_AdditionalLightsLightTypes[bitcast<i32>(x_2911)].el;
      u_xlati68 = i32(x_2914);
      let x_2916 : i32 = u_xlati68;
      u_xlati69 = select(1i, 0i, (x_2916 != 0i));
      let x_2920 : u32 = u_xlatu65;
      u_xlati70 = (bitcast<i32>(x_2920) << bitcast<u32>(2i));
      let x_2923 : i32 = u_xlati69;
      if ((x_2923 != 0i)) {
        let x_2927 : vec3<f32> = vs_TEXCOORD7;
        let x_2929 : i32 = u_xlati70;
        let x_2932 : i32 = u_xlati70;
        let x_2936 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[((x_2929 + 1i) / 4i)][((x_2932 + 1i) % 4i)];
        let x_2938 : vec3<f32> = (vec3<f32>(x_2927.y, x_2927.y, x_2927.y) * vec3<f32>(x_2936.x, x_2936.y, x_2936.w));
        let x_2939 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2938.x, x_2938.y, x_2938.z, x_2939.w);
        let x_2941 : i32 = u_xlati70;
        let x_2943 : i32 = u_xlati70;
        let x_2946 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[(x_2941 / 4i)][(x_2943 % 4i)];
        let x_2948 : vec3<f32> = vs_TEXCOORD7;
        let x_2951 : vec4<f32> = u_xlat11;
        let x_2953 : vec3<f32> = ((vec3<f32>(x_2946.x, x_2946.y, x_2946.w) * vec3<f32>(x_2948.x, x_2948.x, x_2948.x)) + vec3<f32>(x_2951.x, x_2951.y, x_2951.z));
        let x_2954 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2953.x, x_2953.y, x_2953.z, x_2954.w);
        let x_2956 : i32 = u_xlati70;
        let x_2959 : i32 = u_xlati70;
        let x_2963 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[((x_2956 + 2i) / 4i)][((x_2959 + 2i) % 4i)];
        let x_2965 : vec3<f32> = vs_TEXCOORD7;
        let x_2968 : vec4<f32> = u_xlat11;
        let x_2970 : vec3<f32> = ((vec3<f32>(x_2963.x, x_2963.y, x_2963.w) * vec3<f32>(x_2965.z, x_2965.z, x_2965.z)) + vec3<f32>(x_2968.x, x_2968.y, x_2968.z));
        let x_2971 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2970.x, x_2970.y, x_2970.z, x_2971.w);
        let x_2973 : vec4<f32> = u_xlat11;
        let x_2975 : i32 = u_xlati70;
        let x_2978 : i32 = u_xlati70;
        let x_2982 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[((x_2975 + 3i) / 4i)][((x_2978 + 3i) % 4i)];
        let x_2984 : vec3<f32> = (vec3<f32>(x_2973.x, x_2973.y, x_2973.z) + vec3<f32>(x_2982.x, x_2982.y, x_2982.w));
        let x_2985 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2984.x, x_2984.y, x_2984.z, x_2985.w);
        let x_2987 : vec4<f32> = u_xlat11;
        let x_2989 : vec4<f32> = u_xlat11;
        let x_2991 : vec2<f32> = (vec2<f32>(x_2987.x, x_2987.y) / vec2<f32>(x_2989.z, x_2989.z));
        let x_2992 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2991.x, x_2991.y, x_2992.z, x_2992.w);
        let x_2994 : vec4<f32> = u_xlat11;
        let x_2997 : vec2<f32> = ((vec2<f32>(x_2994.x, x_2994.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2998 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2997.x, x_2997.y, x_2998.z, x_2998.w);
        let x_3000 : vec4<f32> = u_xlat11;
        let x_3004 : vec2<f32> = clamp(vec2<f32>(x_3000.x, x_3000.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3005 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3004.x, x_3004.y, x_3005.z, x_3005.w);
        let x_3007 : u32 = u_xlatu65;
        let x_3010 : vec4<f32> = x_2910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3007)];
        let x_3012 : vec4<f32> = u_xlat11;
        let x_3015 : u32 = u_xlatu65;
        let x_3018 : vec4<f32> = x_2910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3015)];
        let x_3020 : vec2<f32> = ((vec2<f32>(x_3010.x, x_3010.y) * vec2<f32>(x_3012.x, x_3012.y)) + vec2<f32>(x_3018.z, x_3018.w));
        let x_3021 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3020.x, x_3020.y, x_3021.z, x_3021.w);
      } else {
        let x_3025 : i32 = u_xlati68;
        u_xlatb68 = (x_3025 == 1i);
        let x_3027 : bool = u_xlatb68;
        u_xlati68 = select(0i, 1i, x_3027);
        let x_3029 : i32 = u_xlati68;
        if ((x_3029 != 0i)) {
          let x_3034 : vec3<f32> = vs_TEXCOORD7;
          let x_3036 : i32 = u_xlati70;
          let x_3039 : i32 = u_xlati70;
          let x_3043 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[((x_3036 + 1i) / 4i)][((x_3039 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_3034.y, x_3034.y) * vec2<f32>(x_3043.x, x_3043.y));
          let x_3046 : i32 = u_xlati70;
          let x_3048 : i32 = u_xlati70;
          let x_3051 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[(x_3046 / 4i)][(x_3048 % 4i)];
          let x_3053 : vec3<f32> = vs_TEXCOORD7;
          let x_3056 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3051.x, x_3051.y) * vec2<f32>(x_3053.x, x_3053.x)) + x_3056);
          let x_3058 : i32 = u_xlati70;
          let x_3061 : i32 = u_xlati70;
          let x_3065 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[((x_3058 + 2i) / 4i)][((x_3061 + 2i) % 4i)];
          let x_3067 : vec3<f32> = vs_TEXCOORD7;
          let x_3070 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3065.x, x_3065.y) * vec2<f32>(x_3067.z, x_3067.z)) + x_3070);
          let x_3072 : vec2<f32> = u_xlat51;
          let x_3073 : i32 = u_xlati70;
          let x_3076 : i32 = u_xlati70;
          let x_3080 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[((x_3073 + 3i) / 4i)][((x_3076 + 3i) % 4i)];
          u_xlat51 = (x_3072 + vec2<f32>(x_3080.x, x_3080.y));
          let x_3083 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3083 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3086 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_3086);
          let x_3088 : u32 = u_xlatu65;
          let x_3091 : vec4<f32> = x_2910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3088)];
          let x_3093 : vec2<f32> = u_xlat51;
          let x_3095 : u32 = u_xlatu65;
          let x_3098 : vec4<f32> = x_2910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3095)];
          let x_3100 : vec2<f32> = ((vec2<f32>(x_3091.x, x_3091.y) * x_3093) + vec2<f32>(x_3098.z, x_3098.w));
          let x_3101 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3100.x, x_3100.y, x_3101.z, x_3101.w);
        } else {
          let x_3104 : vec3<f32> = vs_TEXCOORD7;
          let x_3106 : i32 = u_xlati70;
          let x_3109 : i32 = u_xlati70;
          let x_3113 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[((x_3106 + 1i) / 4i)][((x_3109 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3104.y, x_3104.y, x_3104.y, x_3104.y) * x_3113);
          let x_3115 : i32 = u_xlati70;
          let x_3117 : i32 = u_xlati70;
          let x_3120 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[(x_3115 / 4i)][(x_3117 % 4i)];
          let x_3121 : vec3<f32> = vs_TEXCOORD7;
          let x_3124 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3120 * vec4<f32>(x_3121.x, x_3121.x, x_3121.x, x_3121.x)) + x_3124);
          let x_3126 : i32 = u_xlati70;
          let x_3129 : i32 = u_xlati70;
          let x_3133 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[((x_3126 + 2i) / 4i)][((x_3129 + 2i) % 4i)];
          let x_3134 : vec3<f32> = vs_TEXCOORD7;
          let x_3137 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3133 * vec4<f32>(x_3134.z, x_3134.z, x_3134.z, x_3134.z)) + x_3137);
          let x_3139 : vec4<f32> = u_xlat12;
          let x_3140 : i32 = u_xlati70;
          let x_3143 : i32 = u_xlati70;
          let x_3147 : vec4<f32> = x_2910.x_AdditionalLightsWorldToLights[((x_3140 + 3i) / 4i)][((x_3143 + 3i) % 4i)];
          u_xlat12 = (x_3139 + x_3147);
          let x_3149 : vec4<f32> = u_xlat12;
          let x_3151 : vec4<f32> = u_xlat12;
          let x_3153 : vec3<f32> = (vec3<f32>(x_3149.x, x_3149.y, x_3149.z) / vec3<f32>(x_3151.w, x_3151.w, x_3151.w));
          let x_3154 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3153.x, x_3153.y, x_3153.z, x_3154.w);
          let x_3156 : vec4<f32> = u_xlat12;
          let x_3158 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(vec3<f32>(x_3156.x, x_3156.y, x_3156.z), vec3<f32>(x_3158.x, x_3158.y, x_3158.z));
          let x_3161 : f32 = u_xlat68;
          u_xlat68 = inverseSqrt(x_3161);
          let x_3163 : f32 = u_xlat68;
          let x_3165 : vec4<f32> = u_xlat12;
          let x_3167 : vec3<f32> = (vec3<f32>(x_3163, x_3163, x_3163) * vec3<f32>(x_3165.x, x_3165.y, x_3165.z));
          let x_3168 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3167.x, x_3167.y, x_3167.z, x_3168.w);
          let x_3170 : vec4<f32> = u_xlat12;
          u_xlat68 = dot(abs(vec3<f32>(x_3170.x, x_3170.y, x_3170.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3175 : f32 = u_xlat68;
          u_xlat68 = max(x_3175, 0.000001f);
          let x_3178 : f32 = u_xlat68;
          u_xlat68 = (1.0f / x_3178);
          let x_3180 : f32 = u_xlat68;
          let x_3182 : vec4<f32> = u_xlat12;
          let x_3184 : vec3<f32> = (vec3<f32>(x_3180, x_3180, x_3180) * vec3<f32>(x_3182.z, x_3182.x, x_3182.y));
          let x_3185 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3184.x, x_3184.y, x_3184.z, x_3185.w);
          let x_3188 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3188);
          let x_3192 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3192, 0.0f, 1.0f);
          let x_3196 : vec4<f32> = u_xlat13;
          let x_3199 : vec4<bool> = (vec4<f32>(x_3196.y, x_3196.z, x_3196.y, x_3196.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_3199.x, x_3199.y);
          let x_3202 : bool = u_xlatb51.x;
          if (x_3202) {
            let x_3207 : f32 = u_xlat13.x;
            x_3203 = x_3207;
          } else {
            let x_3210 : f32 = u_xlat13.x;
            x_3203 = -(x_3210);
          }
          let x_3212 : f32 = x_3203;
          u_xlat51.x = x_3212;
          let x_3215 : bool = u_xlatb51.y;
          if (x_3215) {
            let x_3220 : f32 = u_xlat13.x;
            x_3216 = x_3220;
          } else {
            let x_3223 : f32 = u_xlat13.x;
            x_3216 = -(x_3223);
          }
          let x_3225 : f32 = x_3216;
          u_xlat51.y = x_3225;
          let x_3227 : vec4<f32> = u_xlat12;
          let x_3229 : f32 = u_xlat68;
          let x_3232 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_3227.x, x_3227.y) * vec2<f32>(x_3229, x_3229)) + x_3232);
          let x_3234 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_3234 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3237 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_3237, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3241 : u32 = u_xlatu65;
          let x_3244 : vec4<f32> = x_2910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3241)];
          let x_3246 : vec2<f32> = u_xlat51;
          let x_3248 : u32 = u_xlatu65;
          let x_3251 : vec4<f32> = x_2910.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3248)];
          let x_3253 : vec2<f32> = ((vec2<f32>(x_3244.x, x_3244.y) * x_3246) + vec2<f32>(x_3251.z, x_3251.w));
          let x_3254 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3253.x, x_3253.y, x_3254.z, x_3254.w);
        }
      }
      let x_3261 : vec4<f32> = u_xlat11;
      let x_3264 : f32 = x_126.x_GlobalMipBias.x;
      let x_3265 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3261.x, x_3261.y), x_3264);
      u_xlat11 = x_3265;
      let x_3267 : bool = u_xlatb3.y;
      if (x_3267) {
        let x_3272 : f32 = u_xlat11.w;
        x_3268 = x_3272;
      } else {
        let x_3275 : f32 = u_xlat11.x;
        x_3268 = x_3275;
      }
      let x_3276 : f32 = x_3268;
      u_xlat68 = x_3276;
      let x_3278 : bool = u_xlatb3.x;
      if (x_3278) {
        let x_3282 : vec4<f32> = u_xlat11;
        x_3279 = vec3<f32>(x_3282.x, x_3282.y, x_3282.z);
      } else {
        let x_3285 : f32 = u_xlat68;
        x_3279 = vec3<f32>(x_3285, x_3285, x_3285);
      }
      let x_3287 : vec3<f32> = x_3279;
      let x_3288 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3287.x, x_3287.y, x_3287.z, x_3288.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3294 : vec4<f32> = u_xlat11;
    let x_3296 : u32 = u_xlatu65;
    let x_3299 : vec4<f32> = x_2801.x_AdditionalLightsColor[bitcast<i32>(x_3296)];
    let x_3301 : vec3<f32> = (vec3<f32>(x_3294.x, x_3294.y, x_3294.z) * vec3<f32>(x_3299.x, x_3299.y, x_3299.z));
    let x_3302 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3301.x, x_3301.y, x_3301.z, x_3302.w);
    let x_3304 : f32 = u_xlat43;
    let x_3306 : vec4<f32> = u_xlat11;
    let x_3308 : vec3<f32> = (vec3<f32>(x_3304, x_3304, x_3304) * vec3<f32>(x_3306.x, x_3306.y, x_3306.z));
    let x_3309 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3308.x, x_3308.y, x_3308.z, x_3309.w);
    let x_3311 : vec4<f32> = u_xlat1;
    let x_3313 : vec4<f32> = u_xlat10;
    u_xlat65 = dot(vec3<f32>(x_3311.x, x_3311.y, x_3311.z), vec3<f32>(x_3313.x, x_3313.y, x_3313.z));
    let x_3316 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3316, 0.0f, 1.0f);
    let x_3318 : f32 = u_xlat65;
    let x_3319 : f32 = u_xlat66;
    u_xlat65 = (x_3318 * x_3319);
    let x_3321 : f32 = u_xlat65;
    let x_3323 : vec4<f32> = u_xlat11;
    let x_3325 : vec3<f32> = (vec3<f32>(x_3321, x_3321, x_3321) * vec3<f32>(x_3323.x, x_3323.y, x_3323.z));
    let x_3326 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3326.w);
    let x_3328 : vec4<f32> = u_xlat9;
    let x_3330 : f32 = u_xlat67;
    let x_3333 : vec4<f32> = u_xlat7;
    let x_3335 : vec3<f32> = ((vec3<f32>(x_3328.x, x_3328.y, x_3328.z) * vec3<f32>(x_3330, x_3330, x_3330)) + vec3<f32>(x_3333.x, x_3333.y, x_3333.z));
    let x_3336 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3335.x, x_3335.y, x_3335.z, x_3336.w);
    let x_3338 : vec4<f32> = u_xlat9;
    let x_3340 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3338.x, x_3338.y, x_3338.z), vec3<f32>(x_3340.x, x_3340.y, x_3340.z));
    let x_3343 : f32 = u_xlat65;
    u_xlat65 = max(x_3343, 1.17549435e-37f);
    let x_3345 : f32 = u_xlat65;
    u_xlat65 = inverseSqrt(x_3345);
    let x_3347 : f32 = u_xlat65;
    let x_3349 : vec4<f32> = u_xlat9;
    let x_3351 : vec3<f32> = (vec3<f32>(x_3347, x_3347, x_3347) * vec3<f32>(x_3349.x, x_3349.y, x_3349.z));
    let x_3352 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3351.x, x_3351.y, x_3351.z, x_3352.w);
    let x_3354 : vec4<f32> = u_xlat1;
    let x_3356 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_3354.x, x_3354.y, x_3354.z), vec3<f32>(x_3356.x, x_3356.y, x_3356.z));
    let x_3359 : f32 = u_xlat65;
    u_xlat65 = clamp(x_3359, 0.0f, 1.0f);
    let x_3361 : vec4<f32> = u_xlat10;
    let x_3363 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3361.x, x_3361.y, x_3361.z), vec3<f32>(x_3363.x, x_3363.y, x_3363.z));
    let x_3366 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3366, 0.0f, 1.0f);
    let x_3368 : f32 = u_xlat65;
    let x_3369 : f32 = u_xlat65;
    u_xlat65 = (x_3368 * x_3369);
    let x_3371 : f32 = u_xlat65;
    let x_3373 : f32 = u_xlat0.x;
    u_xlat65 = ((x_3371 * x_3373) + 1.000010014f);
    let x_3376 : f32 = u_xlat66;
    let x_3377 : f32 = u_xlat66;
    u_xlat66 = (x_3376 * x_3377);
    let x_3379 : f32 = u_xlat65;
    let x_3380 : f32 = u_xlat65;
    u_xlat65 = (x_3379 * x_3380);
    let x_3382 : f32 = u_xlat66;
    u_xlat66 = max(x_3382, 0.100000001f);
    let x_3384 : f32 = u_xlat65;
    let x_3385 : f32 = u_xlat66;
    u_xlat65 = (x_3384 * x_3385);
    let x_3387 : f32 = u_xlat63;
    let x_3388 : f32 = u_xlat65;
    u_xlat65 = (x_3387 * x_3388);
    let x_3390 : f32 = u_xlat62;
    let x_3391 : f32 = u_xlat65;
    u_xlat65 = (x_3390 / x_3391);
    let x_3393 : vec4<f32> = u_xlat5;
    let x_3395 : f32 = u_xlat65;
    let x_3398 : vec4<f32> = u_xlat4;
    let x_3400 : vec3<f32> = ((vec3<f32>(x_3393.x, x_3393.y, x_3393.z) * vec3<f32>(x_3395, x_3395, x_3395)) + vec3<f32>(x_3398.x, x_3398.y, x_3398.z));
    let x_3401 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3400.x, x_3400.y, x_3400.z, x_3401.w);
    let x_3403 : vec4<f32> = u_xlat9;
    let x_3405 : vec4<f32> = u_xlat11;
    let x_3408 : vec4<f32> = u_xlat8;
    let x_3410 : vec3<f32> = ((vec3<f32>(x_3403.x, x_3403.y, x_3403.z) * vec3<f32>(x_3405.x, x_3405.y, x_3405.z)) + vec3<f32>(x_3408.x, x_3408.y, x_3408.z));
    let x_3411 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3410.x, x_3410.y, x_3410.z, x_3411.w);

    continuing {
      let x_3413 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3413 + bitcast<u32>(1i));
    }
  }
  let x_3415 : vec3<f32> = u_xlat2;
  let x_3416 : f32 = u_xlat20;
  let x_3419 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_3415 * vec3<f32>(x_3416, x_3416, x_3416)) + vec3<f32>(x_3419.x, x_3419.y, x_3419.z));
  let x_3422 : vec4<f32> = u_xlat8;
  let x_3424 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3422.x, x_3422.y, x_3422.z) + x_3424);
  let x_3426 : f32 = u_xlat60;
  let x_3428 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3426, x_3426, x_3426) * x_3428);
  let x_3430 : f32 = u_xlat61;
  let x_3431 : f32 = u_xlat61;
  u_xlat60 = (x_3430 * -(x_3431));
  let x_3434 : f32 = u_xlat60;
  u_xlat60 = exp2(x_3434);
  let x_3438 : vec3<f32> = u_xlat0;
  let x_3439 : f32 = u_xlat60;
  let x_3441 : vec3<f32> = (x_3438 * vec3<f32>(x_3439, x_3439, x_3439));
  let x_3442 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3441.x, x_3441.y, x_3441.z, x_3442.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

