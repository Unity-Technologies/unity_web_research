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

@group(1) @binding(4) var<uniform> x_799 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2074 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2269 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2551 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2659 : AdditionalLightsCookies;

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
  var u_xlatb65 : bool;
  var u_xlat42 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat22 : vec3<f32>;
  var x_571 : vec3<f32>;
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
  var x_2030 : f32;
  var u_xlatb8 : vec2<bool>;
  var x_2157 : f32;
  var x_2168 : vec3<f32>;
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
  var x_2952 : f32;
  var x_2965 : f32;
  var x_3017 : f32;
  var x_3028 : vec3<f32>;
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
  let x_291 : f32 = u_xlat64;
  u_xlatb65 = (0.005f >= x_291);
  let x_293 : bool = u_xlatb65;
  if (((select(0i, 1i, x_293) * -1i) != 0i)) {
    discard;
  }
  let x_302 : f32 = u_xlat64;
  u_xlat64 = (x_302 + 6.10351562e-05f);
  let x_305 : vec4<f32> = u_xlat4;
  let x_306 : f32 = u_xlat64;
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
  u_xlat42 = dot(x_449, x_450);
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
  u_xlat21 = dot(x_532, x_533);
  let x_537 : f32 = x_126.unity_OrthoParams.w;
  u_xlatb1 = (x_537 == 0.0f);
  let x_542 : vec3<f32> = vs_TEXCOORD7;
  let x_546 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat22 = (-(x_542) + x_546);
  let x_548 : vec3<f32> = u_xlat22;
  let x_549 : vec3<f32> = u_xlat22;
  u_xlat2.x = dot(x_548, x_549);
  let x_553 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_553);
  let x_556 : vec3<f32> = u_xlat22;
  let x_557 : vec3<f32> = u_xlat2;
  u_xlat22 = (x_556 * vec3<f32>(x_557.x, x_557.x, x_557.x));
  let x_561 : f32 = x_126.unity_MatrixV[0i].z;
  u_xlat2.x = x_561;
  let x_564 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat2.y = x_564;
  let x_568 : f32 = x_126.unity_MatrixV[2i].z;
  u_xlat2.z = x_568;
  let x_570 : bool = u_xlatb1;
  if (x_570) {
    let x_574 : vec3<f32> = u_xlat22;
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
  u_xlat64 = dot(x_581, x_582);
  let x_584 : f32 = u_xlat64;
  u_xlat64 = inverseSqrt(x_584);
  let x_586 : f32 = u_xlat64;
  let x_588 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_586, x_586, x_586) * x_588);
  let x_591 : f32 = vs_TEXCOORD7.y;
  let x_593 : f32 = x_126.unity_MatrixV[1i].z;
  u_xlat64 = (x_591 * x_593);
  let x_596 : f32 = x_126.unity_MatrixV[0i].z;
  let x_598 : f32 = vs_TEXCOORD7.x;
  let x_600 : f32 = u_xlat64;
  u_xlat64 = ((x_596 * x_598) + x_600);
  let x_603 : f32 = x_126.unity_MatrixV[2i].z;
  let x_605 : f32 = vs_TEXCOORD7.z;
  let x_607 : f32 = u_xlat64;
  u_xlat64 = ((x_603 * x_605) + x_607);
  let x_609 : f32 = u_xlat64;
  let x_612 : f32 = x_126.unity_MatrixV[3i].z;
  u_xlat64 = (x_609 + x_612);
  let x_614 : f32 = u_xlat64;
  let x_617 : f32 = x_126.x_ProjectionParams.y;
  u_xlat64 = (-(x_614) + -(x_617));
  let x_620 : f32 = u_xlat64;
  u_xlat64 = max(x_620, 0.0f);
  let x_622 : f32 = u_xlat64;
  let x_624 : f32 = x_126.unity_FogParams.x;
  u_xlat64 = (x_622 * x_624);
  let x_631 : vec4<f32> = vs_TEXCOORD0;
  let x_634 : f32 = x_126.x_GlobalMipBias.x;
  let x_635 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_631.z, x_631.w), x_634);
  u_xlat3 = x_635;
  let x_640 : vec4<f32> = vs_TEXCOORD0;
  let x_643 : f32 = x_126.x_GlobalMipBias.x;
  let x_644 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_640.z, x_640.w), x_643);
  let x_645 : vec3<f32> = vec3<f32>(x_644.x, x_644.y, x_644.z);
  let x_646 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec4<f32> = u_xlat3;
  let x_652 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_653 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : vec3<f32> = u_xlat2;
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat65 = dot(x_656, vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : f32 = u_xlat65;
  u_xlat65 = (x_660 + 0.5f);
  let x_662 : f32 = u_xlat65;
  let x_664 : vec4<f32> = u_xlat4;
  let x_666 : vec3<f32> = (vec3<f32>(x_662, x_662, x_662) * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_670 : f32 = u_xlat3.w;
  u_xlat65 = max(x_670, 0.0001f);
  let x_673 : vec4<f32> = u_xlat3;
  let x_675 : f32 = u_xlat65;
  let x_677 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) / vec3<f32>(x_675, x_675, x_675));
  let x_678 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_682 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_683 : vec2<f32> = vec2<f32>(x_682.x, x_682.y);
  let x_687 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_683.x, x_683.y));
  let x_688 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat4;
  let x_692 : vec4<f32> = hlslcc_FragCoord;
  let x_694 : vec2<f32> = (vec2<f32>(x_690.x, x_690.y) * vec2<f32>(x_692.x, x_692.y));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_694.x, x_694.y, x_695.z, x_695.w);
  let x_698 : f32 = u_xlat4.y;
  let x_700 : f32 = x_126.x_ScaleBiasRt.x;
  let x_703 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat65 = ((x_698 * x_700) + x_703);
  let x_705 : f32 = u_xlat65;
  u_xlat4.z = (-(x_705) + 1.0f);
  let x_710 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_710) * 0.959999979f) + 0.959999979f);
  let x_716 : f32 = u_xlat42;
  let x_717 : f32 = u_xlat65;
  u_xlat66 = (x_716 + -(x_717));
  let x_720 : f32 = u_xlat65;
  let x_722 : vec4<f32> = u_xlat5;
  let x_724 : vec3<f32> = (vec3<f32>(x_720, x_720, x_720) * vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat5;
  let x_731 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec3<f32> = u_xlat0;
  let x_736 : vec4<f32> = u_xlat5;
  let x_741 : vec3<f32> = ((vec3<f32>(x_734.x, x_734.x, x_734.x) * vec3<f32>(x_736.x, x_736.y, x_736.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_742 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : f32 = u_xlat42;
  u_xlat0.x = (-(x_744) + 1.0f);
  let x_749 : f32 = u_xlat0.x;
  let x_751 : f32 = u_xlat0.x;
  u_xlat42 = (x_749 * x_751);
  let x_753 : f32 = u_xlat42;
  u_xlat42 = max(x_753, 0.0078125f);
  let x_756 : f32 = u_xlat42;
  let x_757 : f32 = u_xlat42;
  u_xlat65 = (x_756 * x_757);
  let x_759 : f32 = u_xlat66;
  u_xlat66 = (x_759 + 1.0f);
  let x_761 : f32 = u_xlat66;
  u_xlat66 = clamp(x_761, 0.0f, 1.0f);
  let x_764 : f32 = u_xlat42;
  u_xlat25 = ((x_764 * 4.0f) + 2.0f);
  let x_773 : vec4<f32> = u_xlat4;
  let x_776 : f32 = x_126.x_GlobalMipBias.x;
  let x_777 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_773.x, x_773.z), x_776);
  u_xlat4.x = x_777.x;
  let x_782 : f32 = u_xlat4.x;
  u_xlat46 = (x_782 + -1.0f);
  let x_785 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_786 : f32 = u_xlat46;
  u_xlat46 = ((x_785 * x_786) + 1.0f);
  let x_789 : f32 = u_xlat21;
  let x_791 : f32 = u_xlat4.x;
  u_xlat21 = min(x_789, x_791);
  let x_801 : f32 = x_799.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_801);
  let x_805 : bool = u_xlatb4.x;
  if (x_805) {
    let x_809 : f32 = x_799.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_809 == 1.0f);
    let x_813 : bool = u_xlatb4.x;
    if (x_813) {
      let x_817 : vec4<f32> = vs_TEXCOORD8;
      let x_820 : vec4<f32> = x_799.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y) + x_820);
      let x_823 : vec4<f32> = u_xlat7;
      let x_824 : vec2<f32> = vec2<f32>(x_823.x, x_823.y);
      let x_826 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_824.x, x_824.y, x_826);
      let x_838 : vec3<f32> = txVec0;
      let x_840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_838.xy, x_838.z);
      u_xlat8.x = x_840;
      let x_843 : vec4<f32> = u_xlat7;
      let x_844 : vec2<f32> = vec2<f32>(x_843.z, x_843.w);
      let x_846 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_844.x, x_844.y, x_846);
      let x_853 : vec3<f32> = txVec1;
      let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_853.xy, x_853.z);
      u_xlat8.y = x_855;
      let x_857 : vec4<f32> = vs_TEXCOORD8;
      let x_860 : vec4<f32> = x_799.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_857.x, x_857.y, x_857.x, x_857.y) + x_860);
      let x_863 : vec4<f32> = u_xlat7;
      let x_864 : vec2<f32> = vec2<f32>(x_863.x, x_863.y);
      let x_866 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_864.x, x_864.y, x_866);
      let x_873 : vec3<f32> = txVec2;
      let x_875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_873.xy, x_873.z);
      u_xlat8.z = x_875;
      let x_878 : vec4<f32> = u_xlat7;
      let x_879 : vec2<f32> = vec2<f32>(x_878.z, x_878.w);
      let x_881 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_879.x, x_879.y, x_881);
      let x_888 : vec3<f32> = txVec3;
      let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_888.xy, x_888.z);
      u_xlat8.w = x_890;
      let x_892 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_892, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_900 : f32 = x_799.x_MainLightShadowParams.y;
      u_xlatb67 = (x_900 == 2.0f);
      let x_902 : bool = u_xlatb67;
      if (x_902) {
        let x_905 : vec4<f32> = vs_TEXCOORD8;
        let x_908 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_911 : vec2<f32> = ((vec2<f32>(x_905.x, x_905.y) * vec2<f32>(x_908.z, x_908.w)) + vec2<f32>(0.5f, 0.5f));
        let x_912 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_914 : vec4<f32> = u_xlat7;
        let x_916 : vec2<f32> = floor(vec2<f32>(x_914.x, x_914.y));
        let x_917 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_921 : vec4<f32> = vs_TEXCOORD8;
        let x_924 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_927 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_921.x, x_921.y) * vec2<f32>(x_924.z, x_924.w)) + -(vec2<f32>(x_927.x, x_927.y)));
        let x_931 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_931.x, x_931.x, x_931.y, x_931.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_935 : vec4<f32> = u_xlat8;
        let x_937 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_935.x, x_935.x, x_935.z, x_935.z) * vec4<f32>(x_937.x, x_937.x, x_937.z, x_937.z));
        let x_940 : vec4<f32> = u_xlat9;
        let x_944 : vec2<f32> = (vec2<f32>(x_940.y, x_940.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_945 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_944.x, x_945.y, x_944.y, x_945.w);
        let x_947 : vec4<f32> = u_xlat9;
        let x_950 : vec2<f32> = u_xlat49;
        let x_952 : vec2<f32> = ((vec2<f32>(x_947.x, x_947.z) * vec2<f32>(0.5f, 0.5f)) + -(x_950));
        let x_953 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
        let x_956 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_956) + vec2<f32>(1.0f, 1.0f));
        let x_959 : vec2<f32> = u_xlat49;
        let x_961 : vec2<f32> = min(x_959, vec2<f32>(0.0f, 0.0f));
        let x_962 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat10;
        let x_967 : vec4<f32> = u_xlat10;
        let x_970 : vec2<f32> = u_xlat51;
        let x_971 : vec2<f32> = ((-(vec2<f32>(x_964.x, x_964.y)) * vec2<f32>(x_967.x, x_967.y)) + x_970);
        let x_972 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_974, vec2<f32>(0.0f, 0.0f));
        let x_976 : vec2<f32> = u_xlat49;
        let x_978 : vec2<f32> = u_xlat49;
        let x_980 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_976) * x_978) + vec2<f32>(x_980.y, x_980.w));
        let x_983 : vec4<f32> = u_xlat10;
        let x_985 : vec2<f32> = (vec2<f32>(x_983.x, x_983.y) + vec2<f32>(1.0f, 1.0f));
        let x_986 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
        let x_988 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_988 + vec2<f32>(1.0f, 1.0f));
        let x_990 : vec4<f32> = u_xlat9;
        let x_994 : vec2<f32> = (vec2<f32>(x_990.x, x_990.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_995 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_997 : vec2<f32> = u_xlat51;
        let x_998 : vec2<f32> = (x_997 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_999 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_998.x, x_998.y, x_999.z, x_999.w);
        let x_1001 : vec4<f32> = u_xlat10;
        let x_1003 : vec2<f32> = (vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1004 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1004.w);
        let x_1006 : vec2<f32> = u_xlat49;
        let x_1007 : vec2<f32> = (x_1006 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1008 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1010.y, x_1010.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1014 : f32 = u_xlat10.x;
        u_xlat11.z = x_1014;
        let x_1017 : f32 = u_xlat49.x;
        u_xlat11.w = x_1017;
        let x_1020 : f32 = u_xlat12.x;
        u_xlat9.z = x_1020;
        let x_1023 : f32 = u_xlat8.x;
        u_xlat9.w = x_1023;
        let x_1025 : vec4<f32> = u_xlat9;
        let x_1027 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1025.z, x_1025.w, x_1025.x, x_1025.z) + vec4<f32>(x_1027.z, x_1027.w, x_1027.x, x_1027.z));
        let x_1031 : f32 = u_xlat11.y;
        u_xlat10.z = x_1031;
        let x_1034 : f32 = u_xlat49.y;
        u_xlat10.w = x_1034;
        let x_1037 : f32 = u_xlat9.y;
        u_xlat12.z = x_1037;
        let x_1040 : f32 = u_xlat8.z;
        u_xlat12.w = x_1040;
        let x_1042 : vec4<f32> = u_xlat10;
        let x_1044 : vec4<f32> = u_xlat12;
        let x_1046 : vec3<f32> = (vec3<f32>(x_1042.z, x_1042.y, x_1042.w) + vec3<f32>(x_1044.z, x_1044.y, x_1044.w));
        let x_1047 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
        let x_1049 : vec4<f32> = u_xlat9;
        let x_1051 : vec4<f32> = u_xlat13;
        let x_1053 : vec3<f32> = (vec3<f32>(x_1049.x, x_1049.z, x_1049.w) / vec3<f32>(x_1051.z, x_1051.w, x_1051.y));
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
        let x_1056 : vec4<f32> = u_xlat9;
        let x_1061 : vec3<f32> = (vec3<f32>(x_1056.x, x_1056.y, x_1056.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat12;
        let x_1066 : vec4<f32> = u_xlat8;
        let x_1068 : vec3<f32> = (vec3<f32>(x_1064.z, x_1064.y, x_1064.w) / vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
        let x_1069 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
        let x_1071 : vec4<f32> = u_xlat10;
        let x_1073 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1074 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
        let x_1076 : vec4<f32> = u_xlat9;
        let x_1079 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1081 : vec3<f32> = (vec3<f32>(x_1076.y, x_1076.x, x_1076.z) * vec3<f32>(x_1079.x, x_1079.x, x_1079.x));
        let x_1082 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
        let x_1084 : vec4<f32> = u_xlat10;
        let x_1087 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1089 : vec3<f32> = (vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * vec3<f32>(x_1087.y, x_1087.y, x_1087.y));
        let x_1090 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
        let x_1093 : f32 = u_xlat10.x;
        u_xlat9.w = x_1093;
        let x_1095 : vec4<f32> = u_xlat7;
        let x_1098 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.y) * vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y)) + vec4<f32>(x_1101.y, x_1101.w, x_1101.x, x_1101.w));
        let x_1104 : vec4<f32> = u_xlat7;
        let x_1107 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(x_1107.x, x_1107.y)) + vec2<f32>(x_1110.z, x_1110.w));
        let x_1114 : f32 = u_xlat9.y;
        u_xlat10.w = x_1114;
        let x_1116 : vec4<f32> = u_xlat10;
        let x_1117 : vec2<f32> = vec2<f32>(x_1116.y, x_1116.z);
        let x_1118 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1118.x, x_1117.x, x_1118.z, x_1117.y);
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1123 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y) * vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y)) + vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1126.y));
        let x_1129 : vec4<f32> = u_xlat7;
        let x_1132 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y) * vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y)) + vec4<f32>(x_1135.w, x_1135.y, x_1135.w, x_1135.z));
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1141 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.w, x_1144.z, x_1144.w));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1150 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1148.x, x_1148.x, x_1148.x, x_1148.y) * vec4<f32>(x_1150.z, x_1150.w, x_1150.y, x_1150.z));
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1156 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1154.y, x_1154.y, x_1154.z, x_1154.z) * x_1156);
        let x_1160 : f32 = u_xlat8.z;
        let x_1162 : f32 = u_xlat13.y;
        u_xlat67 = (x_1160 * x_1162);
        let x_1165 : vec4<f32> = u_xlat11;
        let x_1166 : vec2<f32> = vec2<f32>(x_1165.x, x_1165.y);
        let x_1168 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1166.x, x_1166.y, x_1168);
        let x_1176 : vec3<f32> = txVec4;
        let x_1178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1176.xy, x_1176.z);
        u_xlat68 = x_1178;
        let x_1180 : vec4<f32> = u_xlat11;
        let x_1181 : vec2<f32> = vec2<f32>(x_1180.z, x_1180.w);
        let x_1183 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1181.x, x_1181.y, x_1183);
        let x_1191 : vec3<f32> = txVec5;
        let x_1193 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1191.xy, x_1191.z);
        u_xlat69 = x_1193;
        let x_1194 : f32 = u_xlat69;
        let x_1196 : f32 = u_xlat14.y;
        u_xlat69 = (x_1194 * x_1196);
        let x_1199 : f32 = u_xlat14.x;
        let x_1200 : f32 = u_xlat68;
        let x_1202 : f32 = u_xlat69;
        u_xlat68 = ((x_1199 * x_1200) + x_1202);
        let x_1205 : vec2<f32> = u_xlat49;
        let x_1207 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1205.x, x_1205.y, x_1207);
        let x_1214 : vec3<f32> = txVec6;
        let x_1216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1214.xy, x_1214.z);
        u_xlat69 = x_1216;
        let x_1218 : f32 = u_xlat14.z;
        let x_1219 : f32 = u_xlat69;
        let x_1221 : f32 = u_xlat68;
        u_xlat68 = ((x_1218 * x_1219) + x_1221);
        let x_1224 : vec4<f32> = u_xlat10;
        let x_1225 : vec2<f32> = vec2<f32>(x_1224.x, x_1224.y);
        let x_1227 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1225.x, x_1225.y, x_1227);
        let x_1234 : vec3<f32> = txVec7;
        let x_1236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1234.xy, x_1234.z);
        u_xlat69 = x_1236;
        let x_1238 : f32 = u_xlat14.w;
        let x_1239 : f32 = u_xlat69;
        let x_1241 : f32 = u_xlat68;
        u_xlat68 = ((x_1238 * x_1239) + x_1241);
        let x_1244 : vec4<f32> = u_xlat12;
        let x_1245 : vec2<f32> = vec2<f32>(x_1244.x, x_1244.y);
        let x_1247 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1254 : vec3<f32> = txVec8;
        let x_1256 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1254.xy, x_1254.z);
        u_xlat69 = x_1256;
        let x_1258 : f32 = u_xlat15.x;
        let x_1259 : f32 = u_xlat69;
        let x_1261 : f32 = u_xlat68;
        u_xlat68 = ((x_1258 * x_1259) + x_1261);
        let x_1264 : vec4<f32> = u_xlat12;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.z, x_1264.w);
        let x_1267 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec9;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1274.xy, x_1274.z);
        u_xlat69 = x_1276;
        let x_1278 : f32 = u_xlat15.y;
        let x_1279 : f32 = u_xlat69;
        let x_1281 : f32 = u_xlat68;
        u_xlat68 = ((x_1278 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec10;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat69 = x_1296;
        let x_1298 : f32 = u_xlat15.z;
        let x_1299 : f32 = u_xlat69;
        let x_1301 : f32 = u_xlat68;
        u_xlat68 = ((x_1298 * x_1299) + x_1301);
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec11;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1314.xy, x_1314.z);
        u_xlat69 = x_1316;
        let x_1318 : f32 = u_xlat15.w;
        let x_1319 : f32 = u_xlat69;
        let x_1321 : f32 = u_xlat68;
        u_xlat68 = ((x_1318 * x_1319) + x_1321);
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec12;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat69 = x_1336;
        let x_1337 : f32 = u_xlat67;
        let x_1338 : f32 = u_xlat69;
        let x_1340 : f32 = u_xlat68;
        u_xlat4.x = ((x_1337 * x_1338) + x_1340);
      } else {
        let x_1344 : vec4<f32> = vs_TEXCOORD8;
        let x_1347 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1350 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.y) * vec2<f32>(x_1347.z, x_1347.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1351 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec4<f32> = u_xlat7;
        let x_1355 : vec2<f32> = floor(vec2<f32>(x_1353.x, x_1353.y));
        let x_1356 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1355.x, x_1355.y, x_1356.z, x_1356.w);
        let x_1358 : vec4<f32> = vs_TEXCOORD8;
        let x_1361 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1364 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1361.z, x_1361.w)) + -(vec2<f32>(x_1364.x, x_1364.y)));
        let x_1368 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1368.x, x_1368.x, x_1368.y, x_1368.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1373 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1371.x, x_1371.x, x_1371.z, x_1371.z) * vec4<f32>(x_1373.x, x_1373.x, x_1373.z, x_1373.z));
        let x_1376 : vec4<f32> = u_xlat9;
        let x_1380 : vec2<f32> = (vec2<f32>(x_1376.y, x_1376.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1381 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1381.x, x_1380.x, x_1381.z, x_1380.y);
        let x_1383 : vec4<f32> = u_xlat9;
        let x_1386 : vec2<f32> = u_xlat49;
        let x_1388 : vec2<f32> = ((vec2<f32>(x_1383.x, x_1383.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1386));
        let x_1389 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1388.x, x_1389.y, x_1388.y, x_1389.w);
        let x_1391 : vec2<f32> = u_xlat49;
        let x_1393 : vec2<f32> = (-(x_1391) + vec2<f32>(1.0f, 1.0f));
        let x_1394 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        let x_1396 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1396, vec2<f32>(0.0f, 0.0f));
        let x_1398 : vec2<f32> = u_xlat51;
        let x_1400 : vec2<f32> = u_xlat51;
        let x_1402 : vec4<f32> = u_xlat9;
        let x_1404 : vec2<f32> = ((-(x_1398) * x_1400) + vec2<f32>(x_1402.x, x_1402.y));
        let x_1405 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
        let x_1407 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1407, vec2<f32>(0.0f, 0.0f));
        let x_1410 : vec2<f32> = u_xlat51;
        let x_1412 : vec2<f32> = u_xlat51;
        let x_1414 : vec4<f32> = u_xlat8;
        let x_1416 : vec2<f32> = ((-(x_1410) * x_1412) + vec2<f32>(x_1414.y, x_1414.w));
        let x_1417 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1416.x, x_1417.y, x_1416.y);
        let x_1419 : vec4<f32> = u_xlat9;
        let x_1422 : vec2<f32> = (vec2<f32>(x_1419.x, x_1419.y) + vec2<f32>(2.0f, 2.0f));
        let x_1423 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1422.x, x_1422.y, x_1423.z, x_1423.w);
        let x_1425 : vec3<f32> = u_xlat29;
        let x_1427 : vec2<f32> = (vec2<f32>(x_1425.x, x_1425.z) + vec2<f32>(2.0f, 2.0f));
        let x_1428 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1428.x, x_1427.x, x_1428.z, x_1427.y);
        let x_1431 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1431 * 0.081632003f);
        let x_1435 : vec4<f32> = u_xlat8;
        let x_1438 : vec3<f32> = (vec3<f32>(x_1435.z, x_1435.x, x_1435.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1439 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1438.x, x_1438.y, x_1438.z, x_1439.w);
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1444 : vec2<f32> = (vec2<f32>(x_1441.x, x_1441.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1445 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1444.x, x_1444.y, x_1445.z, x_1445.w);
        let x_1448 : f32 = u_xlat12.y;
        u_xlat11.x = x_1448;
        let x_1450 : vec2<f32> = u_xlat49;
        let x_1457 : vec2<f32> = ((vec2<f32>(x_1450.x, x_1450.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1458 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1458.x, x_1457.x, x_1458.z, x_1457.y);
        let x_1460 : vec2<f32> = u_xlat49;
        let x_1464 : vec2<f32> = ((vec2<f32>(x_1460.x, x_1460.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1465 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1464.x, x_1465.y, x_1464.y, x_1465.w);
        let x_1468 : f32 = u_xlat8.x;
        u_xlat9.y = x_1468;
        let x_1471 : f32 = u_xlat10.y;
        u_xlat9.w = x_1471;
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1473 + x_1474);
        let x_1476 : vec2<f32> = u_xlat49;
        let x_1479 : vec2<f32> = ((vec2<f32>(x_1476.y, x_1476.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1480 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1480.x, x_1479.x, x_1480.z, x_1479.y);
        let x_1482 : vec2<f32> = u_xlat49;
        let x_1485 : vec2<f32> = ((vec2<f32>(x_1482.y, x_1482.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1486 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1485.x, x_1486.y, x_1485.y, x_1486.w);
        let x_1489 : f32 = u_xlat8.y;
        u_xlat10.y = x_1489;
        let x_1491 : vec4<f32> = u_xlat10;
        let x_1492 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1491 + x_1492);
        let x_1494 : vec4<f32> = u_xlat9;
        let x_1495 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1494 / x_1495);
        let x_1497 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1497 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1503 : vec4<f32> = u_xlat10;
        let x_1504 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1503 / x_1504);
        let x_1506 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1506 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1508 : vec4<f32> = u_xlat9;
        let x_1511 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1508.w, x_1508.x, x_1508.y, x_1508.z) * vec4<f32>(x_1511.x, x_1511.x, x_1511.x, x_1511.x));
        let x_1514 : vec4<f32> = u_xlat10;
        let x_1517 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1514.x, x_1514.w, x_1514.y, x_1514.z) * vec4<f32>(x_1517.y, x_1517.y, x_1517.y, x_1517.y));
        let x_1520 : vec4<f32> = u_xlat9;
        let x_1521 : vec3<f32> = vec3<f32>(x_1520.y, x_1520.z, x_1520.w);
        let x_1522 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1521.x, x_1522.y, x_1521.y, x_1521.z);
        let x_1525 : f32 = u_xlat10.x;
        u_xlat12.y = x_1525;
        let x_1527 : vec4<f32> = u_xlat7;
        let x_1530 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1533 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1527.x, x_1527.y, x_1527.x, x_1527.y) * vec4<f32>(x_1530.x, x_1530.y, x_1530.x, x_1530.y)) + vec4<f32>(x_1533.x, x_1533.y, x_1533.z, x_1533.y));
        let x_1536 : vec4<f32> = u_xlat7;
        let x_1539 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1542 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1536.x, x_1536.y) * vec2<f32>(x_1539.x, x_1539.y)) + vec2<f32>(x_1542.w, x_1542.y));
        let x_1546 : f32 = u_xlat12.y;
        u_xlat9.y = x_1546;
        let x_1549 : f32 = u_xlat10.z;
        u_xlat12.y = x_1549;
        let x_1551 : vec4<f32> = u_xlat7;
        let x_1554 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1557 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1551.x, x_1551.y, x_1551.x, x_1551.y) * vec4<f32>(x_1554.x, x_1554.y, x_1554.x, x_1554.y)) + vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1557.y));
        let x_1560 : vec4<f32> = u_xlat7;
        let x_1563 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1566 : vec4<f32> = u_xlat12;
        let x_1568 : vec2<f32> = ((vec2<f32>(x_1560.x, x_1560.y) * vec2<f32>(x_1563.x, x_1563.y)) + vec2<f32>(x_1566.w, x_1566.y));
        let x_1569 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1568.x, x_1568.y, x_1569.z, x_1569.w);
        let x_1572 : f32 = u_xlat12.y;
        u_xlat9.z = x_1572;
        let x_1575 : vec4<f32> = u_xlat7;
        let x_1578 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1581 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1575.x, x_1575.y, x_1575.x, x_1575.y) * vec4<f32>(x_1578.x, x_1578.y, x_1578.x, x_1578.y)) + vec4<f32>(x_1581.x, x_1581.y, x_1581.x, x_1581.z));
        let x_1585 : f32 = u_xlat10.w;
        u_xlat12.y = x_1585;
        let x_1588 : vec4<f32> = u_xlat7;
        let x_1591 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1594 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1588.x, x_1588.y, x_1588.x, x_1588.y) * vec4<f32>(x_1591.x, x_1591.y, x_1591.x, x_1591.y)) + vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1594.y));
        let x_1598 : vec4<f32> = u_xlat7;
        let x_1601 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1604 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1598.x, x_1598.y) * vec2<f32>(x_1601.x, x_1601.y)) + vec2<f32>(x_1604.w, x_1604.y));
        let x_1608 : f32 = u_xlat12.y;
        u_xlat9.w = x_1608;
        let x_1611 : vec4<f32> = u_xlat7;
        let x_1614 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1617 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1611.x, x_1611.y) * vec2<f32>(x_1614.x, x_1614.y)) + vec2<f32>(x_1617.x, x_1617.w));
        let x_1620 : vec4<f32> = u_xlat12;
        let x_1621 : vec3<f32> = vec3<f32>(x_1620.x, x_1620.z, x_1620.w);
        let x_1622 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1621.x, x_1622.y, x_1621.y, x_1621.z);
        let x_1624 : vec4<f32> = u_xlat7;
        let x_1627 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1630 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1624.x, x_1624.y, x_1624.x, x_1624.y) * vec4<f32>(x_1627.x, x_1627.y, x_1627.x, x_1627.y)) + vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1630.y));
        let x_1634 : vec4<f32> = u_xlat7;
        let x_1637 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1640 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1634.x, x_1634.y) * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1640.w, x_1640.y));
        let x_1644 : f32 = u_xlat9.x;
        u_xlat10.x = x_1644;
        let x_1646 : vec4<f32> = u_xlat7;
        let x_1649 : vec4<f32> = x_799.x_MainLightShadowmapSize;
        let x_1652 : vec4<f32> = u_xlat10;
        let x_1654 : vec2<f32> = ((vec2<f32>(x_1646.x, x_1646.y) * vec2<f32>(x_1649.x, x_1649.y)) + vec2<f32>(x_1652.x, x_1652.y));
        let x_1655 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1654.x, x_1654.y, x_1655.z, x_1655.w);
        let x_1658 : vec4<f32> = u_xlat8;
        let x_1660 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1658.x, x_1658.x, x_1658.x, x_1658.x) * x_1660);
        let x_1663 : vec4<f32> = u_xlat8;
        let x_1665 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1663.y, x_1663.y, x_1663.y, x_1663.y) * x_1665);
        let x_1668 : vec4<f32> = u_xlat8;
        let x_1670 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1668.z, x_1668.z, x_1668.z, x_1668.z) * x_1670);
        let x_1672 : vec4<f32> = u_xlat8;
        let x_1674 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1672.w, x_1672.w, x_1672.w, x_1672.w) * x_1674);
        let x_1677 : vec4<f32> = u_xlat13;
        let x_1678 : vec2<f32> = vec2<f32>(x_1677.x, x_1677.y);
        let x_1680 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
        let x_1687 : vec3<f32> = txVec13;
        let x_1689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1687.xy, x_1687.z);
        u_xlat67 = x_1689;
        let x_1691 : vec4<f32> = u_xlat13;
        let x_1692 : vec2<f32> = vec2<f32>(x_1691.z, x_1691.w);
        let x_1694 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
        let x_1701 : vec3<f32> = txVec14;
        let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1701.xy, x_1701.z);
        u_xlat68 = x_1703;
        let x_1704 : f32 = u_xlat68;
        let x_1706 : f32 = u_xlat18.y;
        u_xlat68 = (x_1704 * x_1706);
        let x_1709 : f32 = u_xlat18.x;
        let x_1710 : f32 = u_xlat67;
        let x_1712 : f32 = u_xlat68;
        u_xlat67 = ((x_1709 * x_1710) + x_1712);
        let x_1715 : vec2<f32> = u_xlat49;
        let x_1717 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1715.x, x_1715.y, x_1717);
        let x_1724 : vec3<f32> = txVec15;
        let x_1726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1724.xy, x_1724.z);
        u_xlat68 = x_1726;
        let x_1728 : f32 = u_xlat18.z;
        let x_1729 : f32 = u_xlat68;
        let x_1731 : f32 = u_xlat67;
        u_xlat67 = ((x_1728 * x_1729) + x_1731);
        let x_1734 : vec4<f32> = u_xlat16;
        let x_1735 : vec2<f32> = vec2<f32>(x_1734.x, x_1734.y);
        let x_1737 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1735.x, x_1735.y, x_1737);
        let x_1744 : vec3<f32> = txVec16;
        let x_1746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1744.xy, x_1744.z);
        u_xlat68 = x_1746;
        let x_1748 : f32 = u_xlat18.w;
        let x_1749 : f32 = u_xlat68;
        let x_1751 : f32 = u_xlat67;
        u_xlat67 = ((x_1748 * x_1749) + x_1751);
        let x_1754 : vec4<f32> = u_xlat14;
        let x_1755 : vec2<f32> = vec2<f32>(x_1754.x, x_1754.y);
        let x_1757 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1755.x, x_1755.y, x_1757);
        let x_1764 : vec3<f32> = txVec17;
        let x_1766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1764.xy, x_1764.z);
        u_xlat68 = x_1766;
        let x_1768 : f32 = u_xlat19.x;
        let x_1769 : f32 = u_xlat68;
        let x_1771 : f32 = u_xlat67;
        u_xlat67 = ((x_1768 * x_1769) + x_1771);
        let x_1774 : vec4<f32> = u_xlat14;
        let x_1775 : vec2<f32> = vec2<f32>(x_1774.z, x_1774.w);
        let x_1777 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1775.x, x_1775.y, x_1777);
        let x_1784 : vec3<f32> = txVec18;
        let x_1786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1784.xy, x_1784.z);
        u_xlat68 = x_1786;
        let x_1788 : f32 = u_xlat19.y;
        let x_1789 : f32 = u_xlat68;
        let x_1791 : f32 = u_xlat67;
        u_xlat67 = ((x_1788 * x_1789) + x_1791);
        let x_1794 : vec4<f32> = u_xlat15;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.x, x_1794.y);
        let x_1797 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec19;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1804.xy, x_1804.z);
        u_xlat68 = x_1806;
        let x_1808 : f32 = u_xlat19.z;
        let x_1809 : f32 = u_xlat68;
        let x_1811 : f32 = u_xlat67;
        u_xlat67 = ((x_1808 * x_1809) + x_1811);
        let x_1814 : vec4<f32> = u_xlat16;
        let x_1815 : vec2<f32> = vec2<f32>(x_1814.z, x_1814.w);
        let x_1817 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1815.x, x_1815.y, x_1817);
        let x_1824 : vec3<f32> = txVec20;
        let x_1826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1824.xy, x_1824.z);
        u_xlat68 = x_1826;
        let x_1828 : f32 = u_xlat19.w;
        let x_1829 : f32 = u_xlat68;
        let x_1831 : f32 = u_xlat67;
        u_xlat67 = ((x_1828 * x_1829) + x_1831);
        let x_1834 : vec4<f32> = u_xlat17;
        let x_1835 : vec2<f32> = vec2<f32>(x_1834.x, x_1834.y);
        let x_1837 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
        let x_1844 : vec3<f32> = txVec21;
        let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1844.xy, x_1844.z);
        u_xlat68 = x_1846;
        let x_1848 : f32 = u_xlat20.x;
        let x_1849 : f32 = u_xlat68;
        let x_1851 : f32 = u_xlat67;
        u_xlat67 = ((x_1848 * x_1849) + x_1851);
        let x_1854 : vec4<f32> = u_xlat17;
        let x_1855 : vec2<f32> = vec2<f32>(x_1854.z, x_1854.w);
        let x_1857 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec22;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1864.xy, x_1864.z);
        u_xlat68 = x_1866;
        let x_1868 : f32 = u_xlat20.y;
        let x_1869 : f32 = u_xlat68;
        let x_1871 : f32 = u_xlat67;
        u_xlat67 = ((x_1868 * x_1869) + x_1871);
        let x_1874 : vec2<f32> = u_xlat30;
        let x_1876 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec23;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1883.xy, x_1883.z);
        u_xlat68 = x_1885;
        let x_1887 : f32 = u_xlat20.z;
        let x_1888 : f32 = u_xlat68;
        let x_1890 : f32 = u_xlat67;
        u_xlat67 = ((x_1887 * x_1888) + x_1890);
        let x_1893 : vec2<f32> = u_xlat57;
        let x_1895 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec24;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1902.xy, x_1902.z);
        u_xlat68 = x_1904;
        let x_1906 : f32 = u_xlat20.w;
        let x_1907 : f32 = u_xlat68;
        let x_1909 : f32 = u_xlat67;
        u_xlat67 = ((x_1906 * x_1907) + x_1909);
        let x_1912 : vec4<f32> = u_xlat12;
        let x_1913 : vec2<f32> = vec2<f32>(x_1912.x, x_1912.y);
        let x_1915 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1913.x, x_1913.y, x_1915);
        let x_1922 : vec3<f32> = txVec25;
        let x_1924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1922.xy, x_1922.z);
        u_xlat68 = x_1924;
        let x_1926 : f32 = u_xlat8.x;
        let x_1927 : f32 = u_xlat68;
        let x_1929 : f32 = u_xlat67;
        u_xlat67 = ((x_1926 * x_1927) + x_1929);
        let x_1932 : vec4<f32> = u_xlat12;
        let x_1933 : vec2<f32> = vec2<f32>(x_1932.z, x_1932.w);
        let x_1935 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec26;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1942.xy, x_1942.z);
        u_xlat68 = x_1944;
        let x_1946 : f32 = u_xlat8.y;
        let x_1947 : f32 = u_xlat68;
        let x_1949 : f32 = u_xlat67;
        u_xlat67 = ((x_1946 * x_1947) + x_1949);
        let x_1952 : vec2<f32> = u_xlat52;
        let x_1954 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
        let x_1961 : vec3<f32> = txVec27;
        let x_1963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1961.xy, x_1961.z);
        u_xlat68 = x_1963;
        let x_1965 : f32 = u_xlat8.z;
        let x_1966 : f32 = u_xlat68;
        let x_1968 : f32 = u_xlat67;
        u_xlat67 = ((x_1965 * x_1966) + x_1968);
        let x_1971 : vec4<f32> = u_xlat7;
        let x_1972 : vec2<f32> = vec2<f32>(x_1971.x, x_1971.y);
        let x_1974 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1972.x, x_1972.y, x_1974);
        let x_1981 : vec3<f32> = txVec28;
        let x_1983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1981.xy, x_1981.z);
        u_xlat68 = x_1983;
        let x_1985 : f32 = u_xlat8.w;
        let x_1986 : f32 = u_xlat68;
        let x_1988 : f32 = u_xlat67;
        u_xlat4.x = ((x_1985 * x_1986) + x_1988);
      }
    }
  } else {
    let x_1993 : vec4<f32> = vs_TEXCOORD8;
    let x_1994 : vec2<f32> = vec2<f32>(x_1993.x, x_1993.y);
    let x_1996 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1994.x, x_1994.y, x_1996);
    let x_2003 : vec3<f32> = txVec29;
    let x_2005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2003.xy, x_2003.z);
    u_xlat4.x = x_2005;
  }
  let x_2008 : f32 = x_799.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_2008) + 1.0f);
  let x_2012 : f32 = u_xlat4.x;
  let x_2014 : f32 = x_799.x_MainLightShadowParams.x;
  let x_2016 : f32 = u_xlat67;
  u_xlat4.x = ((x_2012 * x_2014) + x_2016);
  let x_2020 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (0.0f >= x_2020);
  let x_2024 : f32 = vs_TEXCOORD8.z;
  u_xlatb68 = (x_2024 >= 1.0f);
  let x_2026 : bool = u_xlatb67;
  let x_2027 : bool = u_xlatb68;
  u_xlatb67 = (x_2026 | x_2027);
  let x_2029 : bool = u_xlatb67;
  if (x_2029) {
    x_2030 = 1.0f;
  } else {
    let x_2035 : f32 = u_xlat4.x;
    x_2030 = x_2035;
  }
  let x_2036 : f32 = x_2030;
  u_xlat4.x = x_2036;
  let x_2038 : vec3<f32> = vs_TEXCOORD7;
  let x_2040 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2042 : vec3<f32> = (x_2038 + -(x_2040));
  let x_2043 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
  let x_2045 : vec4<f32> = u_xlat7;
  let x_2047 : vec4<f32> = u_xlat7;
  u_xlat67 = dot(vec3<f32>(x_2045.x, x_2045.y, x_2045.z), vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
  let x_2050 : f32 = u_xlat67;
  let x_2052 : f32 = x_799.x_MainLightShadowParams.z;
  let x_2055 : f32 = x_799.x_MainLightShadowParams.w;
  u_xlat67 = ((x_2050 * x_2052) + x_2055);
  let x_2057 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2057, 0.0f, 1.0f);
  let x_2060 : f32 = u_xlat4.x;
  u_xlat68 = (-(x_2060) + 1.0f);
  let x_2063 : f32 = u_xlat67;
  let x_2064 : f32 = u_xlat68;
  let x_2067 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2063 * x_2064) + x_2067);
  let x_2076 : f32 = x_2074.x_MainLightCookieTextureFormat;
  u_xlatb67 = !((x_2076 == -1.0f));
  let x_2078 : bool = u_xlatb67;
  if (x_2078) {
    let x_2081 : vec3<f32> = vs_TEXCOORD7;
    let x_2084 : vec4<f32> = x_2074.x_MainLightWorldToLight[1i];
    let x_2086 : vec2<f32> = (vec2<f32>(x_2081.y, x_2081.y) * vec2<f32>(x_2084.x, x_2084.y));
    let x_2087 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2086.x, x_2086.y, x_2087.z, x_2087.w);
    let x_2090 : vec4<f32> = x_2074.x_MainLightWorldToLight[0i];
    let x_2092 : vec3<f32> = vs_TEXCOORD7;
    let x_2095 : vec4<f32> = u_xlat7;
    let x_2097 : vec2<f32> = ((vec2<f32>(x_2090.x, x_2090.y) * vec2<f32>(x_2092.x, x_2092.x)) + vec2<f32>(x_2095.x, x_2095.y));
    let x_2098 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2097.x, x_2097.y, x_2098.z, x_2098.w);
    let x_2101 : vec4<f32> = x_2074.x_MainLightWorldToLight[2i];
    let x_2103 : vec3<f32> = vs_TEXCOORD7;
    let x_2106 : vec4<f32> = u_xlat7;
    let x_2108 : vec2<f32> = ((vec2<f32>(x_2101.x, x_2101.y) * vec2<f32>(x_2103.z, x_2103.z)) + vec2<f32>(x_2106.x, x_2106.y));
    let x_2109 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2108.x, x_2108.y, x_2109.z, x_2109.w);
    let x_2111 : vec4<f32> = u_xlat7;
    let x_2114 : vec4<f32> = x_2074.x_MainLightWorldToLight[3i];
    let x_2116 : vec2<f32> = (vec2<f32>(x_2111.x, x_2111.y) + vec2<f32>(x_2114.x, x_2114.y));
    let x_2117 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2116.x, x_2116.y, x_2117.z, x_2117.w);
    let x_2119 : vec4<f32> = u_xlat7;
    let x_2122 : vec2<f32> = ((vec2<f32>(x_2119.x, x_2119.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2123 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2122.x, x_2122.y, x_2123.z, x_2123.w);
    let x_2130 : vec4<f32> = u_xlat7;
    let x_2133 : f32 = x_126.x_GlobalMipBias.x;
    let x_2134 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2130.x, x_2130.y), x_2133);
    u_xlat7 = x_2134;
    let x_2139 : f32 = x_2074.x_MainLightCookieTextureFormat;
    let x_2141 : f32 = x_2074.x_MainLightCookieTextureFormat;
    let x_2143 : f32 = x_2074.x_MainLightCookieTextureFormat;
    let x_2145 : f32 = x_2074.x_MainLightCookieTextureFormat;
    let x_2146 : vec4<f32> = vec4<f32>(x_2139, x_2141, x_2143, x_2145);
    let x_2153 : vec4<bool> = (vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2146.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_2153.x, x_2153.y);
    let x_2156 : bool = u_xlatb8.y;
    if (x_2156) {
      let x_2161 : f32 = u_xlat7.w;
      x_2157 = x_2161;
    } else {
      let x_2164 : f32 = u_xlat7.x;
      x_2157 = x_2164;
    }
    let x_2165 : f32 = x_2157;
    u_xlat67 = x_2165;
    let x_2167 : bool = u_xlatb8.x;
    if (x_2167) {
      let x_2171 : vec4<f32> = u_xlat7;
      x_2168 = vec3<f32>(x_2171.x, x_2171.y, x_2171.z);
    } else {
      let x_2174 : f32 = u_xlat67;
      x_2168 = vec3<f32>(x_2174, x_2174, x_2174);
    }
    let x_2176 : vec3<f32> = x_2168;
    let x_2177 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2183 : vec4<f32> = u_xlat7;
  let x_2186 : vec4<f32> = x_126.x_MainLightColor;
  let x_2188 : vec3<f32> = (vec3<f32>(x_2183.x, x_2183.y, x_2183.z) * vec3<f32>(x_2186.x, x_2186.y, x_2186.z));
  let x_2189 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2188.x, x_2188.y, x_2188.z, x_2189.w);
  let x_2191 : f32 = u_xlat46;
  let x_2193 : vec4<f32> = u_xlat7;
  let x_2195 : vec3<f32> = (vec3<f32>(x_2191, x_2191, x_2191) * vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
  let x_2196 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
  let x_2198 : vec4<f32> = u_xlat1;
  let x_2201 : vec3<f32> = u_xlat2;
  u_xlat67 = dot(-(vec3<f32>(x_2198.x, x_2198.y, x_2198.z)), x_2201);
  let x_2203 : f32 = u_xlat67;
  let x_2204 : f32 = u_xlat67;
  u_xlat67 = (x_2203 + x_2204);
  let x_2206 : vec3<f32> = u_xlat2;
  let x_2207 : f32 = u_xlat67;
  let x_2211 : vec4<f32> = u_xlat1;
  let x_2214 : vec3<f32> = ((x_2206 * -(vec3<f32>(x_2207, x_2207, x_2207))) + -(vec3<f32>(x_2211.x, x_2211.y, x_2211.z)));
  let x_2215 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2214.x, x_2214.y, x_2214.z, x_2215.w);
  let x_2217 : vec3<f32> = u_xlat2;
  let x_2218 : vec4<f32> = u_xlat1;
  u_xlat67 = dot(x_2217, vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
  let x_2221 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2221, 0.0f, 1.0f);
  let x_2223 : f32 = u_xlat67;
  u_xlat67 = (-(x_2223) + 1.0f);
  let x_2226 : f32 = u_xlat67;
  let x_2227 : f32 = u_xlat67;
  u_xlat67 = (x_2226 * x_2227);
  let x_2229 : f32 = u_xlat67;
  let x_2230 : f32 = u_xlat67;
  u_xlat67 = (x_2229 * x_2230);
  let x_2233 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_2233) * 0.699999988f) + 1.700000048f);
  let x_2240 : f32 = u_xlat0.x;
  let x_2241 : f32 = u_xlat68;
  u_xlat0.x = (x_2240 * x_2241);
  let x_2245 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2245 * 6.0f);
  let x_2257 : vec4<f32> = u_xlat8;
  let x_2260 : f32 = u_xlat0.x;
  let x_2261 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2257.x, x_2257.y, x_2257.z), x_2260);
  u_xlat8 = x_2261;
  let x_2263 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2263 + -1.0f);
  let x_2271 : f32 = x_2269.unity_SpecCube0_HDR.w;
  let x_2273 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2271 * x_2273) + 1.0f);
  let x_2278 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2278, 0.0f);
  let x_2282 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2282);
  let x_2286 : f32 = u_xlat0.x;
  let x_2288 : f32 = x_2269.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2286 * x_2288);
  let x_2292 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2292);
  let x_2296 : f32 = u_xlat0.x;
  let x_2298 : f32 = x_2269.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2296 * x_2298);
  let x_2301 : vec4<f32> = u_xlat8;
  let x_2303 : vec3<f32> = u_xlat0;
  let x_2305 : vec3<f32> = (vec3<f32>(x_2301.x, x_2301.y, x_2301.z) * vec3<f32>(x_2303.x, x_2303.x, x_2303.x));
  let x_2306 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
  let x_2308 : f32 = u_xlat42;
  let x_2310 : f32 = u_xlat42;
  let x_2314 : vec2<f32> = ((vec2<f32>(x_2308, x_2308) * vec2<f32>(x_2310, x_2310)) + vec2<f32>(-1.0f, 1.0f));
  let x_2315 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2314.x, x_2315.y, x_2314.y);
  let x_2318 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2318);
  let x_2320 : vec4<f32> = u_xlat5;
  let x_2323 : f32 = u_xlat66;
  let x_2325 : vec3<f32> = (-(vec3<f32>(x_2320.x, x_2320.y, x_2320.z)) + vec3<f32>(x_2323, x_2323, x_2323));
  let x_2326 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
  let x_2328 : f32 = u_xlat67;
  let x_2330 : vec4<f32> = u_xlat9;
  let x_2333 : vec4<f32> = u_xlat5;
  let x_2335 : vec3<f32> = ((vec3<f32>(x_2328, x_2328, x_2328) * vec3<f32>(x_2330.x, x_2330.y, x_2330.z)) + vec3<f32>(x_2333.x, x_2333.y, x_2333.z));
  let x_2336 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
  let x_2338 : f32 = u_xlat42;
  let x_2340 : vec4<f32> = u_xlat9;
  let x_2342 : vec3<f32> = (vec3<f32>(x_2338, x_2338, x_2338) * vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
  let x_2343 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
  let x_2345 : vec4<f32> = u_xlat8;
  let x_2347 : vec4<f32> = u_xlat9;
  let x_2349 : vec3<f32> = (vec3<f32>(x_2345.x, x_2345.y, x_2345.z) * vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
  let x_2350 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
  let x_2352 : vec4<f32> = u_xlat3;
  let x_2354 : vec4<f32> = u_xlat6;
  let x_2357 : vec4<f32> = u_xlat8;
  let x_2359 : vec3<f32> = ((vec3<f32>(x_2352.x, x_2352.y, x_2352.z) * vec3<f32>(x_2354.x, x_2354.y, x_2354.z)) + vec3<f32>(x_2357.x, x_2357.y, x_2357.z));
  let x_2360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2359.x, x_2359.y, x_2359.z, x_2360.w);
  let x_2363 : f32 = u_xlat4.x;
  let x_2365 : f32 = x_2269.unity_LightData.z;
  u_xlat42 = (x_2363 * x_2365);
  let x_2367 : vec3<f32> = u_xlat2;
  let x_2369 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat66 = dot(x_2367, vec3<f32>(x_2369.x, x_2369.y, x_2369.z));
  let x_2372 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2372, 0.0f, 1.0f);
  let x_2374 : f32 = u_xlat42;
  let x_2375 : f32 = u_xlat66;
  u_xlat42 = (x_2374 * x_2375);
  let x_2377 : f32 = u_xlat42;
  let x_2379 : vec4<f32> = u_xlat7;
  let x_2381 : vec3<f32> = (vec3<f32>(x_2377, x_2377, x_2377) * vec3<f32>(x_2379.x, x_2379.y, x_2379.z));
  let x_2382 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
  let x_2384 : vec4<f32> = u_xlat1;
  let x_2387 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2389 : vec3<f32> = (vec3<f32>(x_2384.x, x_2384.y, x_2384.z) + vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
  let x_2390 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2389.x, x_2389.y, x_2389.z, x_2390.w);
  let x_2392 : vec4<f32> = u_xlat8;
  let x_2394 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2392.x, x_2392.y, x_2392.z), vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2397 : f32 = u_xlat42;
  u_xlat42 = max(x_2397, 1.17549435e-37f);
  let x_2400 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2400);
  let x_2402 : f32 = u_xlat42;
  let x_2404 : vec4<f32> = u_xlat8;
  let x_2406 : vec3<f32> = (vec3<f32>(x_2402, x_2402, x_2402) * vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2407 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2406.x, x_2406.y, x_2406.z, x_2407.w);
  let x_2409 : vec3<f32> = u_xlat2;
  let x_2410 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_2409, vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2413, 0.0f, 1.0f);
  let x_2416 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2418 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_2416.x, x_2416.y, x_2416.z), vec3<f32>(x_2418.x, x_2418.y, x_2418.z));
  let x_2421 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2421, 0.0f, 1.0f);
  let x_2423 : f32 = u_xlat42;
  let x_2424 : f32 = u_xlat42;
  u_xlat42 = (x_2423 * x_2424);
  let x_2426 : f32 = u_xlat42;
  let x_2428 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2426 * x_2428) + 1.000010014f);
  let x_2432 : f32 = u_xlat66;
  let x_2433 : f32 = u_xlat66;
  u_xlat66 = (x_2432 * x_2433);
  let x_2435 : f32 = u_xlat42;
  let x_2436 : f32 = u_xlat42;
  u_xlat42 = (x_2435 * x_2436);
  let x_2438 : f32 = u_xlat66;
  u_xlat66 = max(x_2438, 0.100000001f);
  let x_2441 : f32 = u_xlat42;
  let x_2442 : f32 = u_xlat66;
  u_xlat42 = (x_2441 * x_2442);
  let x_2444 : f32 = u_xlat25;
  let x_2445 : f32 = u_xlat42;
  u_xlat42 = (x_2444 * x_2445);
  let x_2447 : f32 = u_xlat65;
  let x_2448 : f32 = u_xlat42;
  u_xlat42 = (x_2447 / x_2448);
  let x_2450 : vec4<f32> = u_xlat5;
  let x_2452 : f32 = u_xlat42;
  let x_2455 : vec4<f32> = u_xlat6;
  let x_2457 : vec3<f32> = ((vec3<f32>(x_2450.x, x_2450.y, x_2450.z) * vec3<f32>(x_2452, x_2452, x_2452)) + vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
  let x_2458 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2458.w);
  let x_2460 : vec4<f32> = u_xlat7;
  let x_2462 : vec4<f32> = u_xlat8;
  let x_2464 : vec3<f32> = (vec3<f32>(x_2460.x, x_2460.y, x_2460.z) * vec3<f32>(x_2462.x, x_2462.y, x_2462.z));
  let x_2465 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2464.x, x_2464.y, x_2464.z, x_2465.w);
  let x_2468 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2470 : f32 = x_2269.unity_LightData.y;
  u_xlat42 = min(x_2468, x_2470);
  let x_2474 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2474));
  let x_2478 : f32 = x_2074.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2480 : f32 = x_2074.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2482 : f32 = x_2074.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2484 : f32 = x_2074.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2485 : vec4<f32> = vec4<f32>(x_2478, x_2480, x_2482, x_2484);
  let x_2492 : vec4<bool> = (vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2485.w) == vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
  let x_2493 : vec2<bool> = vec2<bool>(x_2492.x, x_2492.w);
  let x_2494 : vec4<bool> = u_xlatb4;
  u_xlatb4 = vec4<bool>(x_2493.x, x_2494.y, x_2494.z, x_2493.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2505 : u32 = u_xlatu_loop_1;
    let x_2506 : u32 = u_xlatu42;
    if ((x_2505 < x_2506)) {
    } else {
      break;
    }
    let x_2509 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2509 >> 2u);
    let x_2513 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2513 & 3u));
    let x_2516 : u32 = u_xlatu68;
    let x_2519 : vec4<f32> = x_2269.unity_LightIndices[bitcast<i32>(x_2516)];
    let x_2529 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2534 : vec4<u32> = indexable[x_2529];
    u_xlat68 = dot(x_2519, bitcast<vec4<f32>>(x_2534));
    let x_2537 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2537));
    let x_2540 : vec3<f32> = vs_TEXCOORD7;
    let x_2552 : u32 = u_xlatu68;
    let x_2555 : vec4<f32> = x_2551.x_AdditionalLightsPosition[bitcast<i32>(x_2552)];
    let x_2558 : u32 = u_xlatu68;
    let x_2561 : vec4<f32> = x_2551.x_AdditionalLightsPosition[bitcast<i32>(x_2558)];
    let x_2563 : vec3<f32> = ((-(x_2540) * vec3<f32>(x_2555.w, x_2555.w, x_2555.w)) + vec3<f32>(x_2561.x, x_2561.y, x_2561.z));
    let x_2564 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2563.x, x_2563.y, x_2563.z, x_2564.w);
    let x_2566 : vec4<f32> = u_xlat9;
    let x_2568 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2566.x, x_2566.y, x_2566.z), vec3<f32>(x_2568.x, x_2568.y, x_2568.z));
    let x_2571 : f32 = u_xlat69;
    u_xlat69 = max(x_2571, 6.10351562e-05f);
    let x_2574 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_2574);
    let x_2576 : f32 = u_xlat70;
    let x_2578 : vec4<f32> = u_xlat9;
    let x_2580 : vec3<f32> = (vec3<f32>(x_2576, x_2576, x_2576) * vec3<f32>(x_2578.x, x_2578.y, x_2578.z));
    let x_2581 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2580.x, x_2580.y, x_2580.z, x_2581.w);
    let x_2584 : f32 = u_xlat69;
    u_xlat71 = (1.0f / x_2584);
    let x_2586 : f32 = u_xlat69;
    let x_2587 : u32 = u_xlatu68;
    let x_2590 : f32 = x_2551.x_AdditionalLightsAttenuation[bitcast<i32>(x_2587)].x;
    u_xlat69 = (x_2586 * x_2590);
    let x_2592 : f32 = u_xlat69;
    let x_2594 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2592) * x_2594) + 1.0f);
    let x_2597 : f32 = u_xlat69;
    u_xlat69 = max(x_2597, 0.0f);
    let x_2599 : f32 = u_xlat69;
    let x_2600 : f32 = u_xlat69;
    u_xlat69 = (x_2599 * x_2600);
    let x_2602 : f32 = u_xlat69;
    let x_2603 : f32 = u_xlat71;
    u_xlat69 = (x_2602 * x_2603);
    let x_2605 : u32 = u_xlatu68;
    let x_2608 : vec4<f32> = x_2551.x_AdditionalLightsSpotDir[bitcast<i32>(x_2605)];
    let x_2610 : vec4<f32> = u_xlat10;
    u_xlat71 = dot(vec3<f32>(x_2608.x, x_2608.y, x_2608.z), vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
    let x_2613 : f32 = u_xlat71;
    let x_2614 : u32 = u_xlatu68;
    let x_2617 : f32 = x_2551.x_AdditionalLightsAttenuation[bitcast<i32>(x_2614)].z;
    let x_2619 : u32 = u_xlatu68;
    let x_2622 : f32 = x_2551.x_AdditionalLightsAttenuation[bitcast<i32>(x_2619)].w;
    u_xlat71 = ((x_2613 * x_2617) + x_2622);
    let x_2624 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2624, 0.0f, 1.0f);
    let x_2626 : f32 = u_xlat71;
    let x_2627 : f32 = u_xlat71;
    u_xlat71 = (x_2626 * x_2627);
    let x_2629 : f32 = u_xlat69;
    let x_2630 : f32 = u_xlat71;
    u_xlat69 = (x_2629 * x_2630);
    let x_2633 : u32 = u_xlatu68;
    u_xlatu71 = (x_2633 >> 5u);
    let x_2636 : u32 = u_xlatu68;
    u_xlati72 = (1i << bitcast<u32>((bitcast<i32>(x_2636) & 31i)));
    let x_2641 : i32 = u_xlati72;
    let x_2643 : u32 = u_xlatu71;
    let x_2646 : f32 = x_2074.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2643)].el;
    u_xlati71 = bitcast<i32>((bitcast<u32>(x_2641) & bitcast<u32>(x_2646)));
    let x_2650 : i32 = u_xlati71;
    if ((x_2650 != 0i)) {
      let x_2660 : u32 = u_xlatu68;
      let x_2663 : f32 = x_2659.x_AdditionalLightsLightTypes[bitcast<i32>(x_2660)].el;
      u_xlati71 = i32(x_2663);
      let x_2665 : i32 = u_xlati71;
      u_xlati72 = select(1i, 0i, (x_2665 != 0i));
      let x_2669 : u32 = u_xlatu68;
      u_xlati73 = (bitcast<i32>(x_2669) << bitcast<u32>(2i));
      let x_2672 : i32 = u_xlati72;
      if ((x_2672 != 0i)) {
        let x_2676 : vec3<f32> = vs_TEXCOORD7;
        let x_2678 : i32 = u_xlati73;
        let x_2681 : i32 = u_xlati73;
        let x_2685 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[((x_2678 + 1i) / 4i)][((x_2681 + 1i) % 4i)];
        let x_2687 : vec3<f32> = (vec3<f32>(x_2676.y, x_2676.y, x_2676.y) * vec3<f32>(x_2685.x, x_2685.y, x_2685.w));
        let x_2688 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2687.x, x_2687.y, x_2687.z, x_2688.w);
        let x_2690 : i32 = u_xlati73;
        let x_2692 : i32 = u_xlati73;
        let x_2695 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[(x_2690 / 4i)][(x_2692 % 4i)];
        let x_2697 : vec3<f32> = vs_TEXCOORD7;
        let x_2700 : vec4<f32> = u_xlat11;
        let x_2702 : vec3<f32> = ((vec3<f32>(x_2695.x, x_2695.y, x_2695.w) * vec3<f32>(x_2697.x, x_2697.x, x_2697.x)) + vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
        let x_2703 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2703.w);
        let x_2705 : i32 = u_xlati73;
        let x_2708 : i32 = u_xlati73;
        let x_2712 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[((x_2705 + 2i) / 4i)][((x_2708 + 2i) % 4i)];
        let x_2714 : vec3<f32> = vs_TEXCOORD7;
        let x_2717 : vec4<f32> = u_xlat11;
        let x_2719 : vec3<f32> = ((vec3<f32>(x_2712.x, x_2712.y, x_2712.w) * vec3<f32>(x_2714.z, x_2714.z, x_2714.z)) + vec3<f32>(x_2717.x, x_2717.y, x_2717.z));
        let x_2720 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2719.x, x_2719.y, x_2719.z, x_2720.w);
        let x_2722 : vec4<f32> = u_xlat11;
        let x_2724 : i32 = u_xlati73;
        let x_2727 : i32 = u_xlati73;
        let x_2731 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[((x_2724 + 3i) / 4i)][((x_2727 + 3i) % 4i)];
        let x_2733 : vec3<f32> = (vec3<f32>(x_2722.x, x_2722.y, x_2722.z) + vec3<f32>(x_2731.x, x_2731.y, x_2731.w));
        let x_2734 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2733.x, x_2733.y, x_2733.z, x_2734.w);
        let x_2736 : vec4<f32> = u_xlat11;
        let x_2738 : vec4<f32> = u_xlat11;
        let x_2740 : vec2<f32> = (vec2<f32>(x_2736.x, x_2736.y) / vec2<f32>(x_2738.z, x_2738.z));
        let x_2741 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2740.x, x_2740.y, x_2741.z, x_2741.w);
        let x_2743 : vec4<f32> = u_xlat11;
        let x_2746 : vec2<f32> = ((vec2<f32>(x_2743.x, x_2743.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2747 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2746.x, x_2746.y, x_2747.z, x_2747.w);
        let x_2749 : vec4<f32> = u_xlat11;
        let x_2753 : vec2<f32> = clamp(vec2<f32>(x_2749.x, x_2749.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2754 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2753.x, x_2753.y, x_2754.z, x_2754.w);
        let x_2756 : u32 = u_xlatu68;
        let x_2759 : vec4<f32> = x_2659.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2756)];
        let x_2761 : vec4<f32> = u_xlat11;
        let x_2764 : u32 = u_xlatu68;
        let x_2767 : vec4<f32> = x_2659.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2764)];
        let x_2769 : vec2<f32> = ((vec2<f32>(x_2759.x, x_2759.y) * vec2<f32>(x_2761.x, x_2761.y)) + vec2<f32>(x_2767.z, x_2767.w));
        let x_2770 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2769.x, x_2769.y, x_2770.z, x_2770.w);
      } else {
        let x_2774 : i32 = u_xlati71;
        u_xlatb71 = (x_2774 == 1i);
        let x_2776 : bool = u_xlatb71;
        u_xlati71 = select(0i, 1i, x_2776);
        let x_2778 : i32 = u_xlati71;
        if ((x_2778 != 0i)) {
          let x_2783 : vec3<f32> = vs_TEXCOORD7;
          let x_2785 : i32 = u_xlati73;
          let x_2788 : i32 = u_xlati73;
          let x_2792 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[((x_2785 + 1i) / 4i)][((x_2788 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2783.y, x_2783.y) * vec2<f32>(x_2792.x, x_2792.y));
          let x_2795 : i32 = u_xlati73;
          let x_2797 : i32 = u_xlati73;
          let x_2800 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[(x_2795 / 4i)][(x_2797 % 4i)];
          let x_2802 : vec3<f32> = vs_TEXCOORD7;
          let x_2805 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2800.x, x_2800.y) * vec2<f32>(x_2802.x, x_2802.x)) + x_2805);
          let x_2807 : i32 = u_xlati73;
          let x_2810 : i32 = u_xlati73;
          let x_2814 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[((x_2807 + 2i) / 4i)][((x_2810 + 2i) % 4i)];
          let x_2816 : vec3<f32> = vs_TEXCOORD7;
          let x_2819 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2814.x, x_2814.y) * vec2<f32>(x_2816.z, x_2816.z)) + x_2819);
          let x_2821 : vec2<f32> = u_xlat53;
          let x_2822 : i32 = u_xlati73;
          let x_2825 : i32 = u_xlati73;
          let x_2829 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[((x_2822 + 3i) / 4i)][((x_2825 + 3i) % 4i)];
          u_xlat53 = (x_2821 + vec2<f32>(x_2829.x, x_2829.y));
          let x_2832 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2832 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2835 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2835);
          let x_2837 : u32 = u_xlatu68;
          let x_2840 : vec4<f32> = x_2659.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2837)];
          let x_2842 : vec2<f32> = u_xlat53;
          let x_2844 : u32 = u_xlatu68;
          let x_2847 : vec4<f32> = x_2659.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2844)];
          let x_2849 : vec2<f32> = ((vec2<f32>(x_2840.x, x_2840.y) * x_2842) + vec2<f32>(x_2847.z, x_2847.w));
          let x_2850 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2849.x, x_2849.y, x_2850.z, x_2850.w);
        } else {
          let x_2853 : vec3<f32> = vs_TEXCOORD7;
          let x_2855 : i32 = u_xlati73;
          let x_2858 : i32 = u_xlati73;
          let x_2862 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[((x_2855 + 1i) / 4i)][((x_2858 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2853.y, x_2853.y, x_2853.y, x_2853.y) * x_2862);
          let x_2864 : i32 = u_xlati73;
          let x_2866 : i32 = u_xlati73;
          let x_2869 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[(x_2864 / 4i)][(x_2866 % 4i)];
          let x_2870 : vec3<f32> = vs_TEXCOORD7;
          let x_2873 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2869 * vec4<f32>(x_2870.x, x_2870.x, x_2870.x, x_2870.x)) + x_2873);
          let x_2875 : i32 = u_xlati73;
          let x_2878 : i32 = u_xlati73;
          let x_2882 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[((x_2875 + 2i) / 4i)][((x_2878 + 2i) % 4i)];
          let x_2883 : vec3<f32> = vs_TEXCOORD7;
          let x_2886 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2882 * vec4<f32>(x_2883.z, x_2883.z, x_2883.z, x_2883.z)) + x_2886);
          let x_2888 : vec4<f32> = u_xlat12;
          let x_2889 : i32 = u_xlati73;
          let x_2892 : i32 = u_xlati73;
          let x_2896 : vec4<f32> = x_2659.x_AdditionalLightsWorldToLights[((x_2889 + 3i) / 4i)][((x_2892 + 3i) % 4i)];
          u_xlat12 = (x_2888 + x_2896);
          let x_2898 : vec4<f32> = u_xlat12;
          let x_2900 : vec4<f32> = u_xlat12;
          let x_2902 : vec3<f32> = (vec3<f32>(x_2898.x, x_2898.y, x_2898.z) / vec3<f32>(x_2900.w, x_2900.w, x_2900.w));
          let x_2903 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2902.x, x_2902.y, x_2902.z, x_2903.w);
          let x_2905 : vec4<f32> = u_xlat12;
          let x_2907 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(vec3<f32>(x_2905.x, x_2905.y, x_2905.z), vec3<f32>(x_2907.x, x_2907.y, x_2907.z));
          let x_2910 : f32 = u_xlat71;
          u_xlat71 = inverseSqrt(x_2910);
          let x_2912 : f32 = u_xlat71;
          let x_2914 : vec4<f32> = u_xlat12;
          let x_2916 : vec3<f32> = (vec3<f32>(x_2912, x_2912, x_2912) * vec3<f32>(x_2914.x, x_2914.y, x_2914.z));
          let x_2917 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2916.x, x_2916.y, x_2916.z, x_2917.w);
          let x_2919 : vec4<f32> = u_xlat12;
          u_xlat71 = dot(abs(vec3<f32>(x_2919.x, x_2919.y, x_2919.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2924 : f32 = u_xlat71;
          u_xlat71 = max(x_2924, 0.000001f);
          let x_2927 : f32 = u_xlat71;
          u_xlat71 = (1.0f / x_2927);
          let x_2929 : f32 = u_xlat71;
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
          let x_2978 : f32 = u_xlat71;
          let x_2981 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2976.x, x_2976.y) * vec2<f32>(x_2978, x_2978)) + x_2981);
          let x_2983 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2983 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2986 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2986, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2990 : u32 = u_xlatu68;
          let x_2993 : vec4<f32> = x_2659.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2990)];
          let x_2995 : vec2<f32> = u_xlat53;
          let x_2997 : u32 = u_xlatu68;
          let x_3000 : vec4<f32> = x_2659.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2997)];
          let x_3002 : vec2<f32> = ((vec2<f32>(x_2993.x, x_2993.y) * x_2995) + vec2<f32>(x_3000.z, x_3000.w));
          let x_3003 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3002.x, x_3002.y, x_3003.z, x_3003.w);
        }
      }
      let x_3010 : vec4<f32> = u_xlat11;
      let x_3013 : f32 = x_126.x_GlobalMipBias.x;
      let x_3014 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3010.x, x_3010.y), x_3013);
      u_xlat11 = x_3014;
      let x_3016 : bool = u_xlatb4.w;
      if (x_3016) {
        let x_3021 : f32 = u_xlat11.w;
        x_3017 = x_3021;
      } else {
        let x_3024 : f32 = u_xlat11.x;
        x_3017 = x_3024;
      }
      let x_3025 : f32 = x_3017;
      u_xlat71 = x_3025;
      let x_3027 : bool = u_xlatb4.x;
      if (x_3027) {
        let x_3031 : vec4<f32> = u_xlat11;
        x_3028 = vec3<f32>(x_3031.x, x_3031.y, x_3031.z);
      } else {
        let x_3034 : f32 = u_xlat71;
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
    let x_3045 : u32 = u_xlatu68;
    let x_3048 : vec4<f32> = x_2551.x_AdditionalLightsColor[bitcast<i32>(x_3045)];
    let x_3050 : vec3<f32> = (vec3<f32>(x_3043.x, x_3043.y, x_3043.z) * vec3<f32>(x_3048.x, x_3048.y, x_3048.z));
    let x_3051 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3050.x, x_3050.y, x_3050.z, x_3051.w);
    let x_3053 : f32 = u_xlat46;
    let x_3055 : vec4<f32> = u_xlat11;
    let x_3057 : vec3<f32> = (vec3<f32>(x_3053, x_3053, x_3053) * vec3<f32>(x_3055.x, x_3055.y, x_3055.z));
    let x_3058 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3057.x, x_3057.y, x_3057.z, x_3058.w);
    let x_3060 : vec3<f32> = u_xlat2;
    let x_3061 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(x_3060, vec3<f32>(x_3061.x, x_3061.y, x_3061.z));
    let x_3064 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3064, 0.0f, 1.0f);
    let x_3066 : f32 = u_xlat68;
    let x_3067 : f32 = u_xlat69;
    u_xlat68 = (x_3066 * x_3067);
    let x_3069 : f32 = u_xlat68;
    let x_3071 : vec4<f32> = u_xlat11;
    let x_3073 : vec3<f32> = (vec3<f32>(x_3069, x_3069, x_3069) * vec3<f32>(x_3071.x, x_3071.y, x_3071.z));
    let x_3074 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3073.x, x_3073.y, x_3073.z, x_3074.w);
    let x_3076 : vec4<f32> = u_xlat9;
    let x_3078 : f32 = u_xlat70;
    let x_3081 : vec4<f32> = u_xlat1;
    let x_3083 : vec3<f32> = ((vec3<f32>(x_3076.x, x_3076.y, x_3076.z) * vec3<f32>(x_3078, x_3078, x_3078)) + vec3<f32>(x_3081.x, x_3081.y, x_3081.z));
    let x_3084 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3083.x, x_3083.y, x_3083.z, x_3084.w);
    let x_3086 : vec4<f32> = u_xlat9;
    let x_3088 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3086.x, x_3086.y, x_3086.z), vec3<f32>(x_3088.x, x_3088.y, x_3088.z));
    let x_3091 : f32 = u_xlat68;
    u_xlat68 = max(x_3091, 1.17549435e-37f);
    let x_3093 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3093);
    let x_3095 : f32 = u_xlat68;
    let x_3097 : vec4<f32> = u_xlat9;
    let x_3099 : vec3<f32> = (vec3<f32>(x_3095, x_3095, x_3095) * vec3<f32>(x_3097.x, x_3097.y, x_3097.z));
    let x_3100 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3099.x, x_3099.y, x_3099.z, x_3100.w);
    let x_3102 : vec3<f32> = u_xlat2;
    let x_3103 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(x_3102, vec3<f32>(x_3103.x, x_3103.y, x_3103.z));
    let x_3106 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3106, 0.0f, 1.0f);
    let x_3108 : vec4<f32> = u_xlat10;
    let x_3110 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3108.x, x_3108.y, x_3108.z), vec3<f32>(x_3110.x, x_3110.y, x_3110.z));
    let x_3113 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3113, 0.0f, 1.0f);
    let x_3115 : f32 = u_xlat68;
    let x_3116 : f32 = u_xlat68;
    u_xlat68 = (x_3115 * x_3116);
    let x_3118 : f32 = u_xlat68;
    let x_3120 : f32 = u_xlat0.x;
    u_xlat68 = ((x_3118 * x_3120) + 1.000010014f);
    let x_3123 : f32 = u_xlat69;
    let x_3124 : f32 = u_xlat69;
    u_xlat69 = (x_3123 * x_3124);
    let x_3126 : f32 = u_xlat68;
    let x_3127 : f32 = u_xlat68;
    u_xlat68 = (x_3126 * x_3127);
    let x_3129 : f32 = u_xlat69;
    u_xlat69 = max(x_3129, 0.100000001f);
    let x_3131 : f32 = u_xlat68;
    let x_3132 : f32 = u_xlat69;
    u_xlat68 = (x_3131 * x_3132);
    let x_3134 : f32 = u_xlat25;
    let x_3135 : f32 = u_xlat68;
    u_xlat68 = (x_3134 * x_3135);
    let x_3137 : f32 = u_xlat65;
    let x_3138 : f32 = u_xlat68;
    u_xlat68 = (x_3137 / x_3138);
    let x_3140 : vec4<f32> = u_xlat5;
    let x_3142 : f32 = u_xlat68;
    let x_3145 : vec4<f32> = u_xlat6;
    let x_3147 : vec3<f32> = ((vec3<f32>(x_3140.x, x_3140.y, x_3140.z) * vec3<f32>(x_3142, x_3142, x_3142)) + vec3<f32>(x_3145.x, x_3145.y, x_3145.z));
    let x_3148 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3147.x, x_3147.y, x_3147.z, x_3148.w);
    let x_3150 : vec4<f32> = u_xlat9;
    let x_3152 : vec4<f32> = u_xlat11;
    let x_3155 : vec4<f32> = u_xlat8;
    let x_3157 : vec3<f32> = ((vec3<f32>(x_3150.x, x_3150.y, x_3150.z) * vec3<f32>(x_3152.x, x_3152.y, x_3152.z)) + vec3<f32>(x_3155.x, x_3155.y, x_3155.z));
    let x_3158 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3157.x, x_3157.y, x_3157.z, x_3158.w);

    continuing {
      let x_3160 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3160 + bitcast<u32>(1i));
    }
  }
  let x_3162 : vec4<f32> = u_xlat3;
  let x_3164 : f32 = u_xlat21;
  let x_3167 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_3162.x, x_3162.y, x_3162.z) * vec3<f32>(x_3164, x_3164, x_3164)) + vec3<f32>(x_3167.x, x_3167.y, x_3167.z));
  let x_3170 : vec4<f32> = u_xlat8;
  let x_3172 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3170.x, x_3170.y, x_3170.z) + x_3172);
  let x_3174 : f32 = u_xlat63;
  let x_3176 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3174, x_3174, x_3174) * x_3176);
  let x_3178 : f32 = u_xlat64;
  let x_3179 : f32 = u_xlat64;
  u_xlat63 = (x_3178 * -(x_3179));
  let x_3182 : f32 = u_xlat63;
  u_xlat63 = exp2(x_3182);
  let x_3186 : vec3<f32> = u_xlat0;
  let x_3187 : f32 = u_xlat63;
  let x_3189 : vec3<f32> = (x_3186 * vec3<f32>(x_3187, x_3187, x_3187));
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

