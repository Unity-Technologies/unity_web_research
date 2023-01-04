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

@group(0) @binding(13) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_595 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2242 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2443 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2709 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2816 : AdditionalLightsCookies;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb68 : bool;
  var u_xlat44 : f32;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
  var u_xlat23 : vec3<f32>;
  var x_571 : vec3<f32>;
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
  var x_2194 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat47 : f32;
  var x_2324 : f32;
  var x_2335 : vec3<f32>;
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
  var x_3108 : f32;
  var x_3121 : f32;
  var x_3173 : f32;
  var x_3184 : vec3<f32>;
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
  let x_291 : f32 = u_xlat67;
  u_xlatb68 = (0.005f >= x_291);
  let x_293 : bool = u_xlatb68;
  if (((select(0i, 1i, x_293) * -1i) != 0i)) {
    discard;
  }
  let x_302 : f32 = u_xlat67;
  u_xlat67 = (x_302 + 6.10351562e-05f);
  let x_305 : vec4<f32> = u_xlat4;
  let x_306 : f32 = u_xlat67;
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
  let x_379 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_379;
  let x_382 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_382;
  let x_385 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_385;
  let x_388 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_388;
  let x_391 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_391;
  let x_394 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_394;
  let x_397 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_397;
  let x_400 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_400;
  let x_402 : vec4<f32> = u_xlat6;
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_402 + x_403);
  let x_406 : f32 = u_xlat0.z;
  u_xlat7.x = x_406;
  let x_409 : f32 = u_xlat1.z;
  u_xlat7.y = x_409;
  let x_412 : f32 = u_xlat2.z;
  u_xlat7.z = x_412;
  let x_415 : f32 = u_xlat3.y;
  u_xlat7.w = x_415;
  let x_417 : vec4<f32> = u_xlat9;
  let x_420 : f32 = x_30.x_Smoothness0;
  let x_422 : f32 = x_30.x_Smoothness1;
  let x_424 : f32 = x_30.x_Smoothness2;
  let x_426 : f32 = x_30.x_Smoothness3;
  let x_429 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_417) * vec4<f32>(x_420, x_422, x_424, x_426)) + x_429);
  let x_433 : f32 = x_30.x_LayerHasMask0;
  let x_436 : f32 = x_30.x_LayerHasMask1;
  let x_439 : f32 = x_30.x_LayerHasMask2;
  let x_442 : f32 = x_30.x_LayerHasMask3;
  let x_444 : vec4<f32> = u_xlat7;
  let x_446 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_433, x_436, x_439, x_442) * x_444) + x_446);
  let x_449 : vec4<f32> = u_xlat4;
  let x_450 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(x_449, x_450);
  let x_453 : f32 = u_xlat0.x;
  u_xlat7.x = x_453;
  let x_456 : f32 = u_xlat1.x;
  u_xlat7.y = x_456;
  let x_459 : f32 = u_xlat2.x;
  u_xlat7.z = x_459;
  let x_462 : f32 = u_xlat3.x;
  u_xlat7.w = x_462;
  let x_464 : vec4<f32> = u_xlat7;
  let x_467 : f32 = x_30.x_Metallic0;
  let x_470 : f32 = x_30.x_Metallic1;
  let x_473 : f32 = x_30.x_Metallic2;
  let x_476 : f32 = x_30.x_Metallic3;
  u_xlat7 = (x_464 + -(vec4<f32>(x_467, x_470, x_473, x_476)));
  let x_481 : f32 = x_30.x_LayerHasMask0;
  let x_483 : f32 = x_30.x_LayerHasMask1;
  let x_485 : f32 = x_30.x_LayerHasMask2;
  let x_487 : f32 = x_30.x_LayerHasMask3;
  let x_489 : vec4<f32> = u_xlat7;
  let x_492 : f32 = x_30.x_Metallic0;
  let x_494 : f32 = x_30.x_Metallic1;
  let x_496 : f32 = x_30.x_Metallic2;
  let x_498 : f32 = x_30.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_481, x_483, x_485, x_487) * x_489) + vec4<f32>(x_492, x_494, x_496, x_498));
  let x_501 : vec4<f32> = u_xlat4;
  let x_502 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_501, x_502);
  let x_506 : f32 = u_xlat0.y;
  u_xlat3.x = x_506;
  let x_509 : f32 = u_xlat1.y;
  u_xlat3.y = x_509;
  let x_512 : f32 = u_xlat2.y;
  u_xlat3.z = x_512;
  let x_514 : vec4<f32> = u_xlat6;
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_514) + x_516);
  let x_519 : f32 = x_30.x_LayerHasMask0;
  let x_521 : f32 = x_30.x_LayerHasMask1;
  let x_523 : f32 = x_30.x_LayerHasMask2;
  let x_525 : f32 = x_30.x_LayerHasMask3;
  let x_527 : vec4<f32> = u_xlat1;
  let x_529 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_519, x_521, x_523, x_525) * x_527) + x_529);
  let x_532 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat22 = dot(x_532, x_533);
  let x_537 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_537 == 0.0f);
  let x_542 : vec3<f32> = vs_TEXCOORD7;
  let x_546 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat23 = (-(x_542) + x_546);
  let x_548 : vec3<f32> = u_xlat23;
  let x_549 : vec3<f32> = u_xlat23;
  u_xlat2.x = dot(x_548, x_549);
  let x_553 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_553);
  let x_556 : vec3<f32> = u_xlat23;
  let x_557 : vec3<f32> = u_xlat2;
  u_xlat23 = (x_556 * vec3<f32>(x_557.x, x_557.x, x_557.x));
  let x_561 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_561;
  let x_564 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_564;
  let x_568 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_574 : vec3<f32> = u_xlat23;
    x_571 = x_574;
  } else {
    let x_576 : vec3<f32> = u_xlat2;
    x_571 = x_576;
  }
  let x_577 : vec3<f32> = x_571;
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_581 : vec3<f32> = vs_TEXCOORD3;
  let x_582 : vec3<f32> = vs_TEXCOORD3;
  u_xlat67 = dot(x_581, x_582);
  let x_584 : f32 = u_xlat67;
  u_xlat67 = inverseSqrt(x_584);
  let x_586 : f32 = u_xlat67;
  let x_588 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_586, x_586, x_586) * x_588);
  let x_590 : vec3<f32> = vs_TEXCOORD7;
  let x_597 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres0;
  let x_600 : vec3<f32> = (x_590 + -(vec3<f32>(x_597.x, x_597.y, x_597.z)));
  let x_601 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec3<f32> = vs_TEXCOORD7;
  let x_605 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres1;
  let x_608 : vec3<f32> = (x_603 + -(vec3<f32>(x_605.x, x_605.y, x_605.z)));
  let x_609 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec3<f32> = vs_TEXCOORD7;
  let x_614 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres2;
  let x_617 : vec3<f32> = (x_611 + -(vec3<f32>(x_614.x, x_614.y, x_614.z)));
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec3<f32> = vs_TEXCOORD7;
  let x_622 : vec4<f32> = x_595.x_CascadeShadowSplitSpheres3;
  let x_625 : vec3<f32> = (x_620 + -(vec3<f32>(x_622.x, x_622.y, x_622.z)));
  let x_626 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat3;
  let x_630 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_640 : vec4<f32> = u_xlat6;
  let x_642 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_646 : vec4<f32> = u_xlat7;
  let x_648 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_646.x, x_646.y, x_646.z), vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec4<f32> = x_595.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_654 < x_656);
  let x_659 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_659);
  let x_663 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_663);
  let x_667 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_667);
  let x_671 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_671);
  let x_675 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_675);
  let x_680 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_680);
  let x_684 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_684);
  let x_687 : vec4<f32> = u_xlat3;
  let x_689 : vec4<f32> = u_xlat4;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) + vec3<f32>(x_689.y, x_689.z, x_689.w));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat3;
  let x_697 : vec3<f32> = max(vec3<f32>(x_694.x, x_694.y, x_694.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_698 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_698.x, x_697.x, x_697.y, x_697.z);
  let x_700 : vec4<f32> = u_xlat4;
  u_xlat67 = dot(x_700, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_705 : f32 = u_xlat67;
  u_xlat67 = (-(x_705) + 4.0f);
  let x_710 : f32 = u_xlat67;
  u_xlatu67 = u32(x_710);
  let x_714 : u32 = u_xlatu67;
  u_xlati67 = (bitcast<i32>(x_714) << bitcast<u32>(2i));
  let x_717 : vec3<f32> = vs_TEXCOORD7;
  let x_719 : i32 = u_xlati67;
  let x_722 : i32 = u_xlati67;
  let x_726 : vec4<f32> = x_595.x_MainLightWorldToShadow[((x_719 + 1i) / 4i)][((x_722 + 1i) % 4i)];
  let x_728 : vec3<f32> = (vec3<f32>(x_717.y, x_717.y, x_717.y) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : i32 = u_xlati67;
  let x_733 : i32 = u_xlati67;
  let x_736 : vec4<f32> = x_595.x_MainLightWorldToShadow[(x_731 / 4i)][(x_733 % 4i)];
  let x_738 : vec3<f32> = vs_TEXCOORD7;
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738.x, x_738.x, x_738.x)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati67;
  let x_749 : i32 = u_xlati67;
  let x_753 : vec4<f32> = x_595.x_MainLightWorldToShadow[((x_746 + 2i) / 4i)][((x_749 + 2i) % 4i)];
  let x_755 : vec3<f32> = vs_TEXCOORD7;
  let x_758 : vec4<f32> = u_xlat3;
  let x_760 : vec3<f32> = ((vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755.z, x_755.z, x_755.z)) + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat3;
  let x_765 : i32 = u_xlati67;
  let x_768 : i32 = u_xlati67;
  let x_772 : vec4<f32> = x_595.x_MainLightWorldToShadow[((x_765 + 3i) / 4i)][((x_768 + 3i) % 4i)];
  let x_774 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_778 : f32 = vs_TEXCOORD7.y;
  let x_780 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat67 = (x_778 * x_780);
  let x_783 : f32 = x_126.unity_MatrixV[0i].z;
  let x_785 : f32 = vs_TEXCOORD7.x;
  let x_787 : f32 = u_xlat67;
  u_xlat67 = ((x_783 * x_785) + x_787);
  let x_790 : f32 = x_126.unity_MatrixV[2i].z;
  let x_792 : f32 = vs_TEXCOORD7.z;
  let x_794 : f32 = u_xlat67;
  u_xlat67 = ((x_790 * x_792) + x_794);
  let x_796 : f32 = u_xlat67;
  let x_798 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat67 = (x_796 + x_798);
  let x_800 : f32 = u_xlat67;
  let x_803 : f32 = x_126.x_ProjectionParams.y;
  u_xlat67 = (-(x_800) + -(x_803));
  let x_806 : f32 = u_xlat67;
  u_xlat67 = max(x_806, 0.0f);
  let x_808 : f32 = u_xlat67;
  let x_810 : f32 = x_126.unity_FogParams.x;
  u_xlat67 = (x_808 * x_810);
  let x_817 : vec4<f32> = vs_TEXCOORD0;
  let x_820 : f32 = x_126.x_GlobalMipBias.x;
  let x_821 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_817.z, x_817.w), x_820);
  let x_822 : vec3<f32> = vec3<f32>(x_821.x, x_821.y, x_821.z);
  let x_823 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_827 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_828 : vec2<f32> = vec2<f32>(x_827.x, x_827.y);
  let x_832 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_828.x, x_828.y));
  let x_833 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat6;
  let x_837 : vec4<f32> = hlslcc_FragCoord;
  let x_839 : vec2<f32> = (vec2<f32>(x_835.x, x_835.y) * vec2<f32>(x_837.x, x_837.y));
  let x_840 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
  let x_844 : f32 = u_xlat6.y;
  let x_846 : f32 = x_126.x_ScaleBiasRt.x;
  let x_849 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat68 = ((x_844 * x_846) + x_849);
  let x_851 : f32 = u_xlat68;
  u_xlat6.z = (-(x_851) + 1.0f);
  let x_856 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_856) * 0.959999979f) + 0.959999979f);
  let x_862 : f32 = u_xlat44;
  let x_863 : f32 = u_xlat68;
  u_xlat69 = (x_862 + -(x_863));
  let x_866 : f32 = u_xlat68;
  let x_868 : vec4<f32> = u_xlat5;
  let x_870 : vec3<f32> = (vec3<f32>(x_866, x_866, x_866) * vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat5;
  let x_877 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_878 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec3<f32> = u_xlat0;
  let x_882 : vec4<f32> = u_xlat5;
  let x_887 : vec3<f32> = ((vec3<f32>(x_880.x, x_880.x, x_880.x) * vec3<f32>(x_882.x, x_882.y, x_882.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : f32 = u_xlat44;
  u_xlat0.x = (-(x_890) + 1.0f);
  let x_895 : f32 = u_xlat0.x;
  let x_897 : f32 = u_xlat0.x;
  u_xlat44 = (x_895 * x_897);
  let x_899 : f32 = u_xlat44;
  u_xlat44 = max(x_899, 0.0078125f);
  let x_902 : f32 = u_xlat44;
  let x_903 : f32 = u_xlat44;
  u_xlat68 = (x_902 * x_903);
  let x_905 : f32 = u_xlat69;
  u_xlat69 = (x_905 + 1.0f);
  let x_907 : f32 = u_xlat69;
  u_xlat69 = clamp(x_907, 0.0f, 1.0f);
  let x_910 : f32 = u_xlat44;
  u_xlat70 = ((x_910 * 4.0f) + 2.0f);
  let x_919 : vec4<f32> = u_xlat6;
  let x_922 : f32 = x_126.x_GlobalMipBias.x;
  let x_923 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_919.x, x_919.z), x_922);
  u_xlat71 = x_923.x;
  let x_925 : f32 = u_xlat71;
  u_xlat6.x = (x_925 + -1.0f);
  let x_929 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_931 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_929 * x_931) + 1.0f);
  let x_935 : f32 = u_xlat22;
  let x_936 : f32 = u_xlat71;
  u_xlat22 = min(x_935, x_936);
  let x_940 : f32 = x_595.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_940);
  let x_942 : bool = u_xlatb71;
  if (x_942) {
    let x_946 : f32 = x_595.x_MainLightShadowParams.y;
    u_xlatb71 = (x_946 == 1.0f);
    let x_948 : bool = u_xlatb71;
    if (x_948) {
      let x_951 : vec4<f32> = u_xlat3;
      let x_954 : vec4<f32> = x_595.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_951.x, x_951.y, x_951.x, x_951.y) + x_954);
      let x_957 : vec4<f32> = u_xlat8;
      let x_958 : vec2<f32> = vec2<f32>(x_957.x, x_957.y);
      let x_960 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_958.x, x_958.y, x_960);
      let x_972 : vec3<f32> = txVec0;
      let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_972.xy, x_972.z);
      u_xlat9.x = x_974;
      let x_977 : vec4<f32> = u_xlat8;
      let x_978 : vec2<f32> = vec2<f32>(x_977.z, x_977.w);
      let x_980 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_978.x, x_978.y, x_980);
      let x_987 : vec3<f32> = txVec1;
      let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_987.xy, x_987.z);
      u_xlat9.y = x_989;
      let x_991 : vec4<f32> = u_xlat3;
      let x_994 : vec4<f32> = x_595.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_991.x, x_991.y, x_991.x, x_991.y) + x_994);
      let x_997 : vec4<f32> = u_xlat8;
      let x_998 : vec2<f32> = vec2<f32>(x_997.x, x_997.y);
      let x_1000 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_998.x, x_998.y, x_1000);
      let x_1007 : vec3<f32> = txVec2;
      let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1007.xy, x_1007.z);
      u_xlat9.z = x_1009;
      let x_1012 : vec4<f32> = u_xlat8;
      let x_1013 : vec2<f32> = vec2<f32>(x_1012.z, x_1012.w);
      let x_1015 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1013.x, x_1013.y, x_1015);
      let x_1022 : vec3<f32> = txVec3;
      let x_1024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1022.xy, x_1022.z);
      u_xlat9.w = x_1024;
      let x_1026 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_1026, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1035 : f32 = x_595.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_1035 == 2.0f);
      let x_1039 : bool = u_xlatb28.x;
      if (x_1039) {
        let x_1043 : vec4<f32> = u_xlat3;
        let x_1046 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1049 : vec2<f32> = ((vec2<f32>(x_1043.x, x_1043.y) * vec2<f32>(x_1046.z, x_1046.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1050 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1049.x, x_1049.y, x_1050.z);
        let x_1052 : vec3<f32> = u_xlat28;
        let x_1054 : vec2<f32> = floor(vec2<f32>(x_1052.x, x_1052.y));
        let x_1055 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1054.x, x_1054.y, x_1055.z);
        let x_1057 : vec4<f32> = u_xlat3;
        let x_1060 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1063 : vec3<f32> = u_xlat28;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.y) * vec2<f32>(x_1060.z, x_1060.w)) + -(vec2<f32>(x_1063.x, x_1063.y)));
        let x_1067 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1069.x, x_1069.x, x_1069.y, x_1069.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1073 : vec4<f32> = u_xlat9;
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1073.x, x_1073.x, x_1073.z, x_1073.z) * vec4<f32>(x_1075.x, x_1075.x, x_1075.z, x_1075.z));
        let x_1080 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1080.y, x_1080.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1085 : vec4<f32> = u_xlat10;
        let x_1088 : vec4<f32> = u_xlat8;
        let x_1091 : vec2<f32> = ((vec2<f32>(x_1085.x, x_1085.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1088.x, x_1088.y)));
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1091.x, x_1092.y, x_1091.y, x_1092.w);
        let x_1094 : vec4<f32> = u_xlat8;
        let x_1097 : vec2<f32> = (-(vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1098 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1097.x, x_1097.y, x_1098.z, x_1098.w);
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1101.x, x_1101.y), vec2<f32>(0.0f, 0.0f));
        let x_1105 : vec2<f32> = u_xlat54;
        let x_1107 : vec2<f32> = u_xlat54;
        let x_1109 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1105) * x_1107) + vec2<f32>(x_1109.x, x_1109.y));
        let x_1112 : vec4<f32> = u_xlat8;
        let x_1114 : vec2<f32> = max(vec2<f32>(x_1112.x, x_1112.y), vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat8;
        let x_1120 : vec4<f32> = u_xlat8;
        let x_1123 : vec4<f32> = u_xlat9;
        let x_1125 : vec2<f32> = ((-(vec2<f32>(x_1117.x, x_1117.y)) * vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(x_1123.y, x_1123.w));
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
        let x_1128 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1128 + vec2<f32>(1.0f, 1.0f));
        let x_1130 : vec4<f32> = u_xlat8;
        let x_1132 : vec2<f32> = (vec2<f32>(x_1130.x, x_1130.y) + vec2<f32>(1.0f, 1.0f));
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec4<f32> = u_xlat9;
        let x_1139 : vec2<f32> = (vec2<f32>(x_1135.x, x_1135.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1140 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1144 : vec2<f32> = (vec2<f32>(x_1142.x, x_1142.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1145 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec2<f32> = u_xlat54;
        let x_1148 : vec2<f32> = (x_1147 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1151 : vec4<f32> = u_xlat8;
        let x_1153 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1154 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec4<f32> = u_xlat9;
        let x_1158 : vec2<f32> = (vec2<f32>(x_1156.y, x_1156.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1158.x, x_1158.y, x_1159.z, x_1159.w);
        let x_1162 : f32 = u_xlat10.x;
        u_xlat11.z = x_1162;
        let x_1165 : f32 = u_xlat8.x;
        u_xlat11.w = x_1165;
        let x_1168 : f32 = u_xlat13.x;
        u_xlat12.z = x_1168;
        let x_1171 : f32 = u_xlat52.x;
        u_xlat12.w = x_1171;
        let x_1173 : vec4<f32> = u_xlat11;
        let x_1175 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1173.z, x_1173.w, x_1173.x, x_1173.z) + vec4<f32>(x_1175.z, x_1175.w, x_1175.x, x_1175.z));
        let x_1179 : f32 = u_xlat11.y;
        u_xlat10.z = x_1179;
        let x_1182 : f32 = u_xlat8.y;
        u_xlat10.w = x_1182;
        let x_1185 : f32 = u_xlat12.y;
        u_xlat13.z = x_1185;
        let x_1188 : f32 = u_xlat52.y;
        u_xlat13.w = x_1188;
        let x_1190 : vec4<f32> = u_xlat10;
        let x_1192 : vec4<f32> = u_xlat13;
        let x_1194 : vec3<f32> = (vec3<f32>(x_1190.z, x_1190.y, x_1190.w) + vec3<f32>(x_1192.z, x_1192.y, x_1192.w));
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
        let x_1197 : vec4<f32> = u_xlat12;
        let x_1199 : vec4<f32> = u_xlat9;
        let x_1201 : vec3<f32> = (vec3<f32>(x_1197.x, x_1197.z, x_1197.w) / vec3<f32>(x_1199.z, x_1199.w, x_1199.y));
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat10;
        let x_1210 : vec3<f32> = (vec3<f32>(x_1204.x, x_1204.y, x_1204.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1211 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
        let x_1213 : vec4<f32> = u_xlat13;
        let x_1215 : vec4<f32> = u_xlat8;
        let x_1217 : vec3<f32> = (vec3<f32>(x_1213.z, x_1213.y, x_1213.w) / vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
        let x_1218 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1218.w);
        let x_1220 : vec4<f32> = u_xlat11;
        let x_1222 : vec3<f32> = (vec3<f32>(x_1220.x, x_1220.y, x_1220.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1223 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
        let x_1225 : vec4<f32> = u_xlat10;
        let x_1228 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1230 : vec3<f32> = (vec3<f32>(x_1225.y, x_1225.x, x_1225.z) * vec3<f32>(x_1228.x, x_1228.x, x_1228.x));
        let x_1231 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
        let x_1233 : vec4<f32> = u_xlat11;
        let x_1236 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1238 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) * vec3<f32>(x_1236.y, x_1236.y, x_1236.y));
        let x_1239 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
        let x_1242 : f32 = u_xlat11.x;
        u_xlat10.w = x_1242;
        let x_1244 : vec3<f32> = u_xlat28;
        let x_1247 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.y, x_1250.w, x_1250.x, x_1250.w));
        let x_1253 : vec3<f32> = u_xlat28;
        let x_1256 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat10;
        let x_1261 : vec2<f32> = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.z, x_1259.w));
        let x_1262 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
        let x_1265 : f32 = u_xlat10.y;
        u_xlat11.w = x_1265;
        let x_1267 : vec4<f32> = u_xlat11;
        let x_1268 : vec2<f32> = vec2<f32>(x_1267.y, x_1267.z);
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1269.x, x_1268.x, x_1269.z, x_1268.y);
        let x_1272 : vec3<f32> = u_xlat28;
        let x_1275 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1278.y));
        let x_1281 : vec3<f32> = u_xlat28;
        let x_1284 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1281.x, x_1281.y, x_1281.x, x_1281.y) * vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y)) + vec4<f32>(x_1287.w, x_1287.y, x_1287.w, x_1287.z));
        let x_1290 : vec3<f32> = u_xlat28;
        let x_1293 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.x, x_1296.w, x_1296.z, x_1296.w));
        let x_1300 : vec4<f32> = u_xlat8;
        let x_1302 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1300.x, x_1300.x, x_1300.x, x_1300.y) * vec4<f32>(x_1302.z, x_1302.w, x_1302.y, x_1302.z));
        let x_1306 : vec4<f32> = u_xlat8;
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1306.y, x_1306.y, x_1306.z, x_1306.z) * x_1308);
        let x_1311 : f32 = u_xlat8.z;
        let x_1313 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1311 * x_1313);
        let x_1317 : vec4<f32> = u_xlat12;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.x, x_1317.y);
        let x_1320 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1328 : vec3<f32> = txVec4;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1328.xy, x_1328.z);
        u_xlat50 = x_1330;
        let x_1332 : vec4<f32> = u_xlat12;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.z, x_1332.w);
        let x_1335 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1343 : vec3<f32> = txVec5;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1343.xy, x_1343.z);
        u_xlat72 = x_1345;
        let x_1346 : f32 = u_xlat72;
        let x_1348 : f32 = u_xlat15.y;
        u_xlat72 = (x_1346 * x_1348);
        let x_1351 : f32 = u_xlat15.x;
        let x_1352 : f32 = u_xlat50;
        let x_1354 : f32 = u_xlat72;
        u_xlat50 = ((x_1351 * x_1352) + x_1354);
        let x_1357 : vec4<f32> = u_xlat13;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.x, x_1357.y);
        let x_1360 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec6;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1367.xy, x_1367.z);
        u_xlat72 = x_1369;
        let x_1371 : f32 = u_xlat15.z;
        let x_1372 : f32 = u_xlat72;
        let x_1374 : f32 = u_xlat50;
        u_xlat50 = ((x_1371 * x_1372) + x_1374);
        let x_1377 : vec4<f32> = u_xlat11;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.x, x_1377.y);
        let x_1380 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec7;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1387.xy, x_1387.z);
        u_xlat72 = x_1389;
        let x_1391 : f32 = u_xlat15.w;
        let x_1392 : f32 = u_xlat72;
        let x_1394 : f32 = u_xlat50;
        u_xlat50 = ((x_1391 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat14;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec8;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1407.xy, x_1407.z);
        u_xlat72 = x_1409;
        let x_1411 : f32 = u_xlat16.x;
        let x_1412 : f32 = u_xlat72;
        let x_1414 : f32 = u_xlat50;
        u_xlat50 = ((x_1411 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat14;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.z, x_1417.w);
        let x_1420 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec9;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat72 = x_1429;
        let x_1431 : f32 = u_xlat16.y;
        let x_1432 : f32 = u_xlat72;
        let x_1434 : f32 = u_xlat50;
        u_xlat50 = ((x_1431 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat11;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.z, x_1437.w);
        let x_1440 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec10;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1447.xy, x_1447.z);
        u_xlat72 = x_1449;
        let x_1451 : f32 = u_xlat16.z;
        let x_1452 : f32 = u_xlat72;
        let x_1454 : f32 = u_xlat50;
        u_xlat50 = ((x_1451 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat10;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec11;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat72 = x_1469;
        let x_1471 : f32 = u_xlat16.w;
        let x_1472 : f32 = u_xlat72;
        let x_1474 : f32 = u_xlat50;
        u_xlat50 = ((x_1471 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat10;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec12;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat72 = x_1489;
        let x_1491 : f32 = u_xlat28.x;
        let x_1492 : f32 = u_xlat72;
        let x_1494 : f32 = u_xlat50;
        u_xlat71 = ((x_1491 * x_1492) + x_1494);
      } else {
        let x_1497 : vec4<f32> = u_xlat3;
        let x_1500 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1503 : vec2<f32> = ((vec2<f32>(x_1497.x, x_1497.y) * vec2<f32>(x_1500.z, x_1500.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1504 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1503.x, x_1503.y, x_1504.z);
        let x_1506 : vec3<f32> = u_xlat28;
        let x_1508 : vec2<f32> = floor(vec2<f32>(x_1506.x, x_1506.y));
        let x_1509 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1508.x, x_1508.y, x_1509.z);
        let x_1511 : vec4<f32> = u_xlat3;
        let x_1514 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1517 : vec3<f32> = u_xlat28;
        let x_1520 : vec2<f32> = ((vec2<f32>(x_1511.x, x_1511.y) * vec2<f32>(x_1514.z, x_1514.w)) + -(vec2<f32>(x_1517.x, x_1517.y)));
        let x_1521 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1520.x, x_1520.y, x_1521.z, x_1521.w);
        let x_1523 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1523.x, x_1523.x, x_1523.y, x_1523.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1526 : vec4<f32> = u_xlat9;
        let x_1528 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1526.x, x_1526.x, x_1526.z, x_1526.z) * vec4<f32>(x_1528.x, x_1528.x, x_1528.z, x_1528.z));
        let x_1531 : vec4<f32> = u_xlat10;
        let x_1535 : vec2<f32> = (vec2<f32>(x_1531.y, x_1531.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1536 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1536.x, x_1535.x, x_1536.z, x_1535.y);
        let x_1538 : vec4<f32> = u_xlat10;
        let x_1541 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1538.x, x_1538.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1541.x, x_1541.y)));
        let x_1545 : vec4<f32> = u_xlat8;
        let x_1548 : vec2<f32> = (-(vec2<f32>(x_1545.x, x_1545.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1549 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1548.x, x_1549.y, x_1548.y, x_1549.w);
        let x_1551 : vec4<f32> = u_xlat8;
        let x_1553 : vec2<f32> = min(vec2<f32>(x_1551.x, x_1551.y), vec2<f32>(0.0f, 0.0f));
        let x_1554 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1553.x, x_1553.y, x_1554.z, x_1554.w);
        let x_1556 : vec4<f32> = u_xlat10;
        let x_1559 : vec4<f32> = u_xlat10;
        let x_1562 : vec4<f32> = u_xlat9;
        let x_1564 : vec2<f32> = ((-(vec2<f32>(x_1556.x, x_1556.y)) * vec2<f32>(x_1559.x, x_1559.y)) + vec2<f32>(x_1562.x, x_1562.z));
        let x_1565 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1564.x, x_1565.y, x_1564.y, x_1565.w);
        let x_1567 : vec4<f32> = u_xlat8;
        let x_1569 : vec2<f32> = max(vec2<f32>(x_1567.x, x_1567.y), vec2<f32>(0.0f, 0.0f));
        let x_1570 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1569.x, x_1569.y, x_1570.z, x_1570.w);
        let x_1572 : vec4<f32> = u_xlat10;
        let x_1575 : vec4<f32> = u_xlat10;
        let x_1578 : vec4<f32> = u_xlat9;
        let x_1580 : vec2<f32> = ((-(vec2<f32>(x_1572.x, x_1572.y)) * vec2<f32>(x_1575.x, x_1575.y)) + vec2<f32>(x_1578.y, x_1578.w));
        let x_1581 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1581.x, x_1580.x, x_1581.z, x_1580.y);
        let x_1583 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1583 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1587 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1587 * 0.081632003f);
        let x_1591 : vec2<f32> = u_xlat52;
        let x_1594 : vec2<f32> = (vec2<f32>(x_1591.y, x_1591.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1595 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1594.x, x_1594.y, x_1595.z, x_1595.w);
        let x_1597 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1597.x, x_1597.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1601 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1601 * 0.081632003f);
        let x_1605 : f32 = u_xlat12.y;
        u_xlat10.x = x_1605;
        let x_1607 : vec4<f32> = u_xlat8;
        let x_1614 : vec2<f32> = ((vec2<f32>(x_1607.x, x_1607.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1615.x, x_1614.x, x_1615.z, x_1614.y);
        let x_1617 : vec4<f32> = u_xlat8;
        let x_1621 : vec2<f32> = ((vec2<f32>(x_1617.x, x_1617.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1621.x, x_1622.y, x_1621.y, x_1622.w);
        let x_1625 : f32 = u_xlat52.x;
        u_xlat9.y = x_1625;
        let x_1628 : f32 = u_xlat11.y;
        u_xlat9.w = x_1628;
        let x_1630 : vec4<f32> = u_xlat9;
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1630 + x_1631);
        let x_1633 : vec4<f32> = u_xlat8;
        let x_1636 : vec2<f32> = ((vec2<f32>(x_1633.y, x_1633.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1637 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1637.x, x_1636.x, x_1637.z, x_1636.y);
        let x_1639 : vec4<f32> = u_xlat8;
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1639.y, x_1639.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1643 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1642.x, x_1643.y, x_1642.y, x_1643.w);
        let x_1646 : f32 = u_xlat52.y;
        u_xlat11.y = x_1646;
        let x_1648 : vec4<f32> = u_xlat11;
        let x_1649 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1648 + x_1649);
        let x_1651 : vec4<f32> = u_xlat9;
        let x_1652 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1651 / x_1652);
        let x_1654 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1654 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1660 : vec4<f32> = u_xlat11;
        let x_1661 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1660 / x_1661);
        let x_1663 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1663 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1665 : vec4<f32> = u_xlat9;
        let x_1668 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1665.w, x_1665.x, x_1665.y, x_1665.z) * vec4<f32>(x_1668.x, x_1668.x, x_1668.x, x_1668.x));
        let x_1671 : vec4<f32> = u_xlat11;
        let x_1674 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1671.x, x_1671.w, x_1671.y, x_1671.z) * vec4<f32>(x_1674.y, x_1674.y, x_1674.y, x_1674.y));
        let x_1677 : vec4<f32> = u_xlat9;
        let x_1678 : vec3<f32> = vec3<f32>(x_1677.y, x_1677.z, x_1677.w);
        let x_1679 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1678.x, x_1679.y, x_1678.y, x_1678.z);
        let x_1682 : f32 = u_xlat11.x;
        u_xlat12.y = x_1682;
        let x_1684 : vec3<f32> = u_xlat28;
        let x_1687 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1690 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1684.x, x_1684.y, x_1684.x, x_1684.y) * vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.y)) + vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1690.y));
        let x_1693 : vec3<f32> = u_xlat28;
        let x_1696 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1699 : vec4<f32> = u_xlat12;
        let x_1701 : vec2<f32> = ((vec2<f32>(x_1693.x, x_1693.y) * vec2<f32>(x_1696.x, x_1696.y)) + vec2<f32>(x_1699.w, x_1699.y));
        let x_1702 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1701.x, x_1701.y, x_1702.z, x_1702.w);
        let x_1705 : f32 = u_xlat12.y;
        u_xlat9.y = x_1705;
        let x_1708 : f32 = u_xlat11.z;
        u_xlat12.y = x_1708;
        let x_1710 : vec3<f32> = u_xlat28;
        let x_1713 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1716 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1710.x, x_1710.y, x_1710.x, x_1710.y) * vec4<f32>(x_1713.x, x_1713.y, x_1713.x, x_1713.y)) + vec4<f32>(x_1716.x, x_1716.y, x_1716.z, x_1716.y));
        let x_1720 : vec3<f32> = u_xlat28;
        let x_1723 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1726 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1720.x, x_1720.y) * vec2<f32>(x_1723.x, x_1723.y)) + vec2<f32>(x_1726.w, x_1726.y));
        let x_1730 : f32 = u_xlat12.y;
        u_xlat9.z = x_1730;
        let x_1732 : vec3<f32> = u_xlat28;
        let x_1735 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1738 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1732.x, x_1732.y, x_1732.x, x_1732.y) * vec4<f32>(x_1735.x, x_1735.y, x_1735.x, x_1735.y)) + vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.z));
        let x_1742 : f32 = u_xlat11.w;
        u_xlat12.y = x_1742;
        let x_1745 : vec3<f32> = u_xlat28;
        let x_1748 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1751 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1745.x, x_1745.y, x_1745.x, x_1745.y) * vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y)) + vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1751.y));
        let x_1755 : vec3<f32> = u_xlat28;
        let x_1758 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1761 : vec4<f32> = u_xlat12;
        u_xlat31 = ((vec2<f32>(x_1755.x, x_1755.y) * vec2<f32>(x_1758.x, x_1758.y)) + vec2<f32>(x_1761.w, x_1761.y));
        let x_1765 : f32 = u_xlat12.y;
        u_xlat9.w = x_1765;
        let x_1768 : vec3<f32> = u_xlat28;
        let x_1771 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1774 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1768.x, x_1768.y) * vec2<f32>(x_1771.x, x_1771.y)) + vec2<f32>(x_1774.x, x_1774.w));
        let x_1777 : vec4<f32> = u_xlat12;
        let x_1778 : vec3<f32> = vec3<f32>(x_1777.x, x_1777.z, x_1777.w);
        let x_1779 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1778.x, x_1779.y, x_1778.y, x_1778.z);
        let x_1781 : vec3<f32> = u_xlat28;
        let x_1784 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1787 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1781.x, x_1781.y, x_1781.x, x_1781.y) * vec4<f32>(x_1784.x, x_1784.y, x_1784.x, x_1784.y)) + vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1787.y));
        let x_1791 : vec3<f32> = u_xlat28;
        let x_1794 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1797 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1791.x, x_1791.y) * vec2<f32>(x_1794.x, x_1794.y)) + vec2<f32>(x_1797.w, x_1797.y));
        let x_1801 : f32 = u_xlat9.x;
        u_xlat11.x = x_1801;
        let x_1803 : vec3<f32> = u_xlat28;
        let x_1806 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat11;
        let x_1811 : vec2<f32> = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.x, x_1809.y));
        let x_1812 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1811.x, x_1811.y, x_1812.z);
        let x_1815 : vec4<f32> = u_xlat8;
        let x_1817 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1815.x, x_1815.x, x_1815.x, x_1815.x) * x_1817);
        let x_1820 : vec4<f32> = u_xlat8;
        let x_1822 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1820.y, x_1820.y, x_1820.y, x_1820.y) * x_1822);
        let x_1825 : vec4<f32> = u_xlat8;
        let x_1827 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1825.z, x_1825.z, x_1825.z, x_1825.z) * x_1827);
        let x_1829 : vec4<f32> = u_xlat8;
        let x_1831 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1829.w, x_1829.w, x_1829.w, x_1829.w) * x_1831);
        let x_1834 : vec4<f32> = u_xlat13;
        let x_1835 : vec2<f32> = vec2<f32>(x_1834.x, x_1834.y);
        let x_1837 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
        let x_1844 : vec3<f32> = txVec13;
        let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1844.xy, x_1844.z);
        u_xlat72 = x_1846;
        let x_1848 : vec4<f32> = u_xlat13;
        let x_1849 : vec2<f32> = vec2<f32>(x_1848.z, x_1848.w);
        let x_1851 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1859 : vec3<f32> = txVec14;
        let x_1861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1859.xy, x_1859.z);
        u_xlat73 = x_1861;
        let x_1862 : f32 = u_xlat73;
        let x_1864 : f32 = u_xlat19.y;
        u_xlat73 = (x_1862 * x_1864);
        let x_1867 : f32 = u_xlat19.x;
        let x_1868 : f32 = u_xlat72;
        let x_1870 : f32 = u_xlat73;
        u_xlat72 = ((x_1867 * x_1868) + x_1870);
        let x_1873 : vec4<f32> = u_xlat14;
        let x_1874 : vec2<f32> = vec2<f32>(x_1873.x, x_1873.y);
        let x_1876 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec15;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1883.xy, x_1883.z);
        u_xlat73 = x_1885;
        let x_1887 : f32 = u_xlat19.z;
        let x_1888 : f32 = u_xlat73;
        let x_1890 : f32 = u_xlat72;
        u_xlat72 = ((x_1887 * x_1888) + x_1890);
        let x_1893 : vec4<f32> = u_xlat16;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec16;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1903.xy, x_1903.z);
        u_xlat73 = x_1905;
        let x_1907 : f32 = u_xlat19.w;
        let x_1908 : f32 = u_xlat73;
        let x_1910 : f32 = u_xlat72;
        u_xlat72 = ((x_1907 * x_1908) + x_1910);
        let x_1913 : vec4<f32> = u_xlat15;
        let x_1914 : vec2<f32> = vec2<f32>(x_1913.x, x_1913.y);
        let x_1916 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1914.x, x_1914.y, x_1916);
        let x_1923 : vec3<f32> = txVec17;
        let x_1925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1923.xy, x_1923.z);
        u_xlat73 = x_1925;
        let x_1927 : f32 = u_xlat20.x;
        let x_1928 : f32 = u_xlat73;
        let x_1930 : f32 = u_xlat72;
        u_xlat72 = ((x_1927 * x_1928) + x_1930);
        let x_1933 : vec4<f32> = u_xlat15;
        let x_1934 : vec2<f32> = vec2<f32>(x_1933.z, x_1933.w);
        let x_1936 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1934.x, x_1934.y, x_1936);
        let x_1943 : vec3<f32> = txVec18;
        let x_1945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1943.xy, x_1943.z);
        u_xlat73 = x_1945;
        let x_1947 : f32 = u_xlat20.y;
        let x_1948 : f32 = u_xlat73;
        let x_1950 : f32 = u_xlat72;
        u_xlat72 = ((x_1947 * x_1948) + x_1950);
        let x_1953 : vec2<f32> = u_xlat58;
        let x_1955 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1962 : vec3<f32> = txVec19;
        let x_1964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1962.xy, x_1962.z);
        u_xlat73 = x_1964;
        let x_1966 : f32 = u_xlat20.z;
        let x_1967 : f32 = u_xlat73;
        let x_1969 : f32 = u_xlat72;
        u_xlat72 = ((x_1966 * x_1967) + x_1969);
        let x_1972 : vec4<f32> = u_xlat16;
        let x_1973 : vec2<f32> = vec2<f32>(x_1972.z, x_1972.w);
        let x_1975 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
        let x_1982 : vec3<f32> = txVec20;
        let x_1984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1982.xy, x_1982.z);
        u_xlat73 = x_1984;
        let x_1986 : f32 = u_xlat20.w;
        let x_1987 : f32 = u_xlat73;
        let x_1989 : f32 = u_xlat72;
        u_xlat72 = ((x_1986 * x_1987) + x_1989);
        let x_1992 : vec4<f32> = u_xlat17;
        let x_1993 : vec2<f32> = vec2<f32>(x_1992.x, x_1992.y);
        let x_1995 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1993.x, x_1993.y, x_1995);
        let x_2002 : vec3<f32> = txVec21;
        let x_2004 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2002.xy, x_2002.z);
        u_xlat73 = x_2004;
        let x_2006 : f32 = u_xlat21.x;
        let x_2007 : f32 = u_xlat73;
        let x_2009 : f32 = u_xlat72;
        u_xlat72 = ((x_2006 * x_2007) + x_2009);
        let x_2012 : vec4<f32> = u_xlat17;
        let x_2013 : vec2<f32> = vec2<f32>(x_2012.z, x_2012.w);
        let x_2015 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
        let x_2022 : vec3<f32> = txVec22;
        let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2022.xy, x_2022.z);
        u_xlat73 = x_2024;
        let x_2026 : f32 = u_xlat21.y;
        let x_2027 : f32 = u_xlat73;
        let x_2029 : f32 = u_xlat72;
        u_xlat72 = ((x_2026 * x_2027) + x_2029);
        let x_2032 : vec2<f32> = u_xlat31;
        let x_2034 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec23;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2041.xy, x_2041.z);
        u_xlat73 = x_2043;
        let x_2045 : f32 = u_xlat21.z;
        let x_2046 : f32 = u_xlat73;
        let x_2048 : f32 = u_xlat72;
        u_xlat72 = ((x_2045 * x_2046) + x_2048);
        let x_2051 : vec2<f32> = u_xlat18;
        let x_2053 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2051.x, x_2051.y, x_2053);
        let x_2060 : vec3<f32> = txVec24;
        let x_2062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2060.xy, x_2060.z);
        u_xlat73 = x_2062;
        let x_2064 : f32 = u_xlat21.w;
        let x_2065 : f32 = u_xlat73;
        let x_2067 : f32 = u_xlat72;
        u_xlat72 = ((x_2064 * x_2065) + x_2067);
        let x_2070 : vec4<f32> = u_xlat12;
        let x_2071 : vec2<f32> = vec2<f32>(x_2070.x, x_2070.y);
        let x_2073 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2071.x, x_2071.y, x_2073);
        let x_2080 : vec3<f32> = txVec25;
        let x_2082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2080.xy, x_2080.z);
        u_xlat73 = x_2082;
        let x_2084 : f32 = u_xlat8.x;
        let x_2085 : f32 = u_xlat73;
        let x_2087 : f32 = u_xlat72;
        u_xlat72 = ((x_2084 * x_2085) + x_2087);
        let x_2090 : vec4<f32> = u_xlat12;
        let x_2091 : vec2<f32> = vec2<f32>(x_2090.z, x_2090.w);
        let x_2093 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
        let x_2100 : vec3<f32> = txVec26;
        let x_2102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2100.xy, x_2100.z);
        u_xlat73 = x_2102;
        let x_2104 : f32 = u_xlat8.y;
        let x_2105 : f32 = u_xlat73;
        let x_2107 : f32 = u_xlat72;
        u_xlat72 = ((x_2104 * x_2105) + x_2107);
        let x_2110 : vec2<f32> = u_xlat55;
        let x_2112 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2110.x, x_2110.y, x_2112);
        let x_2119 : vec3<f32> = txVec27;
        let x_2121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2119.xy, x_2119.z);
        u_xlat73 = x_2121;
        let x_2123 : f32 = u_xlat8.z;
        let x_2124 : f32 = u_xlat73;
        let x_2126 : f32 = u_xlat72;
        u_xlat72 = ((x_2123 * x_2124) + x_2126);
        let x_2129 : vec3<f32> = u_xlat28;
        let x_2130 : vec2<f32> = vec2<f32>(x_2129.x, x_2129.y);
        let x_2132 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2130.x, x_2130.y, x_2132);
        let x_2139 : vec3<f32> = txVec28;
        let x_2141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2139.xy, x_2139.z);
        u_xlat28.x = x_2141;
        let x_2144 : f32 = u_xlat8.w;
        let x_2146 : f32 = u_xlat28.x;
        let x_2148 : f32 = u_xlat72;
        u_xlat71 = ((x_2144 * x_2146) + x_2148);
      }
    }
  } else {
    let x_2152 : vec4<f32> = u_xlat3;
    let x_2153 : vec2<f32> = vec2<f32>(x_2152.x, x_2152.y);
    let x_2155 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2153.x, x_2153.y, x_2155);
    let x_2162 : vec3<f32> = txVec29;
    let x_2164 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2162.xy, x_2162.z);
    u_xlat71 = x_2164;
  }
  let x_2166 : f32 = x_595.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2166) + 1.0f);
  let x_2170 : f32 = u_xlat71;
  let x_2172 : f32 = x_595.x_MainLightShadowParams.x;
  let x_2175 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2170 * x_2172) + x_2175);
  let x_2180 : f32 = u_xlat3.z;
  u_xlatb25.x = (0.0f >= x_2180);
  let x_2185 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2185 >= 1.0f);
  let x_2187 : bool = u_xlatb47;
  let x_2189 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2187 | x_2189);
  let x_2193 : bool = u_xlatb25.x;
  if (x_2193) {
    x_2194 = 1.0f;
  } else {
    let x_2199 : f32 = u_xlat3.x;
    x_2194 = x_2199;
  }
  let x_2200 : f32 = x_2194;
  u_xlat3.x = x_2200;
  let x_2202 : vec3<f32> = vs_TEXCOORD7;
  let x_2204 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2202 + -(x_2204));
  let x_2208 : vec3<f32> = u_xlat28;
  let x_2209 : vec3<f32> = u_xlat28;
  u_xlat25.x = dot(x_2208, x_2209);
  let x_2213 : f32 = u_xlat25.x;
  let x_2215 : f32 = x_595.x_MainLightShadowParams.z;
  let x_2218 : f32 = x_595.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2213 * x_2215) + x_2218);
  let x_2222 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2222, 0.0f, 1.0f);
  let x_2227 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2227) + 1.0f);
  let x_2231 : f32 = u_xlat25.x;
  let x_2232 : f32 = u_xlat47;
  let x_2235 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2231 * x_2232) + x_2235);
  let x_2244 : f32 = x_2242.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2244 == -1.0f));
  let x_2248 : bool = u_xlatb25.x;
  if (x_2248) {
    let x_2251 : vec3<f32> = vs_TEXCOORD7;
    let x_2254 : vec4<f32> = x_2242.x_MainLightWorldToLight[1i];
    let x_2256 : vec2<f32> = (vec2<f32>(x_2251.y, x_2251.y) * vec2<f32>(x_2254.x, x_2254.y));
    let x_2257 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2256.x, x_2256.y, x_2257.z);
    let x_2260 : vec4<f32> = x_2242.x_MainLightWorldToLight[0i];
    let x_2262 : vec3<f32> = vs_TEXCOORD7;
    let x_2265 : vec3<f32> = u_xlat25;
    let x_2267 : vec2<f32> = ((vec2<f32>(x_2260.x, x_2260.y) * vec2<f32>(x_2262.x, x_2262.x)) + vec2<f32>(x_2265.x, x_2265.y));
    let x_2268 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2267.x, x_2267.y, x_2268.z);
    let x_2271 : vec4<f32> = x_2242.x_MainLightWorldToLight[2i];
    let x_2273 : vec3<f32> = vs_TEXCOORD7;
    let x_2276 : vec3<f32> = u_xlat25;
    let x_2278 : vec2<f32> = ((vec2<f32>(x_2271.x, x_2271.y) * vec2<f32>(x_2273.z, x_2273.z)) + vec2<f32>(x_2276.x, x_2276.y));
    let x_2279 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2278.x, x_2278.y, x_2279.z);
    let x_2281 : vec3<f32> = u_xlat25;
    let x_2284 : vec4<f32> = x_2242.x_MainLightWorldToLight[3i];
    let x_2286 : vec2<f32> = (vec2<f32>(x_2281.x, x_2281.y) + vec2<f32>(x_2284.x, x_2284.y));
    let x_2287 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2286.x, x_2286.y, x_2287.z);
    let x_2289 : vec3<f32> = u_xlat25;
    let x_2292 : vec2<f32> = ((vec2<f32>(x_2289.x, x_2289.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2293 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2292.x, x_2292.y, x_2293.z);
    let x_2300 : vec3<f32> = u_xlat25;
    let x_2303 : f32 = x_126.x_GlobalMipBias.x;
    let x_2304 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2300.x, x_2300.y), x_2303);
    u_xlat8 = x_2304;
    let x_2306 : f32 = x_2242.x_MainLightCookieTextureFormat;
    let x_2308 : f32 = x_2242.x_MainLightCookieTextureFormat;
    let x_2310 : f32 = x_2242.x_MainLightCookieTextureFormat;
    let x_2312 : f32 = x_2242.x_MainLightCookieTextureFormat;
    let x_2313 : vec4<f32> = vec4<f32>(x_2306, x_2308, x_2310, x_2312);
    let x_2320 : vec4<bool> = (vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2313.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2320.x, x_2320.y);
    let x_2323 : bool = u_xlatb25.y;
    if (x_2323) {
      let x_2328 : f32 = u_xlat8.w;
      x_2324 = x_2328;
    } else {
      let x_2331 : f32 = u_xlat8.x;
      x_2324 = x_2331;
    }
    let x_2332 : f32 = x_2324;
    u_xlat47 = x_2332;
    let x_2334 : bool = u_xlatb25.x;
    if (x_2334) {
      let x_2338 : vec4<f32> = u_xlat8;
      x_2335 = vec3<f32>(x_2338.x, x_2338.y, x_2338.z);
    } else {
      let x_2341 : f32 = u_xlat47;
      x_2335 = vec3<f32>(x_2341, x_2341, x_2341);
    }
    let x_2343 : vec3<f32> = x_2335;
    u_xlat28 = x_2343;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_2348 : vec3<f32> = u_xlat28;
  let x_2350 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat28 = (x_2348 * vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
  let x_2353 : vec4<f32> = u_xlat6;
  let x_2355 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2353.x, x_2353.x, x_2353.x) * x_2355);
  let x_2357 : vec4<f32> = u_xlat1;
  let x_2360 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(-(vec3<f32>(x_2357.x, x_2357.y, x_2357.z)), x_2360);
  let x_2364 : f32 = u_xlat25.x;
  let x_2366 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2364 + x_2366);
  let x_2369 : vec3<f32> = u_xlat2;
  let x_2370 : vec3<f32> = u_xlat25;
  let x_2374 : vec4<f32> = u_xlat1;
  let x_2377 : vec3<f32> = ((x_2369 * -(vec3<f32>(x_2370.x, x_2370.x, x_2370.x))) + -(vec3<f32>(x_2374.x, x_2374.y, x_2374.z)));
  let x_2378 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
  let x_2380 : vec3<f32> = u_xlat2;
  let x_2381 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2380, vec3<f32>(x_2381.x, x_2381.y, x_2381.z));
  let x_2386 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2386, 0.0f, 1.0f);
  let x_2390 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2390) + 1.0f);
  let x_2395 : f32 = u_xlat25.x;
  let x_2397 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2395 * x_2397);
  let x_2401 : f32 = u_xlat25.x;
  let x_2403 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2401 * x_2403);
  let x_2407 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2407) * 0.699999988f) + 1.700000048f);
  let x_2414 : f32 = u_xlat0.x;
  let x_2415 : f32 = u_xlat47;
  u_xlat0.x = (x_2414 * x_2415);
  let x_2419 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2419 * 6.0f);
  let x_2431 : vec4<f32> = u_xlat8;
  let x_2434 : f32 = u_xlat0.x;
  let x_2435 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2431.x, x_2431.y, x_2431.z), x_2434);
  u_xlat8 = x_2435;
  let x_2437 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2437 + -1.0f);
  let x_2445 : f32 = x_2443.unity_SpecCube0_HDR.w;
  let x_2447 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2445 * x_2447) + 1.0f);
  let x_2452 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2452, 0.0f);
  let x_2456 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2456);
  let x_2460 : f32 = u_xlat0.x;
  let x_2462 : f32 = x_2443.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2460 * x_2462);
  let x_2466 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2466);
  let x_2470 : f32 = u_xlat0.x;
  let x_2472 : f32 = x_2443.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2470 * x_2472);
  let x_2475 : vec4<f32> = u_xlat8;
  let x_2477 : vec3<f32> = u_xlat0;
  let x_2479 : vec3<f32> = (vec3<f32>(x_2475.x, x_2475.y, x_2475.z) * vec3<f32>(x_2477.x, x_2477.x, x_2477.x));
  let x_2480 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
  let x_2482 : f32 = u_xlat44;
  let x_2484 : f32 = u_xlat44;
  let x_2488 : vec2<f32> = ((vec2<f32>(x_2482, x_2482) * vec2<f32>(x_2484, x_2484)) + vec2<f32>(-1.0f, 1.0f));
  let x_2489 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2488.x, x_2489.y, x_2488.y);
  let x_2492 : f32 = u_xlat0.z;
  u_xlat44 = (1.0f / x_2492);
  let x_2494 : vec4<f32> = u_xlat5;
  let x_2497 : f32 = u_xlat69;
  let x_2499 : vec3<f32> = (-(vec3<f32>(x_2494.x, x_2494.y, x_2494.z)) + vec3<f32>(x_2497, x_2497, x_2497));
  let x_2500 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
  let x_2502 : vec3<f32> = u_xlat25;
  let x_2504 : vec4<f32> = u_xlat9;
  let x_2507 : vec4<f32> = u_xlat5;
  u_xlat25 = ((vec3<f32>(x_2502.x, x_2502.x, x_2502.x) * vec3<f32>(x_2504.x, x_2504.y, x_2504.z)) + vec3<f32>(x_2507.x, x_2507.y, x_2507.z));
  let x_2510 : f32 = u_xlat44;
  let x_2512 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2510, x_2510, x_2510) * x_2512);
  let x_2514 : vec3<f32> = u_xlat25;
  let x_2515 : vec4<f32> = u_xlat8;
  u_xlat25 = (x_2514 * vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
  let x_2518 : vec4<f32> = u_xlat4;
  let x_2520 : vec4<f32> = u_xlat7;
  let x_2523 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_2518.x, x_2518.y, x_2518.z) * vec3<f32>(x_2520.x, x_2520.y, x_2520.z)) + x_2523);
  let x_2526 : f32 = u_xlat3.x;
  let x_2528 : f32 = x_2443.unity_LightData.z;
  u_xlat44 = (x_2526 * x_2528);
  let x_2530 : vec3<f32> = u_xlat2;
  let x_2532 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_2530, vec3<f32>(x_2532.x, x_2532.y, x_2532.z));
  let x_2537 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2537, 0.0f, 1.0f);
  let x_2540 : f32 = u_xlat44;
  let x_2542 : f32 = u_xlat3.x;
  u_xlat44 = (x_2540 * x_2542);
  let x_2544 : f32 = u_xlat44;
  let x_2546 : vec3<f32> = u_xlat28;
  let x_2547 : vec3<f32> = (vec3<f32>(x_2544, x_2544, x_2544) * x_2546);
  let x_2548 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
  let x_2550 : vec4<f32> = u_xlat1;
  let x_2553 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2550.x, x_2550.y, x_2550.z) + vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
  let x_2556 : vec3<f32> = u_xlat28;
  let x_2557 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2556, x_2557);
  let x_2559 : f32 = u_xlat44;
  u_xlat44 = max(x_2559, 1.17549435e-37f);
  let x_2562 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_2562);
  let x_2564 : f32 = u_xlat44;
  let x_2566 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2564, x_2564, x_2564) * x_2566);
  let x_2568 : vec3<f32> = u_xlat2;
  let x_2569 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2568, x_2569);
  let x_2571 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2571, 0.0f, 1.0f);
  let x_2574 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2576 : vec3<f32> = u_xlat28;
  u_xlat3.x = dot(vec3<f32>(x_2574.x, x_2574.y, x_2574.z), x_2576);
  let x_2580 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2580, 0.0f, 1.0f);
  let x_2583 : f32 = u_xlat44;
  let x_2584 : f32 = u_xlat44;
  u_xlat44 = (x_2583 * x_2584);
  let x_2586 : f32 = u_xlat44;
  let x_2588 : f32 = u_xlat0.x;
  u_xlat44 = ((x_2586 * x_2588) + 1.000010014f);
  let x_2593 : f32 = u_xlat3.x;
  let x_2595 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2593 * x_2595);
  let x_2598 : f32 = u_xlat44;
  let x_2599 : f32 = u_xlat44;
  u_xlat44 = (x_2598 * x_2599);
  let x_2602 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2602, 0.100000001f);
  let x_2606 : f32 = u_xlat44;
  let x_2608 : f32 = u_xlat3.x;
  u_xlat44 = (x_2606 * x_2608);
  let x_2610 : f32 = u_xlat70;
  let x_2611 : f32 = u_xlat44;
  u_xlat44 = (x_2610 * x_2611);
  let x_2613 : f32 = u_xlat68;
  let x_2614 : f32 = u_xlat44;
  u_xlat44 = (x_2613 / x_2614);
  let x_2616 : vec4<f32> = u_xlat5;
  let x_2618 : f32 = u_xlat44;
  let x_2621 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2616.x, x_2616.y, x_2616.z) * vec3<f32>(x_2618, x_2618, x_2618)) + vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
  let x_2624 : vec4<f32> = u_xlat4;
  let x_2626 : vec3<f32> = u_xlat28;
  let x_2627 : vec3<f32> = (vec3<f32>(x_2624.x, x_2624.y, x_2624.z) * x_2626);
  let x_2628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2627.x, x_2627.y, x_2627.z, x_2628.w);
  let x_2631 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2633 : f32 = x_2443.unity_LightData.y;
  u_xlat44 = min(x_2631, x_2633);
  let x_2636 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_2636));
  let x_2640 : f32 = x_2242.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2642 : f32 = x_2242.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2644 : f32 = x_2242.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2646 : f32 = x_2242.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2647 : vec4<f32> = vec4<f32>(x_2640, x_2642, x_2644, x_2646);
  let x_2653 : vec4<bool> = (vec4<f32>(x_2647.x, x_2647.y, x_2647.z, x_2647.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_2653.x, x_2653.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2664 : u32 = u_xlatu_loop_1;
    let x_2665 : u32 = u_xlatu44;
    if ((x_2664 < x_2665)) {
    } else {
      break;
    }
    let x_2668 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2668 >> 2u);
    let x_2671 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_2671 & 3u));
    let x_2674 : u32 = u_xlatu71;
    let x_2677 : vec4<f32> = x_2443.unity_LightIndices[bitcast<i32>(x_2674)];
    let x_2687 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2692 : vec4<u32> = indexable[x_2687];
    u_xlat71 = dot(x_2677, bitcast<vec4<f32>>(x_2692));
    let x_2695 : f32 = u_xlat71;
    u_xlatu71 = bitcast<u32>(i32(x_2695));
    let x_2698 : vec3<f32> = vs_TEXCOORD7;
    let x_2710 : u32 = u_xlatu71;
    let x_2713 : vec4<f32> = x_2709.x_AdditionalLightsPosition[bitcast<i32>(x_2710)];
    let x_2716 : u32 = u_xlatu71;
    let x_2719 : vec4<f32> = x_2709.x_AdditionalLightsPosition[bitcast<i32>(x_2716)];
    let x_2721 : vec3<f32> = ((-(x_2698) * vec3<f32>(x_2713.w, x_2713.w, x_2713.w)) + vec3<f32>(x_2719.x, x_2719.y, x_2719.z));
    let x_2722 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2721.x, x_2721.y, x_2721.z, x_2722.w);
    let x_2724 : vec4<f32> = u_xlat9;
    let x_2726 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2724.x, x_2724.y, x_2724.z), vec3<f32>(x_2726.x, x_2726.y, x_2726.z));
    let x_2729 : f32 = u_xlat72;
    u_xlat72 = max(x_2729, 6.10351562e-05f);
    let x_2731 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2731);
    let x_2733 : f32 = u_xlat73;
    let x_2735 : vec4<f32> = u_xlat9;
    let x_2737 : vec3<f32> = (vec3<f32>(x_2733, x_2733, x_2733) * vec3<f32>(x_2735.x, x_2735.y, x_2735.z));
    let x_2738 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2737.x, x_2737.y, x_2737.z, x_2738.w);
    let x_2741 : f32 = u_xlat72;
    u_xlat74 = (1.0f / x_2741);
    let x_2743 : f32 = u_xlat72;
    let x_2744 : u32 = u_xlatu71;
    let x_2747 : f32 = x_2709.x_AdditionalLightsAttenuation[bitcast<i32>(x_2744)].x;
    u_xlat72 = (x_2743 * x_2747);
    let x_2749 : f32 = u_xlat72;
    let x_2751 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2749) * x_2751) + 1.0f);
    let x_2754 : f32 = u_xlat72;
    u_xlat72 = max(x_2754, 0.0f);
    let x_2756 : f32 = u_xlat72;
    let x_2757 : f32 = u_xlat72;
    u_xlat72 = (x_2756 * x_2757);
    let x_2759 : f32 = u_xlat72;
    let x_2760 : f32 = u_xlat74;
    u_xlat72 = (x_2759 * x_2760);
    let x_2762 : u32 = u_xlatu71;
    let x_2765 : vec4<f32> = x_2709.x_AdditionalLightsSpotDir[bitcast<i32>(x_2762)];
    let x_2767 : vec4<f32> = u_xlat10;
    u_xlat74 = dot(vec3<f32>(x_2765.x, x_2765.y, x_2765.z), vec3<f32>(x_2767.x, x_2767.y, x_2767.z));
    let x_2770 : f32 = u_xlat74;
    let x_2771 : u32 = u_xlatu71;
    let x_2774 : f32 = x_2709.x_AdditionalLightsAttenuation[bitcast<i32>(x_2771)].z;
    let x_2776 : u32 = u_xlatu71;
    let x_2779 : f32 = x_2709.x_AdditionalLightsAttenuation[bitcast<i32>(x_2776)].w;
    u_xlat74 = ((x_2770 * x_2774) + x_2779);
    let x_2781 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2781, 0.0f, 1.0f);
    let x_2783 : f32 = u_xlat74;
    let x_2784 : f32 = u_xlat74;
    u_xlat74 = (x_2783 * x_2784);
    let x_2786 : f32 = u_xlat72;
    let x_2787 : f32 = u_xlat74;
    u_xlat72 = (x_2786 * x_2787);
    let x_2790 : u32 = u_xlatu71;
    u_xlatu74 = (x_2790 >> 5u);
    let x_2793 : u32 = u_xlatu71;
    u_xlati75 = (1i << bitcast<u32>((bitcast<i32>(x_2793) & 31i)));
    let x_2798 : i32 = u_xlati75;
    let x_2800 : u32 = u_xlatu74;
    let x_2803 : f32 = x_2242.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2800)].el;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_2798) & bitcast<u32>(x_2803)));
    let x_2807 : i32 = u_xlati74;
    if ((x_2807 != 0i)) {
      let x_2817 : u32 = u_xlatu71;
      let x_2820 : f32 = x_2816.x_AdditionalLightsLightTypes[bitcast<i32>(x_2817)].el;
      u_xlati74 = i32(x_2820);
      let x_2822 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_2822 != 0i));
      let x_2826 : u32 = u_xlatu71;
      u_xlati76 = (bitcast<i32>(x_2826) << bitcast<u32>(2i));
      let x_2829 : i32 = u_xlati75;
      if ((x_2829 != 0i)) {
        let x_2833 : vec3<f32> = vs_TEXCOORD7;
        let x_2835 : i32 = u_xlati76;
        let x_2838 : i32 = u_xlati76;
        let x_2842 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[((x_2835 + 1i) / 4i)][((x_2838 + 1i) % 4i)];
        let x_2844 : vec3<f32> = (vec3<f32>(x_2833.y, x_2833.y, x_2833.y) * vec3<f32>(x_2842.x, x_2842.y, x_2842.w));
        let x_2845 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2844.x, x_2844.y, x_2844.z, x_2845.w);
        let x_2847 : i32 = u_xlati76;
        let x_2849 : i32 = u_xlati76;
        let x_2852 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[(x_2847 / 4i)][(x_2849 % 4i)];
        let x_2854 : vec3<f32> = vs_TEXCOORD7;
        let x_2857 : vec4<f32> = u_xlat11;
        let x_2859 : vec3<f32> = ((vec3<f32>(x_2852.x, x_2852.y, x_2852.w) * vec3<f32>(x_2854.x, x_2854.x, x_2854.x)) + vec3<f32>(x_2857.x, x_2857.y, x_2857.z));
        let x_2860 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2859.x, x_2859.y, x_2859.z, x_2860.w);
        let x_2862 : i32 = u_xlati76;
        let x_2865 : i32 = u_xlati76;
        let x_2869 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[((x_2862 + 2i) / 4i)][((x_2865 + 2i) % 4i)];
        let x_2871 : vec3<f32> = vs_TEXCOORD7;
        let x_2874 : vec4<f32> = u_xlat11;
        let x_2876 : vec3<f32> = ((vec3<f32>(x_2869.x, x_2869.y, x_2869.w) * vec3<f32>(x_2871.z, x_2871.z, x_2871.z)) + vec3<f32>(x_2874.x, x_2874.y, x_2874.z));
        let x_2877 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2876.x, x_2876.y, x_2876.z, x_2877.w);
        let x_2879 : vec4<f32> = u_xlat11;
        let x_2881 : i32 = u_xlati76;
        let x_2884 : i32 = u_xlati76;
        let x_2888 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[((x_2881 + 3i) / 4i)][((x_2884 + 3i) % 4i)];
        let x_2890 : vec3<f32> = (vec3<f32>(x_2879.x, x_2879.y, x_2879.z) + vec3<f32>(x_2888.x, x_2888.y, x_2888.w));
        let x_2891 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2891.w);
        let x_2893 : vec4<f32> = u_xlat11;
        let x_2895 : vec4<f32> = u_xlat11;
        let x_2897 : vec2<f32> = (vec2<f32>(x_2893.x, x_2893.y) / vec2<f32>(x_2895.z, x_2895.z));
        let x_2898 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2897.x, x_2897.y, x_2898.z, x_2898.w);
        let x_2900 : vec4<f32> = u_xlat11;
        let x_2903 : vec2<f32> = ((vec2<f32>(x_2900.x, x_2900.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2904 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2903.x, x_2903.y, x_2904.z, x_2904.w);
        let x_2906 : vec4<f32> = u_xlat11;
        let x_2910 : vec2<f32> = clamp(vec2<f32>(x_2906.x, x_2906.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2911 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2910.x, x_2910.y, x_2911.z, x_2911.w);
        let x_2913 : u32 = u_xlatu71;
        let x_2916 : vec4<f32> = x_2816.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2913)];
        let x_2918 : vec4<f32> = u_xlat11;
        let x_2921 : u32 = u_xlatu71;
        let x_2924 : vec4<f32> = x_2816.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2921)];
        let x_2926 : vec2<f32> = ((vec2<f32>(x_2916.x, x_2916.y) * vec2<f32>(x_2918.x, x_2918.y)) + vec2<f32>(x_2924.z, x_2924.w));
        let x_2927 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2926.x, x_2926.y, x_2927.z, x_2927.w);
      } else {
        let x_2931 : i32 = u_xlati74;
        u_xlatb74 = (x_2931 == 1i);
        let x_2933 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_2933);
        let x_2935 : i32 = u_xlati74;
        if ((x_2935 != 0i)) {
          let x_2939 : vec3<f32> = vs_TEXCOORD7;
          let x_2941 : i32 = u_xlati76;
          let x_2944 : i32 = u_xlati76;
          let x_2948 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[((x_2941 + 1i) / 4i)][((x_2944 + 1i) % 4i)];
          u_xlat55 = (vec2<f32>(x_2939.y, x_2939.y) * vec2<f32>(x_2948.x, x_2948.y));
          let x_2951 : i32 = u_xlati76;
          let x_2953 : i32 = u_xlati76;
          let x_2956 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[(x_2951 / 4i)][(x_2953 % 4i)];
          let x_2958 : vec3<f32> = vs_TEXCOORD7;
          let x_2961 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_2956.x, x_2956.y) * vec2<f32>(x_2958.x, x_2958.x)) + x_2961);
          let x_2963 : i32 = u_xlati76;
          let x_2966 : i32 = u_xlati76;
          let x_2970 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[((x_2963 + 2i) / 4i)][((x_2966 + 2i) % 4i)];
          let x_2972 : vec3<f32> = vs_TEXCOORD7;
          let x_2975 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_2970.x, x_2970.y) * vec2<f32>(x_2972.z, x_2972.z)) + x_2975);
          let x_2977 : vec2<f32> = u_xlat55;
          let x_2978 : i32 = u_xlati76;
          let x_2981 : i32 = u_xlati76;
          let x_2985 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[((x_2978 + 3i) / 4i)][((x_2981 + 3i) % 4i)];
          u_xlat55 = (x_2977 + vec2<f32>(x_2985.x, x_2985.y));
          let x_2988 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_2988 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2991 : vec2<f32> = u_xlat55;
          u_xlat55 = fract(x_2991);
          let x_2993 : u32 = u_xlatu71;
          let x_2996 : vec4<f32> = x_2816.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2993)];
          let x_2998 : vec2<f32> = u_xlat55;
          let x_3000 : u32 = u_xlatu71;
          let x_3003 : vec4<f32> = x_2816.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3000)];
          let x_3005 : vec2<f32> = ((vec2<f32>(x_2996.x, x_2996.y) * x_2998) + vec2<f32>(x_3003.z, x_3003.w));
          let x_3006 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3005.x, x_3005.y, x_3006.z, x_3006.w);
        } else {
          let x_3009 : vec3<f32> = vs_TEXCOORD7;
          let x_3011 : i32 = u_xlati76;
          let x_3014 : i32 = u_xlati76;
          let x_3018 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[((x_3011 + 1i) / 4i)][((x_3014 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3009.y, x_3009.y, x_3009.y, x_3009.y) * x_3018);
          let x_3020 : i32 = u_xlati76;
          let x_3022 : i32 = u_xlati76;
          let x_3025 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[(x_3020 / 4i)][(x_3022 % 4i)];
          let x_3026 : vec3<f32> = vs_TEXCOORD7;
          let x_3029 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3025 * vec4<f32>(x_3026.x, x_3026.x, x_3026.x, x_3026.x)) + x_3029);
          let x_3031 : i32 = u_xlati76;
          let x_3034 : i32 = u_xlati76;
          let x_3038 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[((x_3031 + 2i) / 4i)][((x_3034 + 2i) % 4i)];
          let x_3039 : vec3<f32> = vs_TEXCOORD7;
          let x_3042 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3038 * vec4<f32>(x_3039.z, x_3039.z, x_3039.z, x_3039.z)) + x_3042);
          let x_3044 : vec4<f32> = u_xlat12;
          let x_3045 : i32 = u_xlati76;
          let x_3048 : i32 = u_xlati76;
          let x_3052 : vec4<f32> = x_2816.x_AdditionalLightsWorldToLights[((x_3045 + 3i) / 4i)][((x_3048 + 3i) % 4i)];
          u_xlat12 = (x_3044 + x_3052);
          let x_3054 : vec4<f32> = u_xlat12;
          let x_3056 : vec4<f32> = u_xlat12;
          let x_3058 : vec3<f32> = (vec3<f32>(x_3054.x, x_3054.y, x_3054.z) / vec3<f32>(x_3056.w, x_3056.w, x_3056.w));
          let x_3059 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3058.x, x_3058.y, x_3058.z, x_3059.w);
          let x_3061 : vec4<f32> = u_xlat12;
          let x_3063 : vec4<f32> = u_xlat12;
          u_xlat74 = dot(vec3<f32>(x_3061.x, x_3061.y, x_3061.z), vec3<f32>(x_3063.x, x_3063.y, x_3063.z));
          let x_3066 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3066);
          let x_3068 : f32 = u_xlat74;
          let x_3070 : vec4<f32> = u_xlat12;
          let x_3072 : vec3<f32> = (vec3<f32>(x_3068, x_3068, x_3068) * vec3<f32>(x_3070.x, x_3070.y, x_3070.z));
          let x_3073 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3072.x, x_3072.y, x_3072.z, x_3073.w);
          let x_3075 : vec4<f32> = u_xlat12;
          u_xlat74 = dot(abs(vec3<f32>(x_3075.x, x_3075.y, x_3075.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3080 : f32 = u_xlat74;
          u_xlat74 = max(x_3080, 0.000001f);
          let x_3083 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3083);
          let x_3085 : f32 = u_xlat74;
          let x_3087 : vec4<f32> = u_xlat12;
          let x_3089 : vec3<f32> = (vec3<f32>(x_3085, x_3085, x_3085) * vec3<f32>(x_3087.z, x_3087.x, x_3087.y));
          let x_3090 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3089.x, x_3089.y, x_3089.z, x_3090.w);
          let x_3093 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3093);
          let x_3097 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3097, 0.0f, 1.0f);
          let x_3101 : vec4<f32> = u_xlat13;
          let x_3104 : vec4<bool> = (vec4<f32>(x_3101.y, x_3101.z, x_3101.y, x_3101.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3104.x, x_3104.y);
          let x_3107 : bool = u_xlatb55.x;
          if (x_3107) {
            let x_3112 : f32 = u_xlat13.x;
            x_3108 = x_3112;
          } else {
            let x_3115 : f32 = u_xlat13.x;
            x_3108 = -(x_3115);
          }
          let x_3117 : f32 = x_3108;
          u_xlat55.x = x_3117;
          let x_3120 : bool = u_xlatb55.y;
          if (x_3120) {
            let x_3125 : f32 = u_xlat13.x;
            x_3121 = x_3125;
          } else {
            let x_3128 : f32 = u_xlat13.x;
            x_3121 = -(x_3128);
          }
          let x_3130 : f32 = x_3121;
          u_xlat55.y = x_3130;
          let x_3132 : vec4<f32> = u_xlat12;
          let x_3134 : f32 = u_xlat74;
          let x_3137 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3132.x, x_3132.y) * vec2<f32>(x_3134, x_3134)) + x_3137);
          let x_3139 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3139 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3142 : vec2<f32> = u_xlat55;
          u_xlat55 = clamp(x_3142, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3146 : u32 = u_xlatu71;
          let x_3149 : vec4<f32> = x_2816.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3146)];
          let x_3151 : vec2<f32> = u_xlat55;
          let x_3153 : u32 = u_xlatu71;
          let x_3156 : vec4<f32> = x_2816.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3153)];
          let x_3158 : vec2<f32> = ((vec2<f32>(x_3149.x, x_3149.y) * x_3151) + vec2<f32>(x_3156.z, x_3156.w));
          let x_3159 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3158.x, x_3158.y, x_3159.z, x_3159.w);
        }
      }
      let x_3166 : vec4<f32> = u_xlat11;
      let x_3169 : f32 = x_126.x_GlobalMipBias.x;
      let x_3170 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3166.x, x_3166.y), x_3169);
      u_xlat11 = x_3170;
      let x_3172 : bool = u_xlatb28.y;
      if (x_3172) {
        let x_3177 : f32 = u_xlat11.w;
        x_3173 = x_3177;
      } else {
        let x_3180 : f32 = u_xlat11.x;
        x_3173 = x_3180;
      }
      let x_3181 : f32 = x_3173;
      u_xlat74 = x_3181;
      let x_3183 : bool = u_xlatb28.x;
      if (x_3183) {
        let x_3187 : vec4<f32> = u_xlat11;
        x_3184 = vec3<f32>(x_3187.x, x_3187.y, x_3187.z);
      } else {
        let x_3190 : f32 = u_xlat74;
        x_3184 = vec3<f32>(x_3190, x_3190, x_3190);
      }
      let x_3192 : vec3<f32> = x_3184;
      let x_3193 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3192.x, x_3192.y, x_3192.z, x_3193.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3199 : vec4<f32> = u_xlat11;
    let x_3201 : u32 = u_xlatu71;
    let x_3204 : vec4<f32> = x_2709.x_AdditionalLightsColor[bitcast<i32>(x_3201)];
    let x_3206 : vec3<f32> = (vec3<f32>(x_3199.x, x_3199.y, x_3199.z) * vec3<f32>(x_3204.x, x_3204.y, x_3204.z));
    let x_3207 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3206.x, x_3206.y, x_3206.z, x_3207.w);
    let x_3209 : vec4<f32> = u_xlat6;
    let x_3211 : vec4<f32> = u_xlat11;
    let x_3213 : vec3<f32> = (vec3<f32>(x_3209.x, x_3209.x, x_3209.x) * vec3<f32>(x_3211.x, x_3211.y, x_3211.z));
    let x_3214 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3213.x, x_3213.y, x_3213.z, x_3214.w);
    let x_3216 : vec3<f32> = u_xlat2;
    let x_3217 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(x_3216, vec3<f32>(x_3217.x, x_3217.y, x_3217.z));
    let x_3220 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3220, 0.0f, 1.0f);
    let x_3222 : f32 = u_xlat71;
    let x_3223 : f32 = u_xlat72;
    u_xlat71 = (x_3222 * x_3223);
    let x_3225 : f32 = u_xlat71;
    let x_3227 : vec4<f32> = u_xlat11;
    let x_3229 : vec3<f32> = (vec3<f32>(x_3225, x_3225, x_3225) * vec3<f32>(x_3227.x, x_3227.y, x_3227.z));
    let x_3230 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3229.x, x_3229.y, x_3229.z, x_3230.w);
    let x_3232 : vec4<f32> = u_xlat9;
    let x_3234 : f32 = u_xlat73;
    let x_3237 : vec4<f32> = u_xlat1;
    let x_3239 : vec3<f32> = ((vec3<f32>(x_3232.x, x_3232.y, x_3232.z) * vec3<f32>(x_3234, x_3234, x_3234)) + vec3<f32>(x_3237.x, x_3237.y, x_3237.z));
    let x_3240 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3239.x, x_3239.y, x_3239.z, x_3240.w);
    let x_3242 : vec4<f32> = u_xlat9;
    let x_3244 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_3242.x, x_3242.y, x_3242.z), vec3<f32>(x_3244.x, x_3244.y, x_3244.z));
    let x_3247 : f32 = u_xlat71;
    u_xlat71 = max(x_3247, 1.17549435e-37f);
    let x_3249 : f32 = u_xlat71;
    u_xlat71 = inverseSqrt(x_3249);
    let x_3251 : f32 = u_xlat71;
    let x_3253 : vec4<f32> = u_xlat9;
    let x_3255 : vec3<f32> = (vec3<f32>(x_3251, x_3251, x_3251) * vec3<f32>(x_3253.x, x_3253.y, x_3253.z));
    let x_3256 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3255.x, x_3255.y, x_3255.z, x_3256.w);
    let x_3258 : vec3<f32> = u_xlat2;
    let x_3259 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(x_3258, vec3<f32>(x_3259.x, x_3259.y, x_3259.z));
    let x_3262 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3262, 0.0f, 1.0f);
    let x_3264 : vec4<f32> = u_xlat10;
    let x_3266 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_3264.x, x_3264.y, x_3264.z), vec3<f32>(x_3266.x, x_3266.y, x_3266.z));
    let x_3269 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3269, 0.0f, 1.0f);
    let x_3271 : f32 = u_xlat71;
    let x_3272 : f32 = u_xlat71;
    u_xlat71 = (x_3271 * x_3272);
    let x_3274 : f32 = u_xlat71;
    let x_3276 : f32 = u_xlat0.x;
    u_xlat71 = ((x_3274 * x_3276) + 1.000010014f);
    let x_3279 : f32 = u_xlat72;
    let x_3280 : f32 = u_xlat72;
    u_xlat72 = (x_3279 * x_3280);
    let x_3282 : f32 = u_xlat71;
    let x_3283 : f32 = u_xlat71;
    u_xlat71 = (x_3282 * x_3283);
    let x_3285 : f32 = u_xlat72;
    u_xlat72 = max(x_3285, 0.100000001f);
    let x_3287 : f32 = u_xlat71;
    let x_3288 : f32 = u_xlat72;
    u_xlat71 = (x_3287 * x_3288);
    let x_3290 : f32 = u_xlat70;
    let x_3291 : f32 = u_xlat71;
    u_xlat71 = (x_3290 * x_3291);
    let x_3293 : f32 = u_xlat68;
    let x_3294 : f32 = u_xlat71;
    u_xlat71 = (x_3293 / x_3294);
    let x_3296 : vec4<f32> = u_xlat5;
    let x_3298 : f32 = u_xlat71;
    let x_3301 : vec4<f32> = u_xlat7;
    let x_3303 : vec3<f32> = ((vec3<f32>(x_3296.x, x_3296.y, x_3296.z) * vec3<f32>(x_3298, x_3298, x_3298)) + vec3<f32>(x_3301.x, x_3301.y, x_3301.z));
    let x_3304 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3303.x, x_3303.y, x_3303.z, x_3304.w);
    let x_3306 : vec4<f32> = u_xlat9;
    let x_3308 : vec4<f32> = u_xlat11;
    let x_3311 : vec4<f32> = u_xlat8;
    let x_3313 : vec3<f32> = ((vec3<f32>(x_3306.x, x_3306.y, x_3306.z) * vec3<f32>(x_3308.x, x_3308.y, x_3308.z)) + vec3<f32>(x_3311.x, x_3311.y, x_3311.z));
    let x_3314 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3313.x, x_3313.y, x_3313.z, x_3314.w);

    continuing {
      let x_3316 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3316 + bitcast<u32>(1i));
    }
  }
  let x_3318 : vec3<f32> = u_xlat25;
  let x_3319 : f32 = u_xlat22;
  let x_3322 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_3318 * vec3<f32>(x_3319, x_3319, x_3319)) + vec3<f32>(x_3322.x, x_3322.y, x_3322.z));
  let x_3325 : vec4<f32> = u_xlat8;
  let x_3327 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3325.x, x_3325.y, x_3325.z) + x_3327);
  let x_3329 : f32 = u_xlat66;
  let x_3331 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3329, x_3329, x_3329) * x_3331);
  let x_3333 : f32 = u_xlat67;
  let x_3334 : f32 = u_xlat67;
  u_xlat66 = (x_3333 * -(x_3334));
  let x_3337 : f32 = u_xlat66;
  u_xlat66 = exp2(x_3337);
  let x_3341 : vec3<f32> = u_xlat0;
  let x_3342 : f32 = u_xlat66;
  let x_3344 : vec3<f32> = (x_3341 * vec3<f32>(x_3342, x_3342, x_3342));
  let x_3345 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3344.x, x_3344.y, x_3344.z, x_3345.w);
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

