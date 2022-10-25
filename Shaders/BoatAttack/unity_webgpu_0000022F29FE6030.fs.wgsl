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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_781 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_2068 : LightCookies;

@group(0) @binding(10) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2263 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2545 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2653 : AdditionalLightsCookies;

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
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat25 : f32;
  var u_xlatb4 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb46 : vec2<bool>;
  var u_xlat46 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat67 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat69 : f32;
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
  var u_xlatb67 : bool;
  var x_2018 : f32;
  var x_2136 : f32;
  var x_2147 : vec3<f32>;
  var u_xlatu42 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2946 : f32;
  var x_2959 : f32;
  var x_3011 : f32;
  var x_3022 : vec3<f32>;
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
  let x_614 : vec4<f32> = vs_TEXCOORD0;
  let x_617 : f32 = x_126.x_GlobalMipBias.x;
  let x_618 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_614.z, x_614.w), x_617);
  u_xlat3 = x_618;
  let x_623 : vec4<f32> = vs_TEXCOORD0;
  let x_626 : f32 = x_126.x_GlobalMipBias.x;
  let x_627 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_623.z, x_623.w), x_626);
  let x_628 : vec3<f32> = vec3<f32>(x_627.x, x_627.y, x_627.z);
  let x_629 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat3;
  let x_635 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_636 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat1;
  let x_640 : vec4<f32> = u_xlat3;
  u_xlat64 = dot(vec3<f32>(x_638.x, x_638.y, x_638.z), vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : f32 = u_xlat64;
  u_xlat64 = (x_643 + 0.5f);
  let x_645 : f32 = u_xlat64;
  let x_647 : vec4<f32> = u_xlat4;
  let x_649 : vec3<f32> = (vec3<f32>(x_645, x_645, x_645) * vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_653 : f32 = u_xlat3.w;
  u_xlat64 = max(x_653, 0.0001f);
  let x_656 : vec4<f32> = u_xlat3;
  let x_658 : f32 = u_xlat64;
  let x_660 : vec3<f32> = (vec3<f32>(x_656.x, x_656.y, x_656.z) / vec3<f32>(x_658, x_658, x_658));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_665 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_666 : vec2<f32> = vec2<f32>(x_665.x, x_665.y);
  let x_670 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_666.x, x_666.y));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat4;
  let x_675 : vec4<f32> = hlslcc_FragCoord;
  let x_677 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) * vec2<f32>(x_675.x, x_675.y));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_678.z, x_678.w);
  let x_681 : f32 = u_xlat4.y;
  let x_683 : f32 = x_126.x_ScaleBiasRt.x;
  let x_686 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat64 = ((x_681 * x_683) + x_686);
  let x_688 : f32 = u_xlat64;
  u_xlat4.z = (-(x_688) + 1.0f);
  let x_693 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_693) * 0.959999979f) + 0.959999979f);
  let x_699 : f32 = u_xlat42;
  let x_700 : f32 = u_xlat64;
  u_xlat65 = (x_699 + -(x_700));
  let x_703 : f32 = u_xlat64;
  let x_705 : vec4<f32> = u_xlat5;
  let x_707 : vec3<f32> = (vec3<f32>(x_703, x_703, x_703) * vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_715 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec3<f32> = u_xlat0;
  let x_719 : vec4<f32> = u_xlat5;
  let x_724 : vec3<f32> = ((vec3<f32>(x_717.x, x_717.x, x_717.x) * vec3<f32>(x_719.x, x_719.y, x_719.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_725 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : f32 = u_xlat42;
  u_xlat0.x = (-(x_727) + 1.0f);
  let x_732 : f32 = u_xlat0.x;
  let x_734 : f32 = u_xlat0.x;
  u_xlat42 = (x_732 * x_734);
  let x_736 : f32 = u_xlat42;
  u_xlat42 = max(x_736, 0.0078125f);
  let x_739 : f32 = u_xlat42;
  let x_740 : f32 = u_xlat42;
  u_xlat64 = (x_739 * x_740);
  let x_742 : f32 = u_xlat65;
  u_xlat65 = (x_742 + 1.0f);
  let x_744 : f32 = u_xlat65;
  u_xlat65 = clamp(x_744, 0.0f, 1.0f);
  let x_747 : f32 = u_xlat42;
  u_xlat66 = ((x_747 * 4.0f) + 2.0f);
  let x_756 : vec4<f32> = u_xlat4;
  let x_759 : f32 = x_126.x_GlobalMipBias.x;
  let x_760 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_756.x, x_756.z), x_759);
  u_xlat4.x = x_760.x;
  let x_765 : f32 = u_xlat4.x;
  u_xlat25 = (x_765 + -1.0f);
  let x_768 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_769 : f32 = u_xlat25;
  u_xlat25 = ((x_768 * x_769) + 1.0f);
  let x_772 : f32 = u_xlat21;
  let x_774 : f32 = u_xlat4.x;
  u_xlat21 = min(x_772, x_774);
  let x_783 : f32 = x_781.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_783);
  let x_785 : bool = u_xlatb4;
  if (x_785) {
    let x_789 : f32 = x_781.x_MainLightShadowParams.y;
    u_xlatb4 = (x_789 == 1.0f);
    let x_791 : bool = u_xlatb4;
    if (x_791) {
      let x_795 : vec4<f32> = vs_TEXCOORD8;
      let x_798 : vec4<f32> = x_781.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) + x_798);
      let x_801 : vec4<f32> = u_xlat7;
      let x_802 : vec2<f32> = vec2<f32>(x_801.x, x_801.y);
      let x_804 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_802.x, x_802.y, x_804);
      let x_816 : vec3<f32> = txVec0;
      let x_818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_816.xy, x_816.z);
      u_xlat8.x = x_818;
      let x_821 : vec4<f32> = u_xlat7;
      let x_822 : vec2<f32> = vec2<f32>(x_821.z, x_821.w);
      let x_824 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_822.x, x_822.y, x_824);
      let x_831 : vec3<f32> = txVec1;
      let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_831.xy, x_831.z);
      u_xlat8.y = x_833;
      let x_835 : vec4<f32> = vs_TEXCOORD8;
      let x_838 : vec4<f32> = x_781.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) + x_838);
      let x_841 : vec4<f32> = u_xlat7;
      let x_842 : vec2<f32> = vec2<f32>(x_841.x, x_841.y);
      let x_844 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_842.x, x_842.y, x_844);
      let x_851 : vec3<f32> = txVec2;
      let x_853 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_851.xy, x_851.z);
      u_xlat8.z = x_853;
      let x_856 : vec4<f32> = u_xlat7;
      let x_857 : vec2<f32> = vec2<f32>(x_856.z, x_856.w);
      let x_859 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_857.x, x_857.y, x_859);
      let x_866 : vec3<f32> = txVec3;
      let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_866.xy, x_866.z);
      u_xlat8.w = x_868;
      let x_870 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_870, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_880 : f32 = x_781.x_MainLightShadowParams.y;
      u_xlatb46.x = (x_880 == 2.0f);
      let x_884 : bool = u_xlatb46.x;
      if (x_884) {
        let x_889 : vec4<f32> = vs_TEXCOORD8;
        let x_892 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_889.x, x_889.y) * vec2<f32>(x_892.z, x_892.w)) + vec2<f32>(0.5f, 0.5f));
        let x_896 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_896);
        let x_898 : vec4<f32> = vs_TEXCOORD8;
        let x_901 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_904 : vec2<f32> = u_xlat46;
        let x_906 : vec2<f32> = ((vec2<f32>(x_898.x, x_898.y) * vec2<f32>(x_901.z, x_901.w)) + -(x_904));
        let x_907 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_909 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_909.x, x_909.x, x_909.y, x_909.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_913 : vec4<f32> = u_xlat8;
        let x_915 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_913.x, x_913.x, x_913.z, x_913.z) * vec4<f32>(x_915.x, x_915.x, x_915.z, x_915.z));
        let x_919 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_919.y, x_919.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_924 : vec4<f32> = u_xlat9;
        let x_927 : vec4<f32> = u_xlat7;
        let x_930 : vec2<f32> = ((vec2<f32>(x_924.x, x_924.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_927.x, x_927.y)));
        let x_931 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_930.x, x_931.y, x_930.y, x_931.w);
        let x_933 : vec4<f32> = u_xlat7;
        let x_936 : vec2<f32> = (-(vec2<f32>(x_933.x, x_933.y)) + vec2<f32>(1.0f, 1.0f));
        let x_937 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_940 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_940.x, x_940.y), vec2<f32>(0.0f, 0.0f));
        let x_944 : vec2<f32> = u_xlat51;
        let x_946 : vec2<f32> = u_xlat51;
        let x_948 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_944) * x_946) + vec2<f32>(x_948.x, x_948.y));
        let x_951 : vec4<f32> = u_xlat7;
        let x_953 : vec2<f32> = max(vec2<f32>(x_951.x, x_951.y), vec2<f32>(0.0f, 0.0f));
        let x_954 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat7;
        let x_959 : vec4<f32> = u_xlat7;
        let x_962 : vec4<f32> = u_xlat8;
        let x_964 : vec2<f32> = ((-(vec2<f32>(x_956.x, x_956.y)) * vec2<f32>(x_959.x, x_959.y)) + vec2<f32>(x_962.y, x_962.w));
        let x_965 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_964.x, x_964.y, x_965.z, x_965.w);
        let x_967 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_967 + vec2<f32>(1.0f, 1.0f));
        let x_969 : vec4<f32> = u_xlat7;
        let x_971 : vec2<f32> = (vec2<f32>(x_969.x, x_969.y) + vec2<f32>(1.0f, 1.0f));
        let x_972 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec4<f32> = u_xlat8;
        let x_978 : vec2<f32> = (vec2<f32>(x_974.x, x_974.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_979 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
        let x_981 : vec4<f32> = u_xlat9;
        let x_983 : vec2<f32> = (vec2<f32>(x_981.x, x_981.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_984 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
        let x_986 : vec2<f32> = u_xlat51;
        let x_987 : vec2<f32> = (x_986 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_988 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
        let x_990 : vec4<f32> = u_xlat7;
        let x_992 : vec2<f32> = (vec2<f32>(x_990.x, x_990.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_993 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_995 : vec4<f32> = u_xlat8;
        let x_997 : vec2<f32> = (vec2<f32>(x_995.y, x_995.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_998 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_997.x, x_997.y, x_998.z, x_998.w);
        let x_1001 : f32 = u_xlat9.x;
        u_xlat10.z = x_1001;
        let x_1004 : f32 = u_xlat7.x;
        u_xlat10.w = x_1004;
        let x_1007 : f32 = u_xlat12.x;
        u_xlat11.z = x_1007;
        let x_1010 : f32 = u_xlat49.x;
        u_xlat11.w = x_1010;
        let x_1012 : vec4<f32> = u_xlat10;
        let x_1014 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1012.z, x_1012.w, x_1012.x, x_1012.z) + vec4<f32>(x_1014.z, x_1014.w, x_1014.x, x_1014.z));
        let x_1018 : f32 = u_xlat10.y;
        u_xlat9.z = x_1018;
        let x_1021 : f32 = u_xlat7.y;
        u_xlat9.w = x_1021;
        let x_1024 : f32 = u_xlat11.y;
        u_xlat12.z = x_1024;
        let x_1027 : f32 = u_xlat49.y;
        u_xlat12.w = x_1027;
        let x_1029 : vec4<f32> = u_xlat9;
        let x_1031 : vec4<f32> = u_xlat12;
        let x_1033 : vec3<f32> = (vec3<f32>(x_1029.z, x_1029.y, x_1029.w) + vec3<f32>(x_1031.z, x_1031.y, x_1031.w));
        let x_1034 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
        let x_1036 : vec4<f32> = u_xlat11;
        let x_1038 : vec4<f32> = u_xlat8;
        let x_1040 : vec3<f32> = (vec3<f32>(x_1036.x, x_1036.z, x_1036.w) / vec3<f32>(x_1038.z, x_1038.w, x_1038.y));
        let x_1041 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
        let x_1043 : vec4<f32> = u_xlat9;
        let x_1048 : vec3<f32> = (vec3<f32>(x_1043.x, x_1043.y, x_1043.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1049 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat12;
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1055 : vec3<f32> = (vec3<f32>(x_1051.z, x_1051.y, x_1051.w) / vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
        let x_1056 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat10;
        let x_1060 : vec3<f32> = (vec3<f32>(x_1058.x, x_1058.y, x_1058.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1061 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
        let x_1063 : vec4<f32> = u_xlat9;
        let x_1066 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1068 : vec3<f32> = (vec3<f32>(x_1063.y, x_1063.x, x_1063.z) * vec3<f32>(x_1066.x, x_1066.x, x_1066.x));
        let x_1069 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
        let x_1071 : vec4<f32> = u_xlat10;
        let x_1074 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1076 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(x_1074.y, x_1074.y, x_1074.y));
        let x_1077 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
        let x_1080 : f32 = u_xlat10.x;
        u_xlat9.w = x_1080;
        let x_1082 : vec2<f32> = u_xlat46;
        let x_1085 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y) * vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y)) + vec4<f32>(x_1088.y, x_1088.w, x_1088.x, x_1088.w));
        let x_1091 : vec2<f32> = u_xlat46;
        let x_1093 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat9;
        let x_1098 : vec2<f32> = ((x_1091 * vec2<f32>(x_1093.x, x_1093.y)) + vec2<f32>(x_1096.z, x_1096.w));
        let x_1099 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1102 : f32 = u_xlat9.y;
        u_xlat10.w = x_1102;
        let x_1104 : vec4<f32> = u_xlat10;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.y, x_1104.z);
        let x_1106 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1105.x, x_1106.z, x_1105.y);
        let x_1108 : vec2<f32> = u_xlat46;
        let x_1111 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y) * vec4<f32>(x_1111.x, x_1111.y, x_1111.x, x_1111.y)) + vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1114.y));
        let x_1117 : vec2<f32> = u_xlat46;
        let x_1120 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1117.x, x_1117.y, x_1117.x, x_1117.y) * vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y)) + vec4<f32>(x_1123.w, x_1123.y, x_1123.w, x_1123.z));
        let x_1126 : vec2<f32> = u_xlat46;
        let x_1129 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y) * vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y)) + vec4<f32>(x_1132.x, x_1132.w, x_1132.z, x_1132.w));
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_1136.x, x_1136.x, x_1136.x, x_1136.y) * vec4<f32>(x_1138.z, x_1138.w, x_1138.y, x_1138.z));
        let x_1142 : vec4<f32> = u_xlat7;
        let x_1144 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1142.y, x_1142.y, x_1142.z, x_1142.z) * x_1144);
        let x_1147 : f32 = u_xlat7.z;
        let x_1149 : f32 = u_xlat8.y;
        u_xlat46.x = (x_1147 * x_1149);
        let x_1153 : vec4<f32> = u_xlat11;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.x, x_1153.y);
        let x_1156 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1164 : vec3<f32> = txVec4;
        let x_1166 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1164.xy, x_1164.z);
        u_xlat67 = x_1166;
        let x_1168 : vec4<f32> = u_xlat11;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.z, x_1168.w);
        let x_1171 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1179 : vec3<f32> = txVec5;
        let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1179.xy, x_1179.z);
        u_xlat68 = x_1181;
        let x_1182 : f32 = u_xlat68;
        let x_1184 : f32 = u_xlat14.y;
        u_xlat68 = (x_1182 * x_1184);
        let x_1187 : f32 = u_xlat14.x;
        let x_1188 : f32 = u_xlat67;
        let x_1190 : f32 = u_xlat68;
        u_xlat67 = ((x_1187 * x_1188) + x_1190);
        let x_1193 : vec4<f32> = u_xlat12;
        let x_1194 : vec2<f32> = vec2<f32>(x_1193.x, x_1193.y);
        let x_1196 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1194.x, x_1194.y, x_1196);
        let x_1203 : vec3<f32> = txVec6;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1203.xy, x_1203.z);
        u_xlat68 = x_1205;
        let x_1207 : f32 = u_xlat14.z;
        let x_1208 : f32 = u_xlat68;
        let x_1210 : f32 = u_xlat67;
        u_xlat67 = ((x_1207 * x_1208) + x_1210);
        let x_1213 : vec4<f32> = u_xlat10;
        let x_1214 : vec2<f32> = vec2<f32>(x_1213.x, x_1213.y);
        let x_1216 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec7;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1223.xy, x_1223.z);
        u_xlat68 = x_1225;
        let x_1227 : f32 = u_xlat14.w;
        let x_1228 : f32 = u_xlat68;
        let x_1230 : f32 = u_xlat67;
        u_xlat67 = ((x_1227 * x_1228) + x_1230);
        let x_1233 : vec4<f32> = u_xlat13;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.x, x_1233.y);
        let x_1236 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec8;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1243.xy, x_1243.z);
        u_xlat68 = x_1245;
        let x_1247 : f32 = u_xlat15.x;
        let x_1248 : f32 = u_xlat68;
        let x_1250 : f32 = u_xlat67;
        u_xlat67 = ((x_1247 * x_1248) + x_1250);
        let x_1253 : vec4<f32> = u_xlat13;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.z, x_1253.w);
        let x_1256 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec9;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1263.xy, x_1263.z);
        u_xlat68 = x_1265;
        let x_1267 : f32 = u_xlat15.y;
        let x_1268 : f32 = u_xlat68;
        let x_1270 : f32 = u_xlat67;
        u_xlat67 = ((x_1267 * x_1268) + x_1270);
        let x_1273 : vec4<f32> = u_xlat10;
        let x_1274 : vec2<f32> = vec2<f32>(x_1273.z, x_1273.w);
        let x_1276 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1274.x, x_1274.y, x_1276);
        let x_1283 : vec3<f32> = txVec10;
        let x_1285 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1283.xy, x_1283.z);
        u_xlat68 = x_1285;
        let x_1287 : f32 = u_xlat15.z;
        let x_1288 : f32 = u_xlat68;
        let x_1290 : f32 = u_xlat67;
        u_xlat67 = ((x_1287 * x_1288) + x_1290);
        let x_1293 : vec4<f32> = u_xlat9;
        let x_1294 : vec2<f32> = vec2<f32>(x_1293.x, x_1293.y);
        let x_1296 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
        let x_1303 : vec3<f32> = txVec11;
        let x_1305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1303.xy, x_1303.z);
        u_xlat68 = x_1305;
        let x_1307 : f32 = u_xlat15.w;
        let x_1308 : f32 = u_xlat68;
        let x_1310 : f32 = u_xlat67;
        u_xlat67 = ((x_1307 * x_1308) + x_1310);
        let x_1313 : vec4<f32> = u_xlat9;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.z, x_1313.w);
        let x_1316 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec12;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1323.xy, x_1323.z);
        u_xlat68 = x_1325;
        let x_1327 : f32 = u_xlat46.x;
        let x_1328 : f32 = u_xlat68;
        let x_1330 : f32 = u_xlat67;
        u_xlat4.x = ((x_1327 * x_1328) + x_1330);
      } else {
        let x_1334 : vec4<f32> = vs_TEXCOORD8;
        let x_1337 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        u_xlat46 = ((vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(x_1337.z, x_1337.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1341 : vec2<f32> = u_xlat46;
        u_xlat46 = floor(x_1341);
        let x_1343 : vec4<f32> = vs_TEXCOORD8;
        let x_1346 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1349 : vec2<f32> = u_xlat46;
        let x_1351 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.y) * vec2<f32>(x_1346.z, x_1346.w)) + -(x_1349));
        let x_1352 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1351.x, x_1351.y, x_1352.z, x_1352.w);
        let x_1354 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1354.x, x_1354.x, x_1354.y, x_1354.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1357 : vec4<f32> = u_xlat8;
        let x_1359 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1357.x, x_1357.x, x_1357.z, x_1357.z) * vec4<f32>(x_1359.x, x_1359.x, x_1359.z, x_1359.z));
        let x_1362 : vec4<f32> = u_xlat9;
        let x_1366 : vec2<f32> = (vec2<f32>(x_1362.y, x_1362.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1367 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1367.x, x_1366.x, x_1367.z, x_1366.y);
        let x_1369 : vec4<f32> = u_xlat9;
        let x_1372 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1369.x, x_1369.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1372.x, x_1372.y)));
        let x_1376 : vec4<f32> = u_xlat7;
        let x_1379 : vec2<f32> = (-(vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1380 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1379.x, x_1380.y, x_1379.y, x_1380.w);
        let x_1382 : vec4<f32> = u_xlat7;
        let x_1384 : vec2<f32> = min(vec2<f32>(x_1382.x, x_1382.y), vec2<f32>(0.0f, 0.0f));
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1384.x, x_1384.y, x_1385.z, x_1385.w);
        let x_1387 : vec4<f32> = u_xlat9;
        let x_1390 : vec4<f32> = u_xlat9;
        let x_1393 : vec4<f32> = u_xlat8;
        let x_1395 : vec2<f32> = ((-(vec2<f32>(x_1387.x, x_1387.y)) * vec2<f32>(x_1390.x, x_1390.y)) + vec2<f32>(x_1393.x, x_1393.z));
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1395.x, x_1396.y, x_1395.y, x_1396.w);
        let x_1398 : vec4<f32> = u_xlat7;
        let x_1400 : vec2<f32> = max(vec2<f32>(x_1398.x, x_1398.y), vec2<f32>(0.0f, 0.0f));
        let x_1401 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1400.x, x_1400.y, x_1401.z, x_1401.w);
        let x_1403 : vec4<f32> = u_xlat9;
        let x_1406 : vec4<f32> = u_xlat9;
        let x_1409 : vec4<f32> = u_xlat8;
        let x_1411 : vec2<f32> = ((-(vec2<f32>(x_1403.x, x_1403.y)) * vec2<f32>(x_1406.x, x_1406.y)) + vec2<f32>(x_1409.y, x_1409.w));
        let x_1412 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1412.x, x_1411.x, x_1412.z, x_1411.y);
        let x_1414 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1414 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1418 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1418 * 0.081632003f);
        let x_1422 : vec2<f32> = u_xlat49;
        let x_1425 : vec2<f32> = (vec2<f32>(x_1422.y, x_1422.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1426 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1426.w);
        let x_1428 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1428.x, x_1428.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1432 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1432 * 0.081632003f);
        let x_1436 : f32 = u_xlat11.y;
        u_xlat9.x = x_1436;
        let x_1438 : vec4<f32> = u_xlat7;
        let x_1445 : vec2<f32> = ((vec2<f32>(x_1438.x, x_1438.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1446 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1446.x, x_1445.x, x_1446.z, x_1445.y);
        let x_1448 : vec4<f32> = u_xlat7;
        let x_1452 : vec2<f32> = ((vec2<f32>(x_1448.x, x_1448.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1453 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1452.x, x_1453.y, x_1452.y, x_1453.w);
        let x_1456 : f32 = u_xlat49.x;
        u_xlat8.y = x_1456;
        let x_1459 : f32 = u_xlat10.y;
        u_xlat8.w = x_1459;
        let x_1461 : vec4<f32> = u_xlat8;
        let x_1462 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1461 + x_1462);
        let x_1464 : vec4<f32> = u_xlat7;
        let x_1467 : vec2<f32> = ((vec2<f32>(x_1464.y, x_1464.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1468 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1468.x, x_1467.x, x_1468.z, x_1467.y);
        let x_1470 : vec4<f32> = u_xlat7;
        let x_1473 : vec2<f32> = ((vec2<f32>(x_1470.y, x_1470.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1474 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1473.x, x_1474.y, x_1473.y, x_1474.w);
        let x_1477 : f32 = u_xlat49.y;
        u_xlat10.y = x_1477;
        let x_1479 : vec4<f32> = u_xlat10;
        let x_1480 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1479 + x_1480);
        let x_1482 : vec4<f32> = u_xlat8;
        let x_1483 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1482 / x_1483);
        let x_1485 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1485 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1491 : vec4<f32> = u_xlat10;
        let x_1492 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1491 / x_1492);
        let x_1494 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1494 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1496 : vec4<f32> = u_xlat8;
        let x_1499 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1496.w, x_1496.x, x_1496.y, x_1496.z) * vec4<f32>(x_1499.x, x_1499.x, x_1499.x, x_1499.x));
        let x_1502 : vec4<f32> = u_xlat10;
        let x_1505 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1502.x, x_1502.w, x_1502.y, x_1502.z) * vec4<f32>(x_1505.y, x_1505.y, x_1505.y, x_1505.y));
        let x_1508 : vec4<f32> = u_xlat8;
        let x_1509 : vec3<f32> = vec3<f32>(x_1508.y, x_1508.z, x_1508.w);
        let x_1510 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1509.x, x_1510.y, x_1509.y, x_1509.z);
        let x_1513 : f32 = u_xlat10.x;
        u_xlat11.y = x_1513;
        let x_1515 : vec2<f32> = u_xlat46;
        let x_1518 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1521 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1515.x, x_1515.y, x_1515.x, x_1515.y) * vec4<f32>(x_1518.x, x_1518.y, x_1518.x, x_1518.y)) + vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1521.y));
        let x_1524 : vec2<f32> = u_xlat46;
        let x_1526 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1529 : vec4<f32> = u_xlat11;
        let x_1531 : vec2<f32> = ((x_1524 * vec2<f32>(x_1526.x, x_1526.y)) + vec2<f32>(x_1529.w, x_1529.y));
        let x_1532 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1531.x, x_1531.y, x_1532.z, x_1532.w);
        let x_1535 : f32 = u_xlat11.y;
        u_xlat8.y = x_1535;
        let x_1538 : f32 = u_xlat10.z;
        u_xlat11.y = x_1538;
        let x_1540 : vec2<f32> = u_xlat46;
        let x_1543 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1546 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1540.x, x_1540.y, x_1540.x, x_1540.y) * vec4<f32>(x_1543.x, x_1543.y, x_1543.x, x_1543.y)) + vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1546.y));
        let x_1550 : vec2<f32> = u_xlat46;
        let x_1552 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1555 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1550 * vec2<f32>(x_1552.x, x_1552.y)) + vec2<f32>(x_1555.w, x_1555.y));
        let x_1559 : f32 = u_xlat11.y;
        u_xlat8.z = x_1559;
        let x_1561 : vec2<f32> = u_xlat46;
        let x_1564 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1567 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1561.x, x_1561.y, x_1561.x, x_1561.y) * vec4<f32>(x_1564.x, x_1564.y, x_1564.x, x_1564.y)) + vec4<f32>(x_1567.x, x_1567.y, x_1567.x, x_1567.z));
        let x_1571 : f32 = u_xlat10.w;
        u_xlat11.y = x_1571;
        let x_1574 : vec2<f32> = u_xlat46;
        let x_1577 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1580 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1574.x, x_1574.y, x_1574.x, x_1574.y) * vec4<f32>(x_1577.x, x_1577.y, x_1577.x, x_1577.y)) + vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1580.y));
        let x_1584 : vec2<f32> = u_xlat46;
        let x_1586 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat11;
        u_xlat29 = ((x_1584 * vec2<f32>(x_1586.x, x_1586.y)) + vec2<f32>(x_1589.w, x_1589.y));
        let x_1593 : f32 = u_xlat11.y;
        u_xlat8.w = x_1593;
        let x_1596 : vec2<f32> = u_xlat46;
        let x_1598 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1601 : vec4<f32> = u_xlat8;
        u_xlat17 = ((x_1596 * vec2<f32>(x_1598.x, x_1598.y)) + vec2<f32>(x_1601.x, x_1601.w));
        let x_1604 : vec4<f32> = u_xlat11;
        let x_1605 : vec3<f32> = vec3<f32>(x_1604.x, x_1604.z, x_1604.w);
        let x_1606 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1605.x, x_1606.y, x_1605.y, x_1605.z);
        let x_1608 : vec2<f32> = u_xlat46;
        let x_1611 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1614 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1608.x, x_1608.y, x_1608.x, x_1608.y) * vec4<f32>(x_1611.x, x_1611.y, x_1611.x, x_1611.y)) + vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1614.y));
        let x_1618 : vec2<f32> = u_xlat46;
        let x_1620 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1623 : vec4<f32> = u_xlat10;
        u_xlat52 = ((x_1618 * vec2<f32>(x_1620.x, x_1620.y)) + vec2<f32>(x_1623.w, x_1623.y));
        let x_1627 : f32 = u_xlat8.x;
        u_xlat10.x = x_1627;
        let x_1629 : vec2<f32> = u_xlat46;
        let x_1631 : vec4<f32> = x_781.x_MainLightShadowmapSize;
        let x_1634 : vec4<f32> = u_xlat10;
        u_xlat46 = ((x_1629 * vec2<f32>(x_1631.x, x_1631.y)) + vec2<f32>(x_1634.x, x_1634.y));
        let x_1638 : vec4<f32> = u_xlat7;
        let x_1640 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1638.x, x_1638.x, x_1638.x, x_1638.x) * x_1640);
        let x_1643 : vec4<f32> = u_xlat7;
        let x_1645 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1643.y, x_1643.y, x_1643.y, x_1643.y) * x_1645);
        let x_1648 : vec4<f32> = u_xlat7;
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1648.z, x_1648.z, x_1648.z, x_1648.z) * x_1650);
        let x_1652 : vec4<f32> = u_xlat7;
        let x_1654 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1652.w, x_1652.w, x_1652.w, x_1652.w) * x_1654);
        let x_1657 : vec4<f32> = u_xlat12;
        let x_1658 : vec2<f32> = vec2<f32>(x_1657.x, x_1657.y);
        let x_1660 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec13;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1667.xy, x_1667.z);
        u_xlat68 = x_1669;
        let x_1671 : vec4<f32> = u_xlat12;
        let x_1672 : vec2<f32> = vec2<f32>(x_1671.z, x_1671.w);
        let x_1674 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1672.x, x_1672.y, x_1674);
        let x_1682 : vec3<f32> = txVec14;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1682.xy, x_1682.z);
        u_xlat69 = x_1684;
        let x_1685 : f32 = u_xlat69;
        let x_1687 : f32 = u_xlat18.y;
        u_xlat69 = (x_1685 * x_1687);
        let x_1690 : f32 = u_xlat18.x;
        let x_1691 : f32 = u_xlat68;
        let x_1693 : f32 = u_xlat69;
        u_xlat68 = ((x_1690 * x_1691) + x_1693);
        let x_1696 : vec4<f32> = u_xlat13;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.x, x_1696.y);
        let x_1699 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec15;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1706.xy, x_1706.z);
        u_xlat69 = x_1708;
        let x_1710 : f32 = u_xlat18.z;
        let x_1711 : f32 = u_xlat69;
        let x_1713 : f32 = u_xlat68;
        u_xlat68 = ((x_1710 * x_1711) + x_1713);
        let x_1716 : vec4<f32> = u_xlat15;
        let x_1717 : vec2<f32> = vec2<f32>(x_1716.x, x_1716.y);
        let x_1719 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec16;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1726.xy, x_1726.z);
        u_xlat69 = x_1728;
        let x_1730 : f32 = u_xlat18.w;
        let x_1731 : f32 = u_xlat69;
        let x_1733 : f32 = u_xlat68;
        u_xlat68 = ((x_1730 * x_1731) + x_1733);
        let x_1736 : vec4<f32> = u_xlat14;
        let x_1737 : vec2<f32> = vec2<f32>(x_1736.x, x_1736.y);
        let x_1739 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1737.x, x_1737.y, x_1739);
        let x_1746 : vec3<f32> = txVec17;
        let x_1748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1746.xy, x_1746.z);
        u_xlat69 = x_1748;
        let x_1750 : f32 = u_xlat19.x;
        let x_1751 : f32 = u_xlat69;
        let x_1753 : f32 = u_xlat68;
        u_xlat68 = ((x_1750 * x_1751) + x_1753);
        let x_1756 : vec4<f32> = u_xlat14;
        let x_1757 : vec2<f32> = vec2<f32>(x_1756.z, x_1756.w);
        let x_1759 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1757.x, x_1757.y, x_1759);
        let x_1766 : vec3<f32> = txVec18;
        let x_1768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1766.xy, x_1766.z);
        u_xlat69 = x_1768;
        let x_1770 : f32 = u_xlat19.y;
        let x_1771 : f32 = u_xlat69;
        let x_1773 : f32 = u_xlat68;
        u_xlat68 = ((x_1770 * x_1771) + x_1773);
        let x_1776 : vec2<f32> = u_xlat55;
        let x_1778 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1776.x, x_1776.y, x_1778);
        let x_1785 : vec3<f32> = txVec19;
        let x_1787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1785.xy, x_1785.z);
        u_xlat69 = x_1787;
        let x_1789 : f32 = u_xlat19.z;
        let x_1790 : f32 = u_xlat69;
        let x_1792 : f32 = u_xlat68;
        u_xlat68 = ((x_1789 * x_1790) + x_1792);
        let x_1795 : vec4<f32> = u_xlat15;
        let x_1796 : vec2<f32> = vec2<f32>(x_1795.z, x_1795.w);
        let x_1798 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1796.x, x_1796.y, x_1798);
        let x_1805 : vec3<f32> = txVec20;
        let x_1807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1805.xy, x_1805.z);
        u_xlat69 = x_1807;
        let x_1809 : f32 = u_xlat19.w;
        let x_1810 : f32 = u_xlat69;
        let x_1812 : f32 = u_xlat68;
        u_xlat68 = ((x_1809 * x_1810) + x_1812);
        let x_1815 : vec4<f32> = u_xlat16;
        let x_1816 : vec2<f32> = vec2<f32>(x_1815.x, x_1815.y);
        let x_1818 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec21;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1825.xy, x_1825.z);
        u_xlat69 = x_1827;
        let x_1829 : f32 = u_xlat20.x;
        let x_1830 : f32 = u_xlat69;
        let x_1832 : f32 = u_xlat68;
        u_xlat68 = ((x_1829 * x_1830) + x_1832);
        let x_1835 : vec4<f32> = u_xlat16;
        let x_1836 : vec2<f32> = vec2<f32>(x_1835.z, x_1835.w);
        let x_1838 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1836.x, x_1836.y, x_1838);
        let x_1845 : vec3<f32> = txVec22;
        let x_1847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1845.xy, x_1845.z);
        u_xlat69 = x_1847;
        let x_1849 : f32 = u_xlat20.y;
        let x_1850 : f32 = u_xlat69;
        let x_1852 : f32 = u_xlat68;
        u_xlat68 = ((x_1849 * x_1850) + x_1852);
        let x_1855 : vec2<f32> = u_xlat29;
        let x_1857 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec23;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1864.xy, x_1864.z);
        u_xlat69 = x_1866;
        let x_1868 : f32 = u_xlat20.z;
        let x_1869 : f32 = u_xlat69;
        let x_1871 : f32 = u_xlat68;
        u_xlat68 = ((x_1868 * x_1869) + x_1871);
        let x_1874 : vec2<f32> = u_xlat17;
        let x_1876 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1874.x, x_1874.y, x_1876);
        let x_1883 : vec3<f32> = txVec24;
        let x_1885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1883.xy, x_1883.z);
        u_xlat69 = x_1885;
        let x_1887 : f32 = u_xlat20.w;
        let x_1888 : f32 = u_xlat69;
        let x_1890 : f32 = u_xlat68;
        u_xlat68 = ((x_1887 * x_1888) + x_1890);
        let x_1893 : vec4<f32> = u_xlat11;
        let x_1894 : vec2<f32> = vec2<f32>(x_1893.x, x_1893.y);
        let x_1896 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1894.x, x_1894.y, x_1896);
        let x_1903 : vec3<f32> = txVec25;
        let x_1905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1903.xy, x_1903.z);
        u_xlat69 = x_1905;
        let x_1907 : f32 = u_xlat7.x;
        let x_1908 : f32 = u_xlat69;
        let x_1910 : f32 = u_xlat68;
        u_xlat68 = ((x_1907 * x_1908) + x_1910);
        let x_1913 : vec4<f32> = u_xlat11;
        let x_1914 : vec2<f32> = vec2<f32>(x_1913.z, x_1913.w);
        let x_1916 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1914.x, x_1914.y, x_1916);
        let x_1923 : vec3<f32> = txVec26;
        let x_1925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1923.xy, x_1923.z);
        u_xlat69 = x_1925;
        let x_1927 : f32 = u_xlat7.y;
        let x_1928 : f32 = u_xlat69;
        let x_1930 : f32 = u_xlat68;
        u_xlat68 = ((x_1927 * x_1928) + x_1930);
        let x_1933 : vec2<f32> = u_xlat52;
        let x_1935 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec27;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1942.xy, x_1942.z);
        u_xlat69 = x_1944;
        let x_1946 : f32 = u_xlat7.z;
        let x_1947 : f32 = u_xlat69;
        let x_1949 : f32 = u_xlat68;
        u_xlat68 = ((x_1946 * x_1947) + x_1949);
        let x_1952 : vec2<f32> = u_xlat46;
        let x_1954 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
        let x_1961 : vec3<f32> = txVec28;
        let x_1963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1961.xy, x_1961.z);
        u_xlat46.x = x_1963;
        let x_1966 : f32 = u_xlat7.w;
        let x_1968 : f32 = u_xlat46.x;
        let x_1970 : f32 = u_xlat68;
        u_xlat4.x = ((x_1966 * x_1968) + x_1970);
      }
    }
  } else {
    let x_1975 : vec4<f32> = vs_TEXCOORD8;
    let x_1976 : vec2<f32> = vec2<f32>(x_1975.x, x_1975.y);
    let x_1978 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1976.x, x_1976.y, x_1978);
    let x_1985 : vec3<f32> = txVec29;
    let x_1987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1985.xy, x_1985.z);
    u_xlat4.x = x_1987;
  }
  let x_1990 : f32 = x_781.x_MainLightShadowParams.x;
  u_xlat46.x = (-(x_1990) + 1.0f);
  let x_1995 : f32 = u_xlat4.x;
  let x_1997 : f32 = x_781.x_MainLightShadowParams.x;
  let x_2000 : f32 = u_xlat46.x;
  u_xlat4.x = ((x_1995 * x_1997) + x_2000);
  let x_2004 : f32 = vs_TEXCOORD8.z;
  u_xlatb46.x = (0.0f >= x_2004);
  let x_2009 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (x_2009 >= 1.0f);
  let x_2011 : bool = u_xlatb67;
  let x_2013 : bool = u_xlatb46.x;
  u_xlatb46.x = (x_2011 | x_2013);
  let x_2017 : bool = u_xlatb46.x;
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
  u_xlat46.x = dot(vec3<f32>(x_2033.x, x_2033.y, x_2033.z), vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
  let x_2040 : f32 = u_xlat46.x;
  let x_2042 : f32 = x_781.x_MainLightShadowParams.z;
  let x_2045 : f32 = x_781.x_MainLightShadowParams.w;
  u_xlat46.x = ((x_2040 * x_2042) + x_2045);
  let x_2049 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2049, 0.0f, 1.0f);
  let x_2053 : f32 = u_xlat4.x;
  u_xlat67 = (-(x_2053) + 1.0f);
  let x_2057 : f32 = u_xlat46.x;
  let x_2058 : f32 = u_xlat67;
  let x_2061 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2057 * x_2058) + x_2061);
  let x_2070 : f32 = x_2068.x_MainLightCookieTextureFormat;
  u_xlatb46.x = !((x_2070 == -1.0f));
  let x_2074 : bool = u_xlatb46.x;
  if (x_2074) {
    let x_2077 : vec3<f32> = vs_TEXCOORD7;
    let x_2080 : vec4<f32> = x_2068.x_MainLightWorldToLight[1i];
    u_xlat46 = (vec2<f32>(x_2077.y, x_2077.y) * vec2<f32>(x_2080.x, x_2080.y));
    let x_2084 : vec4<f32> = x_2068.x_MainLightWorldToLight[0i];
    let x_2086 : vec3<f32> = vs_TEXCOORD7;
    let x_2089 : vec2<f32> = u_xlat46;
    u_xlat46 = ((vec2<f32>(x_2084.x, x_2084.y) * vec2<f32>(x_2086.x, x_2086.x)) + x_2089);
    let x_2092 : vec4<f32> = x_2068.x_MainLightWorldToLight[2i];
    let x_2094 : vec3<f32> = vs_TEXCOORD7;
    let x_2097 : vec2<f32> = u_xlat46;
    u_xlat46 = ((vec2<f32>(x_2092.x, x_2092.y) * vec2<f32>(x_2094.z, x_2094.z)) + x_2097);
    let x_2099 : vec2<f32> = u_xlat46;
    let x_2102 : vec4<f32> = x_2068.x_MainLightWorldToLight[3i];
    u_xlat46 = (x_2099 + vec2<f32>(x_2102.x, x_2102.y));
    let x_2105 : vec2<f32> = u_xlat46;
    u_xlat46 = ((x_2105 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2113 : vec2<f32> = u_xlat46;
    let x_2115 : f32 = x_126.x_GlobalMipBias.x;
    let x_2116 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2113, x_2115);
    u_xlat7 = x_2116;
    let x_2118 : f32 = x_2068.x_MainLightCookieTextureFormat;
    let x_2120 : f32 = x_2068.x_MainLightCookieTextureFormat;
    let x_2122 : f32 = x_2068.x_MainLightCookieTextureFormat;
    let x_2124 : f32 = x_2068.x_MainLightCookieTextureFormat;
    let x_2125 : vec4<f32> = vec4<f32>(x_2118, x_2120, x_2122, x_2124);
    let x_2132 : vec4<bool> = (vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2125.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb46 = vec2<bool>(x_2132.x, x_2132.y);
    let x_2135 : bool = u_xlatb46.y;
    if (x_2135) {
      let x_2140 : f32 = u_xlat7.w;
      x_2136 = x_2140;
    } else {
      let x_2143 : f32 = u_xlat7.x;
      x_2136 = x_2143;
    }
    let x_2144 : f32 = x_2136;
    u_xlat67 = x_2144;
    let x_2146 : bool = u_xlatb46.x;
    if (x_2146) {
      let x_2150 : vec4<f32> = u_xlat7;
      x_2147 = vec3<f32>(x_2150.x, x_2150.y, x_2150.z);
    } else {
      let x_2153 : f32 = u_xlat67;
      x_2147 = vec3<f32>(x_2153, x_2153, x_2153);
    }
    let x_2155 : vec3<f32> = x_2147;
    let x_2156 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2162 : vec4<f32> = u_xlat7;
  let x_2165 : vec4<f32> = x_126.x_MainLightColor;
  let x_2167 : vec3<f32> = (vec3<f32>(x_2162.x, x_2162.y, x_2162.z) * vec3<f32>(x_2165.x, x_2165.y, x_2165.z));
  let x_2168 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
  let x_2170 : f32 = u_xlat25;
  let x_2172 : vec4<f32> = u_xlat7;
  let x_2174 : vec3<f32> = (vec3<f32>(x_2170, x_2170, x_2170) * vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
  let x_2175 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
  let x_2177 : vec3<f32> = u_xlat2;
  let x_2179 : vec4<f32> = u_xlat1;
  u_xlat46.x = dot(-(x_2177), vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
  let x_2184 : f32 = u_xlat46.x;
  let x_2186 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2184 + x_2186);
  let x_2189 : vec4<f32> = u_xlat1;
  let x_2191 : vec2<f32> = u_xlat46;
  let x_2195 : vec3<f32> = u_xlat2;
  let x_2197 : vec3<f32> = ((vec3<f32>(x_2189.x, x_2189.y, x_2189.z) * -(vec3<f32>(x_2191.x, x_2191.x, x_2191.x))) + -(x_2195));
  let x_2198 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2197.x, x_2197.y, x_2197.z, x_2198.w);
  let x_2200 : vec4<f32> = u_xlat1;
  let x_2202 : vec3<f32> = u_xlat2;
  u_xlat46.x = dot(vec3<f32>(x_2200.x, x_2200.y, x_2200.z), x_2202);
  let x_2206 : f32 = u_xlat46.x;
  u_xlat46.x = clamp(x_2206, 0.0f, 1.0f);
  let x_2210 : f32 = u_xlat46.x;
  u_xlat46.x = (-(x_2210) + 1.0f);
  let x_2215 : f32 = u_xlat46.x;
  let x_2217 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2215 * x_2217);
  let x_2221 : f32 = u_xlat46.x;
  let x_2223 : f32 = u_xlat46.x;
  u_xlat46.x = (x_2221 * x_2223);
  let x_2227 : f32 = u_xlat0.x;
  u_xlat67 = ((-(x_2227) * 0.699999988f) + 1.700000048f);
  let x_2234 : f32 = u_xlat0.x;
  let x_2235 : f32 = u_xlat67;
  u_xlat0.x = (x_2234 * x_2235);
  let x_2239 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2239 * 6.0f);
  let x_2251 : vec4<f32> = u_xlat8;
  let x_2254 : f32 = u_xlat0.x;
  let x_2255 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2251.x, x_2251.y, x_2251.z), x_2254);
  u_xlat8 = x_2255;
  let x_2257 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2257 + -1.0f);
  let x_2265 : f32 = x_2263.unity_SpecCube0_HDR.w;
  let x_2267 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2265 * x_2267) + 1.0f);
  let x_2272 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2272, 0.0f);
  let x_2276 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2276);
  let x_2280 : f32 = u_xlat0.x;
  let x_2282 : f32 = x_2263.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2280 * x_2282);
  let x_2286 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2286);
  let x_2290 : f32 = u_xlat0.x;
  let x_2292 : f32 = x_2263.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2290 * x_2292);
  let x_2295 : vec4<f32> = u_xlat8;
  let x_2297 : vec3<f32> = u_xlat0;
  let x_2299 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.y, x_2295.z) * vec3<f32>(x_2297.x, x_2297.x, x_2297.x));
  let x_2300 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2299.x, x_2299.y, x_2299.z, x_2300.w);
  let x_2302 : f32 = u_xlat42;
  let x_2304 : f32 = u_xlat42;
  let x_2308 : vec2<f32> = ((vec2<f32>(x_2302, x_2302) * vec2<f32>(x_2304, x_2304)) + vec2<f32>(-1.0f, 1.0f));
  let x_2309 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2308.x, x_2309.y, x_2308.y);
  let x_2312 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2312);
  let x_2314 : vec4<f32> = u_xlat5;
  let x_2317 : f32 = u_xlat65;
  let x_2319 : vec3<f32> = (-(vec3<f32>(x_2314.x, x_2314.y, x_2314.z)) + vec3<f32>(x_2317, x_2317, x_2317));
  let x_2320 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2319.x, x_2319.y, x_2319.z, x_2320.w);
  let x_2322 : vec2<f32> = u_xlat46;
  let x_2324 : vec4<f32> = u_xlat9;
  let x_2327 : vec4<f32> = u_xlat5;
  let x_2329 : vec3<f32> = ((vec3<f32>(x_2322.x, x_2322.x, x_2322.x) * vec3<f32>(x_2324.x, x_2324.y, x_2324.z)) + vec3<f32>(x_2327.x, x_2327.y, x_2327.z));
  let x_2330 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
  let x_2332 : f32 = u_xlat42;
  let x_2334 : vec4<f32> = u_xlat9;
  let x_2336 : vec3<f32> = (vec3<f32>(x_2332, x_2332, x_2332) * vec3<f32>(x_2334.x, x_2334.y, x_2334.z));
  let x_2337 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2336.x, x_2336.y, x_2336.z, x_2337.w);
  let x_2339 : vec4<f32> = u_xlat8;
  let x_2341 : vec4<f32> = u_xlat9;
  let x_2343 : vec3<f32> = (vec3<f32>(x_2339.x, x_2339.y, x_2339.z) * vec3<f32>(x_2341.x, x_2341.y, x_2341.z));
  let x_2344 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
  let x_2346 : vec4<f32> = u_xlat3;
  let x_2348 : vec4<f32> = u_xlat6;
  let x_2351 : vec4<f32> = u_xlat8;
  let x_2353 : vec3<f32> = ((vec3<f32>(x_2346.x, x_2346.y, x_2346.z) * vec3<f32>(x_2348.x, x_2348.y, x_2348.z)) + vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
  let x_2354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2353.x, x_2353.y, x_2353.z, x_2354.w);
  let x_2357 : f32 = u_xlat4.x;
  let x_2359 : f32 = x_2263.unity_LightData.z;
  u_xlat42 = (x_2357 * x_2359);
  let x_2361 : vec4<f32> = u_xlat1;
  let x_2364 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat65 = dot(vec3<f32>(x_2361.x, x_2361.y, x_2361.z), vec3<f32>(x_2364.x, x_2364.y, x_2364.z));
  let x_2367 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2367, 0.0f, 1.0f);
  let x_2369 : f32 = u_xlat42;
  let x_2370 : f32 = u_xlat65;
  u_xlat42 = (x_2369 * x_2370);
  let x_2372 : f32 = u_xlat42;
  let x_2374 : vec4<f32> = u_xlat7;
  let x_2376 : vec3<f32> = (vec3<f32>(x_2372, x_2372, x_2372) * vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
  let x_2377 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2376.x, x_2377.y, x_2376.y, x_2376.z);
  let x_2379 : vec3<f32> = u_xlat2;
  let x_2381 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2383 : vec3<f32> = (x_2379 + vec3<f32>(x_2381.x, x_2381.y, x_2381.z));
  let x_2384 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
  let x_2386 : vec4<f32> = u_xlat7;
  let x_2388 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2386.x, x_2386.y, x_2386.z), vec3<f32>(x_2388.x, x_2388.y, x_2388.z));
  let x_2391 : f32 = u_xlat42;
  u_xlat42 = max(x_2391, 1.17549435e-37f);
  let x_2394 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2394);
  let x_2396 : f32 = u_xlat42;
  let x_2398 : vec4<f32> = u_xlat7;
  let x_2400 : vec3<f32> = (vec3<f32>(x_2396, x_2396, x_2396) * vec3<f32>(x_2398.x, x_2398.y, x_2398.z));
  let x_2401 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
  let x_2403 : vec4<f32> = u_xlat1;
  let x_2405 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_2403.x, x_2403.y, x_2403.z), vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
  let x_2408 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2408, 0.0f, 1.0f);
  let x_2411 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2413 : vec4<f32> = u_xlat7;
  u_xlat65 = dot(vec3<f32>(x_2411.x, x_2411.y, x_2411.z), vec3<f32>(x_2413.x, x_2413.y, x_2413.z));
  let x_2416 : f32 = u_xlat65;
  u_xlat65 = clamp(x_2416, 0.0f, 1.0f);
  let x_2418 : f32 = u_xlat42;
  let x_2419 : f32 = u_xlat42;
  u_xlat42 = (x_2418 * x_2419);
  let x_2421 : f32 = u_xlat42;
  let x_2423 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2421 * x_2423) + 1.000010014f);
  let x_2427 : f32 = u_xlat65;
  let x_2428 : f32 = u_xlat65;
  u_xlat65 = (x_2427 * x_2428);
  let x_2430 : f32 = u_xlat42;
  let x_2431 : f32 = u_xlat42;
  u_xlat42 = (x_2430 * x_2431);
  let x_2433 : f32 = u_xlat65;
  u_xlat65 = max(x_2433, 0.100000001f);
  let x_2436 : f32 = u_xlat42;
  let x_2437 : f32 = u_xlat65;
  u_xlat42 = (x_2436 * x_2437);
  let x_2439 : f32 = u_xlat66;
  let x_2440 : f32 = u_xlat42;
  u_xlat42 = (x_2439 * x_2440);
  let x_2442 : f32 = u_xlat64;
  let x_2443 : f32 = u_xlat42;
  u_xlat42 = (x_2442 / x_2443);
  let x_2445 : vec4<f32> = u_xlat5;
  let x_2447 : f32 = u_xlat42;
  let x_2450 : vec4<f32> = u_xlat6;
  let x_2452 : vec3<f32> = ((vec3<f32>(x_2445.x, x_2445.y, x_2445.z) * vec3<f32>(x_2447, x_2447, x_2447)) + vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2453 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  let x_2455 : vec4<f32> = u_xlat4;
  let x_2457 : vec4<f32> = u_xlat7;
  let x_2459 : vec3<f32> = (vec3<f32>(x_2455.x, x_2455.z, x_2455.w) * vec3<f32>(x_2457.x, x_2457.y, x_2457.z));
  let x_2460 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2459.x, x_2460.y, x_2459.y, x_2459.z);
  let x_2463 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2465 : f32 = x_2263.unity_LightData.y;
  u_xlat42 = min(x_2463, x_2465);
  let x_2469 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2469));
  let x_2474 : f32 = x_2068.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2476 : f32 = x_2068.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2478 : f32 = x_2068.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2480 : f32 = x_2068.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2481 : vec4<f32> = vec4<f32>(x_2474, x_2476, x_2478, x_2480);
  let x_2488 : vec4<bool> = (vec4<f32>(x_2481.x, x_2481.y, x_2481.z, x_2481.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2488.x, x_2488.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2499 : u32 = u_xlatu_loop_1;
    let x_2500 : u32 = u_xlatu42;
    if ((x_2499 < x_2500)) {
    } else {
      break;
    }
    let x_2503 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2503 >> 2u);
    let x_2507 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2507 & 3u));
    let x_2510 : u32 = u_xlatu68;
    let x_2513 : vec4<f32> = x_2263.unity_LightIndices[bitcast<i32>(x_2510)];
    let x_2523 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2528 : vec4<u32> = indexable[x_2523];
    u_xlat68 = dot(x_2513, bitcast<vec4<f32>>(x_2528));
    let x_2531 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2531));
    let x_2534 : vec3<f32> = vs_TEXCOORD7;
    let x_2546 : u32 = u_xlatu68;
    let x_2549 : vec4<f32> = x_2545.x_AdditionalLightsPosition[bitcast<i32>(x_2546)];
    let x_2552 : u32 = u_xlatu68;
    let x_2555 : vec4<f32> = x_2545.x_AdditionalLightsPosition[bitcast<i32>(x_2552)];
    let x_2557 : vec3<f32> = ((-(x_2534) * vec3<f32>(x_2549.w, x_2549.w, x_2549.w)) + vec3<f32>(x_2555.x, x_2555.y, x_2555.z));
    let x_2558 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2557.x, x_2557.y, x_2557.z, x_2558.w);
    let x_2560 : vec4<f32> = u_xlat9;
    let x_2562 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2560.x, x_2560.y, x_2560.z), vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
    let x_2565 : f32 = u_xlat69;
    u_xlat69 = max(x_2565, 6.10351562e-05f);
    let x_2567 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2567);
    let x_2570 : vec2<f32> = u_xlat49;
    let x_2572 : vec4<f32> = u_xlat9;
    let x_2574 : vec3<f32> = (vec3<f32>(x_2570.x, x_2570.x, x_2570.x) * vec3<f32>(x_2572.x, x_2572.y, x_2572.z));
    let x_2575 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2574.x, x_2574.y, x_2574.z, x_2575.w);
    let x_2578 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2578);
    let x_2580 : f32 = u_xlat69;
    let x_2581 : u32 = u_xlatu68;
    let x_2584 : f32 = x_2545.x_AdditionalLightsAttenuation[bitcast<i32>(x_2581)].x;
    u_xlat69 = (x_2580 * x_2584);
    let x_2586 : f32 = u_xlat69;
    let x_2588 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2586) * x_2588) + 1.0f);
    let x_2591 : f32 = u_xlat69;
    u_xlat69 = max(x_2591, 0.0f);
    let x_2593 : f32 = u_xlat69;
    let x_2594 : f32 = u_xlat69;
    u_xlat69 = (x_2593 * x_2594);
    let x_2596 : f32 = u_xlat69;
    let x_2597 : f32 = u_xlat70;
    u_xlat69 = (x_2596 * x_2597);
    let x_2599 : u32 = u_xlatu68;
    let x_2602 : vec4<f32> = x_2545.x_AdditionalLightsSpotDir[bitcast<i32>(x_2599)];
    let x_2604 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2602.x, x_2602.y, x_2602.z), vec3<f32>(x_2604.x, x_2604.y, x_2604.z));
    let x_2607 : f32 = u_xlat70;
    let x_2608 : u32 = u_xlatu68;
    let x_2611 : f32 = x_2545.x_AdditionalLightsAttenuation[bitcast<i32>(x_2608)].z;
    let x_2613 : u32 = u_xlatu68;
    let x_2616 : f32 = x_2545.x_AdditionalLightsAttenuation[bitcast<i32>(x_2613)].w;
    u_xlat70 = ((x_2607 * x_2611) + x_2616);
    let x_2618 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2618, 0.0f, 1.0f);
    let x_2620 : f32 = u_xlat70;
    let x_2621 : f32 = u_xlat70;
    u_xlat70 = (x_2620 * x_2621);
    let x_2623 : f32 = u_xlat69;
    let x_2624 : f32 = u_xlat70;
    u_xlat69 = (x_2623 * x_2624);
    let x_2627 : u32 = u_xlatu68;
    u_xlatu70 = (x_2627 >> 5u);
    let x_2630 : u32 = u_xlatu68;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2630) & 31i)));
    let x_2635 : i32 = u_xlati71;
    let x_2637 : u32 = u_xlatu70;
    let x_2640 : f32 = x_2068.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2637)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2635) & bitcast<u32>(x_2640)));
    let x_2644 : i32 = u_xlati70;
    if ((x_2644 != 0i)) {
      let x_2654 : u32 = u_xlatu68;
      let x_2657 : f32 = x_2653.x_AdditionalLightsLightTypes[bitcast<i32>(x_2654)].el;
      u_xlati70 = i32(x_2657);
      let x_2659 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2659 != 0i));
      let x_2663 : u32 = u_xlatu68;
      u_xlati72 = (bitcast<i32>(x_2663) << bitcast<u32>(2i));
      let x_2666 : i32 = u_xlati71;
      if ((x_2666 != 0i)) {
        let x_2670 : vec3<f32> = vs_TEXCOORD7;
        let x_2672 : i32 = u_xlati72;
        let x_2675 : i32 = u_xlati72;
        let x_2679 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[((x_2672 + 1i) / 4i)][((x_2675 + 1i) % 4i)];
        let x_2681 : vec3<f32> = (vec3<f32>(x_2670.y, x_2670.y, x_2670.y) * vec3<f32>(x_2679.x, x_2679.y, x_2679.w));
        let x_2682 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2682.w);
        let x_2684 : i32 = u_xlati72;
        let x_2686 : i32 = u_xlati72;
        let x_2689 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[(x_2684 / 4i)][(x_2686 % 4i)];
        let x_2691 : vec3<f32> = vs_TEXCOORD7;
        let x_2694 : vec4<f32> = u_xlat11;
        let x_2696 : vec3<f32> = ((vec3<f32>(x_2689.x, x_2689.y, x_2689.w) * vec3<f32>(x_2691.x, x_2691.x, x_2691.x)) + vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
        let x_2697 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
        let x_2699 : i32 = u_xlati72;
        let x_2702 : i32 = u_xlati72;
        let x_2706 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[((x_2699 + 2i) / 4i)][((x_2702 + 2i) % 4i)];
        let x_2708 : vec3<f32> = vs_TEXCOORD7;
        let x_2711 : vec4<f32> = u_xlat11;
        let x_2713 : vec3<f32> = ((vec3<f32>(x_2706.x, x_2706.y, x_2706.w) * vec3<f32>(x_2708.z, x_2708.z, x_2708.z)) + vec3<f32>(x_2711.x, x_2711.y, x_2711.z));
        let x_2714 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2713.x, x_2713.y, x_2713.z, x_2714.w);
        let x_2716 : vec4<f32> = u_xlat11;
        let x_2718 : i32 = u_xlati72;
        let x_2721 : i32 = u_xlati72;
        let x_2725 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[((x_2718 + 3i) / 4i)][((x_2721 + 3i) % 4i)];
        let x_2727 : vec3<f32> = (vec3<f32>(x_2716.x, x_2716.y, x_2716.z) + vec3<f32>(x_2725.x, x_2725.y, x_2725.w));
        let x_2728 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2728.w);
        let x_2730 : vec4<f32> = u_xlat11;
        let x_2732 : vec4<f32> = u_xlat11;
        let x_2734 : vec2<f32> = (vec2<f32>(x_2730.x, x_2730.y) / vec2<f32>(x_2732.z, x_2732.z));
        let x_2735 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2734.x, x_2734.y, x_2735.z, x_2735.w);
        let x_2737 : vec4<f32> = u_xlat11;
        let x_2740 : vec2<f32> = ((vec2<f32>(x_2737.x, x_2737.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2741 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2740.x, x_2740.y, x_2741.z, x_2741.w);
        let x_2743 : vec4<f32> = u_xlat11;
        let x_2747 : vec2<f32> = clamp(vec2<f32>(x_2743.x, x_2743.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2748 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2747.x, x_2747.y, x_2748.z, x_2748.w);
        let x_2750 : u32 = u_xlatu68;
        let x_2753 : vec4<f32> = x_2653.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2750)];
        let x_2755 : vec4<f32> = u_xlat11;
        let x_2758 : u32 = u_xlatu68;
        let x_2761 : vec4<f32> = x_2653.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2758)];
        let x_2763 : vec2<f32> = ((vec2<f32>(x_2753.x, x_2753.y) * vec2<f32>(x_2755.x, x_2755.y)) + vec2<f32>(x_2761.z, x_2761.w));
        let x_2764 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2763.x, x_2763.y, x_2764.z, x_2764.w);
      } else {
        let x_2768 : i32 = u_xlati70;
        u_xlatb70 = (x_2768 == 1i);
        let x_2770 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2770);
        let x_2772 : i32 = u_xlati70;
        if ((x_2772 != 0i)) {
          let x_2777 : vec3<f32> = vs_TEXCOORD7;
          let x_2779 : i32 = u_xlati72;
          let x_2782 : i32 = u_xlati72;
          let x_2786 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[((x_2779 + 1i) / 4i)][((x_2782 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2777.y, x_2777.y) * vec2<f32>(x_2786.x, x_2786.y));
          let x_2789 : i32 = u_xlati72;
          let x_2791 : i32 = u_xlati72;
          let x_2794 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[(x_2789 / 4i)][(x_2791 % 4i)];
          let x_2796 : vec3<f32> = vs_TEXCOORD7;
          let x_2799 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2794.x, x_2794.y) * vec2<f32>(x_2796.x, x_2796.x)) + x_2799);
          let x_2801 : i32 = u_xlati72;
          let x_2804 : i32 = u_xlati72;
          let x_2808 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[((x_2801 + 2i) / 4i)][((x_2804 + 2i) % 4i)];
          let x_2810 : vec3<f32> = vs_TEXCOORD7;
          let x_2813 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2808.x, x_2808.y) * vec2<f32>(x_2810.z, x_2810.z)) + x_2813);
          let x_2815 : vec2<f32> = u_xlat53;
          let x_2816 : i32 = u_xlati72;
          let x_2819 : i32 = u_xlati72;
          let x_2823 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[((x_2816 + 3i) / 4i)][((x_2819 + 3i) % 4i)];
          u_xlat53 = (x_2815 + vec2<f32>(x_2823.x, x_2823.y));
          let x_2826 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2826 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2829 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2829);
          let x_2831 : u32 = u_xlatu68;
          let x_2834 : vec4<f32> = x_2653.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2831)];
          let x_2836 : vec2<f32> = u_xlat53;
          let x_2838 : u32 = u_xlatu68;
          let x_2841 : vec4<f32> = x_2653.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2838)];
          let x_2843 : vec2<f32> = ((vec2<f32>(x_2834.x, x_2834.y) * x_2836) + vec2<f32>(x_2841.z, x_2841.w));
          let x_2844 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2843.x, x_2843.y, x_2844.z, x_2844.w);
        } else {
          let x_2847 : vec3<f32> = vs_TEXCOORD7;
          let x_2849 : i32 = u_xlati72;
          let x_2852 : i32 = u_xlati72;
          let x_2856 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[((x_2849 + 1i) / 4i)][((x_2852 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2847.y, x_2847.y, x_2847.y, x_2847.y) * x_2856);
          let x_2858 : i32 = u_xlati72;
          let x_2860 : i32 = u_xlati72;
          let x_2863 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[(x_2858 / 4i)][(x_2860 % 4i)];
          let x_2864 : vec3<f32> = vs_TEXCOORD7;
          let x_2867 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2863 * vec4<f32>(x_2864.x, x_2864.x, x_2864.x, x_2864.x)) + x_2867);
          let x_2869 : i32 = u_xlati72;
          let x_2872 : i32 = u_xlati72;
          let x_2876 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[((x_2869 + 2i) / 4i)][((x_2872 + 2i) % 4i)];
          let x_2877 : vec3<f32> = vs_TEXCOORD7;
          let x_2880 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2876 * vec4<f32>(x_2877.z, x_2877.z, x_2877.z, x_2877.z)) + x_2880);
          let x_2882 : vec4<f32> = u_xlat12;
          let x_2883 : i32 = u_xlati72;
          let x_2886 : i32 = u_xlati72;
          let x_2890 : vec4<f32> = x_2653.x_AdditionalLightsWorldToLights[((x_2883 + 3i) / 4i)][((x_2886 + 3i) % 4i)];
          u_xlat12 = (x_2882 + x_2890);
          let x_2892 : vec4<f32> = u_xlat12;
          let x_2894 : vec4<f32> = u_xlat12;
          let x_2896 : vec3<f32> = (vec3<f32>(x_2892.x, x_2892.y, x_2892.z) / vec3<f32>(x_2894.w, x_2894.w, x_2894.w));
          let x_2897 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2896.x, x_2896.y, x_2896.z, x_2897.w);
          let x_2899 : vec4<f32> = u_xlat12;
          let x_2901 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2899.x, x_2899.y, x_2899.z), vec3<f32>(x_2901.x, x_2901.y, x_2901.z));
          let x_2904 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2904);
          let x_2906 : f32 = u_xlat70;
          let x_2908 : vec4<f32> = u_xlat12;
          let x_2910 : vec3<f32> = (vec3<f32>(x_2906, x_2906, x_2906) * vec3<f32>(x_2908.x, x_2908.y, x_2908.z));
          let x_2911 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2911.w);
          let x_2913 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2913.x, x_2913.y, x_2913.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2918 : f32 = u_xlat70;
          u_xlat70 = max(x_2918, 0.000001f);
          let x_2921 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2921);
          let x_2923 : f32 = u_xlat70;
          let x_2925 : vec4<f32> = u_xlat12;
          let x_2927 : vec3<f32> = (vec3<f32>(x_2923, x_2923, x_2923) * vec3<f32>(x_2925.z, x_2925.x, x_2925.y));
          let x_2928 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2927.x, x_2927.y, x_2927.z, x_2928.w);
          let x_2931 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2931);
          let x_2935 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2935, 0.0f, 1.0f);
          let x_2939 : vec4<f32> = u_xlat13;
          let x_2942 : vec4<bool> = (vec4<f32>(x_2939.y, x_2939.z, x_2939.y, x_2939.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2942.x, x_2942.y);
          let x_2945 : bool = u_xlatb53.x;
          if (x_2945) {
            let x_2950 : f32 = u_xlat13.x;
            x_2946 = x_2950;
          } else {
            let x_2953 : f32 = u_xlat13.x;
            x_2946 = -(x_2953);
          }
          let x_2955 : f32 = x_2946;
          u_xlat53.x = x_2955;
          let x_2958 : bool = u_xlatb53.y;
          if (x_2958) {
            let x_2963 : f32 = u_xlat13.x;
            x_2959 = x_2963;
          } else {
            let x_2966 : f32 = u_xlat13.x;
            x_2959 = -(x_2966);
          }
          let x_2968 : f32 = x_2959;
          u_xlat53.y = x_2968;
          let x_2970 : vec4<f32> = u_xlat12;
          let x_2972 : f32 = u_xlat70;
          let x_2975 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2970.x, x_2970.y) * vec2<f32>(x_2972, x_2972)) + x_2975);
          let x_2977 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2977 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2980 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2980, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2984 : u32 = u_xlatu68;
          let x_2987 : vec4<f32> = x_2653.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2984)];
          let x_2989 : vec2<f32> = u_xlat53;
          let x_2991 : u32 = u_xlatu68;
          let x_2994 : vec4<f32> = x_2653.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2991)];
          let x_2996 : vec2<f32> = ((vec2<f32>(x_2987.x, x_2987.y) * x_2989) + vec2<f32>(x_2994.z, x_2994.w));
          let x_2997 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2996.x, x_2996.y, x_2997.z, x_2997.w);
        }
      }
      let x_3004 : vec4<f32> = u_xlat11;
      let x_3007 : f32 = x_126.x_GlobalMipBias.x;
      let x_3008 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3004.x, x_3004.y), x_3007);
      u_xlat11 = x_3008;
      let x_3010 : bool = u_xlatb7.y;
      if (x_3010) {
        let x_3015 : f32 = u_xlat11.w;
        x_3011 = x_3015;
      } else {
        let x_3018 : f32 = u_xlat11.x;
        x_3011 = x_3018;
      }
      let x_3019 : f32 = x_3011;
      u_xlat70 = x_3019;
      let x_3021 : bool = u_xlatb7.x;
      if (x_3021) {
        let x_3025 : vec4<f32> = u_xlat11;
        x_3022 = vec3<f32>(x_3025.x, x_3025.y, x_3025.z);
      } else {
        let x_3028 : f32 = u_xlat70;
        x_3022 = vec3<f32>(x_3028, x_3028, x_3028);
      }
      let x_3030 : vec3<f32> = x_3022;
      let x_3031 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3031.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3037 : vec4<f32> = u_xlat11;
    let x_3039 : u32 = u_xlatu68;
    let x_3042 : vec4<f32> = x_2545.x_AdditionalLightsColor[bitcast<i32>(x_3039)];
    let x_3044 : vec3<f32> = (vec3<f32>(x_3037.x, x_3037.y, x_3037.z) * vec3<f32>(x_3042.x, x_3042.y, x_3042.z));
    let x_3045 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3044.x, x_3044.y, x_3044.z, x_3045.w);
    let x_3047 : f32 = u_xlat25;
    let x_3049 : vec4<f32> = u_xlat11;
    let x_3051 : vec3<f32> = (vec3<f32>(x_3047, x_3047, x_3047) * vec3<f32>(x_3049.x, x_3049.y, x_3049.z));
    let x_3052 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3051.x, x_3051.y, x_3051.z, x_3052.w);
    let x_3054 : vec4<f32> = u_xlat1;
    let x_3056 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(vec3<f32>(x_3054.x, x_3054.y, x_3054.z), vec3<f32>(x_3056.x, x_3056.y, x_3056.z));
    let x_3059 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3059, 0.0f, 1.0f);
    let x_3061 : f32 = u_xlat68;
    let x_3062 : f32 = u_xlat69;
    u_xlat68 = (x_3061 * x_3062);
    let x_3064 : f32 = u_xlat68;
    let x_3066 : vec4<f32> = u_xlat11;
    let x_3068 : vec3<f32> = (vec3<f32>(x_3064, x_3064, x_3064) * vec3<f32>(x_3066.x, x_3066.y, x_3066.z));
    let x_3069 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3068.x, x_3068.y, x_3068.z, x_3069.w);
    let x_3071 : vec4<f32> = u_xlat9;
    let x_3073 : vec2<f32> = u_xlat49;
    let x_3076 : vec3<f32> = u_xlat2;
    let x_3077 : vec3<f32> = ((vec3<f32>(x_3071.x, x_3071.y, x_3071.z) * vec3<f32>(x_3073.x, x_3073.x, x_3073.x)) + x_3076);
    let x_3078 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3077.x, x_3077.y, x_3077.z, x_3078.w);
    let x_3080 : vec4<f32> = u_xlat9;
    let x_3082 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3080.x, x_3080.y, x_3080.z), vec3<f32>(x_3082.x, x_3082.y, x_3082.z));
    let x_3085 : f32 = u_xlat68;
    u_xlat68 = max(x_3085, 1.17549435e-37f);
    let x_3087 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_3087);
    let x_3089 : f32 = u_xlat68;
    let x_3091 : vec4<f32> = u_xlat9;
    let x_3093 : vec3<f32> = (vec3<f32>(x_3089, x_3089, x_3089) * vec3<f32>(x_3091.x, x_3091.y, x_3091.z));
    let x_3094 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3093.x, x_3093.y, x_3093.z, x_3094.w);
    let x_3096 : vec4<f32> = u_xlat1;
    let x_3098 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3096.x, x_3096.y, x_3096.z), vec3<f32>(x_3098.x, x_3098.y, x_3098.z));
    let x_3101 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3101, 0.0f, 1.0f);
    let x_3103 : vec4<f32> = u_xlat10;
    let x_3105 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_3103.x, x_3103.y, x_3103.z), vec3<f32>(x_3105.x, x_3105.y, x_3105.z));
    let x_3108 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3108, 0.0f, 1.0f);
    let x_3110 : f32 = u_xlat68;
    let x_3111 : f32 = u_xlat68;
    u_xlat68 = (x_3110 * x_3111);
    let x_3113 : f32 = u_xlat68;
    let x_3115 : f32 = u_xlat0.x;
    u_xlat68 = ((x_3113 * x_3115) + 1.000010014f);
    let x_3118 : f32 = u_xlat69;
    let x_3119 : f32 = u_xlat69;
    u_xlat69 = (x_3118 * x_3119);
    let x_3121 : f32 = u_xlat68;
    let x_3122 : f32 = u_xlat68;
    u_xlat68 = (x_3121 * x_3122);
    let x_3124 : f32 = u_xlat69;
    u_xlat69 = max(x_3124, 0.100000001f);
    let x_3126 : f32 = u_xlat68;
    let x_3127 : f32 = u_xlat69;
    u_xlat68 = (x_3126 * x_3127);
    let x_3129 : f32 = u_xlat66;
    let x_3130 : f32 = u_xlat68;
    u_xlat68 = (x_3129 * x_3130);
    let x_3132 : f32 = u_xlat64;
    let x_3133 : f32 = u_xlat68;
    u_xlat68 = (x_3132 / x_3133);
    let x_3135 : vec4<f32> = u_xlat5;
    let x_3137 : f32 = u_xlat68;
    let x_3140 : vec4<f32> = u_xlat6;
    let x_3142 : vec3<f32> = ((vec3<f32>(x_3135.x, x_3135.y, x_3135.z) * vec3<f32>(x_3137, x_3137, x_3137)) + vec3<f32>(x_3140.x, x_3140.y, x_3140.z));
    let x_3143 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3142.x, x_3142.y, x_3142.z, x_3143.w);
    let x_3145 : vec4<f32> = u_xlat9;
    let x_3147 : vec4<f32> = u_xlat11;
    let x_3150 : vec4<f32> = u_xlat8;
    let x_3152 : vec3<f32> = ((vec3<f32>(x_3145.x, x_3145.y, x_3145.z) * vec3<f32>(x_3147.x, x_3147.y, x_3147.z)) + vec3<f32>(x_3150.x, x_3150.y, x_3150.z));
    let x_3153 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3152.x, x_3152.y, x_3152.z, x_3153.w);

    continuing {
      let x_3155 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3155 + bitcast<u32>(1i));
    }
  }
  let x_3157 : vec4<f32> = u_xlat3;
  let x_3159 : f32 = u_xlat21;
  let x_3162 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_3157.x, x_3157.y, x_3157.z) * vec3<f32>(x_3159, x_3159, x_3159)) + vec3<f32>(x_3162.x, x_3162.z, x_3162.w));
  let x_3165 : vec4<f32> = u_xlat8;
  let x_3167 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3165.x, x_3165.y, x_3165.z) + x_3167);
  let x_3171 : f32 = u_xlat63;
  let x_3173 : vec3<f32> = u_xlat0;
  let x_3174 : vec3<f32> = (vec3<f32>(x_3171, x_3171, x_3171) * x_3173);
  let x_3175 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3174.x, x_3174.y, x_3174.z, x_3175.w);
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

