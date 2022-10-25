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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(4) var<uniform> x_614 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2294 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2488 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2766 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2891 : AdditionalLightsCookies;

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
  var x_561 : f32;
  var x_572 : f32;
  var x_583 : f32;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu64 : u32;
  var u_xlati64 : i32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatb67 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb6 : vec2<bool>;
  var u_xlat48 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
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
  var u_xlatb24 : vec2<bool>;
  var u_xlatb45 : bool;
  var x_2242 : f32;
  var u_xlat24 : vec2<f32>;
  var u_xlat45 : f32;
  var x_2361 : f32;
  var x_2372 : vec3<f32>;
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
  var x_3184 : f32;
  var x_3197 : f32;
  var x_3249 : f32;
  var x_3260 : vec3<f32>;
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
  let x_560 : bool = u_xlatb1;
  if (x_560) {
    let x_565 : f32 = u_xlat22.x;
    x_561 = x_565;
  } else {
    let x_568 : f32 = x_126.unity_MatrixV[0i].z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat2.x = x_569;
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_576 : f32 = u_xlat22.y;
    x_572 = x_576;
  } else {
    let x_579 : f32 = x_126.unity_MatrixV[1i].z;
    x_572 = x_579;
  }
  let x_580 : f32 = x_572;
  u_xlat2.y = x_580;
  let x_582 : bool = u_xlatb1;
  if (x_582) {
    let x_587 : f32 = u_xlat22.z;
    x_583 = x_587;
  } else {
    let x_591 : f32 = x_126.unity_MatrixV[2i].z;
    x_583 = x_591;
  }
  let x_592 : f32 = x_583;
  u_xlat2.z = x_592;
  let x_595 : vec3<f32> = vs_TEXCOORD3;
  let x_596 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec4<f32> = u_xlat1;
  let x_605 : vec3<f32> = vs_TEXCOORD3;
  let x_606 : vec3<f32> = (vec3<f32>(x_603.x, x_603.x, x_603.x) * x_605);
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec3<f32> = vs_TEXCOORD7;
  let x_616 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres0;
  let x_619 : vec3<f32> = (x_609 + -(vec3<f32>(x_616.x, x_616.y, x_616.z)));
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec3<f32> = vs_TEXCOORD7;
  let x_624 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres1;
  let x_627 : vec3<f32> = (x_622 + -(vec3<f32>(x_624.x, x_624.y, x_624.z)));
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec3<f32> = vs_TEXCOORD7;
  let x_633 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres2;
  let x_636 : vec3<f32> = (x_630 + -(vec3<f32>(x_633.x, x_633.y, x_633.z)));
  let x_637 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec3<f32> = vs_TEXCOORD7;
  let x_641 : vec4<f32> = x_614.x_CascadeShadowSplitSpheres3;
  let x_644 : vec3<f32> = (x_639 + -(vec3<f32>(x_641.x, x_641.y, x_641.z)));
  let x_645 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat3;
  let x_649 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_653 : vec4<f32> = u_xlat4;
  let x_655 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_659 : vec4<f32> = u_xlat6;
  let x_661 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_665 : vec4<f32> = u_xlat7;
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_665.x, x_665.y, x_665.z), vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_673 : vec4<f32> = u_xlat3;
  let x_675 : vec4<f32> = x_614.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_673 < x_675);
  let x_678 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_686);
  let x_690 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_690);
  let x_694 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_694);
  let x_699 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_699);
  let x_703 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_703);
  let x_706 : vec4<f32> = u_xlat3;
  let x_708 : vec4<f32> = u_xlat4;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(x_708.y, x_708.z, x_708.w));
  let x_711 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat3;
  let x_716 : vec3<f32> = max(vec3<f32>(x_713.x, x_713.y, x_713.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_717 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_717.x, x_716.x, x_716.y, x_716.z);
  let x_719 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(x_719, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_724 : f32 = u_xlat64;
  u_xlat64 = (-(x_724) + 4.0f);
  let x_729 : f32 = u_xlat64;
  u_xlatu64 = u32(x_729);
  let x_733 : u32 = u_xlatu64;
  u_xlati64 = (bitcast<i32>(x_733) << bitcast<u32>(2i));
  let x_736 : vec3<f32> = vs_TEXCOORD7;
  let x_738 : i32 = u_xlati64;
  let x_741 : i32 = u_xlati64;
  let x_745 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_738 + 1i) / 4i)][((x_741 + 1i) % 4i)];
  let x_747 : vec3<f32> = (vec3<f32>(x_736.y, x_736.y, x_736.y) * vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : i32 = u_xlati64;
  let x_752 : i32 = u_xlati64;
  let x_755 : vec4<f32> = x_614.x_MainLightWorldToShadow[(x_750 / 4i)][(x_752 % 4i)];
  let x_757 : vec3<f32> = vs_TEXCOORD7;
  let x_760 : vec4<f32> = u_xlat3;
  let x_762 : vec3<f32> = ((vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757.x, x_757.x, x_757.x)) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : i32 = u_xlati64;
  let x_768 : i32 = u_xlati64;
  let x_772 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_765 + 2i) / 4i)][((x_768 + 2i) % 4i)];
  let x_774 : vec3<f32> = vs_TEXCOORD7;
  let x_777 : vec4<f32> = u_xlat3;
  let x_779 : vec3<f32> = ((vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774.z, x_774.z, x_774.z)) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat3;
  let x_784 : i32 = u_xlati64;
  let x_787 : i32 = u_xlati64;
  let x_791 : vec4<f32> = x_614.x_MainLightWorldToShadow[((x_784 + 3i) / 4i)][((x_787 + 3i) % 4i)];
  let x_793 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) + vec3<f32>(x_791.x, x_791.y, x_791.z));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_801 : vec4<f32> = vs_TEXCOORD0;
  let x_804 : f32 = x_126.x_GlobalMipBias.x;
  let x_805 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_801.z, x_801.w), x_804);
  u_xlat4 = x_805;
  let x_810 : vec4<f32> = vs_TEXCOORD0;
  let x_813 : f32 = x_126.x_GlobalMipBias.x;
  let x_814 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_810.z, x_810.w), x_813);
  let x_815 : vec3<f32> = vec3<f32>(x_814.x, x_814.y, x_814.z);
  let x_816 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat4;
  let x_822 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_823 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec4<f32> = u_xlat4;
  u_xlat64 = dot(vec3<f32>(x_825.x, x_825.y, x_825.z), vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : f32 = u_xlat64;
  u_xlat64 = (x_830 + 0.5f);
  let x_832 : f32 = u_xlat64;
  let x_834 : vec4<f32> = u_xlat6;
  let x_836 : vec3<f32> = (vec3<f32>(x_832, x_832, x_832) * vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_840 : f32 = u_xlat4.w;
  u_xlat64 = max(x_840, 0.0001f);
  let x_843 : vec4<f32> = u_xlat4;
  let x_845 : f32 = u_xlat64;
  let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) / vec3<f32>(x_845, x_845, x_845));
  let x_848 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_852 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
  let x_857 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_853.x, x_853.y));
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat6;
  let x_862 : vec4<f32> = hlslcc_FragCoord;
  let x_864 : vec2<f32> = (vec2<f32>(x_860.x, x_860.y) * vec2<f32>(x_862.x, x_862.y));
  let x_865 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
  let x_868 : f32 = u_xlat6.y;
  let x_870 : f32 = x_126.x_ScaleBiasRt.x;
  let x_873 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_868 * x_870) + x_873);
  let x_875 : f32 = u_xlat64;
  u_xlat6.z = (-(x_875) + 1.0f);
  let x_880 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_880) * 0.959999979f) + 0.959999979f);
  let x_886 : f32 = u_xlat42;
  let x_887 : f32 = u_xlat64;
  u_xlat65 = (x_886 + -(x_887));
  let x_890 : f32 = u_xlat64;
  let x_892 : vec4<f32> = u_xlat5;
  let x_894 : vec3<f32> = (vec3<f32>(x_890, x_890, x_890) * vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat5;
  let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_902 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec3<f32> = u_xlat0;
  let x_906 : vec4<f32> = u_xlat5;
  let x_911 : vec3<f32> = ((vec3<f32>(x_904.x, x_904.x, x_904.x) * vec3<f32>(x_906.x, x_906.y, x_906.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_912 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : f32 = u_xlat42;
  u_xlat0.x = (-(x_914) + 1.0f);
  let x_919 : f32 = u_xlat0.x;
  let x_921 : f32 = u_xlat0.x;
  u_xlat42 = (x_919 * x_921);
  let x_923 : f32 = u_xlat42;
  u_xlat42 = max(x_923, 0.0078125f);
  let x_926 : f32 = u_xlat42;
  let x_927 : f32 = u_xlat42;
  u_xlat64 = (x_926 * x_927);
  let x_929 : f32 = u_xlat65;
  u_xlat65 = (x_929 + 1.0f);
  let x_931 : f32 = u_xlat65;
  u_xlat65 = clamp(x_931, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat42;
  u_xlat66 = ((x_934 * 4.0f) + 2.0f);
  let x_943 : vec4<f32> = u_xlat6;
  let x_946 : f32 = x_126.x_GlobalMipBias.x;
  let x_947 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_943.x, x_943.z), x_946);
  u_xlat67 = x_947.x;
  let x_950 : f32 = u_xlat67;
  u_xlat68 = (x_950 + -1.0f);
  let x_953 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_954 : f32 = u_xlat68;
  u_xlat68 = ((x_953 * x_954) + 1.0f);
  let x_957 : f32 = u_xlat21;
  let x_958 : f32 = u_xlat67;
  u_xlat21 = min(x_957, x_958);
  let x_962 : f32 = x_614.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_962);
  let x_964 : bool = u_xlatb67;
  if (x_964) {
    let x_968 : f32 = x_614.x_MainLightShadowParams.y;
    u_xlatb67 = (x_968 == 1.0f);
    let x_970 : bool = u_xlatb67;
    if (x_970) {
      let x_973 : vec4<f32> = u_xlat3;
      let x_976 : vec4<f32> = x_614.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_973.x, x_973.y, x_973.x, x_973.y) + x_976);
      let x_979 : vec4<f32> = u_xlat6;
      let x_980 : vec2<f32> = vec2<f32>(x_979.x, x_979.y);
      let x_982 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_980.x, x_980.y, x_982);
      let x_994 : vec3<f32> = txVec0;
      let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_994.xy, x_994.z);
      u_xlat8.x = x_996;
      let x_999 : vec4<f32> = u_xlat6;
      let x_1000 : vec2<f32> = vec2<f32>(x_999.z, x_999.w);
      let x_1002 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
      let x_1009 : vec3<f32> = txVec1;
      let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1009.xy, x_1009.z);
      u_xlat8.y = x_1011;
      let x_1013 : vec4<f32> = u_xlat3;
      let x_1016 : vec4<f32> = x_614.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1013.x, x_1013.y, x_1013.x, x_1013.y) + x_1016);
      let x_1019 : vec4<f32> = u_xlat6;
      let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
      let x_1022 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
      let x_1029 : vec3<f32> = txVec2;
      let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1029.xy, x_1029.z);
      u_xlat8.z = x_1031;
      let x_1034 : vec4<f32> = u_xlat6;
      let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
      let x_1037 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
      let x_1044 : vec3<f32> = txVec3;
      let x_1046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1044.xy, x_1044.z);
      u_xlat8.w = x_1046;
      let x_1048 : vec4<f32> = u_xlat8;
      u_xlat67 = dot(x_1048, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1057 : f32 = x_614.x_MainLightShadowParams.y;
      u_xlatb6.x = (x_1057 == 2.0f);
      let x_1061 : bool = u_xlatb6.x;
      if (x_1061) {
        let x_1064 : vec4<f32> = u_xlat3;
        let x_1067 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1070 : vec2<f32> = ((vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(x_1067.z, x_1067.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1071 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1071.w);
        let x_1073 : vec4<f32> = u_xlat6;
        let x_1075 : vec2<f32> = floor(vec2<f32>(x_1073.x, x_1073.y));
        let x_1076 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1080 : vec4<f32> = u_xlat3;
        let x_1083 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(x_1083.z, x_1083.w)) + -(vec2<f32>(x_1086.x, x_1086.y)));
        let x_1090 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1090.x, x_1090.x, x_1090.y, x_1090.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1094 : vec4<f32> = u_xlat8;
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1094.x, x_1094.x, x_1094.z, x_1094.z) * vec4<f32>(x_1096.x, x_1096.x, x_1096.z, x_1096.z));
        let x_1099 : vec4<f32> = u_xlat9;
        let x_1103 : vec2<f32> = (vec2<f32>(x_1099.y, x_1099.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1106 : vec4<f32> = u_xlat9;
        let x_1109 : vec2<f32> = u_xlat48;
        let x_1111 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1109));
        let x_1112 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1115 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_1115) + vec2<f32>(1.0f, 1.0f));
        let x_1118 : vec2<f32> = u_xlat48;
        let x_1120 : vec2<f32> = min(x_1118, vec2<f32>(0.0f, 0.0f));
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1120.x, x_1120.y, x_1121.z, x_1121.w);
        let x_1123 : vec4<f32> = u_xlat10;
        let x_1126 : vec4<f32> = u_xlat10;
        let x_1129 : vec2<f32> = u_xlat51;
        let x_1130 : vec2<f32> = ((-(vec2<f32>(x_1123.x, x_1123.y)) * vec2<f32>(x_1126.x, x_1126.y)) + x_1129);
        let x_1131 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
        let x_1133 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_1133, vec2<f32>(0.0f, 0.0f));
        let x_1135 : vec2<f32> = u_xlat48;
        let x_1137 : vec2<f32> = u_xlat48;
        let x_1139 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_1135) * x_1137) + vec2<f32>(x_1139.y, x_1139.w));
        let x_1142 : vec4<f32> = u_xlat10;
        let x_1144 : vec2<f32> = (vec2<f32>(x_1142.x, x_1142.y) + vec2<f32>(1.0f, 1.0f));
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_1147 + vec2<f32>(1.0f, 1.0f));
        let x_1149 : vec4<f32> = u_xlat9;
        let x_1153 : vec2<f32> = (vec2<f32>(x_1149.x, x_1149.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1154 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1153.x, x_1153.y, x_1154.z, x_1154.w);
        let x_1156 : vec2<f32> = u_xlat51;
        let x_1157 : vec2<f32> = (x_1156 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat10;
        let x_1162 : vec2<f32> = (vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1163 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
        let x_1165 : vec2<f32> = u_xlat48;
        let x_1166 : vec2<f32> = (x_1165 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1167 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1166.x, x_1166.y, x_1167.z, x_1167.w);
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_1169.y, x_1169.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1173 : f32 = u_xlat10.x;
        u_xlat11.z = x_1173;
        let x_1176 : f32 = u_xlat48.x;
        u_xlat11.w = x_1176;
        let x_1179 : f32 = u_xlat12.x;
        u_xlat9.z = x_1179;
        let x_1182 : f32 = u_xlat8.x;
        u_xlat9.w = x_1182;
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1186 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1184.z, x_1184.w, x_1184.x, x_1184.z) + vec4<f32>(x_1186.z, x_1186.w, x_1186.x, x_1186.z));
        let x_1190 : f32 = u_xlat11.y;
        u_xlat10.z = x_1190;
        let x_1193 : f32 = u_xlat48.y;
        u_xlat10.w = x_1193;
        let x_1196 : f32 = u_xlat9.y;
        u_xlat12.z = x_1196;
        let x_1199 : f32 = u_xlat8.z;
        u_xlat12.w = x_1199;
        let x_1201 : vec4<f32> = u_xlat10;
        let x_1203 : vec4<f32> = u_xlat12;
        let x_1205 : vec3<f32> = (vec3<f32>(x_1201.z, x_1201.y, x_1201.w) + vec3<f32>(x_1203.z, x_1203.y, x_1203.w));
        let x_1206 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
        let x_1208 : vec4<f32> = u_xlat9;
        let x_1210 : vec4<f32> = u_xlat13;
        let x_1212 : vec3<f32> = (vec3<f32>(x_1208.x, x_1208.z, x_1208.w) / vec3<f32>(x_1210.z, x_1210.w, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
        let x_1215 : vec4<f32> = u_xlat9;
        let x_1220 : vec3<f32> = (vec3<f32>(x_1215.x, x_1215.y, x_1215.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1221 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat12;
        let x_1225 : vec4<f32> = u_xlat8;
        let x_1227 : vec3<f32> = (vec3<f32>(x_1223.z, x_1223.y, x_1223.w) / vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
        let x_1228 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
        let x_1230 : vec4<f32> = u_xlat10;
        let x_1232 : vec3<f32> = (vec3<f32>(x_1230.x, x_1230.y, x_1230.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1233 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat9;
        let x_1238 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1240 : vec3<f32> = (vec3<f32>(x_1235.y, x_1235.x, x_1235.z) * vec3<f32>(x_1238.x, x_1238.x, x_1238.x));
        let x_1241 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat10;
        let x_1246 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1248 : vec3<f32> = (vec3<f32>(x_1243.x, x_1243.y, x_1243.z) * vec3<f32>(x_1246.y, x_1246.y, x_1246.y));
        let x_1249 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
        let x_1252 : f32 = u_xlat10.x;
        u_xlat9.w = x_1252;
        let x_1254 : vec4<f32> = u_xlat6;
        let x_1257 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1254.x, x_1254.y, x_1254.x, x_1254.y) * vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y)) + vec4<f32>(x_1260.y, x_1260.w, x_1260.x, x_1260.w));
        let x_1263 : vec4<f32> = u_xlat6;
        let x_1266 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1263.x, x_1263.y) * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1269.z, x_1269.w));
        let x_1273 : f32 = u_xlat9.y;
        u_xlat10.w = x_1273;
        let x_1275 : vec4<f32> = u_xlat10;
        let x_1276 : vec2<f32> = vec2<f32>(x_1275.y, x_1275.z);
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1277.x, x_1276.x, x_1277.z, x_1276.y);
        let x_1279 : vec4<f32> = u_xlat6;
        let x_1282 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1285.y));
        let x_1288 : vec4<f32> = u_xlat6;
        let x_1291 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.w, x_1294.y, x_1294.w, x_1294.z));
        let x_1297 : vec4<f32> = u_xlat6;
        let x_1300 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.y) * vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y)) + vec4<f32>(x_1303.x, x_1303.w, x_1303.z, x_1303.w));
        let x_1307 : vec4<f32> = u_xlat8;
        let x_1309 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1307.x, x_1307.x, x_1307.x, x_1307.y) * vec4<f32>(x_1309.z, x_1309.w, x_1309.y, x_1309.z));
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1315 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1313.y, x_1313.y, x_1313.z, x_1313.z) * x_1315);
        let x_1318 : f32 = u_xlat8.z;
        let x_1320 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1318 * x_1320);
        let x_1324 : vec4<f32> = u_xlat11;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.x, x_1324.y);
        let x_1327 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1335 : vec3<f32> = txVec4;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1335.xy, x_1335.z);
        u_xlat27 = x_1337;
        let x_1339 : vec4<f32> = u_xlat11;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.z, x_1339.w);
        let x_1342 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1350 : vec3<f32> = txVec5;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1350.xy, x_1350.z);
        u_xlat70 = x_1352;
        let x_1353 : f32 = u_xlat70;
        let x_1355 : f32 = u_xlat14.y;
        u_xlat70 = (x_1353 * x_1355);
        let x_1358 : f32 = u_xlat14.x;
        let x_1359 : f32 = u_xlat27;
        let x_1361 : f32 = u_xlat70;
        u_xlat27 = ((x_1358 * x_1359) + x_1361);
        let x_1364 : vec2<f32> = u_xlat48;
        let x_1366 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec6;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1373.xy, x_1373.z);
        u_xlat48.x = x_1375;
        let x_1378 : f32 = u_xlat14.z;
        let x_1380 : f32 = u_xlat48.x;
        let x_1382 : f32 = u_xlat27;
        u_xlat27 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat10;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.x, x_1385.y);
        let x_1388 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec7;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat48.x = x_1397;
        let x_1400 : f32 = u_xlat14.w;
        let x_1402 : f32 = u_xlat48.x;
        let x_1404 : f32 = u_xlat27;
        u_xlat27 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec4<f32> = u_xlat12;
        let x_1408 : vec2<f32> = vec2<f32>(x_1407.x, x_1407.y);
        let x_1410 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec8;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat48.x = x_1419;
        let x_1422 : f32 = u_xlat15.x;
        let x_1424 : f32 = u_xlat48.x;
        let x_1426 : f32 = u_xlat27;
        u_xlat27 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat12;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.z, x_1429.w);
        let x_1432 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec9;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1439.xy, x_1439.z);
        u_xlat48.x = x_1441;
        let x_1444 : f32 = u_xlat15.y;
        let x_1446 : f32 = u_xlat48.x;
        let x_1448 : f32 = u_xlat27;
        u_xlat27 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat10;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.z, x_1451.w);
        let x_1454 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec10;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1461.xy, x_1461.z);
        u_xlat48.x = x_1463;
        let x_1466 : f32 = u_xlat15.z;
        let x_1468 : f32 = u_xlat48.x;
        let x_1470 : f32 = u_xlat27;
        u_xlat27 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
        let x_1476 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec11;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1483.xy, x_1483.z);
        u_xlat48.x = x_1485;
        let x_1488 : f32 = u_xlat15.w;
        let x_1490 : f32 = u_xlat48.x;
        let x_1492 : f32 = u_xlat27;
        u_xlat27 = ((x_1488 * x_1490) + x_1492);
        let x_1495 : vec4<f32> = u_xlat9;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.z, x_1495.w);
        let x_1498 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec12;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat48.x = x_1507;
        let x_1510 : f32 = u_xlat6.x;
        let x_1512 : f32 = u_xlat48.x;
        let x_1514 : f32 = u_xlat27;
        u_xlat67 = ((x_1510 * x_1512) + x_1514);
      } else {
        let x_1517 : vec4<f32> = u_xlat3;
        let x_1520 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1523 : vec2<f32> = ((vec2<f32>(x_1517.x, x_1517.y) * vec2<f32>(x_1520.z, x_1520.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1524 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1523.x, x_1523.y, x_1524.z, x_1524.w);
        let x_1526 : vec4<f32> = u_xlat6;
        let x_1528 : vec2<f32> = floor(vec2<f32>(x_1526.x, x_1526.y));
        let x_1529 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1528.x, x_1528.y, x_1529.z, x_1529.w);
        let x_1531 : vec4<f32> = u_xlat3;
        let x_1534 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1537 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1531.x, x_1531.y) * vec2<f32>(x_1534.z, x_1534.w)) + -(vec2<f32>(x_1537.x, x_1537.y)));
        let x_1541 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1541.x, x_1541.x, x_1541.y, x_1541.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1544 : vec4<f32> = u_xlat8;
        let x_1546 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1544.x, x_1544.x, x_1544.z, x_1544.z) * vec4<f32>(x_1546.x, x_1546.x, x_1546.z, x_1546.z));
        let x_1549 : vec4<f32> = u_xlat9;
        let x_1553 : vec2<f32> = (vec2<f32>(x_1549.y, x_1549.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1554 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1554.x, x_1553.x, x_1554.z, x_1553.y);
        let x_1556 : vec4<f32> = u_xlat9;
        let x_1559 : vec2<f32> = u_xlat48;
        let x_1561 : vec2<f32> = ((vec2<f32>(x_1556.x, x_1556.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1559));
        let x_1562 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1561.x, x_1562.y, x_1561.y, x_1562.w);
        let x_1564 : vec2<f32> = u_xlat48;
        let x_1566 : vec2<f32> = (-(x_1564) + vec2<f32>(1.0f, 1.0f));
        let x_1567 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1566.x, x_1566.y, x_1567.z, x_1567.w);
        let x_1569 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1569, vec2<f32>(0.0f, 0.0f));
        let x_1571 : vec2<f32> = u_xlat51;
        let x_1573 : vec2<f32> = u_xlat51;
        let x_1575 : vec4<f32> = u_xlat9;
        let x_1577 : vec2<f32> = ((-(x_1571) * x_1573) + vec2<f32>(x_1575.x, x_1575.y));
        let x_1578 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1577.x, x_1577.y, x_1578.z, x_1578.w);
        let x_1580 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1580, vec2<f32>(0.0f, 0.0f));
        let x_1583 : vec2<f32> = u_xlat51;
        let x_1585 : vec2<f32> = u_xlat51;
        let x_1587 : vec4<f32> = u_xlat8;
        let x_1589 : vec2<f32> = ((-(x_1583) * x_1585) + vec2<f32>(x_1587.y, x_1587.w));
        let x_1590 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1589.x, x_1590.y, x_1589.y);
        let x_1592 : vec4<f32> = u_xlat9;
        let x_1595 : vec2<f32> = (vec2<f32>(x_1592.x, x_1592.y) + vec2<f32>(2.0f, 2.0f));
        let x_1596 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1595.x, x_1595.y, x_1596.z, x_1596.w);
        let x_1598 : vec3<f32> = u_xlat29;
        let x_1600 : vec2<f32> = (vec2<f32>(x_1598.x, x_1598.z) + vec2<f32>(2.0f, 2.0f));
        let x_1601 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1601.x, x_1600.x, x_1601.z, x_1600.y);
        let x_1604 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1604 * 0.081632003f);
        let x_1608 : vec4<f32> = u_xlat8;
        let x_1611 : vec3<f32> = (vec3<f32>(x_1608.z, x_1608.x, x_1608.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1612 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
        let x_1614 : vec4<f32> = u_xlat9;
        let x_1617 : vec2<f32> = (vec2<f32>(x_1614.x, x_1614.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1618 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1617.x, x_1617.y, x_1618.z, x_1618.w);
        let x_1621 : f32 = u_xlat12.y;
        u_xlat11.x = x_1621;
        let x_1623 : vec2<f32> = u_xlat48;
        let x_1630 : vec2<f32> = ((vec2<f32>(x_1623.x, x_1623.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1631 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1631.x, x_1630.x, x_1631.z, x_1630.y);
        let x_1633 : vec2<f32> = u_xlat48;
        let x_1637 : vec2<f32> = ((vec2<f32>(x_1633.x, x_1633.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1638 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1637.x, x_1638.y, x_1637.y, x_1638.w);
        let x_1641 : f32 = u_xlat8.x;
        u_xlat9.y = x_1641;
        let x_1644 : f32 = u_xlat10.y;
        u_xlat9.w = x_1644;
        let x_1646 : vec4<f32> = u_xlat9;
        let x_1647 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1646 + x_1647);
        let x_1649 : vec2<f32> = u_xlat48;
        let x_1652 : vec2<f32> = ((vec2<f32>(x_1649.y, x_1649.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1653 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1653.x, x_1652.x, x_1653.z, x_1652.y);
        let x_1655 : vec2<f32> = u_xlat48;
        let x_1658 : vec2<f32> = ((vec2<f32>(x_1655.y, x_1655.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1659 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1658.x, x_1659.y, x_1658.y, x_1659.w);
        let x_1662 : f32 = u_xlat8.y;
        u_xlat10.y = x_1662;
        let x_1664 : vec4<f32> = u_xlat10;
        let x_1665 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1664 + x_1665);
        let x_1667 : vec4<f32> = u_xlat9;
        let x_1668 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1667 / x_1668);
        let x_1670 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1670 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1676 : vec4<f32> = u_xlat10;
        let x_1677 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1676 / x_1677);
        let x_1679 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1679 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1681 : vec4<f32> = u_xlat9;
        let x_1684 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1681.w, x_1681.x, x_1681.y, x_1681.z) * vec4<f32>(x_1684.x, x_1684.x, x_1684.x, x_1684.x));
        let x_1687 : vec4<f32> = u_xlat10;
        let x_1690 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1687.x, x_1687.w, x_1687.y, x_1687.z) * vec4<f32>(x_1690.y, x_1690.y, x_1690.y, x_1690.y));
        let x_1693 : vec4<f32> = u_xlat9;
        let x_1694 : vec3<f32> = vec3<f32>(x_1693.y, x_1693.z, x_1693.w);
        let x_1695 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1694.x, x_1695.y, x_1694.y, x_1694.z);
        let x_1698 : f32 = u_xlat10.x;
        u_xlat12.y = x_1698;
        let x_1700 : vec4<f32> = u_xlat6;
        let x_1703 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1706 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1700.x, x_1700.y, x_1700.x, x_1700.y) * vec4<f32>(x_1703.x, x_1703.y, x_1703.x, x_1703.y)) + vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1706.y));
        let x_1709 : vec4<f32> = u_xlat6;
        let x_1712 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1715 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1709.x, x_1709.y) * vec2<f32>(x_1712.x, x_1712.y)) + vec2<f32>(x_1715.w, x_1715.y));
        let x_1719 : f32 = u_xlat12.y;
        u_xlat9.y = x_1719;
        let x_1722 : f32 = u_xlat10.z;
        u_xlat12.y = x_1722;
        let x_1724 : vec4<f32> = u_xlat6;
        let x_1727 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1730 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1724.x, x_1724.y, x_1724.x, x_1724.y) * vec4<f32>(x_1727.x, x_1727.y, x_1727.x, x_1727.y)) + vec4<f32>(x_1730.x, x_1730.y, x_1730.z, x_1730.y));
        let x_1733 : vec4<f32> = u_xlat6;
        let x_1736 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1739 : vec4<f32> = u_xlat12;
        let x_1741 : vec2<f32> = ((vec2<f32>(x_1733.x, x_1733.y) * vec2<f32>(x_1736.x, x_1736.y)) + vec2<f32>(x_1739.w, x_1739.y));
        let x_1742 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1741.x, x_1741.y, x_1742.z, x_1742.w);
        let x_1745 : f32 = u_xlat12.y;
        u_xlat9.z = x_1745;
        let x_1748 : vec4<f32> = u_xlat6;
        let x_1751 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1754 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y) * vec4<f32>(x_1751.x, x_1751.y, x_1751.x, x_1751.y)) + vec4<f32>(x_1754.x, x_1754.y, x_1754.x, x_1754.z));
        let x_1758 : f32 = u_xlat10.w;
        u_xlat12.y = x_1758;
        let x_1761 : vec4<f32> = u_xlat6;
        let x_1764 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1767 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1761.x, x_1761.y, x_1761.x, x_1761.y) * vec4<f32>(x_1764.x, x_1764.y, x_1764.x, x_1764.y)) + vec4<f32>(x_1767.x, x_1767.y, x_1767.z, x_1767.y));
        let x_1771 : vec4<f32> = u_xlat6;
        let x_1774 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1777 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1771.x, x_1771.y) * vec2<f32>(x_1774.x, x_1774.y)) + vec2<f32>(x_1777.w, x_1777.y));
        let x_1781 : f32 = u_xlat12.y;
        u_xlat9.w = x_1781;
        let x_1784 : vec4<f32> = u_xlat6;
        let x_1787 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1790 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1784.x, x_1784.y) * vec2<f32>(x_1787.x, x_1787.y)) + vec2<f32>(x_1790.x, x_1790.w));
        let x_1793 : vec4<f32> = u_xlat12;
        let x_1794 : vec3<f32> = vec3<f32>(x_1793.x, x_1793.z, x_1793.w);
        let x_1795 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1794.x, x_1795.y, x_1794.y, x_1794.z);
        let x_1797 : vec4<f32> = u_xlat6;
        let x_1800 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1803 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1797.x, x_1797.y, x_1797.x, x_1797.y) * vec4<f32>(x_1800.x, x_1800.y, x_1800.x, x_1800.y)) + vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1803.y));
        let x_1807 : vec4<f32> = u_xlat6;
        let x_1810 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1813 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1807.x, x_1807.y) * vec2<f32>(x_1810.x, x_1810.y)) + vec2<f32>(x_1813.w, x_1813.y));
        let x_1817 : f32 = u_xlat9.x;
        u_xlat10.x = x_1817;
        let x_1819 : vec4<f32> = u_xlat6;
        let x_1822 : vec4<f32> = x_614.x_MainLightShadowmapSize;
        let x_1825 : vec4<f32> = u_xlat10;
        let x_1827 : vec2<f32> = ((vec2<f32>(x_1819.x, x_1819.y) * vec2<f32>(x_1822.x, x_1822.y)) + vec2<f32>(x_1825.x, x_1825.y));
        let x_1828 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1827.x, x_1827.y, x_1828.z, x_1828.w);
        let x_1831 : vec4<f32> = u_xlat8;
        let x_1833 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1831.x, x_1831.x, x_1831.x, x_1831.x) * x_1833);
        let x_1836 : vec4<f32> = u_xlat8;
        let x_1838 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1836.y, x_1836.y, x_1836.y, x_1836.y) * x_1838);
        let x_1841 : vec4<f32> = u_xlat8;
        let x_1843 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1841.z, x_1841.z, x_1841.z, x_1841.z) * x_1843);
        let x_1845 : vec4<f32> = u_xlat8;
        let x_1847 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1845.w, x_1845.w, x_1845.w, x_1845.w) * x_1847);
        let x_1850 : vec4<f32> = u_xlat13;
        let x_1851 : vec2<f32> = vec2<f32>(x_1850.x, x_1850.y);
        let x_1853 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1851.x, x_1851.y, x_1853);
        let x_1860 : vec3<f32> = txVec13;
        let x_1862 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1860.xy, x_1860.z);
        u_xlat70 = x_1862;
        let x_1864 : vec4<f32> = u_xlat13;
        let x_1865 : vec2<f32> = vec2<f32>(x_1864.z, x_1864.w);
        let x_1867 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
        let x_1874 : vec3<f32> = txVec14;
        let x_1876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1874.xy, x_1874.z);
        u_xlat9.x = x_1876;
        let x_1879 : f32 = u_xlat9.x;
        let x_1881 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1879 * x_1881);
        let x_1885 : f32 = u_xlat18.x;
        let x_1886 : f32 = u_xlat70;
        let x_1889 : f32 = u_xlat9.x;
        u_xlat70 = ((x_1885 * x_1886) + x_1889);
        let x_1892 : vec2<f32> = u_xlat48;
        let x_1894 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1892.x, x_1892.y, x_1894);
        let x_1901 : vec3<f32> = txVec15;
        let x_1903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1901.xy, x_1901.z);
        u_xlat48.x = x_1903;
        let x_1906 : f32 = u_xlat18.z;
        let x_1908 : f32 = u_xlat48.x;
        let x_1910 : f32 = u_xlat70;
        u_xlat48.x = ((x_1906 * x_1908) + x_1910);
        let x_1914 : vec4<f32> = u_xlat16;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.x, x_1914.y);
        let x_1917 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1925 : vec3<f32> = txVec16;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1925.xy, x_1925.z);
        u_xlat69 = x_1927;
        let x_1929 : f32 = u_xlat18.w;
        let x_1930 : f32 = u_xlat69;
        let x_1933 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1929 * x_1930) + x_1933);
        let x_1937 : vec4<f32> = u_xlat14;
        let x_1938 : vec2<f32> = vec2<f32>(x_1937.x, x_1937.y);
        let x_1940 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
        let x_1947 : vec3<f32> = txVec17;
        let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1947.xy, x_1947.z);
        u_xlat69 = x_1949;
        let x_1951 : f32 = u_xlat19.x;
        let x_1952 : f32 = u_xlat69;
        let x_1955 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1951 * x_1952) + x_1955);
        let x_1959 : vec4<f32> = u_xlat14;
        let x_1960 : vec2<f32> = vec2<f32>(x_1959.z, x_1959.w);
        let x_1962 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1960.x, x_1960.y, x_1962);
        let x_1969 : vec3<f32> = txVec18;
        let x_1971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1969.xy, x_1969.z);
        u_xlat69 = x_1971;
        let x_1973 : f32 = u_xlat19.y;
        let x_1974 : f32 = u_xlat69;
        let x_1977 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1973 * x_1974) + x_1977);
        let x_1981 : vec4<f32> = u_xlat15;
        let x_1982 : vec2<f32> = vec2<f32>(x_1981.x, x_1981.y);
        let x_1984 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1982.x, x_1982.y, x_1984);
        let x_1991 : vec3<f32> = txVec19;
        let x_1993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1991.xy, x_1991.z);
        u_xlat69 = x_1993;
        let x_1995 : f32 = u_xlat19.z;
        let x_1996 : f32 = u_xlat69;
        let x_1999 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_1995 * x_1996) + x_1999);
        let x_2003 : vec4<f32> = u_xlat16;
        let x_2004 : vec2<f32> = vec2<f32>(x_2003.z, x_2003.w);
        let x_2006 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2004.x, x_2004.y, x_2006);
        let x_2013 : vec3<f32> = txVec20;
        let x_2015 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2013.xy, x_2013.z);
        u_xlat69 = x_2015;
        let x_2017 : f32 = u_xlat19.w;
        let x_2018 : f32 = u_xlat69;
        let x_2021 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2017 * x_2018) + x_2021);
        let x_2025 : vec4<f32> = u_xlat17;
        let x_2026 : vec2<f32> = vec2<f32>(x_2025.x, x_2025.y);
        let x_2028 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2026.x, x_2026.y, x_2028);
        let x_2035 : vec3<f32> = txVec21;
        let x_2037 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2035.xy, x_2035.z);
        u_xlat69 = x_2037;
        let x_2039 : f32 = u_xlat20.x;
        let x_2040 : f32 = u_xlat69;
        let x_2043 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2039 * x_2040) + x_2043);
        let x_2047 : vec4<f32> = u_xlat17;
        let x_2048 : vec2<f32> = vec2<f32>(x_2047.z, x_2047.w);
        let x_2050 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2048.x, x_2048.y, x_2050);
        let x_2057 : vec3<f32> = txVec22;
        let x_2059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2057.xy, x_2057.z);
        u_xlat69 = x_2059;
        let x_2061 : f32 = u_xlat20.y;
        let x_2062 : f32 = u_xlat69;
        let x_2065 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2061 * x_2062) + x_2065);
        let x_2069 : vec2<f32> = u_xlat30;
        let x_2071 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2069.x, x_2069.y, x_2071);
        let x_2078 : vec3<f32> = txVec23;
        let x_2080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2078.xy, x_2078.z);
        u_xlat69 = x_2080;
        let x_2082 : f32 = u_xlat20.z;
        let x_2083 : f32 = u_xlat69;
        let x_2086 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2082 * x_2083) + x_2086);
        let x_2090 : vec2<f32> = u_xlat57;
        let x_2092 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec24;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2099.xy, x_2099.z);
        u_xlat69 = x_2101;
        let x_2103 : f32 = u_xlat20.w;
        let x_2104 : f32 = u_xlat69;
        let x_2107 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2103 * x_2104) + x_2107);
        let x_2111 : vec4<f32> = u_xlat12;
        let x_2112 : vec2<f32> = vec2<f32>(x_2111.x, x_2111.y);
        let x_2114 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
        let x_2121 : vec3<f32> = txVec25;
        let x_2123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2121.xy, x_2121.z);
        u_xlat69 = x_2123;
        let x_2125 : f32 = u_xlat8.x;
        let x_2126 : f32 = u_xlat69;
        let x_2129 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2125 * x_2126) + x_2129);
        let x_2133 : vec4<f32> = u_xlat12;
        let x_2134 : vec2<f32> = vec2<f32>(x_2133.z, x_2133.w);
        let x_2136 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2134.x, x_2134.y, x_2136);
        let x_2143 : vec3<f32> = txVec26;
        let x_2145 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2143.xy, x_2143.z);
        u_xlat69 = x_2145;
        let x_2147 : f32 = u_xlat8.y;
        let x_2148 : f32 = u_xlat69;
        let x_2151 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2147 * x_2148) + x_2151);
        let x_2155 : vec2<f32> = u_xlat52;
        let x_2157 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2155.x, x_2155.y, x_2157);
        let x_2164 : vec3<f32> = txVec27;
        let x_2166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2164.xy, x_2164.z);
        u_xlat69 = x_2166;
        let x_2168 : f32 = u_xlat8.z;
        let x_2169 : f32 = u_xlat69;
        let x_2172 : f32 = u_xlat48.x;
        u_xlat48.x = ((x_2168 * x_2169) + x_2172);
        let x_2176 : vec4<f32> = u_xlat6;
        let x_2177 : vec2<f32> = vec2<f32>(x_2176.x, x_2176.y);
        let x_2179 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2177.x, x_2177.y, x_2179);
        let x_2186 : vec3<f32> = txVec28;
        let x_2188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2186.xy, x_2186.z);
        u_xlat6.x = x_2188;
        let x_2191 : f32 = u_xlat8.w;
        let x_2193 : f32 = u_xlat6.x;
        let x_2196 : f32 = u_xlat48.x;
        u_xlat67 = ((x_2191 * x_2193) + x_2196);
      }
    }
  } else {
    let x_2200 : vec4<f32> = u_xlat3;
    let x_2201 : vec2<f32> = vec2<f32>(x_2200.x, x_2200.y);
    let x_2203 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2201.x, x_2201.y, x_2203);
    let x_2210 : vec3<f32> = txVec29;
    let x_2212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2210.xy, x_2210.z);
    u_xlat67 = x_2212;
  }
  let x_2214 : f32 = x_614.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2214) + 1.0f);
  let x_2218 : f32 = u_xlat67;
  let x_2220 : f32 = x_614.x_MainLightShadowParams.x;
  let x_2223 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2218 * x_2220) + x_2223);
  let x_2228 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2228);
  let x_2233 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2233 >= 1.0f);
  let x_2235 : bool = u_xlatb45;
  let x_2237 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2235 | x_2237);
  let x_2241 : bool = u_xlatb24.x;
  if (x_2241) {
    x_2242 = 1.0f;
  } else {
    let x_2247 : f32 = u_xlat3.x;
    x_2242 = x_2247;
  }
  let x_2248 : f32 = x_2242;
  u_xlat3.x = x_2248;
  let x_2250 : vec3<f32> = vs_TEXCOORD7;
  let x_2252 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2254 : vec3<f32> = (x_2250 + -(x_2252));
  let x_2255 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2255.w);
  let x_2258 : vec4<f32> = u_xlat6;
  let x_2260 : vec4<f32> = u_xlat6;
  u_xlat24.x = dot(vec3<f32>(x_2258.x, x_2258.y, x_2258.z), vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
  let x_2265 : f32 = u_xlat24.x;
  let x_2267 : f32 = x_614.x_MainLightShadowParams.z;
  let x_2270 : f32 = x_614.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2265 * x_2267) + x_2270);
  let x_2274 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2274, 0.0f, 1.0f);
  let x_2279 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2279) + 1.0f);
  let x_2283 : f32 = u_xlat24.x;
  let x_2284 : f32 = u_xlat45;
  let x_2287 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2283 * x_2284) + x_2287);
  let x_2296 : f32 = x_2294.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2296 == -1.0f));
  let x_2300 : bool = u_xlatb24.x;
  if (x_2300) {
    let x_2303 : vec3<f32> = vs_TEXCOORD7;
    let x_2306 : vec4<f32> = x_2294.x_MainLightWorldToLight[1i];
    u_xlat24 = (vec2<f32>(x_2303.y, x_2303.y) * vec2<f32>(x_2306.x, x_2306.y));
    let x_2310 : vec4<f32> = x_2294.x_MainLightWorldToLight[0i];
    let x_2312 : vec3<f32> = vs_TEXCOORD7;
    let x_2315 : vec2<f32> = u_xlat24;
    u_xlat24 = ((vec2<f32>(x_2310.x, x_2310.y) * vec2<f32>(x_2312.x, x_2312.x)) + x_2315);
    let x_2318 : vec4<f32> = x_2294.x_MainLightWorldToLight[2i];
    let x_2320 : vec3<f32> = vs_TEXCOORD7;
    let x_2323 : vec2<f32> = u_xlat24;
    u_xlat24 = ((vec2<f32>(x_2318.x, x_2318.y) * vec2<f32>(x_2320.z, x_2320.z)) + x_2323);
    let x_2325 : vec2<f32> = u_xlat24;
    let x_2327 : vec4<f32> = x_2294.x_MainLightWorldToLight[3i];
    u_xlat24 = (x_2325 + vec2<f32>(x_2327.x, x_2327.y));
    let x_2330 : vec2<f32> = u_xlat24;
    u_xlat24 = ((x_2330 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2338 : vec2<f32> = u_xlat24;
    let x_2340 : f32 = x_126.x_GlobalMipBias.x;
    let x_2341 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2338, x_2340);
    u_xlat6 = x_2341;
    let x_2343 : f32 = x_2294.x_MainLightCookieTextureFormat;
    let x_2345 : f32 = x_2294.x_MainLightCookieTextureFormat;
    let x_2347 : f32 = x_2294.x_MainLightCookieTextureFormat;
    let x_2349 : f32 = x_2294.x_MainLightCookieTextureFormat;
    let x_2350 : vec4<f32> = vec4<f32>(x_2343, x_2345, x_2347, x_2349);
    let x_2357 : vec4<bool> = (vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2350.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2357.x, x_2357.y);
    let x_2360 : bool = u_xlatb24.y;
    if (x_2360) {
      let x_2365 : f32 = u_xlat6.w;
      x_2361 = x_2365;
    } else {
      let x_2368 : f32 = u_xlat6.x;
      x_2361 = x_2368;
    }
    let x_2369 : f32 = x_2361;
    u_xlat45 = x_2369;
    let x_2371 : bool = u_xlatb24.x;
    if (x_2371) {
      let x_2375 : vec4<f32> = u_xlat6;
      x_2372 = vec3<f32>(x_2375.x, x_2375.y, x_2375.z);
    } else {
      let x_2378 : f32 = u_xlat45;
      x_2372 = vec3<f32>(x_2378, x_2378, x_2378);
    }
    let x_2380 : vec3<f32> = x_2372;
    let x_2381 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2387 : vec4<f32> = u_xlat6;
  let x_2390 : vec4<f32> = x_126.x_MainLightColor;
  let x_2392 : vec3<f32> = (vec3<f32>(x_2387.x, x_2387.y, x_2387.z) * vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
  let x_2393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
  let x_2395 : f32 = u_xlat68;
  let x_2397 : vec4<f32> = u_xlat6;
  let x_2399 : vec3<f32> = (vec3<f32>(x_2395, x_2395, x_2395) * vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
  let x_2400 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
  let x_2402 : vec3<f32> = u_xlat2;
  let x_2404 : vec4<f32> = u_xlat1;
  u_xlat24.x = dot(-(x_2402), vec3<f32>(x_2404.x, x_2404.y, x_2404.z));
  let x_2409 : f32 = u_xlat24.x;
  let x_2411 : f32 = u_xlat24.x;
  u_xlat24.x = (x_2409 + x_2411);
  let x_2414 : vec4<f32> = u_xlat1;
  let x_2416 : vec2<f32> = u_xlat24;
  let x_2420 : vec3<f32> = u_xlat2;
  let x_2422 : vec3<f32> = ((vec3<f32>(x_2414.x, x_2414.y, x_2414.z) * -(vec3<f32>(x_2416.x, x_2416.x, x_2416.x))) + -(x_2420));
  let x_2423 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2423.w);
  let x_2425 : vec4<f32> = u_xlat1;
  let x_2427 : vec3<f32> = u_xlat2;
  u_xlat24.x = dot(vec3<f32>(x_2425.x, x_2425.y, x_2425.z), x_2427);
  let x_2431 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2431, 0.0f, 1.0f);
  let x_2435 : f32 = u_xlat24.x;
  u_xlat24.x = (-(x_2435) + 1.0f);
  let x_2440 : f32 = u_xlat24.x;
  let x_2442 : f32 = u_xlat24.x;
  u_xlat24.x = (x_2440 * x_2442);
  let x_2446 : f32 = u_xlat24.x;
  let x_2448 : f32 = u_xlat24.x;
  u_xlat24.x = (x_2446 * x_2448);
  let x_2452 : f32 = u_xlat0.x;
  u_xlat45 = ((-(x_2452) * 0.699999988f) + 1.700000048f);
  let x_2459 : f32 = u_xlat0.x;
  let x_2460 : f32 = u_xlat45;
  u_xlat0.x = (x_2459 * x_2460);
  let x_2464 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2464 * 6.0f);
  let x_2476 : vec4<f32> = u_xlat8;
  let x_2479 : f32 = u_xlat0.x;
  let x_2480 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2476.x, x_2476.y, x_2476.z), x_2479);
  u_xlat8 = x_2480;
  let x_2482 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2482 + -1.0f);
  let x_2490 : f32 = x_2488.unity_SpecCube0_HDR.w;
  let x_2492 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2490 * x_2492) + 1.0f);
  let x_2497 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2497, 0.0f);
  let x_2501 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2501);
  let x_2505 : f32 = u_xlat0.x;
  let x_2507 : f32 = x_2488.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2505 * x_2507);
  let x_2511 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2511);
  let x_2515 : f32 = u_xlat0.x;
  let x_2517 : f32 = x_2488.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2515 * x_2517);
  let x_2520 : vec4<f32> = u_xlat8;
  let x_2522 : vec3<f32> = u_xlat0;
  let x_2524 : vec3<f32> = (vec3<f32>(x_2520.x, x_2520.y, x_2520.z) * vec3<f32>(x_2522.x, x_2522.x, x_2522.x));
  let x_2525 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2524.x, x_2524.y, x_2524.z, x_2525.w);
  let x_2527 : f32 = u_xlat42;
  let x_2529 : f32 = u_xlat42;
  let x_2533 : vec2<f32> = ((vec2<f32>(x_2527, x_2527) * vec2<f32>(x_2529, x_2529)) + vec2<f32>(-1.0f, 1.0f));
  let x_2534 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2533.x, x_2534.y, x_2533.y);
  let x_2537 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2537);
  let x_2539 : vec4<f32> = u_xlat5;
  let x_2542 : f32 = u_xlat65;
  let x_2544 : vec3<f32> = (-(vec3<f32>(x_2539.x, x_2539.y, x_2539.z)) + vec3<f32>(x_2542, x_2542, x_2542));
  let x_2545 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
  let x_2547 : vec2<f32> = u_xlat24;
  let x_2549 : vec4<f32> = u_xlat9;
  let x_2552 : vec4<f32> = u_xlat5;
  let x_2554 : vec3<f32> = ((vec3<f32>(x_2547.x, x_2547.x, x_2547.x) * vec3<f32>(x_2549.x, x_2549.y, x_2549.z)) + vec3<f32>(x_2552.x, x_2552.y, x_2552.z));
  let x_2555 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2554.x, x_2554.y, x_2554.z, x_2555.w);
  let x_2557 : f32 = u_xlat42;
  let x_2559 : vec4<f32> = u_xlat9;
  let x_2561 : vec3<f32> = (vec3<f32>(x_2557, x_2557, x_2557) * vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
  let x_2562 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
  let x_2564 : vec4<f32> = u_xlat8;
  let x_2566 : vec4<f32> = u_xlat9;
  let x_2568 : vec3<f32> = (vec3<f32>(x_2564.x, x_2564.y, x_2564.z) * vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
  let x_2569 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
  let x_2571 : vec4<f32> = u_xlat4;
  let x_2573 : vec4<f32> = u_xlat7;
  let x_2576 : vec4<f32> = u_xlat8;
  let x_2578 : vec3<f32> = ((vec3<f32>(x_2571.x, x_2571.y, x_2571.z) * vec3<f32>(x_2573.x, x_2573.y, x_2573.z)) + vec3<f32>(x_2576.x, x_2576.y, x_2576.z));
  let x_2579 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
  let x_2582 : f32 = u_xlat3.x;
  let x_2584 : f32 = x_2488.unity_LightData.z;
  u_xlat42 = (x_2582 * x_2584);
  let x_2586 : vec4<f32> = u_xlat1;
  let x_2589 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2586.x, x_2586.y, x_2586.z), vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
  let x_2592 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2592, 0.0f, 1.0f);
  let x_2594 : f32 = u_xlat42;
  let x_2595 : f32 = u_xlat65;
  u_xlat42 = (x_2594 * x_2595);
  let x_2597 : f32 = u_xlat42;
  let x_2599 : vec4<f32> = u_xlat6;
  let x_2601 : vec3<f32> = (vec3<f32>(x_2597, x_2597, x_2597) * vec3<f32>(x_2599.x, x_2599.y, x_2599.z));
  let x_2602 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2601.x, x_2601.y, x_2601.z, x_2602.w);
  let x_2604 : vec3<f32> = u_xlat2;
  let x_2606 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2608 : vec3<f32> = (x_2604 + vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
  let x_2609 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2608.x, x_2608.y, x_2608.z, x_2609.w);
  let x_2611 : vec4<f32> = u_xlat6;
  let x_2613 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2611.x, x_2611.y, x_2611.z), vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
  let x_2616 : f32 = u_xlat42;
  u_xlat42 = max(x_2616, 1.17549435e-37f);
  let x_2619 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2619);
  let x_2621 : f32 = u_xlat42;
  let x_2623 : vec4<f32> = u_xlat6;
  let x_2625 : vec3<f32> = (vec3<f32>(x_2621, x_2621, x_2621) * vec3<f32>(x_2623.x, x_2623.y, x_2623.z));
  let x_2626 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2625.x, x_2625.y, x_2625.z, x_2626.w);
  let x_2628 : vec4<f32> = u_xlat1;
  let x_2630 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(vec3<f32>(x_2628.x, x_2628.y, x_2628.z), vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
  let x_2633 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2633, 0.0f, 1.0f);
  let x_2636 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2638 : vec4<f32> = u_xlat6;
  u_xlat65 = dot(vec3<f32>(x_2636.x, x_2636.y, x_2636.z), vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
  let x_2641 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2641, 0.0f, 1.0f);
  let x_2643 : f32 = u_xlat42;
  let x_2644 : f32 = u_xlat42;
  u_xlat42 = (x_2643 * x_2644);
  let x_2646 : f32 = u_xlat42;
  let x_2648 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2646 * x_2648) + 1.000010014f);
  let x_2652 : f32 = u_xlat65;
  let x_2653 : f32 = u_xlat65;
  u_xlat65 = (x_2652 * x_2653);
  let x_2655 : f32 = u_xlat42;
  let x_2656 : f32 = u_xlat42;
  u_xlat42 = (x_2655 * x_2656);
  let x_2658 : f32 = u_xlat65;
  u_xlat65 = max(x_2658, 0.100000001f);
  let x_2661 : f32 = u_xlat42;
  let x_2662 : f32 = u_xlat65;
  u_xlat42 = (x_2661 * x_2662);
  let x_2664 : f32 = u_xlat66;
  let x_2665 : f32 = u_xlat42;
  u_xlat42 = (x_2664 * x_2665);
  let x_2667 : f32 = u_xlat64;
  let x_2668 : f32 = u_xlat42;
  u_xlat42 = (x_2667 / x_2668);
  let x_2670 : vec4<f32> = u_xlat5;
  let x_2672 : f32 = u_xlat42;
  let x_2675 : vec4<f32> = u_xlat7;
  let x_2677 : vec3<f32> = ((vec3<f32>(x_2670.x, x_2670.y, x_2670.z) * vec3<f32>(x_2672, x_2672, x_2672)) + vec3<f32>(x_2675.x, x_2675.y, x_2675.z));
  let x_2678 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);
  let x_2680 : vec4<f32> = u_xlat3;
  let x_2682 : vec4<f32> = u_xlat6;
  let x_2684 : vec3<f32> = (vec3<f32>(x_2680.x, x_2680.y, x_2680.z) * vec3<f32>(x_2682.x, x_2682.y, x_2682.z));
  let x_2685 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2684.x, x_2684.y, x_2684.z, x_2685.w);
  let x_2688 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2690 : f32 = x_2488.unity_LightData.y;
  u_xlat42 = min(x_2688, x_2690);
  let x_2693 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2693));
  let x_2697 : f32 = x_2294.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2699 : f32 = x_2294.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2701 : f32 = x_2294.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2703 : f32 = x_2294.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2704 : vec4<f32> = vec4<f32>(x_2697, x_2699, x_2701, x_2703);
  let x_2710 : vec4<bool> = (vec4<f32>(x_2704.x, x_2704.y, x_2704.z, x_2704.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2710.x, x_2710.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2721 : u32 = u_xlatu_loop_1;
    let x_2722 : u32 = u_xlatu42;
    if ((x_2721 < x_2722)) {
    } else {
      break;
    }
    let x_2725 : u32 = u_xlatu_loop_1;
    u_xlatu67 = (x_2725 >> 2u);
    let x_2728 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_2728 & 3u));
    let x_2731 : u32 = u_xlatu67;
    let x_2734 : vec4<f32> = x_2488.unity_LightIndices[bitcast<i32>(x_2731)];
    let x_2744 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2749 : vec4<u32> = indexable[x_2744];
    u_xlat67 = dot(x_2734, bitcast<vec4<f32>>(x_2749));
    let x_2752 : f32 = u_xlat67;
    u_xlatu67 = bitcast<u32>(i32(x_2752));
    let x_2755 : vec3<f32> = vs_TEXCOORD7;
    let x_2767 : u32 = u_xlatu67;
    let x_2770 : vec4<f32> = x_2766.x_AdditionalLightsPosition[bitcast<i32>(x_2767)];
    let x_2773 : u32 = u_xlatu67;
    let x_2776 : vec4<f32> = x_2766.x_AdditionalLightsPosition[bitcast<i32>(x_2773)];
    let x_2778 : vec3<f32> = ((-(x_2755) * vec3<f32>(x_2770.w, x_2770.w, x_2770.w)) + vec3<f32>(x_2776.x, x_2776.y, x_2776.z));
    let x_2779 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2778.x, x_2778.y, x_2778.z, x_2779.w);
    let x_2781 : vec4<f32> = u_xlat9;
    let x_2783 : vec4<f32> = u_xlat9;
    u_xlat48.x = dot(vec3<f32>(x_2781.x, x_2781.y, x_2781.z), vec3<f32>(x_2783.x, x_2783.y, x_2783.z));
    let x_2788 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_2788, 6.10351562e-05f);
    let x_2792 : f32 = u_xlat48.x;
    u_xlat69 = inverseSqrt(x_2792);
    let x_2794 : f32 = u_xlat69;
    let x_2796 : vec4<f32> = u_xlat9;
    let x_2798 : vec3<f32> = (vec3<f32>(x_2794, x_2794, x_2794) * vec3<f32>(x_2796.x, x_2796.y, x_2796.z));
    let x_2799 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2798.x, x_2798.y, x_2798.z, x_2799.w);
    let x_2802 : f32 = u_xlat48.x;
    u_xlat70 = (1.0f / x_2802);
    let x_2805 : f32 = u_xlat48.x;
    let x_2806 : u32 = u_xlatu67;
    let x_2809 : f32 = x_2766.x_AdditionalLightsAttenuation[bitcast<i32>(x_2806)].x;
    u_xlat48.x = (x_2805 * x_2809);
    let x_2813 : f32 = u_xlat48.x;
    let x_2816 : f32 = u_xlat48.x;
    u_xlat48.x = ((-(x_2813) * x_2816) + 1.0f);
    let x_2821 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_2821, 0.0f);
    let x_2825 : f32 = u_xlat48.x;
    let x_2827 : f32 = u_xlat48.x;
    u_xlat48.x = (x_2825 * x_2827);
    let x_2831 : f32 = u_xlat48.x;
    let x_2832 : f32 = u_xlat70;
    u_xlat48.x = (x_2831 * x_2832);
    let x_2835 : u32 = u_xlatu67;
    let x_2838 : vec4<f32> = x_2766.x_AdditionalLightsSpotDir[bitcast<i32>(x_2835)];
    let x_2840 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2838.x, x_2838.y, x_2838.z), vec3<f32>(x_2840.x, x_2840.y, x_2840.z));
    let x_2843 : f32 = u_xlat70;
    let x_2844 : u32 = u_xlatu67;
    let x_2847 : f32 = x_2766.x_AdditionalLightsAttenuation[bitcast<i32>(x_2844)].z;
    let x_2849 : u32 = u_xlatu67;
    let x_2852 : f32 = x_2766.x_AdditionalLightsAttenuation[bitcast<i32>(x_2849)].w;
    u_xlat70 = ((x_2843 * x_2847) + x_2852);
    let x_2854 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2854, 0.0f, 1.0f);
    let x_2856 : f32 = u_xlat70;
    let x_2857 : f32 = u_xlat70;
    u_xlat70 = (x_2856 * x_2857);
    let x_2860 : f32 = u_xlat48.x;
    let x_2861 : f32 = u_xlat70;
    u_xlat48.x = (x_2860 * x_2861);
    let x_2865 : u32 = u_xlatu67;
    u_xlatu70 = (x_2865 >> 5u);
    let x_2868 : u32 = u_xlatu67;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2868) & 31i)));
    let x_2873 : i32 = u_xlati71;
    let x_2875 : u32 = u_xlatu70;
    let x_2878 : f32 = x_2294.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2875)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2873) & bitcast<u32>(x_2878)));
    let x_2882 : i32 = u_xlati70;
    if ((x_2882 != 0i)) {
      let x_2892 : u32 = u_xlatu67;
      let x_2895 : f32 = x_2891.x_AdditionalLightsLightTypes[bitcast<i32>(x_2892)].el;
      u_xlati70 = i32(x_2895);
      let x_2897 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2897 != 0i));
      let x_2901 : u32 = u_xlatu67;
      u_xlati72 = (bitcast<i32>(x_2901) << bitcast<u32>(2i));
      let x_2904 : i32 = u_xlati71;
      if ((x_2904 != 0i)) {
        let x_2908 : vec3<f32> = vs_TEXCOORD7;
        let x_2910 : i32 = u_xlati72;
        let x_2913 : i32 = u_xlati72;
        let x_2917 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[((x_2910 + 1i) / 4i)][((x_2913 + 1i) % 4i)];
        let x_2919 : vec3<f32> = (vec3<f32>(x_2908.y, x_2908.y, x_2908.y) * vec3<f32>(x_2917.x, x_2917.y, x_2917.w));
        let x_2920 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2919.x, x_2919.y, x_2919.z, x_2920.w);
        let x_2922 : i32 = u_xlati72;
        let x_2924 : i32 = u_xlati72;
        let x_2927 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[(x_2922 / 4i)][(x_2924 % 4i)];
        let x_2929 : vec3<f32> = vs_TEXCOORD7;
        let x_2932 : vec4<f32> = u_xlat11;
        let x_2934 : vec3<f32> = ((vec3<f32>(x_2927.x, x_2927.y, x_2927.w) * vec3<f32>(x_2929.x, x_2929.x, x_2929.x)) + vec3<f32>(x_2932.x, x_2932.y, x_2932.z));
        let x_2935 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2934.x, x_2934.y, x_2934.z, x_2935.w);
        let x_2937 : i32 = u_xlati72;
        let x_2940 : i32 = u_xlati72;
        let x_2944 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[((x_2937 + 2i) / 4i)][((x_2940 + 2i) % 4i)];
        let x_2946 : vec3<f32> = vs_TEXCOORD7;
        let x_2949 : vec4<f32> = u_xlat11;
        let x_2951 : vec3<f32> = ((vec3<f32>(x_2944.x, x_2944.y, x_2944.w) * vec3<f32>(x_2946.z, x_2946.z, x_2946.z)) + vec3<f32>(x_2949.x, x_2949.y, x_2949.z));
        let x_2952 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2951.x, x_2951.y, x_2951.z, x_2952.w);
        let x_2954 : vec4<f32> = u_xlat11;
        let x_2956 : i32 = u_xlati72;
        let x_2959 : i32 = u_xlati72;
        let x_2963 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[((x_2956 + 3i) / 4i)][((x_2959 + 3i) % 4i)];
        let x_2965 : vec3<f32> = (vec3<f32>(x_2954.x, x_2954.y, x_2954.z) + vec3<f32>(x_2963.x, x_2963.y, x_2963.w));
        let x_2966 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2965.x, x_2965.y, x_2965.z, x_2966.w);
        let x_2968 : vec4<f32> = u_xlat11;
        let x_2970 : vec4<f32> = u_xlat11;
        let x_2972 : vec2<f32> = (vec2<f32>(x_2968.x, x_2968.y) / vec2<f32>(x_2970.z, x_2970.z));
        let x_2973 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2972.x, x_2972.y, x_2973.z, x_2973.w);
        let x_2975 : vec4<f32> = u_xlat11;
        let x_2978 : vec2<f32> = ((vec2<f32>(x_2975.x, x_2975.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2979 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2978.x, x_2978.y, x_2979.z, x_2979.w);
        let x_2981 : vec4<f32> = u_xlat11;
        let x_2985 : vec2<f32> = clamp(vec2<f32>(x_2981.x, x_2981.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2986 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2985.x, x_2985.y, x_2986.z, x_2986.w);
        let x_2988 : u32 = u_xlatu67;
        let x_2991 : vec4<f32> = x_2891.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2988)];
        let x_2993 : vec4<f32> = u_xlat11;
        let x_2996 : u32 = u_xlatu67;
        let x_2999 : vec4<f32> = x_2891.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2996)];
        let x_3001 : vec2<f32> = ((vec2<f32>(x_2991.x, x_2991.y) * vec2<f32>(x_2993.x, x_2993.y)) + vec2<f32>(x_2999.z, x_2999.w));
        let x_3002 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3001.x, x_3001.y, x_3002.z, x_3002.w);
      } else {
        let x_3006 : i32 = u_xlati70;
        u_xlatb70 = (x_3006 == 1i);
        let x_3008 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_3008);
        let x_3010 : i32 = u_xlati70;
        if ((x_3010 != 0i)) {
          let x_3015 : vec3<f32> = vs_TEXCOORD7;
          let x_3017 : i32 = u_xlati72;
          let x_3020 : i32 = u_xlati72;
          let x_3024 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[((x_3017 + 1i) / 4i)][((x_3020 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_3015.y, x_3015.y) * vec2<f32>(x_3024.x, x_3024.y));
          let x_3027 : i32 = u_xlati72;
          let x_3029 : i32 = u_xlati72;
          let x_3032 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[(x_3027 / 4i)][(x_3029 % 4i)];
          let x_3034 : vec3<f32> = vs_TEXCOORD7;
          let x_3037 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3032.x, x_3032.y) * vec2<f32>(x_3034.x, x_3034.x)) + x_3037);
          let x_3039 : i32 = u_xlati72;
          let x_3042 : i32 = u_xlati72;
          let x_3046 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[((x_3039 + 2i) / 4i)][((x_3042 + 2i) % 4i)];
          let x_3048 : vec3<f32> = vs_TEXCOORD7;
          let x_3051 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3046.x, x_3046.y) * vec2<f32>(x_3048.z, x_3048.z)) + x_3051);
          let x_3053 : vec2<f32> = u_xlat53;
          let x_3054 : i32 = u_xlati72;
          let x_3057 : i32 = u_xlati72;
          let x_3061 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[((x_3054 + 3i) / 4i)][((x_3057 + 3i) % 4i)];
          u_xlat53 = (x_3053 + vec2<f32>(x_3061.x, x_3061.y));
          let x_3064 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3064 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3067 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_3067);
          let x_3069 : u32 = u_xlatu67;
          let x_3072 : vec4<f32> = x_2891.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3069)];
          let x_3074 : vec2<f32> = u_xlat53;
          let x_3076 : u32 = u_xlatu67;
          let x_3079 : vec4<f32> = x_2891.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3076)];
          let x_3081 : vec2<f32> = ((vec2<f32>(x_3072.x, x_3072.y) * x_3074) + vec2<f32>(x_3079.z, x_3079.w));
          let x_3082 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3081.x, x_3081.y, x_3082.z, x_3082.w);
        } else {
          let x_3085 : vec3<f32> = vs_TEXCOORD7;
          let x_3087 : i32 = u_xlati72;
          let x_3090 : i32 = u_xlati72;
          let x_3094 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[((x_3087 + 1i) / 4i)][((x_3090 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3085.y, x_3085.y, x_3085.y, x_3085.y) * x_3094);
          let x_3096 : i32 = u_xlati72;
          let x_3098 : i32 = u_xlati72;
          let x_3101 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[(x_3096 / 4i)][(x_3098 % 4i)];
          let x_3102 : vec3<f32> = vs_TEXCOORD7;
          let x_3105 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3101 * vec4<f32>(x_3102.x, x_3102.x, x_3102.x, x_3102.x)) + x_3105);
          let x_3107 : i32 = u_xlati72;
          let x_3110 : i32 = u_xlati72;
          let x_3114 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[((x_3107 + 2i) / 4i)][((x_3110 + 2i) % 4i)];
          let x_3115 : vec3<f32> = vs_TEXCOORD7;
          let x_3118 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3114 * vec4<f32>(x_3115.z, x_3115.z, x_3115.z, x_3115.z)) + x_3118);
          let x_3120 : vec4<f32> = u_xlat12;
          let x_3121 : i32 = u_xlati72;
          let x_3124 : i32 = u_xlati72;
          let x_3128 : vec4<f32> = x_2891.x_AdditionalLightsWorldToLights[((x_3121 + 3i) / 4i)][((x_3124 + 3i) % 4i)];
          u_xlat12 = (x_3120 + x_3128);
          let x_3130 : vec4<f32> = u_xlat12;
          let x_3132 : vec4<f32> = u_xlat12;
          let x_3134 : vec3<f32> = (vec3<f32>(x_3130.x, x_3130.y, x_3130.z) / vec3<f32>(x_3132.w, x_3132.w, x_3132.w));
          let x_3135 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3134.x, x_3134.y, x_3134.z, x_3135.w);
          let x_3137 : vec4<f32> = u_xlat12;
          let x_3139 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_3137.x, x_3137.y, x_3137.z), vec3<f32>(x_3139.x, x_3139.y, x_3139.z));
          let x_3142 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_3142);
          let x_3144 : f32 = u_xlat70;
          let x_3146 : vec4<f32> = u_xlat12;
          let x_3148 : vec3<f32> = (vec3<f32>(x_3144, x_3144, x_3144) * vec3<f32>(x_3146.x, x_3146.y, x_3146.z));
          let x_3149 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3148.x, x_3148.y, x_3148.z, x_3149.w);
          let x_3151 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_3151.x, x_3151.y, x_3151.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3156 : f32 = u_xlat70;
          u_xlat70 = max(x_3156, 0.000001f);
          let x_3159 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_3159);
          let x_3161 : f32 = u_xlat70;
          let x_3163 : vec4<f32> = u_xlat12;
          let x_3165 : vec3<f32> = (vec3<f32>(x_3161, x_3161, x_3161) * vec3<f32>(x_3163.z, x_3163.x, x_3163.y));
          let x_3166 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3165.x, x_3165.y, x_3165.z, x_3166.w);
          let x_3169 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3169);
          let x_3173 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3173, 0.0f, 1.0f);
          let x_3177 : vec4<f32> = u_xlat13;
          let x_3180 : vec4<bool> = (vec4<f32>(x_3177.y, x_3177.z, x_3177.y, x_3177.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_3180.x, x_3180.y);
          let x_3183 : bool = u_xlatb53.x;
          if (x_3183) {
            let x_3188 : f32 = u_xlat13.x;
            x_3184 = x_3188;
          } else {
            let x_3191 : f32 = u_xlat13.x;
            x_3184 = -(x_3191);
          }
          let x_3193 : f32 = x_3184;
          u_xlat53.x = x_3193;
          let x_3196 : bool = u_xlatb53.y;
          if (x_3196) {
            let x_3201 : f32 = u_xlat13.x;
            x_3197 = x_3201;
          } else {
            let x_3204 : f32 = u_xlat13.x;
            x_3197 = -(x_3204);
          }
          let x_3206 : f32 = x_3197;
          u_xlat53.y = x_3206;
          let x_3208 : vec4<f32> = u_xlat12;
          let x_3210 : f32 = u_xlat70;
          let x_3213 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3208.x, x_3208.y) * vec2<f32>(x_3210, x_3210)) + x_3213);
          let x_3215 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3215 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3218 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3218, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3222 : u32 = u_xlatu67;
          let x_3225 : vec4<f32> = x_2891.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3222)];
          let x_3227 : vec2<f32> = u_xlat53;
          let x_3229 : u32 = u_xlatu67;
          let x_3232 : vec4<f32> = x_2891.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3229)];
          let x_3234 : vec2<f32> = ((vec2<f32>(x_3225.x, x_3225.y) * x_3227) + vec2<f32>(x_3232.z, x_3232.w));
          let x_3235 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3234.x, x_3234.y, x_3235.z, x_3235.w);
        }
      }
      let x_3242 : vec4<f32> = u_xlat11;
      let x_3245 : f32 = x_126.x_GlobalMipBias.x;
      let x_3246 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3242.x, x_3242.y), x_3245);
      u_xlat11 = x_3246;
      let x_3248 : bool = u_xlatb6.y;
      if (x_3248) {
        let x_3253 : f32 = u_xlat11.w;
        x_3249 = x_3253;
      } else {
        let x_3256 : f32 = u_xlat11.x;
        x_3249 = x_3256;
      }
      let x_3257 : f32 = x_3249;
      u_xlat70 = x_3257;
      let x_3259 : bool = u_xlatb6.x;
      if (x_3259) {
        let x_3263 : vec4<f32> = u_xlat11;
        x_3260 = vec3<f32>(x_3263.x, x_3263.y, x_3263.z);
      } else {
        let x_3266 : f32 = u_xlat70;
        x_3260 = vec3<f32>(x_3266, x_3266, x_3266);
      }
      let x_3268 : vec3<f32> = x_3260;
      let x_3269 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3268.x, x_3268.y, x_3268.z, x_3269.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3275 : vec4<f32> = u_xlat11;
    let x_3277 : u32 = u_xlatu67;
    let x_3280 : vec4<f32> = x_2766.x_AdditionalLightsColor[bitcast<i32>(x_3277)];
    let x_3282 : vec3<f32> = (vec3<f32>(x_3275.x, x_3275.y, x_3275.z) * vec3<f32>(x_3280.x, x_3280.y, x_3280.z));
    let x_3283 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3282.x, x_3282.y, x_3282.z, x_3283.w);
    let x_3285 : f32 = u_xlat68;
    let x_3287 : vec4<f32> = u_xlat11;
    let x_3289 : vec3<f32> = (vec3<f32>(x_3285, x_3285, x_3285) * vec3<f32>(x_3287.x, x_3287.y, x_3287.z));
    let x_3290 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3290.w);
    let x_3292 : vec4<f32> = u_xlat1;
    let x_3294 : vec4<f32> = u_xlat10;
    u_xlat67 = dot(vec3<f32>(x_3292.x, x_3292.y, x_3292.z), vec3<f32>(x_3294.x, x_3294.y, x_3294.z));
    let x_3297 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3297, 0.0f, 1.0f);
    let x_3299 : f32 = u_xlat67;
    let x_3301 : f32 = u_xlat48.x;
    u_xlat67 = (x_3299 * x_3301);
    let x_3303 : f32 = u_xlat67;
    let x_3305 : vec4<f32> = u_xlat11;
    let x_3307 : vec3<f32> = (vec3<f32>(x_3303, x_3303, x_3303) * vec3<f32>(x_3305.x, x_3305.y, x_3305.z));
    let x_3308 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3307.x, x_3307.y, x_3307.z, x_3308.w);
    let x_3310 : vec4<f32> = u_xlat9;
    let x_3312 : f32 = u_xlat69;
    let x_3315 : vec3<f32> = u_xlat2;
    let x_3316 : vec3<f32> = ((vec3<f32>(x_3310.x, x_3310.y, x_3310.z) * vec3<f32>(x_3312, x_3312, x_3312)) + x_3315);
    let x_3317 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3316.x, x_3316.y, x_3316.z, x_3317.w);
    let x_3319 : vec4<f32> = u_xlat9;
    let x_3321 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3319.x, x_3319.y, x_3319.z), vec3<f32>(x_3321.x, x_3321.y, x_3321.z));
    let x_3324 : f32 = u_xlat67;
    u_xlat67 = max(x_3324, 1.17549435e-37f);
    let x_3326 : f32 = u_xlat67;
    u_xlat67 = inverseSqrt(x_3326);
    let x_3328 : f32 = u_xlat67;
    let x_3330 : vec4<f32> = u_xlat9;
    let x_3332 : vec3<f32> = (vec3<f32>(x_3328, x_3328, x_3328) * vec3<f32>(x_3330.x, x_3330.y, x_3330.z));
    let x_3333 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3332.x, x_3332.y, x_3332.z, x_3333.w);
    let x_3335 : vec4<f32> = u_xlat1;
    let x_3337 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_3335.x, x_3335.y, x_3335.z), vec3<f32>(x_3337.x, x_3337.y, x_3337.z));
    let x_3340 : f32 = u_xlat67;
    u_xlat67 = clamp(x_3340, 0.0f, 1.0f);
    let x_3342 : vec4<f32> = u_xlat10;
    let x_3344 : vec4<f32> = u_xlat9;
    u_xlat48.x = dot(vec3<f32>(x_3342.x, x_3342.y, x_3342.z), vec3<f32>(x_3344.x, x_3344.y, x_3344.z));
    let x_3349 : f32 = u_xlat48.x;
    u_xlat48.x = clamp(x_3349, 0.0f, 1.0f);
    let x_3352 : f32 = u_xlat67;
    let x_3353 : f32 = u_xlat67;
    u_xlat67 = (x_3352 * x_3353);
    let x_3355 : f32 = u_xlat67;
    let x_3357 : f32 = u_xlat0.x;
    u_xlat67 = ((x_3355 * x_3357) + 1.000010014f);
    let x_3361 : f32 = u_xlat48.x;
    let x_3363 : f32 = u_xlat48.x;
    u_xlat48.x = (x_3361 * x_3363);
    let x_3366 : f32 = u_xlat67;
    let x_3367 : f32 = u_xlat67;
    u_xlat67 = (x_3366 * x_3367);
    let x_3370 : f32 = u_xlat48.x;
    u_xlat48.x = max(x_3370, 0.100000001f);
    let x_3373 : f32 = u_xlat67;
    let x_3375 : f32 = u_xlat48.x;
    u_xlat67 = (x_3373 * x_3375);
    let x_3377 : f32 = u_xlat66;
    let x_3378 : f32 = u_xlat67;
    u_xlat67 = (x_3377 * x_3378);
    let x_3380 : f32 = u_xlat64;
    let x_3381 : f32 = u_xlat67;
    u_xlat67 = (x_3380 / x_3381);
    let x_3383 : vec4<f32> = u_xlat5;
    let x_3385 : f32 = u_xlat67;
    let x_3388 : vec4<f32> = u_xlat7;
    let x_3390 : vec3<f32> = ((vec3<f32>(x_3383.x, x_3383.y, x_3383.z) * vec3<f32>(x_3385, x_3385, x_3385)) + vec3<f32>(x_3388.x, x_3388.y, x_3388.z));
    let x_3391 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3390.x, x_3390.y, x_3390.z, x_3391.w);
    let x_3393 : vec4<f32> = u_xlat9;
    let x_3395 : vec4<f32> = u_xlat11;
    let x_3398 : vec4<f32> = u_xlat8;
    let x_3400 : vec3<f32> = ((vec3<f32>(x_3393.x, x_3393.y, x_3393.z) * vec3<f32>(x_3395.x, x_3395.y, x_3395.z)) + vec3<f32>(x_3398.x, x_3398.y, x_3398.z));
    let x_3401 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3400.x, x_3400.y, x_3400.z, x_3401.w);

    continuing {
      let x_3403 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3403 + bitcast<u32>(1i));
    }
  }
  let x_3405 : vec4<f32> = u_xlat4;
  let x_3407 : f32 = u_xlat21;
  let x_3410 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_3405.x, x_3405.y, x_3405.z) * vec3<f32>(x_3407, x_3407, x_3407)) + vec3<f32>(x_3410.x, x_3410.y, x_3410.z));
  let x_3413 : vec4<f32> = u_xlat8;
  let x_3415 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3413.x, x_3413.y, x_3413.z) + x_3415);
  let x_3419 : f32 = u_xlat63;
  let x_3421 : vec3<f32> = u_xlat0;
  let x_3422 : vec3<f32> = (vec3<f32>(x_3419, x_3419, x_3419) * x_3421);
  let x_3423 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3422.x, x_3422.y, x_3422.z, x_3423.w);
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

