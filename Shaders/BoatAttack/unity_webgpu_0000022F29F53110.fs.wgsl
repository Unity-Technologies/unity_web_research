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

@group(1) @binding(4) var<uniform> x_595 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2281 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2482 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2748 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2855 : AdditionalLightsCookies;

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
  var x_2233 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat47 : f32;
  var x_2363 : f32;
  var x_2374 : vec3<f32>;
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
  var x_3147 : f32;
  var x_3160 : f32;
  var x_3212 : f32;
  var x_3223 : vec3<f32>;
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
  let x_821 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_817.z, x_817.w), x_820);
  u_xlat4 = x_821;
  let x_826 : vec4<f32> = vs_TEXCOORD0;
  let x_829 : f32 = x_126.x_GlobalMipBias.x;
  let x_830 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_826.z, x_826.w), x_829);
  let x_831 : vec3<f32> = vec3<f32>(x_830.x, x_830.y, x_830.z);
  let x_832 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat4;
  let x_838 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_839 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_842 : vec3<f32> = u_xlat2;
  let x_843 : vec4<f32> = u_xlat4;
  u_xlat68 = dot(x_842, vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : f32 = u_xlat68;
  u_xlat68 = (x_846 + 0.5f);
  let x_848 : f32 = u_xlat68;
  let x_850 : vec4<f32> = u_xlat6;
  let x_852 : vec3<f32> = (vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_856 : f32 = u_xlat4.w;
  u_xlat68 = max(x_856, 0.0001f);
  let x_859 : vec4<f32> = u_xlat4;
  let x_861 : f32 = u_xlat68;
  let x_863 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) / vec3<f32>(x_861, x_861, x_861));
  let x_864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_868 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
  let x_873 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_869.x, x_869.y));
  let x_874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat6;
  let x_878 : vec4<f32> = hlslcc_FragCoord;
  let x_880 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) * vec2<f32>(x_878.x, x_878.y));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
  let x_884 : f32 = u_xlat6.y;
  let x_886 : f32 = x_126.x_ScaleBiasRt.x;
  let x_889 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat68 = ((x_884 * x_886) + x_889);
  let x_891 : f32 = u_xlat68;
  u_xlat6.z = (-(x_891) + 1.0f);
  let x_896 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_896) * 0.959999979f) + 0.959999979f);
  let x_902 : f32 = u_xlat44;
  let x_903 : f32 = u_xlat68;
  u_xlat69 = (x_902 + -(x_903));
  let x_906 : f32 = u_xlat68;
  let x_908 : vec4<f32> = u_xlat5;
  let x_910 : vec3<f32> = (vec3<f32>(x_906, x_906, x_906) * vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_911 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat5;
  let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_918 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec3<f32> = u_xlat0;
  let x_922 : vec4<f32> = u_xlat5;
  let x_927 : vec3<f32> = ((vec3<f32>(x_920.x, x_920.x, x_920.x) * vec3<f32>(x_922.x, x_922.y, x_922.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_928 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : f32 = u_xlat44;
  u_xlat0.x = (-(x_930) + 1.0f);
  let x_935 : f32 = u_xlat0.x;
  let x_937 : f32 = u_xlat0.x;
  u_xlat44 = (x_935 * x_937);
  let x_939 : f32 = u_xlat44;
  u_xlat44 = max(x_939, 0.0078125f);
  let x_942 : f32 = u_xlat44;
  let x_943 : f32 = u_xlat44;
  u_xlat68 = (x_942 * x_943);
  let x_945 : f32 = u_xlat69;
  u_xlat69 = (x_945 + 1.0f);
  let x_947 : f32 = u_xlat69;
  u_xlat69 = clamp(x_947, 0.0f, 1.0f);
  let x_950 : f32 = u_xlat44;
  u_xlat70 = ((x_950 * 4.0f) + 2.0f);
  let x_959 : vec4<f32> = u_xlat6;
  let x_962 : f32 = x_126.x_GlobalMipBias.x;
  let x_963 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_959.x, x_959.z), x_962);
  u_xlat71 = x_963.x;
  let x_965 : f32 = u_xlat71;
  u_xlat6.x = (x_965 + -1.0f);
  let x_969 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_971 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_969 * x_971) + 1.0f);
  let x_975 : f32 = u_xlat22;
  let x_976 : f32 = u_xlat71;
  u_xlat22 = min(x_975, x_976);
  let x_980 : f32 = x_595.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_980);
  let x_982 : bool = u_xlatb71;
  if (x_982) {
    let x_986 : f32 = x_595.x_MainLightShadowParams.y;
    u_xlatb71 = (x_986 == 1.0f);
    let x_988 : bool = u_xlatb71;
    if (x_988) {
      let x_991 : vec4<f32> = u_xlat3;
      let x_994 : vec4<f32> = x_595.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_991.x, x_991.y, x_991.x, x_991.y) + x_994);
      let x_997 : vec4<f32> = u_xlat8;
      let x_998 : vec2<f32> = vec2<f32>(x_997.x, x_997.y);
      let x_1000 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_998.x, x_998.y, x_1000);
      let x_1012 : vec3<f32> = txVec0;
      let x_1014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1012.xy, x_1012.z);
      u_xlat9.x = x_1014;
      let x_1017 : vec4<f32> = u_xlat8;
      let x_1018 : vec2<f32> = vec2<f32>(x_1017.z, x_1017.w);
      let x_1020 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
      let x_1027 : vec3<f32> = txVec1;
      let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
      u_xlat9.y = x_1029;
      let x_1031 : vec4<f32> = u_xlat3;
      let x_1034 : vec4<f32> = x_595.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_1031.x, x_1031.y, x_1031.x, x_1031.y) + x_1034);
      let x_1037 : vec4<f32> = u_xlat8;
      let x_1038 : vec2<f32> = vec2<f32>(x_1037.x, x_1037.y);
      let x_1040 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
      let x_1047 : vec3<f32> = txVec2;
      let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1047.xy, x_1047.z);
      u_xlat9.z = x_1049;
      let x_1052 : vec4<f32> = u_xlat8;
      let x_1053 : vec2<f32> = vec2<f32>(x_1052.z, x_1052.w);
      let x_1055 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1053.x, x_1053.y, x_1055);
      let x_1062 : vec3<f32> = txVec3;
      let x_1064 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1062.xy, x_1062.z);
      u_xlat9.w = x_1064;
      let x_1066 : vec4<f32> = u_xlat9;
      u_xlat71 = dot(x_1066, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1075 : f32 = x_595.x_MainLightShadowParams.y;
      u_xlatb28.x = (x_1075 == 2.0f);
      let x_1079 : bool = u_xlatb28.x;
      if (x_1079) {
        let x_1083 : vec4<f32> = u_xlat3;
        let x_1086 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1086.z, x_1086.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1090 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1089.x, x_1089.y, x_1090.z);
        let x_1092 : vec3<f32> = u_xlat28;
        let x_1094 : vec2<f32> = floor(vec2<f32>(x_1092.x, x_1092.y));
        let x_1095 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1094.x, x_1094.y, x_1095.z);
        let x_1097 : vec4<f32> = u_xlat3;
        let x_1100 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1103 : vec3<f32> = u_xlat28;
        let x_1106 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.z, x_1100.w)) + -(vec2<f32>(x_1103.x, x_1103.y)));
        let x_1107 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1109.x, x_1109.x, x_1109.y, x_1109.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1113.x, x_1113.x, x_1113.z, x_1113.z) * vec4<f32>(x_1115.x, x_1115.x, x_1115.z, x_1115.z));
        let x_1120 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1120.y, x_1120.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1125 : vec4<f32> = u_xlat10;
        let x_1128 : vec4<f32> = u_xlat8;
        let x_1131 : vec2<f32> = ((vec2<f32>(x_1125.x, x_1125.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1128.x, x_1128.y)));
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1131.x, x_1132.y, x_1131.y, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1137 : vec2<f32> = (-(vec2<f32>(x_1134.x, x_1134.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1138 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1137.x, x_1137.y, x_1138.z, x_1138.w);
        let x_1141 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1141.x, x_1141.y), vec2<f32>(0.0f, 0.0f));
        let x_1145 : vec2<f32> = u_xlat54;
        let x_1147 : vec2<f32> = u_xlat54;
        let x_1149 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1145) * x_1147) + vec2<f32>(x_1149.x, x_1149.y));
        let x_1152 : vec4<f32> = u_xlat8;
        let x_1154 : vec2<f32> = max(vec2<f32>(x_1152.x, x_1152.y), vec2<f32>(0.0f, 0.0f));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1163 : vec4<f32> = u_xlat9;
        let x_1165 : vec2<f32> = ((-(vec2<f32>(x_1157.x, x_1157.y)) * vec2<f32>(x_1160.x, x_1160.y)) + vec2<f32>(x_1163.y, x_1163.w));
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1168 + vec2<f32>(1.0f, 1.0f));
        let x_1170 : vec4<f32> = u_xlat8;
        let x_1172 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.y) + vec2<f32>(1.0f, 1.0f));
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
        let x_1175 : vec4<f32> = u_xlat9;
        let x_1179 : vec2<f32> = (vec2<f32>(x_1175.x, x_1175.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1180 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat10;
        let x_1184 : vec2<f32> = (vec2<f32>(x_1182.x, x_1182.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1185 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec2<f32> = u_xlat54;
        let x_1188 : vec2<f32> = (x_1187 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1189 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat8;
        let x_1193 : vec2<f32> = (vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1194 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1198 : vec2<f32> = (vec2<f32>(x_1196.y, x_1196.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1198.x, x_1198.y, x_1199.z, x_1199.w);
        let x_1202 : f32 = u_xlat10.x;
        u_xlat11.z = x_1202;
        let x_1205 : f32 = u_xlat8.x;
        u_xlat11.w = x_1205;
        let x_1208 : f32 = u_xlat13.x;
        u_xlat12.z = x_1208;
        let x_1211 : f32 = u_xlat52.x;
        u_xlat12.w = x_1211;
        let x_1213 : vec4<f32> = u_xlat11;
        let x_1215 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1213.z, x_1213.w, x_1213.x, x_1213.z) + vec4<f32>(x_1215.z, x_1215.w, x_1215.x, x_1215.z));
        let x_1219 : f32 = u_xlat11.y;
        u_xlat10.z = x_1219;
        let x_1222 : f32 = u_xlat8.y;
        u_xlat10.w = x_1222;
        let x_1225 : f32 = u_xlat12.y;
        u_xlat13.z = x_1225;
        let x_1228 : f32 = u_xlat52.y;
        u_xlat13.w = x_1228;
        let x_1230 : vec4<f32> = u_xlat10;
        let x_1232 : vec4<f32> = u_xlat13;
        let x_1234 : vec3<f32> = (vec3<f32>(x_1230.z, x_1230.y, x_1230.w) + vec3<f32>(x_1232.z, x_1232.y, x_1232.w));
        let x_1235 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
        let x_1237 : vec4<f32> = u_xlat12;
        let x_1239 : vec4<f32> = u_xlat9;
        let x_1241 : vec3<f32> = (vec3<f32>(x_1237.x, x_1237.z, x_1237.w) / vec3<f32>(x_1239.z, x_1239.w, x_1239.y));
        let x_1242 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
        let x_1244 : vec4<f32> = u_xlat10;
        let x_1249 : vec3<f32> = (vec3<f32>(x_1244.x, x_1244.y, x_1244.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1250 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat13;
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1256 : vec3<f32> = (vec3<f32>(x_1252.z, x_1252.y, x_1252.w) / vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
        let x_1257 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
        let x_1259 : vec4<f32> = u_xlat11;
        let x_1261 : vec3<f32> = (vec3<f32>(x_1259.x, x_1259.y, x_1259.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1262 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat10;
        let x_1267 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1269 : vec3<f32> = (vec3<f32>(x_1264.y, x_1264.x, x_1264.z) * vec3<f32>(x_1267.x, x_1267.x, x_1267.x));
        let x_1270 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1270.w);
        let x_1272 : vec4<f32> = u_xlat11;
        let x_1275 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1277 : vec3<f32> = (vec3<f32>(x_1272.x, x_1272.y, x_1272.z) * vec3<f32>(x_1275.y, x_1275.y, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
        let x_1281 : f32 = u_xlat11.x;
        u_xlat10.w = x_1281;
        let x_1283 : vec3<f32> = u_xlat28;
        let x_1286 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y) * vec4<f32>(x_1286.x, x_1286.y, x_1286.x, x_1286.y)) + vec4<f32>(x_1289.y, x_1289.w, x_1289.x, x_1289.w));
        let x_1292 : vec3<f32> = u_xlat28;
        let x_1295 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat10;
        let x_1300 : vec2<f32> = ((vec2<f32>(x_1292.x, x_1292.y) * vec2<f32>(x_1295.x, x_1295.y)) + vec2<f32>(x_1298.z, x_1298.w));
        let x_1301 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
        let x_1304 : f32 = u_xlat10.y;
        u_xlat11.w = x_1304;
        let x_1306 : vec4<f32> = u_xlat11;
        let x_1307 : vec2<f32> = vec2<f32>(x_1306.y, x_1306.z);
        let x_1308 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1308.x, x_1307.x, x_1308.z, x_1307.y);
        let x_1311 : vec3<f32> = u_xlat28;
        let x_1314 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1317 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.y) * vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y)) + vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1317.y));
        let x_1320 : vec3<f32> = u_xlat28;
        let x_1323 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1326 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y) * vec4<f32>(x_1323.x, x_1323.y, x_1323.x, x_1323.y)) + vec4<f32>(x_1326.w, x_1326.y, x_1326.w, x_1326.z));
        let x_1329 : vec3<f32> = u_xlat28;
        let x_1332 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1335 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y) * vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.y)) + vec4<f32>(x_1335.x, x_1335.w, x_1335.z, x_1335.w));
        let x_1339 : vec4<f32> = u_xlat8;
        let x_1341 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1339.x, x_1339.x, x_1339.x, x_1339.y) * vec4<f32>(x_1341.z, x_1341.w, x_1341.y, x_1341.z));
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1347 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1345.y, x_1345.y, x_1345.z, x_1345.z) * x_1347);
        let x_1350 : f32 = u_xlat8.z;
        let x_1352 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1350 * x_1352);
        let x_1356 : vec4<f32> = u_xlat12;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.x, x_1356.y);
        let x_1359 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1367 : vec3<f32> = txVec4;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1367.xy, x_1367.z);
        u_xlat50 = x_1369;
        let x_1371 : vec4<f32> = u_xlat12;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.z, x_1371.w);
        let x_1374 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1382 : vec3<f32> = txVec5;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1382.xy, x_1382.z);
        u_xlat72 = x_1384;
        let x_1385 : f32 = u_xlat72;
        let x_1387 : f32 = u_xlat15.y;
        u_xlat72 = (x_1385 * x_1387);
        let x_1390 : f32 = u_xlat15.x;
        let x_1391 : f32 = u_xlat50;
        let x_1393 : f32 = u_xlat72;
        u_xlat50 = ((x_1390 * x_1391) + x_1393);
        let x_1396 : vec4<f32> = u_xlat13;
        let x_1397 : vec2<f32> = vec2<f32>(x_1396.x, x_1396.y);
        let x_1399 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1397.x, x_1397.y, x_1399);
        let x_1406 : vec3<f32> = txVec6;
        let x_1408 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1406.xy, x_1406.z);
        u_xlat72 = x_1408;
        let x_1410 : f32 = u_xlat15.z;
        let x_1411 : f32 = u_xlat72;
        let x_1413 : f32 = u_xlat50;
        u_xlat50 = ((x_1410 * x_1411) + x_1413);
        let x_1416 : vec4<f32> = u_xlat11;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.x, x_1416.y);
        let x_1419 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec7;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1426.xy, x_1426.z);
        u_xlat72 = x_1428;
        let x_1430 : f32 = u_xlat15.w;
        let x_1431 : f32 = u_xlat72;
        let x_1433 : f32 = u_xlat50;
        u_xlat50 = ((x_1430 * x_1431) + x_1433);
        let x_1436 : vec4<f32> = u_xlat14;
        let x_1437 : vec2<f32> = vec2<f32>(x_1436.x, x_1436.y);
        let x_1439 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1437.x, x_1437.y, x_1439);
        let x_1446 : vec3<f32> = txVec8;
        let x_1448 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1446.xy, x_1446.z);
        u_xlat72 = x_1448;
        let x_1450 : f32 = u_xlat16.x;
        let x_1451 : f32 = u_xlat72;
        let x_1453 : f32 = u_xlat50;
        u_xlat50 = ((x_1450 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat14;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.z, x_1456.w);
        let x_1459 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec9;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat72 = x_1468;
        let x_1470 : f32 = u_xlat16.y;
        let x_1471 : f32 = u_xlat72;
        let x_1473 : f32 = u_xlat50;
        u_xlat50 = ((x_1470 * x_1471) + x_1473);
        let x_1476 : vec4<f32> = u_xlat11;
        let x_1477 : vec2<f32> = vec2<f32>(x_1476.z, x_1476.w);
        let x_1479 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1477.x, x_1477.y, x_1479);
        let x_1486 : vec3<f32> = txVec10;
        let x_1488 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1486.xy, x_1486.z);
        u_xlat72 = x_1488;
        let x_1490 : f32 = u_xlat16.z;
        let x_1491 : f32 = u_xlat72;
        let x_1493 : f32 = u_xlat50;
        u_xlat50 = ((x_1490 * x_1491) + x_1493);
        let x_1496 : vec4<f32> = u_xlat10;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.x, x_1496.y);
        let x_1499 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec11;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1506.xy, x_1506.z);
        u_xlat72 = x_1508;
        let x_1510 : f32 = u_xlat16.w;
        let x_1511 : f32 = u_xlat72;
        let x_1513 : f32 = u_xlat50;
        u_xlat50 = ((x_1510 * x_1511) + x_1513);
        let x_1516 : vec4<f32> = u_xlat10;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.z, x_1516.w);
        let x_1519 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec12;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat72 = x_1528;
        let x_1530 : f32 = u_xlat28.x;
        let x_1531 : f32 = u_xlat72;
        let x_1533 : f32 = u_xlat50;
        u_xlat71 = ((x_1530 * x_1531) + x_1533);
      } else {
        let x_1536 : vec4<f32> = u_xlat3;
        let x_1539 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1542 : vec2<f32> = ((vec2<f32>(x_1536.x, x_1536.y) * vec2<f32>(x_1539.z, x_1539.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1543 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1542.x, x_1542.y, x_1543.z);
        let x_1545 : vec3<f32> = u_xlat28;
        let x_1547 : vec2<f32> = floor(vec2<f32>(x_1545.x, x_1545.y));
        let x_1548 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1547.x, x_1547.y, x_1548.z);
        let x_1550 : vec4<f32> = u_xlat3;
        let x_1553 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1556 : vec3<f32> = u_xlat28;
        let x_1559 : vec2<f32> = ((vec2<f32>(x_1550.x, x_1550.y) * vec2<f32>(x_1553.z, x_1553.w)) + -(vec2<f32>(x_1556.x, x_1556.y)));
        let x_1560 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1559.x, x_1559.y, x_1560.z, x_1560.w);
        let x_1562 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1562.x, x_1562.x, x_1562.y, x_1562.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1565 : vec4<f32> = u_xlat9;
        let x_1567 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1565.x, x_1565.x, x_1565.z, x_1565.z) * vec4<f32>(x_1567.x, x_1567.x, x_1567.z, x_1567.z));
        let x_1570 : vec4<f32> = u_xlat10;
        let x_1574 : vec2<f32> = (vec2<f32>(x_1570.y, x_1570.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1575 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1575.x, x_1574.x, x_1575.z, x_1574.y);
        let x_1577 : vec4<f32> = u_xlat10;
        let x_1580 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1577.x, x_1577.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1580.x, x_1580.y)));
        let x_1584 : vec4<f32> = u_xlat8;
        let x_1587 : vec2<f32> = (-(vec2<f32>(x_1584.x, x_1584.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1588 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1587.x, x_1588.y, x_1587.y, x_1588.w);
        let x_1590 : vec4<f32> = u_xlat8;
        let x_1592 : vec2<f32> = min(vec2<f32>(x_1590.x, x_1590.y), vec2<f32>(0.0f, 0.0f));
        let x_1593 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1592.x, x_1592.y, x_1593.z, x_1593.w);
        let x_1595 : vec4<f32> = u_xlat10;
        let x_1598 : vec4<f32> = u_xlat10;
        let x_1601 : vec4<f32> = u_xlat9;
        let x_1603 : vec2<f32> = ((-(vec2<f32>(x_1595.x, x_1595.y)) * vec2<f32>(x_1598.x, x_1598.y)) + vec2<f32>(x_1601.x, x_1601.z));
        let x_1604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1603.x, x_1604.y, x_1603.y, x_1604.w);
        let x_1606 : vec4<f32> = u_xlat8;
        let x_1608 : vec2<f32> = max(vec2<f32>(x_1606.x, x_1606.y), vec2<f32>(0.0f, 0.0f));
        let x_1609 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1608.x, x_1608.y, x_1609.z, x_1609.w);
        let x_1611 : vec4<f32> = u_xlat10;
        let x_1614 : vec4<f32> = u_xlat10;
        let x_1617 : vec4<f32> = u_xlat9;
        let x_1619 : vec2<f32> = ((-(vec2<f32>(x_1611.x, x_1611.y)) * vec2<f32>(x_1614.x, x_1614.y)) + vec2<f32>(x_1617.y, x_1617.w));
        let x_1620 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1620.x, x_1619.x, x_1620.z, x_1619.y);
        let x_1622 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1622 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1626 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1626 * 0.081632003f);
        let x_1630 : vec2<f32> = u_xlat52;
        let x_1633 : vec2<f32> = (vec2<f32>(x_1630.y, x_1630.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1634 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1633.x, x_1633.y, x_1634.z, x_1634.w);
        let x_1636 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1636.x, x_1636.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1640 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1640 * 0.081632003f);
        let x_1644 : f32 = u_xlat12.y;
        u_xlat10.x = x_1644;
        let x_1646 : vec4<f32> = u_xlat8;
        let x_1653 : vec2<f32> = ((vec2<f32>(x_1646.x, x_1646.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1654 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1654.x, x_1653.x, x_1654.z, x_1653.y);
        let x_1656 : vec4<f32> = u_xlat8;
        let x_1660 : vec2<f32> = ((vec2<f32>(x_1656.x, x_1656.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1661 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1660.x, x_1661.y, x_1660.y, x_1661.w);
        let x_1664 : f32 = u_xlat52.x;
        u_xlat9.y = x_1664;
        let x_1667 : f32 = u_xlat11.y;
        u_xlat9.w = x_1667;
        let x_1669 : vec4<f32> = u_xlat9;
        let x_1670 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1669 + x_1670);
        let x_1672 : vec4<f32> = u_xlat8;
        let x_1675 : vec2<f32> = ((vec2<f32>(x_1672.y, x_1672.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1676 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1676.x, x_1675.x, x_1676.z, x_1675.y);
        let x_1678 : vec4<f32> = u_xlat8;
        let x_1681 : vec2<f32> = ((vec2<f32>(x_1678.y, x_1678.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1682 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1681.x, x_1682.y, x_1681.y, x_1682.w);
        let x_1685 : f32 = u_xlat52.y;
        u_xlat11.y = x_1685;
        let x_1687 : vec4<f32> = u_xlat11;
        let x_1688 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1687 + x_1688);
        let x_1690 : vec4<f32> = u_xlat9;
        let x_1691 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1690 / x_1691);
        let x_1693 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1693 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1699 : vec4<f32> = u_xlat11;
        let x_1700 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1699 / x_1700);
        let x_1702 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1702 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1704 : vec4<f32> = u_xlat9;
        let x_1707 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1704.w, x_1704.x, x_1704.y, x_1704.z) * vec4<f32>(x_1707.x, x_1707.x, x_1707.x, x_1707.x));
        let x_1710 : vec4<f32> = u_xlat11;
        let x_1713 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1710.x, x_1710.w, x_1710.y, x_1710.z) * vec4<f32>(x_1713.y, x_1713.y, x_1713.y, x_1713.y));
        let x_1716 : vec4<f32> = u_xlat9;
        let x_1717 : vec3<f32> = vec3<f32>(x_1716.y, x_1716.z, x_1716.w);
        let x_1718 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1717.x, x_1718.y, x_1717.y, x_1717.z);
        let x_1721 : f32 = u_xlat11.x;
        u_xlat12.y = x_1721;
        let x_1723 : vec3<f32> = u_xlat28;
        let x_1726 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1729 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1723.x, x_1723.y, x_1723.x, x_1723.y) * vec4<f32>(x_1726.x, x_1726.y, x_1726.x, x_1726.y)) + vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1729.y));
        let x_1732 : vec3<f32> = u_xlat28;
        let x_1735 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1738 : vec4<f32> = u_xlat12;
        let x_1740 : vec2<f32> = ((vec2<f32>(x_1732.x, x_1732.y) * vec2<f32>(x_1735.x, x_1735.y)) + vec2<f32>(x_1738.w, x_1738.y));
        let x_1741 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1740.x, x_1740.y, x_1741.z, x_1741.w);
        let x_1744 : f32 = u_xlat12.y;
        u_xlat9.y = x_1744;
        let x_1747 : f32 = u_xlat11.z;
        u_xlat12.y = x_1747;
        let x_1749 : vec3<f32> = u_xlat28;
        let x_1752 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1755 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1749.x, x_1749.y, x_1749.x, x_1749.y) * vec4<f32>(x_1752.x, x_1752.y, x_1752.x, x_1752.y)) + vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1755.y));
        let x_1759 : vec3<f32> = u_xlat28;
        let x_1762 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1765 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1759.x, x_1759.y) * vec2<f32>(x_1762.x, x_1762.y)) + vec2<f32>(x_1765.w, x_1765.y));
        let x_1769 : f32 = u_xlat12.y;
        u_xlat9.z = x_1769;
        let x_1771 : vec3<f32> = u_xlat28;
        let x_1774 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1777 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1771.x, x_1771.y, x_1771.x, x_1771.y) * vec4<f32>(x_1774.x, x_1774.y, x_1774.x, x_1774.y)) + vec4<f32>(x_1777.x, x_1777.y, x_1777.x, x_1777.z));
        let x_1781 : f32 = u_xlat11.w;
        u_xlat12.y = x_1781;
        let x_1784 : vec3<f32> = u_xlat28;
        let x_1787 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1790 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1784.x, x_1784.y, x_1784.x, x_1784.y) * vec4<f32>(x_1787.x, x_1787.y, x_1787.x, x_1787.y)) + vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1790.y));
        let x_1794 : vec3<f32> = u_xlat28;
        let x_1797 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1800 : vec4<f32> = u_xlat12;
        u_xlat31 = ((vec2<f32>(x_1794.x, x_1794.y) * vec2<f32>(x_1797.x, x_1797.y)) + vec2<f32>(x_1800.w, x_1800.y));
        let x_1804 : f32 = u_xlat12.y;
        u_xlat9.w = x_1804;
        let x_1807 : vec3<f32> = u_xlat28;
        let x_1810 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1813 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1807.x, x_1807.y) * vec2<f32>(x_1810.x, x_1810.y)) + vec2<f32>(x_1813.x, x_1813.w));
        let x_1816 : vec4<f32> = u_xlat12;
        let x_1817 : vec3<f32> = vec3<f32>(x_1816.x, x_1816.z, x_1816.w);
        let x_1818 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1817.x, x_1818.y, x_1817.y, x_1817.z);
        let x_1820 : vec3<f32> = u_xlat28;
        let x_1823 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1826 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1820.x, x_1820.y, x_1820.x, x_1820.y) * vec4<f32>(x_1823.x, x_1823.y, x_1823.x, x_1823.y)) + vec4<f32>(x_1826.x, x_1826.y, x_1826.z, x_1826.y));
        let x_1830 : vec3<f32> = u_xlat28;
        let x_1833 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1836 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1830.x, x_1830.y) * vec2<f32>(x_1833.x, x_1833.y)) + vec2<f32>(x_1836.w, x_1836.y));
        let x_1840 : f32 = u_xlat9.x;
        u_xlat11.x = x_1840;
        let x_1842 : vec3<f32> = u_xlat28;
        let x_1845 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1848 : vec4<f32> = u_xlat11;
        let x_1850 : vec2<f32> = ((vec2<f32>(x_1842.x, x_1842.y) * vec2<f32>(x_1845.x, x_1845.y)) + vec2<f32>(x_1848.x, x_1848.y));
        let x_1851 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1850.x, x_1850.y, x_1851.z);
        let x_1854 : vec4<f32> = u_xlat8;
        let x_1856 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1854.x, x_1854.x, x_1854.x, x_1854.x) * x_1856);
        let x_1859 : vec4<f32> = u_xlat8;
        let x_1861 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1859.y, x_1859.y, x_1859.y, x_1859.y) * x_1861);
        let x_1864 : vec4<f32> = u_xlat8;
        let x_1866 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1864.z, x_1864.z, x_1864.z, x_1864.z) * x_1866);
        let x_1868 : vec4<f32> = u_xlat8;
        let x_1870 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1868.w, x_1868.w, x_1868.w, x_1868.w) * x_1870);
        let x_1873 : vec4<f32> = u_xlat13;
        let x_1874 : vec2<f32> = vec2<f32>(x_1873.x, x_1873.y);
        let x_1876 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec13;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1883.xy, x_1883.z);
        u_xlat72 = x_1885;
        let x_1887 : vec4<f32> = u_xlat13;
        let x_1888 : vec2<f32> = vec2<f32>(x_1887.z, x_1887.w);
        let x_1890 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
        let x_1898 : vec3<f32> = txVec14;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1898.xy, x_1898.z);
        u_xlat73 = x_1900;
        let x_1901 : f32 = u_xlat73;
        let x_1903 : f32 = u_xlat19.y;
        u_xlat73 = (x_1901 * x_1903);
        let x_1906 : f32 = u_xlat19.x;
        let x_1907 : f32 = u_xlat72;
        let x_1909 : f32 = u_xlat73;
        u_xlat72 = ((x_1906 * x_1907) + x_1909);
        let x_1912 : vec4<f32> = u_xlat14;
        let x_1913 : vec2<f32> = vec2<f32>(x_1912.x, x_1912.y);
        let x_1915 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1913.x, x_1913.y, x_1915);
        let x_1922 : vec3<f32> = txVec15;
        let x_1924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1922.xy, x_1922.z);
        u_xlat73 = x_1924;
        let x_1926 : f32 = u_xlat19.z;
        let x_1927 : f32 = u_xlat73;
        let x_1929 : f32 = u_xlat72;
        u_xlat72 = ((x_1926 * x_1927) + x_1929);
        let x_1932 : vec4<f32> = u_xlat16;
        let x_1933 : vec2<f32> = vec2<f32>(x_1932.x, x_1932.y);
        let x_1935 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec16;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1942.xy, x_1942.z);
        u_xlat73 = x_1944;
        let x_1946 : f32 = u_xlat19.w;
        let x_1947 : f32 = u_xlat73;
        let x_1949 : f32 = u_xlat72;
        u_xlat72 = ((x_1946 * x_1947) + x_1949);
        let x_1952 : vec4<f32> = u_xlat15;
        let x_1953 : vec2<f32> = vec2<f32>(x_1952.x, x_1952.y);
        let x_1955 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
        let x_1962 : vec3<f32> = txVec17;
        let x_1964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1962.xy, x_1962.z);
        u_xlat73 = x_1964;
        let x_1966 : f32 = u_xlat20.x;
        let x_1967 : f32 = u_xlat73;
        let x_1969 : f32 = u_xlat72;
        u_xlat72 = ((x_1966 * x_1967) + x_1969);
        let x_1972 : vec4<f32> = u_xlat15;
        let x_1973 : vec2<f32> = vec2<f32>(x_1972.z, x_1972.w);
        let x_1975 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1973.x, x_1973.y, x_1975);
        let x_1982 : vec3<f32> = txVec18;
        let x_1984 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1982.xy, x_1982.z);
        u_xlat73 = x_1984;
        let x_1986 : f32 = u_xlat20.y;
        let x_1987 : f32 = u_xlat73;
        let x_1989 : f32 = u_xlat72;
        u_xlat72 = ((x_1986 * x_1987) + x_1989);
        let x_1992 : vec2<f32> = u_xlat58;
        let x_1994 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec19;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2001.xy, x_2001.z);
        u_xlat73 = x_2003;
        let x_2005 : f32 = u_xlat20.z;
        let x_2006 : f32 = u_xlat73;
        let x_2008 : f32 = u_xlat72;
        u_xlat72 = ((x_2005 * x_2006) + x_2008);
        let x_2011 : vec4<f32> = u_xlat16;
        let x_2012 : vec2<f32> = vec2<f32>(x_2011.z, x_2011.w);
        let x_2014 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2012.x, x_2012.y, x_2014);
        let x_2021 : vec3<f32> = txVec20;
        let x_2023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2021.xy, x_2021.z);
        u_xlat73 = x_2023;
        let x_2025 : f32 = u_xlat20.w;
        let x_2026 : f32 = u_xlat73;
        let x_2028 : f32 = u_xlat72;
        u_xlat72 = ((x_2025 * x_2026) + x_2028);
        let x_2031 : vec4<f32> = u_xlat17;
        let x_2032 : vec2<f32> = vec2<f32>(x_2031.x, x_2031.y);
        let x_2034 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2032.x, x_2032.y, x_2034);
        let x_2041 : vec3<f32> = txVec21;
        let x_2043 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2041.xy, x_2041.z);
        u_xlat73 = x_2043;
        let x_2045 : f32 = u_xlat21.x;
        let x_2046 : f32 = u_xlat73;
        let x_2048 : f32 = u_xlat72;
        u_xlat72 = ((x_2045 * x_2046) + x_2048);
        let x_2051 : vec4<f32> = u_xlat17;
        let x_2052 : vec2<f32> = vec2<f32>(x_2051.z, x_2051.w);
        let x_2054 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2052.x, x_2052.y, x_2054);
        let x_2061 : vec3<f32> = txVec22;
        let x_2063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2061.xy, x_2061.z);
        u_xlat73 = x_2063;
        let x_2065 : f32 = u_xlat21.y;
        let x_2066 : f32 = u_xlat73;
        let x_2068 : f32 = u_xlat72;
        u_xlat72 = ((x_2065 * x_2066) + x_2068);
        let x_2071 : vec2<f32> = u_xlat31;
        let x_2073 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2071.x, x_2071.y, x_2073);
        let x_2080 : vec3<f32> = txVec23;
        let x_2082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2080.xy, x_2080.z);
        u_xlat73 = x_2082;
        let x_2084 : f32 = u_xlat21.z;
        let x_2085 : f32 = u_xlat73;
        let x_2087 : f32 = u_xlat72;
        u_xlat72 = ((x_2084 * x_2085) + x_2087);
        let x_2090 : vec2<f32> = u_xlat18;
        let x_2092 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec24;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2099.xy, x_2099.z);
        u_xlat73 = x_2101;
        let x_2103 : f32 = u_xlat21.w;
        let x_2104 : f32 = u_xlat73;
        let x_2106 : f32 = u_xlat72;
        u_xlat72 = ((x_2103 * x_2104) + x_2106);
        let x_2109 : vec4<f32> = u_xlat12;
        let x_2110 : vec2<f32> = vec2<f32>(x_2109.x, x_2109.y);
        let x_2112 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2110.x, x_2110.y, x_2112);
        let x_2119 : vec3<f32> = txVec25;
        let x_2121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2119.xy, x_2119.z);
        u_xlat73 = x_2121;
        let x_2123 : f32 = u_xlat8.x;
        let x_2124 : f32 = u_xlat73;
        let x_2126 : f32 = u_xlat72;
        u_xlat72 = ((x_2123 * x_2124) + x_2126);
        let x_2129 : vec4<f32> = u_xlat12;
        let x_2130 : vec2<f32> = vec2<f32>(x_2129.z, x_2129.w);
        let x_2132 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2130.x, x_2130.y, x_2132);
        let x_2139 : vec3<f32> = txVec26;
        let x_2141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2139.xy, x_2139.z);
        u_xlat73 = x_2141;
        let x_2143 : f32 = u_xlat8.y;
        let x_2144 : f32 = u_xlat73;
        let x_2146 : f32 = u_xlat72;
        u_xlat72 = ((x_2143 * x_2144) + x_2146);
        let x_2149 : vec2<f32> = u_xlat55;
        let x_2151 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2149.x, x_2149.y, x_2151);
        let x_2158 : vec3<f32> = txVec27;
        let x_2160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2158.xy, x_2158.z);
        u_xlat73 = x_2160;
        let x_2162 : f32 = u_xlat8.z;
        let x_2163 : f32 = u_xlat73;
        let x_2165 : f32 = u_xlat72;
        u_xlat72 = ((x_2162 * x_2163) + x_2165);
        let x_2168 : vec3<f32> = u_xlat28;
        let x_2169 : vec2<f32> = vec2<f32>(x_2168.x, x_2168.y);
        let x_2171 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2169.x, x_2169.y, x_2171);
        let x_2178 : vec3<f32> = txVec28;
        let x_2180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2178.xy, x_2178.z);
        u_xlat28.x = x_2180;
        let x_2183 : f32 = u_xlat8.w;
        let x_2185 : f32 = u_xlat28.x;
        let x_2187 : f32 = u_xlat72;
        u_xlat71 = ((x_2183 * x_2185) + x_2187);
      }
    }
  } else {
    let x_2191 : vec4<f32> = u_xlat3;
    let x_2192 : vec2<f32> = vec2<f32>(x_2191.x, x_2191.y);
    let x_2194 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2192.x, x_2192.y, x_2194);
    let x_2201 : vec3<f32> = txVec29;
    let x_2203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2201.xy, x_2201.z);
    u_xlat71 = x_2203;
  }
  let x_2205 : f32 = x_595.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2205) + 1.0f);
  let x_2209 : f32 = u_xlat71;
  let x_2211 : f32 = x_595.x_MainLightShadowParams.x;
  let x_2214 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2209 * x_2211) + x_2214);
  let x_2219 : f32 = u_xlat3.z;
  u_xlatb25.x = (0.0f >= x_2219);
  let x_2224 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2224 >= 1.0f);
  let x_2226 : bool = u_xlatb47;
  let x_2228 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_2226 | x_2228);
  let x_2232 : bool = u_xlatb25.x;
  if (x_2232) {
    x_2233 = 1.0f;
  } else {
    let x_2238 : f32 = u_xlat3.x;
    x_2233 = x_2238;
  }
  let x_2239 : f32 = x_2233;
  u_xlat3.x = x_2239;
  let x_2241 : vec3<f32> = vs_TEXCOORD7;
  let x_2243 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2241 + -(x_2243));
  let x_2247 : vec3<f32> = u_xlat28;
  let x_2248 : vec3<f32> = u_xlat28;
  u_xlat25.x = dot(x_2247, x_2248);
  let x_2252 : f32 = u_xlat25.x;
  let x_2254 : f32 = x_595.x_MainLightShadowParams.z;
  let x_2257 : f32 = x_595.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2252 * x_2254) + x_2257);
  let x_2261 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2261, 0.0f, 1.0f);
  let x_2266 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2266) + 1.0f);
  let x_2270 : f32 = u_xlat25.x;
  let x_2271 : f32 = u_xlat47;
  let x_2274 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2270 * x_2271) + x_2274);
  let x_2283 : f32 = x_2281.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_2283 == -1.0f));
  let x_2287 : bool = u_xlatb25.x;
  if (x_2287) {
    let x_2290 : vec3<f32> = vs_TEXCOORD7;
    let x_2293 : vec4<f32> = x_2281.x_MainLightWorldToLight[1i];
    let x_2295 : vec2<f32> = (vec2<f32>(x_2290.y, x_2290.y) * vec2<f32>(x_2293.x, x_2293.y));
    let x_2296 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2295.x, x_2295.y, x_2296.z);
    let x_2299 : vec4<f32> = x_2281.x_MainLightWorldToLight[0i];
    let x_2301 : vec3<f32> = vs_TEXCOORD7;
    let x_2304 : vec3<f32> = u_xlat25;
    let x_2306 : vec2<f32> = ((vec2<f32>(x_2299.x, x_2299.y) * vec2<f32>(x_2301.x, x_2301.x)) + vec2<f32>(x_2304.x, x_2304.y));
    let x_2307 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2306.x, x_2306.y, x_2307.z);
    let x_2310 : vec4<f32> = x_2281.x_MainLightWorldToLight[2i];
    let x_2312 : vec3<f32> = vs_TEXCOORD7;
    let x_2315 : vec3<f32> = u_xlat25;
    let x_2317 : vec2<f32> = ((vec2<f32>(x_2310.x, x_2310.y) * vec2<f32>(x_2312.z, x_2312.z)) + vec2<f32>(x_2315.x, x_2315.y));
    let x_2318 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2317.x, x_2317.y, x_2318.z);
    let x_2320 : vec3<f32> = u_xlat25;
    let x_2323 : vec4<f32> = x_2281.x_MainLightWorldToLight[3i];
    let x_2325 : vec2<f32> = (vec2<f32>(x_2320.x, x_2320.y) + vec2<f32>(x_2323.x, x_2323.y));
    let x_2326 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2325.x, x_2325.y, x_2326.z);
    let x_2328 : vec3<f32> = u_xlat25;
    let x_2331 : vec2<f32> = ((vec2<f32>(x_2328.x, x_2328.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2332 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_2331.x, x_2331.y, x_2332.z);
    let x_2339 : vec3<f32> = u_xlat25;
    let x_2342 : f32 = x_126.x_GlobalMipBias.x;
    let x_2343 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2339.x, x_2339.y), x_2342);
    u_xlat8 = x_2343;
    let x_2345 : f32 = x_2281.x_MainLightCookieTextureFormat;
    let x_2347 : f32 = x_2281.x_MainLightCookieTextureFormat;
    let x_2349 : f32 = x_2281.x_MainLightCookieTextureFormat;
    let x_2351 : f32 = x_2281.x_MainLightCookieTextureFormat;
    let x_2352 : vec4<f32> = vec4<f32>(x_2345, x_2347, x_2349, x_2351);
    let x_2359 : vec4<bool> = (vec4<f32>(x_2352.x, x_2352.y, x_2352.z, x_2352.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_2359.x, x_2359.y);
    let x_2362 : bool = u_xlatb25.y;
    if (x_2362) {
      let x_2367 : f32 = u_xlat8.w;
      x_2363 = x_2367;
    } else {
      let x_2370 : f32 = u_xlat8.x;
      x_2363 = x_2370;
    }
    let x_2371 : f32 = x_2363;
    u_xlat47 = x_2371;
    let x_2373 : bool = u_xlatb25.x;
    if (x_2373) {
      let x_2377 : vec4<f32> = u_xlat8;
      x_2374 = vec3<f32>(x_2377.x, x_2377.y, x_2377.z);
    } else {
      let x_2380 : f32 = u_xlat47;
      x_2374 = vec3<f32>(x_2380, x_2380, x_2380);
    }
    let x_2382 : vec3<f32> = x_2374;
    u_xlat28 = x_2382;
  } else {
    u_xlat28.x = 1.0f;
    u_xlat28.y = 1.0f;
    u_xlat28.z = 1.0f;
  }
  let x_2387 : vec3<f32> = u_xlat28;
  let x_2389 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat28 = (x_2387 * vec3<f32>(x_2389.x, x_2389.y, x_2389.z));
  let x_2392 : vec4<f32> = u_xlat6;
  let x_2394 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2392.x, x_2392.x, x_2392.x) * x_2394);
  let x_2396 : vec4<f32> = u_xlat1;
  let x_2399 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(-(vec3<f32>(x_2396.x, x_2396.y, x_2396.z)), x_2399);
  let x_2403 : f32 = u_xlat25.x;
  let x_2405 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2403 + x_2405);
  let x_2408 : vec3<f32> = u_xlat2;
  let x_2409 : vec3<f32> = u_xlat25;
  let x_2413 : vec4<f32> = u_xlat1;
  let x_2416 : vec3<f32> = ((x_2408 * -(vec3<f32>(x_2409.x, x_2409.x, x_2409.x))) + -(vec3<f32>(x_2413.x, x_2413.y, x_2413.z)));
  let x_2417 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
  let x_2419 : vec3<f32> = u_xlat2;
  let x_2420 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2419, vec3<f32>(x_2420.x, x_2420.y, x_2420.z));
  let x_2425 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2425, 0.0f, 1.0f);
  let x_2429 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2429) + 1.0f);
  let x_2434 : f32 = u_xlat25.x;
  let x_2436 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2434 * x_2436);
  let x_2440 : f32 = u_xlat25.x;
  let x_2442 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2440 * x_2442);
  let x_2446 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2446) * 0.699999988f) + 1.700000048f);
  let x_2453 : f32 = u_xlat0.x;
  let x_2454 : f32 = u_xlat47;
  u_xlat0.x = (x_2453 * x_2454);
  let x_2458 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2458 * 6.0f);
  let x_2470 : vec4<f32> = u_xlat8;
  let x_2473 : f32 = u_xlat0.x;
  let x_2474 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2470.x, x_2470.y, x_2470.z), x_2473);
  u_xlat8 = x_2474;
  let x_2476 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2476 + -1.0f);
  let x_2484 : f32 = x_2482.unity_SpecCube0_HDR.w;
  let x_2486 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2484 * x_2486) + 1.0f);
  let x_2491 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2491, 0.0f);
  let x_2495 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2495);
  let x_2499 : f32 = u_xlat0.x;
  let x_2501 : f32 = x_2482.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2499 * x_2501);
  let x_2505 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2505);
  let x_2509 : f32 = u_xlat0.x;
  let x_2511 : f32 = x_2482.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2509 * x_2511);
  let x_2514 : vec4<f32> = u_xlat8;
  let x_2516 : vec3<f32> = u_xlat0;
  let x_2518 : vec3<f32> = (vec3<f32>(x_2514.x, x_2514.y, x_2514.z) * vec3<f32>(x_2516.x, x_2516.x, x_2516.x));
  let x_2519 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2518.x, x_2518.y, x_2518.z, x_2519.w);
  let x_2521 : f32 = u_xlat44;
  let x_2523 : f32 = u_xlat44;
  let x_2527 : vec2<f32> = ((vec2<f32>(x_2521, x_2521) * vec2<f32>(x_2523, x_2523)) + vec2<f32>(-1.0f, 1.0f));
  let x_2528 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2527.x, x_2528.y, x_2527.y);
  let x_2531 : f32 = u_xlat0.z;
  u_xlat44 = (1.0f / x_2531);
  let x_2533 : vec4<f32> = u_xlat5;
  let x_2536 : f32 = u_xlat69;
  let x_2538 : vec3<f32> = (-(vec3<f32>(x_2533.x, x_2533.y, x_2533.z)) + vec3<f32>(x_2536, x_2536, x_2536));
  let x_2539 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2538.x, x_2538.y, x_2538.z, x_2539.w);
  let x_2541 : vec3<f32> = u_xlat25;
  let x_2543 : vec4<f32> = u_xlat9;
  let x_2546 : vec4<f32> = u_xlat5;
  u_xlat25 = ((vec3<f32>(x_2541.x, x_2541.x, x_2541.x) * vec3<f32>(x_2543.x, x_2543.y, x_2543.z)) + vec3<f32>(x_2546.x, x_2546.y, x_2546.z));
  let x_2549 : f32 = u_xlat44;
  let x_2551 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2549, x_2549, x_2549) * x_2551);
  let x_2553 : vec3<f32> = u_xlat25;
  let x_2554 : vec4<f32> = u_xlat8;
  u_xlat25 = (x_2553 * vec3<f32>(x_2554.x, x_2554.y, x_2554.z));
  let x_2557 : vec4<f32> = u_xlat4;
  let x_2559 : vec4<f32> = u_xlat7;
  let x_2562 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_2557.x, x_2557.y, x_2557.z) * vec3<f32>(x_2559.x, x_2559.y, x_2559.z)) + x_2562);
  let x_2565 : f32 = u_xlat3.x;
  let x_2567 : f32 = x_2482.unity_LightData.z;
  u_xlat44 = (x_2565 * x_2567);
  let x_2569 : vec3<f32> = u_xlat2;
  let x_2571 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_2569, vec3<f32>(x_2571.x, x_2571.y, x_2571.z));
  let x_2576 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2576, 0.0f, 1.0f);
  let x_2579 : f32 = u_xlat44;
  let x_2581 : f32 = u_xlat3.x;
  u_xlat44 = (x_2579 * x_2581);
  let x_2583 : f32 = u_xlat44;
  let x_2585 : vec3<f32> = u_xlat28;
  let x_2586 : vec3<f32> = (vec3<f32>(x_2583, x_2583, x_2583) * x_2585);
  let x_2587 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
  let x_2589 : vec4<f32> = u_xlat1;
  let x_2592 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2589.x, x_2589.y, x_2589.z) + vec3<f32>(x_2592.x, x_2592.y, x_2592.z));
  let x_2595 : vec3<f32> = u_xlat28;
  let x_2596 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2595, x_2596);
  let x_2598 : f32 = u_xlat44;
  u_xlat44 = max(x_2598, 1.17549435e-37f);
  let x_2601 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_2601);
  let x_2603 : f32 = u_xlat44;
  let x_2605 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2603, x_2603, x_2603) * x_2605);
  let x_2607 : vec3<f32> = u_xlat2;
  let x_2608 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2607, x_2608);
  let x_2610 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2610, 0.0f, 1.0f);
  let x_2613 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2615 : vec3<f32> = u_xlat28;
  u_xlat3.x = dot(vec3<f32>(x_2613.x, x_2613.y, x_2613.z), x_2615);
  let x_2619 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2619, 0.0f, 1.0f);
  let x_2622 : f32 = u_xlat44;
  let x_2623 : f32 = u_xlat44;
  u_xlat44 = (x_2622 * x_2623);
  let x_2625 : f32 = u_xlat44;
  let x_2627 : f32 = u_xlat0.x;
  u_xlat44 = ((x_2625 * x_2627) + 1.000010014f);
  let x_2632 : f32 = u_xlat3.x;
  let x_2634 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2632 * x_2634);
  let x_2637 : f32 = u_xlat44;
  let x_2638 : f32 = u_xlat44;
  u_xlat44 = (x_2637 * x_2638);
  let x_2641 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2641, 0.100000001f);
  let x_2645 : f32 = u_xlat44;
  let x_2647 : f32 = u_xlat3.x;
  u_xlat44 = (x_2645 * x_2647);
  let x_2649 : f32 = u_xlat70;
  let x_2650 : f32 = u_xlat44;
  u_xlat44 = (x_2649 * x_2650);
  let x_2652 : f32 = u_xlat68;
  let x_2653 : f32 = u_xlat44;
  u_xlat44 = (x_2652 / x_2653);
  let x_2655 : vec4<f32> = u_xlat5;
  let x_2657 : f32 = u_xlat44;
  let x_2660 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2655.x, x_2655.y, x_2655.z) * vec3<f32>(x_2657, x_2657, x_2657)) + vec3<f32>(x_2660.x, x_2660.y, x_2660.z));
  let x_2663 : vec4<f32> = u_xlat4;
  let x_2665 : vec3<f32> = u_xlat28;
  let x_2666 : vec3<f32> = (vec3<f32>(x_2663.x, x_2663.y, x_2663.z) * x_2665);
  let x_2667 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2666.x, x_2666.y, x_2666.z, x_2667.w);
  let x_2670 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2672 : f32 = x_2482.unity_LightData.y;
  u_xlat44 = min(x_2670, x_2672);
  let x_2675 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_2675));
  let x_2679 : f32 = x_2281.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2681 : f32 = x_2281.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2683 : f32 = x_2281.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2685 : f32 = x_2281.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2686 : vec4<f32> = vec4<f32>(x_2679, x_2681, x_2683, x_2685);
  let x_2692 : vec4<bool> = (vec4<f32>(x_2686.x, x_2686.y, x_2686.z, x_2686.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb28 = vec2<bool>(x_2692.x, x_2692.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2703 : u32 = u_xlatu_loop_1;
    let x_2704 : u32 = u_xlatu44;
    if ((x_2703 < x_2704)) {
    } else {
      break;
    }
    let x_2707 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2707 >> 2u);
    let x_2710 : u32 = u_xlatu_loop_1;
    u_xlati72 = bitcast<i32>((x_2710 & 3u));
    let x_2713 : u32 = u_xlatu71;
    let x_2716 : vec4<f32> = x_2482.unity_LightIndices[bitcast<i32>(x_2713)];
    let x_2726 : i32 = u_xlati72;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2731 : vec4<u32> = indexable[x_2726];
    u_xlat71 = dot(x_2716, bitcast<vec4<f32>>(x_2731));
    let x_2734 : f32 = u_xlat71;
    u_xlatu71 = bitcast<u32>(i32(x_2734));
    let x_2737 : vec3<f32> = vs_TEXCOORD7;
    let x_2749 : u32 = u_xlatu71;
    let x_2752 : vec4<f32> = x_2748.x_AdditionalLightsPosition[bitcast<i32>(x_2749)];
    let x_2755 : u32 = u_xlatu71;
    let x_2758 : vec4<f32> = x_2748.x_AdditionalLightsPosition[bitcast<i32>(x_2755)];
    let x_2760 : vec3<f32> = ((-(x_2737) * vec3<f32>(x_2752.w, x_2752.w, x_2752.w)) + vec3<f32>(x_2758.x, x_2758.y, x_2758.z));
    let x_2761 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
    let x_2763 : vec4<f32> = u_xlat9;
    let x_2765 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2763.x, x_2763.y, x_2763.z), vec3<f32>(x_2765.x, x_2765.y, x_2765.z));
    let x_2768 : f32 = u_xlat72;
    u_xlat72 = max(x_2768, 6.10351562e-05f);
    let x_2770 : f32 = u_xlat72;
    u_xlat73 = inverseSqrt(x_2770);
    let x_2772 : f32 = u_xlat73;
    let x_2774 : vec4<f32> = u_xlat9;
    let x_2776 : vec3<f32> = (vec3<f32>(x_2772, x_2772, x_2772) * vec3<f32>(x_2774.x, x_2774.y, x_2774.z));
    let x_2777 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2776.x, x_2776.y, x_2776.z, x_2777.w);
    let x_2780 : f32 = u_xlat72;
    u_xlat74 = (1.0f / x_2780);
    let x_2782 : f32 = u_xlat72;
    let x_2783 : u32 = u_xlatu71;
    let x_2786 : f32 = x_2748.x_AdditionalLightsAttenuation[bitcast<i32>(x_2783)].x;
    u_xlat72 = (x_2782 * x_2786);
    let x_2788 : f32 = u_xlat72;
    let x_2790 : f32 = u_xlat72;
    u_xlat72 = ((-(x_2788) * x_2790) + 1.0f);
    let x_2793 : f32 = u_xlat72;
    u_xlat72 = max(x_2793, 0.0f);
    let x_2795 : f32 = u_xlat72;
    let x_2796 : f32 = u_xlat72;
    u_xlat72 = (x_2795 * x_2796);
    let x_2798 : f32 = u_xlat72;
    let x_2799 : f32 = u_xlat74;
    u_xlat72 = (x_2798 * x_2799);
    let x_2801 : u32 = u_xlatu71;
    let x_2804 : vec4<f32> = x_2748.x_AdditionalLightsSpotDir[bitcast<i32>(x_2801)];
    let x_2806 : vec4<f32> = u_xlat10;
    u_xlat74 = dot(vec3<f32>(x_2804.x, x_2804.y, x_2804.z), vec3<f32>(x_2806.x, x_2806.y, x_2806.z));
    let x_2809 : f32 = u_xlat74;
    let x_2810 : u32 = u_xlatu71;
    let x_2813 : f32 = x_2748.x_AdditionalLightsAttenuation[bitcast<i32>(x_2810)].z;
    let x_2815 : u32 = u_xlatu71;
    let x_2818 : f32 = x_2748.x_AdditionalLightsAttenuation[bitcast<i32>(x_2815)].w;
    u_xlat74 = ((x_2809 * x_2813) + x_2818);
    let x_2820 : f32 = u_xlat74;
    u_xlat74 = clamp(x_2820, 0.0f, 1.0f);
    let x_2822 : f32 = u_xlat74;
    let x_2823 : f32 = u_xlat74;
    u_xlat74 = (x_2822 * x_2823);
    let x_2825 : f32 = u_xlat72;
    let x_2826 : f32 = u_xlat74;
    u_xlat72 = (x_2825 * x_2826);
    let x_2829 : u32 = u_xlatu71;
    u_xlatu74 = (x_2829 >> 5u);
    let x_2832 : u32 = u_xlatu71;
    u_xlati75 = (1i << bitcast<u32>((bitcast<i32>(x_2832) & 31i)));
    let x_2837 : i32 = u_xlati75;
    let x_2839 : u32 = u_xlatu74;
    let x_2842 : f32 = x_2281.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2839)].el;
    u_xlati74 = bitcast<i32>((bitcast<u32>(x_2837) & bitcast<u32>(x_2842)));
    let x_2846 : i32 = u_xlati74;
    if ((x_2846 != 0i)) {
      let x_2856 : u32 = u_xlatu71;
      let x_2859 : f32 = x_2855.x_AdditionalLightsLightTypes[bitcast<i32>(x_2856)].el;
      u_xlati74 = i32(x_2859);
      let x_2861 : i32 = u_xlati74;
      u_xlati75 = select(1i, 0i, (x_2861 != 0i));
      let x_2865 : u32 = u_xlatu71;
      u_xlati76 = (bitcast<i32>(x_2865) << bitcast<u32>(2i));
      let x_2868 : i32 = u_xlati75;
      if ((x_2868 != 0i)) {
        let x_2872 : vec3<f32> = vs_TEXCOORD7;
        let x_2874 : i32 = u_xlati76;
        let x_2877 : i32 = u_xlati76;
        let x_2881 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[((x_2874 + 1i) / 4i)][((x_2877 + 1i) % 4i)];
        let x_2883 : vec3<f32> = (vec3<f32>(x_2872.y, x_2872.y, x_2872.y) * vec3<f32>(x_2881.x, x_2881.y, x_2881.w));
        let x_2884 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2883.x, x_2883.y, x_2883.z, x_2884.w);
        let x_2886 : i32 = u_xlati76;
        let x_2888 : i32 = u_xlati76;
        let x_2891 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[(x_2886 / 4i)][(x_2888 % 4i)];
        let x_2893 : vec3<f32> = vs_TEXCOORD7;
        let x_2896 : vec4<f32> = u_xlat11;
        let x_2898 : vec3<f32> = ((vec3<f32>(x_2891.x, x_2891.y, x_2891.w) * vec3<f32>(x_2893.x, x_2893.x, x_2893.x)) + vec3<f32>(x_2896.x, x_2896.y, x_2896.z));
        let x_2899 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2898.x, x_2898.y, x_2898.z, x_2899.w);
        let x_2901 : i32 = u_xlati76;
        let x_2904 : i32 = u_xlati76;
        let x_2908 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[((x_2901 + 2i) / 4i)][((x_2904 + 2i) % 4i)];
        let x_2910 : vec3<f32> = vs_TEXCOORD7;
        let x_2913 : vec4<f32> = u_xlat11;
        let x_2915 : vec3<f32> = ((vec3<f32>(x_2908.x, x_2908.y, x_2908.w) * vec3<f32>(x_2910.z, x_2910.z, x_2910.z)) + vec3<f32>(x_2913.x, x_2913.y, x_2913.z));
        let x_2916 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2915.x, x_2915.y, x_2915.z, x_2916.w);
        let x_2918 : vec4<f32> = u_xlat11;
        let x_2920 : i32 = u_xlati76;
        let x_2923 : i32 = u_xlati76;
        let x_2927 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[((x_2920 + 3i) / 4i)][((x_2923 + 3i) % 4i)];
        let x_2929 : vec3<f32> = (vec3<f32>(x_2918.x, x_2918.y, x_2918.z) + vec3<f32>(x_2927.x, x_2927.y, x_2927.w));
        let x_2930 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2929.x, x_2929.y, x_2929.z, x_2930.w);
        let x_2932 : vec4<f32> = u_xlat11;
        let x_2934 : vec4<f32> = u_xlat11;
        let x_2936 : vec2<f32> = (vec2<f32>(x_2932.x, x_2932.y) / vec2<f32>(x_2934.z, x_2934.z));
        let x_2937 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
        let x_2939 : vec4<f32> = u_xlat11;
        let x_2942 : vec2<f32> = ((vec2<f32>(x_2939.x, x_2939.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2943 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2942.x, x_2942.y, x_2943.z, x_2943.w);
        let x_2945 : vec4<f32> = u_xlat11;
        let x_2949 : vec2<f32> = clamp(vec2<f32>(x_2945.x, x_2945.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2950 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2949.x, x_2949.y, x_2950.z, x_2950.w);
        let x_2952 : u32 = u_xlatu71;
        let x_2955 : vec4<f32> = x_2855.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2952)];
        let x_2957 : vec4<f32> = u_xlat11;
        let x_2960 : u32 = u_xlatu71;
        let x_2963 : vec4<f32> = x_2855.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2960)];
        let x_2965 : vec2<f32> = ((vec2<f32>(x_2955.x, x_2955.y) * vec2<f32>(x_2957.x, x_2957.y)) + vec2<f32>(x_2963.z, x_2963.w));
        let x_2966 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2965.x, x_2965.y, x_2966.z, x_2966.w);
      } else {
        let x_2970 : i32 = u_xlati74;
        u_xlatb74 = (x_2970 == 1i);
        let x_2972 : bool = u_xlatb74;
        u_xlati74 = select(0i, 1i, x_2972);
        let x_2974 : i32 = u_xlati74;
        if ((x_2974 != 0i)) {
          let x_2978 : vec3<f32> = vs_TEXCOORD7;
          let x_2980 : i32 = u_xlati76;
          let x_2983 : i32 = u_xlati76;
          let x_2987 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[((x_2980 + 1i) / 4i)][((x_2983 + 1i) % 4i)];
          u_xlat55 = (vec2<f32>(x_2978.y, x_2978.y) * vec2<f32>(x_2987.x, x_2987.y));
          let x_2990 : i32 = u_xlati76;
          let x_2992 : i32 = u_xlati76;
          let x_2995 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[(x_2990 / 4i)][(x_2992 % 4i)];
          let x_2997 : vec3<f32> = vs_TEXCOORD7;
          let x_3000 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_2995.x, x_2995.y) * vec2<f32>(x_2997.x, x_2997.x)) + x_3000);
          let x_3002 : i32 = u_xlati76;
          let x_3005 : i32 = u_xlati76;
          let x_3009 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[((x_3002 + 2i) / 4i)][((x_3005 + 2i) % 4i)];
          let x_3011 : vec3<f32> = vs_TEXCOORD7;
          let x_3014 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3009.x, x_3009.y) * vec2<f32>(x_3011.z, x_3011.z)) + x_3014);
          let x_3016 : vec2<f32> = u_xlat55;
          let x_3017 : i32 = u_xlati76;
          let x_3020 : i32 = u_xlati76;
          let x_3024 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[((x_3017 + 3i) / 4i)][((x_3020 + 3i) % 4i)];
          u_xlat55 = (x_3016 + vec2<f32>(x_3024.x, x_3024.y));
          let x_3027 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3027 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3030 : vec2<f32> = u_xlat55;
          u_xlat55 = fract(x_3030);
          let x_3032 : u32 = u_xlatu71;
          let x_3035 : vec4<f32> = x_2855.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3032)];
          let x_3037 : vec2<f32> = u_xlat55;
          let x_3039 : u32 = u_xlatu71;
          let x_3042 : vec4<f32> = x_2855.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3039)];
          let x_3044 : vec2<f32> = ((vec2<f32>(x_3035.x, x_3035.y) * x_3037) + vec2<f32>(x_3042.z, x_3042.w));
          let x_3045 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3044.x, x_3044.y, x_3045.z, x_3045.w);
        } else {
          let x_3048 : vec3<f32> = vs_TEXCOORD7;
          let x_3050 : i32 = u_xlati76;
          let x_3053 : i32 = u_xlati76;
          let x_3057 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[((x_3050 + 1i) / 4i)][((x_3053 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3048.y, x_3048.y, x_3048.y, x_3048.y) * x_3057);
          let x_3059 : i32 = u_xlati76;
          let x_3061 : i32 = u_xlati76;
          let x_3064 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[(x_3059 / 4i)][(x_3061 % 4i)];
          let x_3065 : vec3<f32> = vs_TEXCOORD7;
          let x_3068 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3064 * vec4<f32>(x_3065.x, x_3065.x, x_3065.x, x_3065.x)) + x_3068);
          let x_3070 : i32 = u_xlati76;
          let x_3073 : i32 = u_xlati76;
          let x_3077 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[((x_3070 + 2i) / 4i)][((x_3073 + 2i) % 4i)];
          let x_3078 : vec3<f32> = vs_TEXCOORD7;
          let x_3081 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3077 * vec4<f32>(x_3078.z, x_3078.z, x_3078.z, x_3078.z)) + x_3081);
          let x_3083 : vec4<f32> = u_xlat12;
          let x_3084 : i32 = u_xlati76;
          let x_3087 : i32 = u_xlati76;
          let x_3091 : vec4<f32> = x_2855.x_AdditionalLightsWorldToLights[((x_3084 + 3i) / 4i)][((x_3087 + 3i) % 4i)];
          u_xlat12 = (x_3083 + x_3091);
          let x_3093 : vec4<f32> = u_xlat12;
          let x_3095 : vec4<f32> = u_xlat12;
          let x_3097 : vec3<f32> = (vec3<f32>(x_3093.x, x_3093.y, x_3093.z) / vec3<f32>(x_3095.w, x_3095.w, x_3095.w));
          let x_3098 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3097.x, x_3097.y, x_3097.z, x_3098.w);
          let x_3100 : vec4<f32> = u_xlat12;
          let x_3102 : vec4<f32> = u_xlat12;
          u_xlat74 = dot(vec3<f32>(x_3100.x, x_3100.y, x_3100.z), vec3<f32>(x_3102.x, x_3102.y, x_3102.z));
          let x_3105 : f32 = u_xlat74;
          u_xlat74 = inverseSqrt(x_3105);
          let x_3107 : f32 = u_xlat74;
          let x_3109 : vec4<f32> = u_xlat12;
          let x_3111 : vec3<f32> = (vec3<f32>(x_3107, x_3107, x_3107) * vec3<f32>(x_3109.x, x_3109.y, x_3109.z));
          let x_3112 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3111.x, x_3111.y, x_3111.z, x_3112.w);
          let x_3114 : vec4<f32> = u_xlat12;
          u_xlat74 = dot(abs(vec3<f32>(x_3114.x, x_3114.y, x_3114.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3119 : f32 = u_xlat74;
          u_xlat74 = max(x_3119, 0.000001f);
          let x_3122 : f32 = u_xlat74;
          u_xlat74 = (1.0f / x_3122);
          let x_3124 : f32 = u_xlat74;
          let x_3126 : vec4<f32> = u_xlat12;
          let x_3128 : vec3<f32> = (vec3<f32>(x_3124, x_3124, x_3124) * vec3<f32>(x_3126.z, x_3126.x, x_3126.y));
          let x_3129 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3129.w);
          let x_3132 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3132);
          let x_3136 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3136, 0.0f, 1.0f);
          let x_3140 : vec4<f32> = u_xlat13;
          let x_3143 : vec4<bool> = (vec4<f32>(x_3140.y, x_3140.z, x_3140.y, x_3140.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb55 = vec2<bool>(x_3143.x, x_3143.y);
          let x_3146 : bool = u_xlatb55.x;
          if (x_3146) {
            let x_3151 : f32 = u_xlat13.x;
            x_3147 = x_3151;
          } else {
            let x_3154 : f32 = u_xlat13.x;
            x_3147 = -(x_3154);
          }
          let x_3156 : f32 = x_3147;
          u_xlat55.x = x_3156;
          let x_3159 : bool = u_xlatb55.y;
          if (x_3159) {
            let x_3164 : f32 = u_xlat13.x;
            x_3160 = x_3164;
          } else {
            let x_3167 : f32 = u_xlat13.x;
            x_3160 = -(x_3167);
          }
          let x_3169 : f32 = x_3160;
          u_xlat55.y = x_3169;
          let x_3171 : vec4<f32> = u_xlat12;
          let x_3173 : f32 = u_xlat74;
          let x_3176 : vec2<f32> = u_xlat55;
          u_xlat55 = ((vec2<f32>(x_3171.x, x_3171.y) * vec2<f32>(x_3173, x_3173)) + x_3176);
          let x_3178 : vec2<f32> = u_xlat55;
          u_xlat55 = ((x_3178 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3181 : vec2<f32> = u_xlat55;
          u_xlat55 = clamp(x_3181, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3185 : u32 = u_xlatu71;
          let x_3188 : vec4<f32> = x_2855.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3185)];
          let x_3190 : vec2<f32> = u_xlat55;
          let x_3192 : u32 = u_xlatu71;
          let x_3195 : vec4<f32> = x_2855.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3192)];
          let x_3197 : vec2<f32> = ((vec2<f32>(x_3188.x, x_3188.y) * x_3190) + vec2<f32>(x_3195.z, x_3195.w));
          let x_3198 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3197.x, x_3197.y, x_3198.z, x_3198.w);
        }
      }
      let x_3205 : vec4<f32> = u_xlat11;
      let x_3208 : f32 = x_126.x_GlobalMipBias.x;
      let x_3209 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3205.x, x_3205.y), x_3208);
      u_xlat11 = x_3209;
      let x_3211 : bool = u_xlatb28.y;
      if (x_3211) {
        let x_3216 : f32 = u_xlat11.w;
        x_3212 = x_3216;
      } else {
        let x_3219 : f32 = u_xlat11.x;
        x_3212 = x_3219;
      }
      let x_3220 : f32 = x_3212;
      u_xlat74 = x_3220;
      let x_3222 : bool = u_xlatb28.x;
      if (x_3222) {
        let x_3226 : vec4<f32> = u_xlat11;
        x_3223 = vec3<f32>(x_3226.x, x_3226.y, x_3226.z);
      } else {
        let x_3229 : f32 = u_xlat74;
        x_3223 = vec3<f32>(x_3229, x_3229, x_3229);
      }
      let x_3231 : vec3<f32> = x_3223;
      let x_3232 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3231.x, x_3231.y, x_3231.z, x_3232.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3238 : vec4<f32> = u_xlat11;
    let x_3240 : u32 = u_xlatu71;
    let x_3243 : vec4<f32> = x_2748.x_AdditionalLightsColor[bitcast<i32>(x_3240)];
    let x_3245 : vec3<f32> = (vec3<f32>(x_3238.x, x_3238.y, x_3238.z) * vec3<f32>(x_3243.x, x_3243.y, x_3243.z));
    let x_3246 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3245.x, x_3245.y, x_3245.z, x_3246.w);
    let x_3248 : vec4<f32> = u_xlat6;
    let x_3250 : vec4<f32> = u_xlat11;
    let x_3252 : vec3<f32> = (vec3<f32>(x_3248.x, x_3248.x, x_3248.x) * vec3<f32>(x_3250.x, x_3250.y, x_3250.z));
    let x_3253 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3252.x, x_3252.y, x_3252.z, x_3253.w);
    let x_3255 : vec3<f32> = u_xlat2;
    let x_3256 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(x_3255, vec3<f32>(x_3256.x, x_3256.y, x_3256.z));
    let x_3259 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3259, 0.0f, 1.0f);
    let x_3261 : f32 = u_xlat71;
    let x_3262 : f32 = u_xlat72;
    u_xlat71 = (x_3261 * x_3262);
    let x_3264 : f32 = u_xlat71;
    let x_3266 : vec4<f32> = u_xlat11;
    let x_3268 : vec3<f32> = (vec3<f32>(x_3264, x_3264, x_3264) * vec3<f32>(x_3266.x, x_3266.y, x_3266.z));
    let x_3269 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3268.x, x_3268.y, x_3268.z, x_3269.w);
    let x_3271 : vec4<f32> = u_xlat9;
    let x_3273 : f32 = u_xlat73;
    let x_3276 : vec4<f32> = u_xlat1;
    let x_3278 : vec3<f32> = ((vec3<f32>(x_3271.x, x_3271.y, x_3271.z) * vec3<f32>(x_3273, x_3273, x_3273)) + vec3<f32>(x_3276.x, x_3276.y, x_3276.z));
    let x_3279 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3278.x, x_3278.y, x_3278.z, x_3279.w);
    let x_3281 : vec4<f32> = u_xlat9;
    let x_3283 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(vec3<f32>(x_3281.x, x_3281.y, x_3281.z), vec3<f32>(x_3283.x, x_3283.y, x_3283.z));
    let x_3286 : f32 = u_xlat71;
    u_xlat71 = max(x_3286, 1.17549435e-37f);
    let x_3288 : f32 = u_xlat71;
    u_xlat71 = inverseSqrt(x_3288);
    let x_3290 : f32 = u_xlat71;
    let x_3292 : vec4<f32> = u_xlat9;
    let x_3294 : vec3<f32> = (vec3<f32>(x_3290, x_3290, x_3290) * vec3<f32>(x_3292.x, x_3292.y, x_3292.z));
    let x_3295 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3294.x, x_3294.y, x_3294.z, x_3295.w);
    let x_3297 : vec3<f32> = u_xlat2;
    let x_3298 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(x_3297, vec3<f32>(x_3298.x, x_3298.y, x_3298.z));
    let x_3301 : f32 = u_xlat71;
    u_xlat71 = clamp(x_3301, 0.0f, 1.0f);
    let x_3303 : vec4<f32> = u_xlat10;
    let x_3305 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_3303.x, x_3303.y, x_3303.z), vec3<f32>(x_3305.x, x_3305.y, x_3305.z));
    let x_3308 : f32 = u_xlat72;
    u_xlat72 = clamp(x_3308, 0.0f, 1.0f);
    let x_3310 : f32 = u_xlat71;
    let x_3311 : f32 = u_xlat71;
    u_xlat71 = (x_3310 * x_3311);
    let x_3313 : f32 = u_xlat71;
    let x_3315 : f32 = u_xlat0.x;
    u_xlat71 = ((x_3313 * x_3315) + 1.000010014f);
    let x_3318 : f32 = u_xlat72;
    let x_3319 : f32 = u_xlat72;
    u_xlat72 = (x_3318 * x_3319);
    let x_3321 : f32 = u_xlat71;
    let x_3322 : f32 = u_xlat71;
    u_xlat71 = (x_3321 * x_3322);
    let x_3324 : f32 = u_xlat72;
    u_xlat72 = max(x_3324, 0.100000001f);
    let x_3326 : f32 = u_xlat71;
    let x_3327 : f32 = u_xlat72;
    u_xlat71 = (x_3326 * x_3327);
    let x_3329 : f32 = u_xlat70;
    let x_3330 : f32 = u_xlat71;
    u_xlat71 = (x_3329 * x_3330);
    let x_3332 : f32 = u_xlat68;
    let x_3333 : f32 = u_xlat71;
    u_xlat71 = (x_3332 / x_3333);
    let x_3335 : vec4<f32> = u_xlat5;
    let x_3337 : f32 = u_xlat71;
    let x_3340 : vec4<f32> = u_xlat7;
    let x_3342 : vec3<f32> = ((vec3<f32>(x_3335.x, x_3335.y, x_3335.z) * vec3<f32>(x_3337, x_3337, x_3337)) + vec3<f32>(x_3340.x, x_3340.y, x_3340.z));
    let x_3343 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3342.x, x_3342.y, x_3342.z, x_3343.w);
    let x_3345 : vec4<f32> = u_xlat9;
    let x_3347 : vec4<f32> = u_xlat11;
    let x_3350 : vec4<f32> = u_xlat8;
    let x_3352 : vec3<f32> = ((vec3<f32>(x_3345.x, x_3345.y, x_3345.z) * vec3<f32>(x_3347.x, x_3347.y, x_3347.z)) + vec3<f32>(x_3350.x, x_3350.y, x_3350.z));
    let x_3353 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3352.x, x_3352.y, x_3352.z, x_3353.w);

    continuing {
      let x_3355 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3355 + bitcast<u32>(1i));
    }
  }
  let x_3357 : vec3<f32> = u_xlat25;
  let x_3358 : f32 = u_xlat22;
  let x_3361 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_3357 * vec3<f32>(x_3358, x_3358, x_3358)) + vec3<f32>(x_3361.x, x_3361.y, x_3361.z));
  let x_3364 : vec4<f32> = u_xlat8;
  let x_3366 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3364.x, x_3364.y, x_3364.z) + x_3366);
  let x_3368 : f32 = u_xlat66;
  let x_3370 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3368, x_3368, x_3368) * x_3370);
  let x_3372 : f32 = u_xlat67;
  let x_3373 : f32 = u_xlat67;
  u_xlat66 = (x_3372 * -(x_3373));
  let x_3376 : f32 = u_xlat66;
  u_xlat66 = exp2(x_3376);
  let x_3380 : vec3<f32> = u_xlat0;
  let x_3381 : f32 = u_xlat66;
  let x_3383 : vec3<f32> = (x_3380 * vec3<f32>(x_3381, x_3381, x_3381));
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

