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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(1) @binding(3) var<uniform> x_30 : x_Terrain;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(2) var x_Control : texture_2d<f32>;

@group(0) @binding(11) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_758 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2105 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2370 : AdditionalLights;

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
  var u_xlatb4 : bool;
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
  var x_1986 : f32;
  var u_xlatu42 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu4 : u32;
  var u_xlati67 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati4 : i32;
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
  let x_635 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_631.z, x_631.w), x_634);
  let x_636 : vec3<f32> = vec3<f32>(x_635.x, x_635.y, x_635.z);
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_641 : vec4<f32> = x_126.x_ScaledScreenParams;
  let x_642 : vec2<f32> = vec2<f32>(x_641.x, x_641.y);
  let x_646 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_642.x, x_642.y));
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec4<f32> = hlslcc_FragCoord;
  let x_653 : vec2<f32> = (vec2<f32>(x_649.x, x_649.y) * vec2<f32>(x_651.x, x_651.y));
  let x_654 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
  let x_658 : f32 = u_xlat4.y;
  let x_660 : f32 = x_126.x_ScaleBiasRt.x;
  let x_663 : f32 = x_126.x_ScaleBiasRt.y;
  u_xlat65 = ((x_658 * x_660) + x_663);
  let x_665 : f32 = u_xlat65;
  u_xlat4.z = (-(x_665) + 1.0f);
  let x_670 : f32 = u_xlat0.x;
  u_xlat65 = ((-(x_670) * 0.959999979f) + 0.959999979f);
  let x_676 : f32 = u_xlat42;
  let x_677 : f32 = u_xlat65;
  u_xlat66 = (x_676 + -(x_677));
  let x_680 : f32 = u_xlat65;
  let x_682 : vec4<f32> = u_xlat5;
  let x_684 : vec3<f32> = (vec3<f32>(x_680, x_680, x_680) * vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat5;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_692 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec3<f32> = u_xlat0;
  let x_696 : vec4<f32> = u_xlat5;
  let x_701 : vec3<f32> = ((vec3<f32>(x_694.x, x_694.x, x_694.x) * vec3<f32>(x_696.x, x_696.y, x_696.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_702 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : f32 = u_xlat42;
  u_xlat0.x = (-(x_704) + 1.0f);
  let x_709 : f32 = u_xlat0.x;
  let x_711 : f32 = u_xlat0.x;
  u_xlat42 = (x_709 * x_711);
  let x_713 : f32 = u_xlat42;
  u_xlat42 = max(x_713, 0.0078125f);
  let x_716 : f32 = u_xlat42;
  let x_717 : f32 = u_xlat42;
  u_xlat65 = (x_716 * x_717);
  let x_719 : f32 = u_xlat66;
  u_xlat66 = (x_719 + 1.0f);
  let x_721 : f32 = u_xlat66;
  u_xlat66 = clamp(x_721, 0.0f, 1.0f);
  let x_724 : f32 = u_xlat42;
  u_xlat25 = ((x_724 * 4.0f) + 2.0f);
  let x_733 : vec4<f32> = u_xlat4;
  let x_736 : f32 = x_126.x_GlobalMipBias.x;
  let x_737 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_733.x, x_733.z), x_736);
  u_xlat4.x = x_737.x;
  let x_742 : f32 = u_xlat4.x;
  u_xlat46 = (x_742 + -1.0f);
  let x_745 : f32 = x_126.x_AmbientOcclusionParam.w;
  let x_746 : f32 = u_xlat46;
  u_xlat46 = ((x_745 * x_746) + 1.0f);
  let x_749 : f32 = u_xlat21;
  let x_751 : f32 = u_xlat4.x;
  u_xlat21 = min(x_749, x_751);
  let x_760 : f32 = x_758.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_760);
  let x_762 : bool = u_xlatb4;
  if (x_762) {
    let x_766 : f32 = x_758.x_MainLightShadowParams.y;
    u_xlatb4 = (x_766 == 1.0f);
    let x_768 : bool = u_xlatb4;
    if (x_768) {
      let x_772 : vec4<f32> = vs_TEXCOORD8;
      let x_775 : vec4<f32> = x_758.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_772.x, x_772.y, x_772.x, x_772.y) + x_775);
      let x_778 : vec4<f32> = u_xlat7;
      let x_779 : vec2<f32> = vec2<f32>(x_778.x, x_778.y);
      let x_781 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_779.x, x_779.y, x_781);
      let x_793 : vec3<f32> = txVec0;
      let x_795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_793.xy, x_793.z);
      u_xlat8.x = x_795;
      let x_798 : vec4<f32> = u_xlat7;
      let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
      let x_801 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_799.x, x_799.y, x_801);
      let x_808 : vec3<f32> = txVec1;
      let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_808.xy, x_808.z);
      u_xlat8.y = x_810;
      let x_812 : vec4<f32> = vs_TEXCOORD8;
      let x_815 : vec4<f32> = x_758.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_812.x, x_812.y, x_812.x, x_812.y) + x_815);
      let x_818 : vec4<f32> = u_xlat7;
      let x_819 : vec2<f32> = vec2<f32>(x_818.x, x_818.y);
      let x_821 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_819.x, x_819.y, x_821);
      let x_828 : vec3<f32> = txVec2;
      let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_828.xy, x_828.z);
      u_xlat8.z = x_830;
      let x_833 : vec4<f32> = u_xlat7;
      let x_834 : vec2<f32> = vec2<f32>(x_833.z, x_833.w);
      let x_836 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_834.x, x_834.y, x_836);
      let x_843 : vec3<f32> = txVec3;
      let x_845 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_843.xy, x_843.z);
      u_xlat8.w = x_845;
      let x_847 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_847, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_855 : f32 = x_758.x_MainLightShadowParams.y;
      u_xlatb67 = (x_855 == 2.0f);
      let x_857 : bool = u_xlatb67;
      if (x_857) {
        let x_860 : vec4<f32> = vs_TEXCOORD8;
        let x_863 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_866 : vec2<f32> = ((vec2<f32>(x_860.x, x_860.y) * vec2<f32>(x_863.z, x_863.w)) + vec2<f32>(0.5f, 0.5f));
        let x_867 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_866.x, x_866.y, x_867.z, x_867.w);
        let x_869 : vec4<f32> = u_xlat7;
        let x_871 : vec2<f32> = floor(vec2<f32>(x_869.x, x_869.y));
        let x_872 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
        let x_876 : vec4<f32> = vs_TEXCOORD8;
        let x_879 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_882 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_876.x, x_876.y) * vec2<f32>(x_879.z, x_879.w)) + -(vec2<f32>(x_882.x, x_882.y)));
        let x_886 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_886.x, x_886.x, x_886.y, x_886.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_890 : vec4<f32> = u_xlat8;
        let x_892 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_890.x, x_890.x, x_890.z, x_890.z) * vec4<f32>(x_892.x, x_892.x, x_892.z, x_892.z));
        let x_895 : vec4<f32> = u_xlat9;
        let x_899 : vec2<f32> = (vec2<f32>(x_895.y, x_895.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_900 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_899.x, x_900.y, x_899.y, x_900.w);
        let x_902 : vec4<f32> = u_xlat9;
        let x_905 : vec2<f32> = u_xlat49;
        let x_907 : vec2<f32> = ((vec2<f32>(x_902.x, x_902.z) * vec2<f32>(0.5f, 0.5f)) + -(x_905));
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_911 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_911) + vec2<f32>(1.0f, 1.0f));
        let x_914 : vec2<f32> = u_xlat49;
        let x_916 : vec2<f32> = min(x_914, vec2<f32>(0.0f, 0.0f));
        let x_917 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat10;
        let x_922 : vec4<f32> = u_xlat10;
        let x_925 : vec2<f32> = u_xlat51;
        let x_926 : vec2<f32> = ((-(vec2<f32>(x_919.x, x_919.y)) * vec2<f32>(x_922.x, x_922.y)) + x_925);
        let x_927 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_929, vec2<f32>(0.0f, 0.0f));
        let x_931 : vec2<f32> = u_xlat49;
        let x_933 : vec2<f32> = u_xlat49;
        let x_935 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_931) * x_933) + vec2<f32>(x_935.y, x_935.w));
        let x_938 : vec4<f32> = u_xlat10;
        let x_940 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) + vec2<f32>(1.0f, 1.0f));
        let x_941 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_943 + vec2<f32>(1.0f, 1.0f));
        let x_945 : vec4<f32> = u_xlat9;
        let x_949 : vec2<f32> = (vec2<f32>(x_945.x, x_945.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_950 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec2<f32> = u_xlat51;
        let x_953 : vec2<f32> = (x_952 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_954 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_953.x, x_953.y, x_954.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat10;
        let x_958 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_959 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
        let x_961 : vec2<f32> = u_xlat49;
        let x_962 : vec2<f32> = (x_961 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_963 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_965.y, x_965.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_969 : f32 = u_xlat10.x;
        u_xlat11.z = x_969;
        let x_972 : f32 = u_xlat49.x;
        u_xlat11.w = x_972;
        let x_975 : f32 = u_xlat12.x;
        u_xlat9.z = x_975;
        let x_978 : f32 = u_xlat8.x;
        u_xlat9.w = x_978;
        let x_980 : vec4<f32> = u_xlat9;
        let x_982 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_980.z, x_980.w, x_980.x, x_980.z) + vec4<f32>(x_982.z, x_982.w, x_982.x, x_982.z));
        let x_986 : f32 = u_xlat11.y;
        u_xlat10.z = x_986;
        let x_989 : f32 = u_xlat49.y;
        u_xlat10.w = x_989;
        let x_992 : f32 = u_xlat9.y;
        u_xlat12.z = x_992;
        let x_995 : f32 = u_xlat8.z;
        u_xlat12.w = x_995;
        let x_997 : vec4<f32> = u_xlat10;
        let x_999 : vec4<f32> = u_xlat12;
        let x_1001 : vec3<f32> = (vec3<f32>(x_997.z, x_997.y, x_997.w) + vec3<f32>(x_999.z, x_999.y, x_999.w));
        let x_1002 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
        let x_1004 : vec4<f32> = u_xlat9;
        let x_1006 : vec4<f32> = u_xlat13;
        let x_1008 : vec3<f32> = (vec3<f32>(x_1004.x, x_1004.z, x_1004.w) / vec3<f32>(x_1006.z, x_1006.w, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat9;
        let x_1017 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1018 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat12;
        let x_1022 : vec4<f32> = u_xlat8;
        let x_1024 : vec3<f32> = (vec3<f32>(x_1020.z, x_1020.y, x_1020.w) / vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
        let x_1025 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
        let x_1027 : vec4<f32> = u_xlat10;
        let x_1029 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1030 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1035 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1037 : vec3<f32> = (vec3<f32>(x_1032.y, x_1032.x, x_1032.z) * vec3<f32>(x_1035.x, x_1035.x, x_1035.x));
        let x_1038 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
        let x_1040 : vec4<f32> = u_xlat10;
        let x_1043 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1045 : vec3<f32> = (vec3<f32>(x_1040.x, x_1040.y, x_1040.z) * vec3<f32>(x_1043.y, x_1043.y, x_1043.y));
        let x_1046 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
        let x_1049 : f32 = u_xlat10.x;
        u_xlat9.w = x_1049;
        let x_1051 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y) * vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y)) + vec4<f32>(x_1057.y, x_1057.w, x_1057.x, x_1057.w));
        let x_1060 : vec4<f32> = u_xlat7;
        let x_1063 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(x_1063.x, x_1063.y)) + vec2<f32>(x_1066.z, x_1066.w));
        let x_1070 : f32 = u_xlat9.y;
        u_xlat10.w = x_1070;
        let x_1072 : vec4<f32> = u_xlat10;
        let x_1073 : vec2<f32> = vec2<f32>(x_1072.y, x_1072.z);
        let x_1074 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1074.x, x_1073.x, x_1074.z, x_1073.y);
        let x_1076 : vec4<f32> = u_xlat7;
        let x_1079 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1082 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y) * vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y)) + vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1082.y));
        let x_1085 : vec4<f32> = u_xlat7;
        let x_1088 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.w, x_1091.y, x_1091.w, x_1091.z));
        let x_1094 : vec4<f32> = u_xlat7;
        let x_1097 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y) * vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y)) + vec4<f32>(x_1100.x, x_1100.w, x_1100.z, x_1100.w));
        let x_1104 : vec4<f32> = u_xlat8;
        let x_1106 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1104.x, x_1104.x, x_1104.x, x_1104.y) * vec4<f32>(x_1106.z, x_1106.w, x_1106.y, x_1106.z));
        let x_1110 : vec4<f32> = u_xlat8;
        let x_1112 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1110.y, x_1110.y, x_1110.z, x_1110.z) * x_1112);
        let x_1116 : f32 = u_xlat8.z;
        let x_1118 : f32 = u_xlat13.y;
        u_xlat67 = (x_1116 * x_1118);
        let x_1121 : vec4<f32> = u_xlat11;
        let x_1122 : vec2<f32> = vec2<f32>(x_1121.x, x_1121.y);
        let x_1124 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1122.x, x_1122.y, x_1124);
        let x_1132 : vec3<f32> = txVec4;
        let x_1134 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1132.xy, x_1132.z);
        u_xlat68 = x_1134;
        let x_1136 : vec4<f32> = u_xlat11;
        let x_1137 : vec2<f32> = vec2<f32>(x_1136.z, x_1136.w);
        let x_1139 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1137.x, x_1137.y, x_1139);
        let x_1147 : vec3<f32> = txVec5;
        let x_1149 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1147.xy, x_1147.z);
        u_xlat69 = x_1149;
        let x_1150 : f32 = u_xlat69;
        let x_1152 : f32 = u_xlat14.y;
        u_xlat69 = (x_1150 * x_1152);
        let x_1155 : f32 = u_xlat14.x;
        let x_1156 : f32 = u_xlat68;
        let x_1158 : f32 = u_xlat69;
        u_xlat68 = ((x_1155 * x_1156) + x_1158);
        let x_1161 : vec2<f32> = u_xlat49;
        let x_1163 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1161.x, x_1161.y, x_1163);
        let x_1170 : vec3<f32> = txVec6;
        let x_1172 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1170.xy, x_1170.z);
        u_xlat69 = x_1172;
        let x_1174 : f32 = u_xlat14.z;
        let x_1175 : f32 = u_xlat69;
        let x_1177 : f32 = u_xlat68;
        u_xlat68 = ((x_1174 * x_1175) + x_1177);
        let x_1180 : vec4<f32> = u_xlat10;
        let x_1181 : vec2<f32> = vec2<f32>(x_1180.x, x_1180.y);
        let x_1183 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1181.x, x_1181.y, x_1183);
        let x_1190 : vec3<f32> = txVec7;
        let x_1192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1190.xy, x_1190.z);
        u_xlat69 = x_1192;
        let x_1194 : f32 = u_xlat14.w;
        let x_1195 : f32 = u_xlat69;
        let x_1197 : f32 = u_xlat68;
        u_xlat68 = ((x_1194 * x_1195) + x_1197);
        let x_1200 : vec4<f32> = u_xlat12;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.x, x_1200.y);
        let x_1203 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1201.x, x_1201.y, x_1203);
        let x_1210 : vec3<f32> = txVec8;
        let x_1212 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1210.xy, x_1210.z);
        u_xlat69 = x_1212;
        let x_1214 : f32 = u_xlat15.x;
        let x_1215 : f32 = u_xlat69;
        let x_1217 : f32 = u_xlat68;
        u_xlat68 = ((x_1214 * x_1215) + x_1217);
        let x_1220 : vec4<f32> = u_xlat12;
        let x_1221 : vec2<f32> = vec2<f32>(x_1220.z, x_1220.w);
        let x_1223 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1221.x, x_1221.y, x_1223);
        let x_1230 : vec3<f32> = txVec9;
        let x_1232 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1230.xy, x_1230.z);
        u_xlat69 = x_1232;
        let x_1234 : f32 = u_xlat15.y;
        let x_1235 : f32 = u_xlat69;
        let x_1237 : f32 = u_xlat68;
        u_xlat68 = ((x_1234 * x_1235) + x_1237);
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.z, x_1240.w);
        let x_1243 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec10;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1250.xy, x_1250.z);
        u_xlat69 = x_1252;
        let x_1254 : f32 = u_xlat15.z;
        let x_1255 : f32 = u_xlat69;
        let x_1257 : f32 = u_xlat68;
        u_xlat68 = ((x_1254 * x_1255) + x_1257);
        let x_1260 : vec4<f32> = u_xlat9;
        let x_1261 : vec2<f32> = vec2<f32>(x_1260.x, x_1260.y);
        let x_1263 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1261.x, x_1261.y, x_1263);
        let x_1270 : vec3<f32> = txVec11;
        let x_1272 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1270.xy, x_1270.z);
        u_xlat69 = x_1272;
        let x_1274 : f32 = u_xlat15.w;
        let x_1275 : f32 = u_xlat69;
        let x_1277 : f32 = u_xlat68;
        u_xlat68 = ((x_1274 * x_1275) + x_1277);
        let x_1280 : vec4<f32> = u_xlat9;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
        let x_1283 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec12;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1290.xy, x_1290.z);
        u_xlat69 = x_1292;
        let x_1293 : f32 = u_xlat67;
        let x_1294 : f32 = u_xlat69;
        let x_1296 : f32 = u_xlat68;
        u_xlat4.x = ((x_1293 * x_1294) + x_1296);
      } else {
        let x_1300 : vec4<f32> = vs_TEXCOORD8;
        let x_1303 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1306 : vec2<f32> = ((vec2<f32>(x_1300.x, x_1300.y) * vec2<f32>(x_1303.z, x_1303.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1307 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1306.x, x_1306.y, x_1307.z, x_1307.w);
        let x_1309 : vec4<f32> = u_xlat7;
        let x_1311 : vec2<f32> = floor(vec2<f32>(x_1309.x, x_1309.y));
        let x_1312 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1312.w);
        let x_1314 : vec4<f32> = vs_TEXCOORD8;
        let x_1317 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1314.x, x_1314.y) * vec2<f32>(x_1317.z, x_1317.w)) + -(vec2<f32>(x_1320.x, x_1320.y)));
        let x_1324 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1324.x, x_1324.x, x_1324.y, x_1324.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1327 : vec4<f32> = u_xlat8;
        let x_1329 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1327.x, x_1327.x, x_1327.z, x_1327.z) * vec4<f32>(x_1329.x, x_1329.x, x_1329.z, x_1329.z));
        let x_1332 : vec4<f32> = u_xlat9;
        let x_1336 : vec2<f32> = (vec2<f32>(x_1332.y, x_1332.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1337 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1337.x, x_1336.x, x_1337.z, x_1336.y);
        let x_1339 : vec4<f32> = u_xlat9;
        let x_1342 : vec2<f32> = u_xlat49;
        let x_1344 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1342));
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1344.x, x_1345.y, x_1344.y, x_1345.w);
        let x_1347 : vec2<f32> = u_xlat49;
        let x_1349 : vec2<f32> = (-(x_1347) + vec2<f32>(1.0f, 1.0f));
        let x_1350 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
        let x_1352 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1352, vec2<f32>(0.0f, 0.0f));
        let x_1354 : vec2<f32> = u_xlat51;
        let x_1356 : vec2<f32> = u_xlat51;
        let x_1358 : vec4<f32> = u_xlat9;
        let x_1360 : vec2<f32> = ((-(x_1354) * x_1356) + vec2<f32>(x_1358.x, x_1358.y));
        let x_1361 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1360.x, x_1360.y, x_1361.z, x_1361.w);
        let x_1363 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1363, vec2<f32>(0.0f, 0.0f));
        let x_1366 : vec2<f32> = u_xlat51;
        let x_1368 : vec2<f32> = u_xlat51;
        let x_1370 : vec4<f32> = u_xlat8;
        let x_1372 : vec2<f32> = ((-(x_1366) * x_1368) + vec2<f32>(x_1370.y, x_1370.w));
        let x_1373 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1372.x, x_1373.y, x_1372.y);
        let x_1375 : vec4<f32> = u_xlat9;
        let x_1378 : vec2<f32> = (vec2<f32>(x_1375.x, x_1375.y) + vec2<f32>(2.0f, 2.0f));
        let x_1379 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1378.x, x_1378.y, x_1379.z, x_1379.w);
        let x_1381 : vec3<f32> = u_xlat29;
        let x_1383 : vec2<f32> = (vec2<f32>(x_1381.x, x_1381.z) + vec2<f32>(2.0f, 2.0f));
        let x_1384 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1384.x, x_1383.x, x_1384.z, x_1383.y);
        let x_1387 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1387 * 0.081632003f);
        let x_1391 : vec4<f32> = u_xlat8;
        let x_1394 : vec3<f32> = (vec3<f32>(x_1391.z, x_1391.x, x_1391.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1395 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
        let x_1397 : vec4<f32> = u_xlat9;
        let x_1400 : vec2<f32> = (vec2<f32>(x_1397.x, x_1397.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1401 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1400.x, x_1400.y, x_1401.z, x_1401.w);
        let x_1404 : f32 = u_xlat12.y;
        u_xlat11.x = x_1404;
        let x_1406 : vec2<f32> = u_xlat49;
        let x_1413 : vec2<f32> = ((vec2<f32>(x_1406.x, x_1406.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1414 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1414.x, x_1413.x, x_1414.z, x_1413.y);
        let x_1416 : vec2<f32> = u_xlat49;
        let x_1420 : vec2<f32> = ((vec2<f32>(x_1416.x, x_1416.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1421 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1420.x, x_1421.y, x_1420.y, x_1421.w);
        let x_1424 : f32 = u_xlat8.x;
        u_xlat9.y = x_1424;
        let x_1427 : f32 = u_xlat10.y;
        u_xlat9.w = x_1427;
        let x_1429 : vec4<f32> = u_xlat9;
        let x_1430 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1429 + x_1430);
        let x_1432 : vec2<f32> = u_xlat49;
        let x_1435 : vec2<f32> = ((vec2<f32>(x_1432.y, x_1432.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1436 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1436.x, x_1435.x, x_1436.z, x_1435.y);
        let x_1438 : vec2<f32> = u_xlat49;
        let x_1441 : vec2<f32> = ((vec2<f32>(x_1438.y, x_1438.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1442 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1441.x, x_1442.y, x_1441.y, x_1442.w);
        let x_1445 : f32 = u_xlat8.y;
        u_xlat10.y = x_1445;
        let x_1447 : vec4<f32> = u_xlat10;
        let x_1448 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1447 + x_1448);
        let x_1450 : vec4<f32> = u_xlat9;
        let x_1451 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1450 / x_1451);
        let x_1453 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1453 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1459 : vec4<f32> = u_xlat10;
        let x_1460 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1459 / x_1460);
        let x_1462 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1462 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1467 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1464.w, x_1464.x, x_1464.y, x_1464.z) * vec4<f32>(x_1467.x, x_1467.x, x_1467.x, x_1467.x));
        let x_1470 : vec4<f32> = u_xlat10;
        let x_1473 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1470.x, x_1470.w, x_1470.y, x_1470.z) * vec4<f32>(x_1473.y, x_1473.y, x_1473.y, x_1473.y));
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1477 : vec3<f32> = vec3<f32>(x_1476.y, x_1476.z, x_1476.w);
        let x_1478 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1477.x, x_1478.y, x_1477.y, x_1477.z);
        let x_1481 : f32 = u_xlat10.x;
        u_xlat12.y = x_1481;
        let x_1483 : vec4<f32> = u_xlat7;
        let x_1486 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1483.x, x_1483.y, x_1483.x, x_1483.y) * vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y)) + vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1489.y));
        let x_1492 : vec4<f32> = u_xlat7;
        let x_1495 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1498 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1492.x, x_1492.y) * vec2<f32>(x_1495.x, x_1495.y)) + vec2<f32>(x_1498.w, x_1498.y));
        let x_1502 : f32 = u_xlat12.y;
        u_xlat9.y = x_1502;
        let x_1505 : f32 = u_xlat10.z;
        u_xlat12.y = x_1505;
        let x_1507 : vec4<f32> = u_xlat7;
        let x_1510 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1513 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1507.x, x_1507.y, x_1507.x, x_1507.y) * vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y)) + vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1513.y));
        let x_1516 : vec4<f32> = u_xlat7;
        let x_1519 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1522 : vec4<f32> = u_xlat12;
        let x_1524 : vec2<f32> = ((vec2<f32>(x_1516.x, x_1516.y) * vec2<f32>(x_1519.x, x_1519.y)) + vec2<f32>(x_1522.w, x_1522.y));
        let x_1525 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1524.x, x_1524.y, x_1525.z, x_1525.w);
        let x_1528 : f32 = u_xlat12.y;
        u_xlat9.z = x_1528;
        let x_1531 : vec4<f32> = u_xlat7;
        let x_1534 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1537 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1531.x, x_1531.y, x_1531.x, x_1531.y) * vec4<f32>(x_1534.x, x_1534.y, x_1534.x, x_1534.y)) + vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.z));
        let x_1541 : f32 = u_xlat10.w;
        u_xlat12.y = x_1541;
        let x_1544 : vec4<f32> = u_xlat7;
        let x_1547 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1550 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1544.x, x_1544.y, x_1544.x, x_1544.y) * vec4<f32>(x_1547.x, x_1547.y, x_1547.x, x_1547.y)) + vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1550.y));
        let x_1554 : vec4<f32> = u_xlat7;
        let x_1557 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1560 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1554.x, x_1554.y) * vec2<f32>(x_1557.x, x_1557.y)) + vec2<f32>(x_1560.w, x_1560.y));
        let x_1564 : f32 = u_xlat12.y;
        u_xlat9.w = x_1564;
        let x_1567 : vec4<f32> = u_xlat7;
        let x_1570 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1573 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1567.x, x_1567.y) * vec2<f32>(x_1570.x, x_1570.y)) + vec2<f32>(x_1573.x, x_1573.w));
        let x_1576 : vec4<f32> = u_xlat12;
        let x_1577 : vec3<f32> = vec3<f32>(x_1576.x, x_1576.z, x_1576.w);
        let x_1578 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1577.x, x_1578.y, x_1577.y, x_1577.z);
        let x_1580 : vec4<f32> = u_xlat7;
        let x_1583 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1586 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1580.x, x_1580.y, x_1580.x, x_1580.y) * vec4<f32>(x_1583.x, x_1583.y, x_1583.x, x_1583.y)) + vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1586.y));
        let x_1590 : vec4<f32> = u_xlat7;
        let x_1593 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1596 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1590.x, x_1590.y) * vec2<f32>(x_1593.x, x_1593.y)) + vec2<f32>(x_1596.w, x_1596.y));
        let x_1600 : f32 = u_xlat9.x;
        u_xlat10.x = x_1600;
        let x_1602 : vec4<f32> = u_xlat7;
        let x_1605 : vec4<f32> = x_758.x_MainLightShadowmapSize;
        let x_1608 : vec4<f32> = u_xlat10;
        let x_1610 : vec2<f32> = ((vec2<f32>(x_1602.x, x_1602.y) * vec2<f32>(x_1605.x, x_1605.y)) + vec2<f32>(x_1608.x, x_1608.y));
        let x_1611 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
        let x_1614 : vec4<f32> = u_xlat8;
        let x_1616 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1614.x, x_1614.x, x_1614.x, x_1614.x) * x_1616);
        let x_1619 : vec4<f32> = u_xlat8;
        let x_1621 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1619.y, x_1619.y, x_1619.y, x_1619.y) * x_1621);
        let x_1624 : vec4<f32> = u_xlat8;
        let x_1626 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1624.z, x_1624.z, x_1624.z, x_1624.z) * x_1626);
        let x_1628 : vec4<f32> = u_xlat8;
        let x_1630 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1628.w, x_1628.w, x_1628.w, x_1628.w) * x_1630);
        let x_1633 : vec4<f32> = u_xlat13;
        let x_1634 : vec2<f32> = vec2<f32>(x_1633.x, x_1633.y);
        let x_1636 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1634.x, x_1634.y, x_1636);
        let x_1643 : vec3<f32> = txVec13;
        let x_1645 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1643.xy, x_1643.z);
        u_xlat67 = x_1645;
        let x_1647 : vec4<f32> = u_xlat13;
        let x_1648 : vec2<f32> = vec2<f32>(x_1647.z, x_1647.w);
        let x_1650 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1648.x, x_1648.y, x_1650);
        let x_1657 : vec3<f32> = txVec14;
        let x_1659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1657.xy, x_1657.z);
        u_xlat68 = x_1659;
        let x_1660 : f32 = u_xlat68;
        let x_1662 : f32 = u_xlat18.y;
        u_xlat68 = (x_1660 * x_1662);
        let x_1665 : f32 = u_xlat18.x;
        let x_1666 : f32 = u_xlat67;
        let x_1668 : f32 = u_xlat68;
        u_xlat67 = ((x_1665 * x_1666) + x_1668);
        let x_1671 : vec2<f32> = u_xlat49;
        let x_1673 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1671.x, x_1671.y, x_1673);
        let x_1680 : vec3<f32> = txVec15;
        let x_1682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1680.xy, x_1680.z);
        u_xlat68 = x_1682;
        let x_1684 : f32 = u_xlat18.z;
        let x_1685 : f32 = u_xlat68;
        let x_1687 : f32 = u_xlat67;
        u_xlat67 = ((x_1684 * x_1685) + x_1687);
        let x_1690 : vec4<f32> = u_xlat16;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.x, x_1690.y);
        let x_1693 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1700 : vec3<f32> = txVec16;
        let x_1702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1700.xy, x_1700.z);
        u_xlat68 = x_1702;
        let x_1704 : f32 = u_xlat18.w;
        let x_1705 : f32 = u_xlat68;
        let x_1707 : f32 = u_xlat67;
        u_xlat67 = ((x_1704 * x_1705) + x_1707);
        let x_1710 : vec4<f32> = u_xlat14;
        let x_1711 : vec2<f32> = vec2<f32>(x_1710.x, x_1710.y);
        let x_1713 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1711.x, x_1711.y, x_1713);
        let x_1720 : vec3<f32> = txVec17;
        let x_1722 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1720.xy, x_1720.z);
        u_xlat68 = x_1722;
        let x_1724 : f32 = u_xlat19.x;
        let x_1725 : f32 = u_xlat68;
        let x_1727 : f32 = u_xlat67;
        u_xlat67 = ((x_1724 * x_1725) + x_1727);
        let x_1730 : vec4<f32> = u_xlat14;
        let x_1731 : vec2<f32> = vec2<f32>(x_1730.z, x_1730.w);
        let x_1733 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1731.x, x_1731.y, x_1733);
        let x_1740 : vec3<f32> = txVec18;
        let x_1742 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1740.xy, x_1740.z);
        u_xlat68 = x_1742;
        let x_1744 : f32 = u_xlat19.y;
        let x_1745 : f32 = u_xlat68;
        let x_1747 : f32 = u_xlat67;
        u_xlat67 = ((x_1744 * x_1745) + x_1747);
        let x_1750 : vec4<f32> = u_xlat15;
        let x_1751 : vec2<f32> = vec2<f32>(x_1750.x, x_1750.y);
        let x_1753 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1751.x, x_1751.y, x_1753);
        let x_1760 : vec3<f32> = txVec19;
        let x_1762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1760.xy, x_1760.z);
        u_xlat68 = x_1762;
        let x_1764 : f32 = u_xlat19.z;
        let x_1765 : f32 = u_xlat68;
        let x_1767 : f32 = u_xlat67;
        u_xlat67 = ((x_1764 * x_1765) + x_1767);
        let x_1770 : vec4<f32> = u_xlat16;
        let x_1771 : vec2<f32> = vec2<f32>(x_1770.z, x_1770.w);
        let x_1773 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1771.x, x_1771.y, x_1773);
        let x_1780 : vec3<f32> = txVec20;
        let x_1782 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1780.xy, x_1780.z);
        u_xlat68 = x_1782;
        let x_1784 : f32 = u_xlat19.w;
        let x_1785 : f32 = u_xlat68;
        let x_1787 : f32 = u_xlat67;
        u_xlat67 = ((x_1784 * x_1785) + x_1787);
        let x_1790 : vec4<f32> = u_xlat17;
        let x_1791 : vec2<f32> = vec2<f32>(x_1790.x, x_1790.y);
        let x_1793 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1791.x, x_1791.y, x_1793);
        let x_1800 : vec3<f32> = txVec21;
        let x_1802 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1800.xy, x_1800.z);
        u_xlat68 = x_1802;
        let x_1804 : f32 = u_xlat20.x;
        let x_1805 : f32 = u_xlat68;
        let x_1807 : f32 = u_xlat67;
        u_xlat67 = ((x_1804 * x_1805) + x_1807);
        let x_1810 : vec4<f32> = u_xlat17;
        let x_1811 : vec2<f32> = vec2<f32>(x_1810.z, x_1810.w);
        let x_1813 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1811.x, x_1811.y, x_1813);
        let x_1820 : vec3<f32> = txVec22;
        let x_1822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1820.xy, x_1820.z);
        u_xlat68 = x_1822;
        let x_1824 : f32 = u_xlat20.y;
        let x_1825 : f32 = u_xlat68;
        let x_1827 : f32 = u_xlat67;
        u_xlat67 = ((x_1824 * x_1825) + x_1827);
        let x_1830 : vec2<f32> = u_xlat30;
        let x_1832 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec23;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1839.xy, x_1839.z);
        u_xlat68 = x_1841;
        let x_1843 : f32 = u_xlat20.z;
        let x_1844 : f32 = u_xlat68;
        let x_1846 : f32 = u_xlat67;
        u_xlat67 = ((x_1843 * x_1844) + x_1846);
        let x_1849 : vec2<f32> = u_xlat57;
        let x_1851 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec24;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
        u_xlat68 = x_1860;
        let x_1862 : f32 = u_xlat20.w;
        let x_1863 : f32 = u_xlat68;
        let x_1865 : f32 = u_xlat67;
        u_xlat67 = ((x_1862 * x_1863) + x_1865);
        let x_1868 : vec4<f32> = u_xlat12;
        let x_1869 : vec2<f32> = vec2<f32>(x_1868.x, x_1868.y);
        let x_1871 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec25;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1878.xy, x_1878.z);
        u_xlat68 = x_1880;
        let x_1882 : f32 = u_xlat8.x;
        let x_1883 : f32 = u_xlat68;
        let x_1885 : f32 = u_xlat67;
        u_xlat67 = ((x_1882 * x_1883) + x_1885);
        let x_1888 : vec4<f32> = u_xlat12;
        let x_1889 : vec2<f32> = vec2<f32>(x_1888.z, x_1888.w);
        let x_1891 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1889.x, x_1889.y, x_1891);
        let x_1898 : vec3<f32> = txVec26;
        let x_1900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1898.xy, x_1898.z);
        u_xlat68 = x_1900;
        let x_1902 : f32 = u_xlat8.y;
        let x_1903 : f32 = u_xlat68;
        let x_1905 : f32 = u_xlat67;
        u_xlat67 = ((x_1902 * x_1903) + x_1905);
        let x_1908 : vec2<f32> = u_xlat52;
        let x_1910 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1908.x, x_1908.y, x_1910);
        let x_1917 : vec3<f32> = txVec27;
        let x_1919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1917.xy, x_1917.z);
        u_xlat68 = x_1919;
        let x_1921 : f32 = u_xlat8.z;
        let x_1922 : f32 = u_xlat68;
        let x_1924 : f32 = u_xlat67;
        u_xlat67 = ((x_1921 * x_1922) + x_1924);
        let x_1927 : vec4<f32> = u_xlat7;
        let x_1928 : vec2<f32> = vec2<f32>(x_1927.x, x_1927.y);
        let x_1930 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec28;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1937.xy, x_1937.z);
        u_xlat68 = x_1939;
        let x_1941 : f32 = u_xlat8.w;
        let x_1942 : f32 = u_xlat68;
        let x_1944 : f32 = u_xlat67;
        u_xlat4.x = ((x_1941 * x_1942) + x_1944);
      }
    }
  } else {
    let x_1949 : vec4<f32> = vs_TEXCOORD8;
    let x_1950 : vec2<f32> = vec2<f32>(x_1949.x, x_1949.y);
    let x_1952 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1950.x, x_1950.y, x_1952);
    let x_1959 : vec3<f32> = txVec29;
    let x_1961 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1959.xy, x_1959.z);
    u_xlat4.x = x_1961;
  }
  let x_1964 : f32 = x_758.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_1964) + 1.0f);
  let x_1968 : f32 = u_xlat4.x;
  let x_1970 : f32 = x_758.x_MainLightShadowParams.x;
  let x_1972 : f32 = u_xlat67;
  u_xlat4.x = ((x_1968 * x_1970) + x_1972);
  let x_1976 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (0.0f >= x_1976);
  let x_1980 : f32 = vs_TEXCOORD8.z;
  u_xlatb68 = (x_1980 >= 1.0f);
  let x_1982 : bool = u_xlatb67;
  let x_1983 : bool = u_xlatb68;
  u_xlatb67 = (x_1982 | x_1983);
  let x_1985 : bool = u_xlatb67;
  if (x_1985) {
    x_1986 = 1.0f;
  } else {
    let x_1991 : f32 = u_xlat4.x;
    x_1986 = x_1991;
  }
  let x_1992 : f32 = x_1986;
  u_xlat4.x = x_1992;
  let x_1994 : vec3<f32> = vs_TEXCOORD7;
  let x_1996 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_1998 : vec3<f32> = (x_1994 + -(x_1996));
  let x_1999 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  let x_2001 : vec4<f32> = u_xlat7;
  let x_2003 : vec4<f32> = u_xlat7;
  u_xlat67 = dot(vec3<f32>(x_2001.x, x_2001.y, x_2001.z), vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
  let x_2006 : f32 = u_xlat67;
  let x_2008 : f32 = x_758.x_MainLightShadowParams.z;
  let x_2011 : f32 = x_758.x_MainLightShadowParams.w;
  u_xlat67 = ((x_2006 * x_2008) + x_2011);
  let x_2013 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2013, 0.0f, 1.0f);
  let x_2016 : f32 = u_xlat4.x;
  u_xlat68 = (-(x_2016) + 1.0f);
  let x_2019 : f32 = u_xlat67;
  let x_2020 : f32 = u_xlat68;
  let x_2023 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2019 * x_2020) + x_2023);
  let x_2026 : f32 = u_xlat46;
  let x_2029 : vec4<f32> = x_126.x_MainLightColor;
  let x_2031 : vec3<f32> = (vec3<f32>(x_2026, x_2026, x_2026) * vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
  let x_2032 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
  let x_2034 : vec4<f32> = u_xlat1;
  let x_2037 : vec3<f32> = u_xlat2;
  u_xlat67 = dot(-(vec3<f32>(x_2034.x, x_2034.y, x_2034.z)), x_2037);
  let x_2039 : f32 = u_xlat67;
  let x_2040 : f32 = u_xlat67;
  u_xlat67 = (x_2039 + x_2040);
  let x_2042 : vec3<f32> = u_xlat2;
  let x_2043 : f32 = u_xlat67;
  let x_2047 : vec4<f32> = u_xlat1;
  let x_2050 : vec3<f32> = ((x_2042 * -(vec3<f32>(x_2043, x_2043, x_2043))) + -(vec3<f32>(x_2047.x, x_2047.y, x_2047.z)));
  let x_2051 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2053 : vec3<f32> = u_xlat2;
  let x_2054 : vec4<f32> = u_xlat1;
  u_xlat67 = dot(x_2053, vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
  let x_2057 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2057, 0.0f, 1.0f);
  let x_2059 : f32 = u_xlat67;
  u_xlat67 = (-(x_2059) + 1.0f);
  let x_2062 : f32 = u_xlat67;
  let x_2063 : f32 = u_xlat67;
  u_xlat67 = (x_2062 * x_2063);
  let x_2065 : f32 = u_xlat67;
  let x_2066 : f32 = u_xlat67;
  u_xlat67 = (x_2065 * x_2066);
  let x_2069 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_2069) * 0.699999988f) + 1.700000048f);
  let x_2076 : f32 = u_xlat0.x;
  let x_2077 : f32 = u_xlat68;
  u_xlat0.x = (x_2076 * x_2077);
  let x_2081 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2081 * 6.0f);
  let x_2093 : vec4<f32> = u_xlat8;
  let x_2096 : f32 = u_xlat0.x;
  let x_2097 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2093.x, x_2093.y, x_2093.z), x_2096);
  u_xlat8 = x_2097;
  let x_2099 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2099 + -1.0f);
  let x_2107 : f32 = x_2105.unity_SpecCube0_HDR.w;
  let x_2109 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2107 * x_2109) + 1.0f);
  let x_2114 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2114, 0.0f);
  let x_2118 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2118);
  let x_2122 : f32 = u_xlat0.x;
  let x_2124 : f32 = x_2105.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2122 * x_2124);
  let x_2128 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2128);
  let x_2132 : f32 = u_xlat0.x;
  let x_2134 : f32 = x_2105.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2132 * x_2134);
  let x_2137 : vec4<f32> = u_xlat8;
  let x_2139 : vec3<f32> = u_xlat0;
  let x_2141 : vec3<f32> = (vec3<f32>(x_2137.x, x_2137.y, x_2137.z) * vec3<f32>(x_2139.x, x_2139.x, x_2139.x));
  let x_2142 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
  let x_2144 : f32 = u_xlat42;
  let x_2146 : f32 = u_xlat42;
  let x_2150 : vec2<f32> = ((vec2<f32>(x_2144, x_2144) * vec2<f32>(x_2146, x_2146)) + vec2<f32>(-1.0f, 1.0f));
  let x_2151 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2150.x, x_2151.y, x_2150.y);
  let x_2154 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2154);
  let x_2156 : vec4<f32> = u_xlat5;
  let x_2159 : f32 = u_xlat66;
  let x_2161 : vec3<f32> = (-(vec3<f32>(x_2156.x, x_2156.y, x_2156.z)) + vec3<f32>(x_2159, x_2159, x_2159));
  let x_2162 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2161.x, x_2161.y, x_2161.z, x_2162.w);
  let x_2164 : f32 = u_xlat67;
  let x_2166 : vec4<f32> = u_xlat9;
  let x_2169 : vec4<f32> = u_xlat5;
  let x_2171 : vec3<f32> = ((vec3<f32>(x_2164, x_2164, x_2164) * vec3<f32>(x_2166.x, x_2166.y, x_2166.z)) + vec3<f32>(x_2169.x, x_2169.y, x_2169.z));
  let x_2172 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : f32 = u_xlat42;
  let x_2176 : vec4<f32> = u_xlat9;
  let x_2178 : vec3<f32> = (vec3<f32>(x_2174, x_2174, x_2174) * vec3<f32>(x_2176.x, x_2176.y, x_2176.z));
  let x_2179 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2178.x, x_2178.y, x_2178.z, x_2179.w);
  let x_2181 : vec4<f32> = u_xlat8;
  let x_2183 : vec4<f32> = u_xlat9;
  let x_2185 : vec3<f32> = (vec3<f32>(x_2181.x, x_2181.y, x_2181.z) * vec3<f32>(x_2183.x, x_2183.y, x_2183.z));
  let x_2186 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2185.x, x_2185.y, x_2185.z, x_2186.w);
  let x_2188 : vec4<f32> = u_xlat3;
  let x_2190 : vec4<f32> = u_xlat6;
  let x_2193 : vec4<f32> = u_xlat8;
  let x_2195 : vec3<f32> = ((vec3<f32>(x_2188.x, x_2188.y, x_2188.z) * vec3<f32>(x_2190.x, x_2190.y, x_2190.z)) + vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
  let x_2196 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
  let x_2199 : f32 = u_xlat4.x;
  let x_2201 : f32 = x_2105.unity_LightData.z;
  u_xlat42 = (x_2199 * x_2201);
  let x_2203 : vec3<f32> = u_xlat2;
  let x_2205 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat66 = dot(x_2203, vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2208 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2208, 0.0f, 1.0f);
  let x_2210 : f32 = u_xlat42;
  let x_2211 : f32 = u_xlat66;
  u_xlat42 = (x_2210 * x_2211);
  let x_2213 : f32 = u_xlat42;
  let x_2215 : vec4<f32> = u_xlat7;
  let x_2217 : vec3<f32> = (vec3<f32>(x_2213, x_2213, x_2213) * vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
  let x_2218 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
  let x_2220 : vec4<f32> = u_xlat1;
  let x_2223 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2225 : vec3<f32> = (vec3<f32>(x_2220.x, x_2220.y, x_2220.z) + vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
  let x_2226 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
  let x_2228 : vec4<f32> = u_xlat8;
  let x_2230 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2228.x, x_2228.y, x_2228.z), vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
  let x_2233 : f32 = u_xlat42;
  u_xlat42 = max(x_2233, 1.17549435e-37f);
  let x_2236 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2236);
  let x_2238 : f32 = u_xlat42;
  let x_2240 : vec4<f32> = u_xlat8;
  let x_2242 : vec3<f32> = (vec3<f32>(x_2238, x_2238, x_2238) * vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
  let x_2245 : vec3<f32> = u_xlat2;
  let x_2246 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_2245, vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
  let x_2249 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2249, 0.0f, 1.0f);
  let x_2252 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2254 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_2252.x, x_2252.y, x_2252.z), vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
  let x_2257 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2257, 0.0f, 1.0f);
  let x_2259 : f32 = u_xlat42;
  let x_2260 : f32 = u_xlat42;
  u_xlat42 = (x_2259 * x_2260);
  let x_2262 : f32 = u_xlat42;
  let x_2264 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2262 * x_2264) + 1.000010014f);
  let x_2268 : f32 = u_xlat66;
  let x_2269 : f32 = u_xlat66;
  u_xlat66 = (x_2268 * x_2269);
  let x_2271 : f32 = u_xlat42;
  let x_2272 : f32 = u_xlat42;
  u_xlat42 = (x_2271 * x_2272);
  let x_2274 : f32 = u_xlat66;
  u_xlat66 = max(x_2274, 0.100000001f);
  let x_2277 : f32 = u_xlat42;
  let x_2278 : f32 = u_xlat66;
  u_xlat42 = (x_2277 * x_2278);
  let x_2280 : f32 = u_xlat25;
  let x_2281 : f32 = u_xlat42;
  u_xlat42 = (x_2280 * x_2281);
  let x_2283 : f32 = u_xlat65;
  let x_2284 : f32 = u_xlat42;
  u_xlat42 = (x_2283 / x_2284);
  let x_2286 : vec4<f32> = u_xlat5;
  let x_2288 : f32 = u_xlat42;
  let x_2291 : vec4<f32> = u_xlat6;
  let x_2293 : vec3<f32> = ((vec3<f32>(x_2286.x, x_2286.y, x_2286.z) * vec3<f32>(x_2288, x_2288, x_2288)) + vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
  let x_2294 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
  let x_2296 : vec4<f32> = u_xlat7;
  let x_2298 : vec4<f32> = u_xlat8;
  let x_2300 : vec3<f32> = (vec3<f32>(x_2296.x, x_2296.y, x_2296.z) * vec3<f32>(x_2298.x, x_2298.y, x_2298.z));
  let x_2301 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
  let x_2304 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2306 : f32 = x_2105.unity_LightData.y;
  u_xlat42 = min(x_2304, x_2306);
  let x_2310 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2310));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2322 : u32 = u_xlatu_loop_1;
    let x_2323 : u32 = u_xlatu42;
    if ((x_2322 < x_2323)) {
    } else {
      break;
    }
    let x_2326 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_2326 >> 2u);
    let x_2330 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2330 & 3u));
    let x_2333 : u32 = u_xlatu4;
    let x_2336 : vec4<f32> = x_2105.unity_LightIndices[bitcast<i32>(x_2333)];
    let x_2346 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2351 : vec4<u32> = indexable[x_2346];
    u_xlat4.x = dot(x_2336, bitcast<vec4<f32>>(x_2351));
    let x_2357 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_2357);
    let x_2359 : vec3<f32> = vs_TEXCOORD7;
    let x_2371 : i32 = u_xlati4;
    let x_2373 : vec4<f32> = x_2370.x_AdditionalLightsPosition[x_2371];
    let x_2376 : i32 = u_xlati4;
    let x_2378 : vec4<f32> = x_2370.x_AdditionalLightsPosition[x_2376];
    let x_2380 : vec3<f32> = ((-(x_2359) * vec3<f32>(x_2373.w, x_2373.w, x_2373.w)) + vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
    let x_2381 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
    let x_2383 : vec4<f32> = u_xlat9;
    let x_2385 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2383.x, x_2383.y, x_2383.z), vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
    let x_2388 : f32 = u_xlat67;
    u_xlat67 = max(x_2388, 6.10351562e-05f);
    let x_2390 : f32 = u_xlat67;
    u_xlat68 = inverseSqrt(x_2390);
    let x_2392 : f32 = u_xlat68;
    let x_2394 : vec4<f32> = u_xlat9;
    let x_2396 : vec3<f32> = (vec3<f32>(x_2392, x_2392, x_2392) * vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
    let x_2397 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2396.x, x_2396.y, x_2396.z, x_2397.w);
    let x_2399 : f32 = u_xlat67;
    u_xlat69 = (1.0f / x_2399);
    let x_2401 : f32 = u_xlat67;
    let x_2402 : i32 = u_xlati4;
    let x_2404 : f32 = x_2370.x_AdditionalLightsAttenuation[x_2402].x;
    u_xlat67 = (x_2401 * x_2404);
    let x_2406 : f32 = u_xlat67;
    let x_2408 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2406) * x_2408) + 1.0f);
    let x_2411 : f32 = u_xlat67;
    u_xlat67 = max(x_2411, 0.0f);
    let x_2413 : f32 = u_xlat67;
    let x_2414 : f32 = u_xlat67;
    u_xlat67 = (x_2413 * x_2414);
    let x_2416 : f32 = u_xlat67;
    let x_2417 : f32 = u_xlat69;
    u_xlat67 = (x_2416 * x_2417);
    let x_2419 : i32 = u_xlati4;
    let x_2421 : vec4<f32> = x_2370.x_AdditionalLightsSpotDir[x_2419];
    let x_2423 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2421.x, x_2421.y, x_2421.z), vec3<f32>(x_2423.x, x_2423.y, x_2423.z));
    let x_2426 : f32 = u_xlat69;
    let x_2427 : i32 = u_xlati4;
    let x_2429 : f32 = x_2370.x_AdditionalLightsAttenuation[x_2427].z;
    let x_2431 : i32 = u_xlati4;
    let x_2433 : f32 = x_2370.x_AdditionalLightsAttenuation[x_2431].w;
    u_xlat69 = ((x_2426 * x_2429) + x_2433);
    let x_2435 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2435, 0.0f, 1.0f);
    let x_2437 : f32 = u_xlat69;
    let x_2438 : f32 = u_xlat69;
    u_xlat69 = (x_2437 * x_2438);
    let x_2440 : f32 = u_xlat67;
    let x_2441 : f32 = u_xlat69;
    u_xlat67 = (x_2440 * x_2441);
    let x_2443 : f32 = u_xlat46;
    let x_2445 : i32 = u_xlati4;
    let x_2447 : vec4<f32> = x_2370.x_AdditionalLightsColor[x_2445];
    let x_2449 : vec3<f32> = (vec3<f32>(x_2443, x_2443, x_2443) * vec3<f32>(x_2447.x, x_2447.y, x_2447.z));
    let x_2450 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2449.x, x_2449.y, x_2449.z, x_2450.w);
    let x_2452 : vec3<f32> = u_xlat2;
    let x_2453 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(x_2452, vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
    let x_2458 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2458, 0.0f, 1.0f);
    let x_2462 : f32 = u_xlat4.x;
    let x_2463 : f32 = u_xlat67;
    u_xlat4.x = (x_2462 * x_2463);
    let x_2466 : vec4<f32> = u_xlat4;
    let x_2468 : vec4<f32> = u_xlat11;
    let x_2470 : vec3<f32> = (vec3<f32>(x_2466.x, x_2466.x, x_2466.x) * vec3<f32>(x_2468.x, x_2468.y, x_2468.z));
    let x_2471 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2470.x, x_2470.y, x_2470.z, x_2471.w);
    let x_2473 : vec4<f32> = u_xlat9;
    let x_2475 : f32 = u_xlat68;
    let x_2478 : vec4<f32> = u_xlat1;
    let x_2480 : vec3<f32> = ((vec3<f32>(x_2473.x, x_2473.y, x_2473.z) * vec3<f32>(x_2475, x_2475, x_2475)) + vec3<f32>(x_2478.x, x_2478.y, x_2478.z));
    let x_2481 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2480.x, x_2480.y, x_2480.z, x_2481.w);
    let x_2483 : vec4<f32> = u_xlat9;
    let x_2485 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_2483.x, x_2483.y, x_2483.z), vec3<f32>(x_2485.x, x_2485.y, x_2485.z));
    let x_2490 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_2490, 1.17549435e-37f);
    let x_2494 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_2494);
    let x_2497 : vec4<f32> = u_xlat4;
    let x_2499 : vec4<f32> = u_xlat9;
    let x_2501 : vec3<f32> = (vec3<f32>(x_2497.x, x_2497.x, x_2497.x) * vec3<f32>(x_2499.x, x_2499.y, x_2499.z));
    let x_2502 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2501.x, x_2501.y, x_2501.z, x_2502.w);
    let x_2504 : vec3<f32> = u_xlat2;
    let x_2505 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(x_2504, vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
    let x_2510 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2510, 0.0f, 1.0f);
    let x_2513 : vec4<f32> = u_xlat10;
    let x_2515 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_2513.x, x_2513.y, x_2513.z), vec3<f32>(x_2515.x, x_2515.y, x_2515.z));
    let x_2520 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_2520, 0.0f, 1.0f);
    let x_2523 : vec4<f32> = u_xlat4;
    let x_2525 : vec4<f32> = u_xlat4;
    let x_2527 : vec2<f32> = (vec2<f32>(x_2523.x, x_2523.w) * vec2<f32>(x_2525.x, x_2525.w));
    let x_2528 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2527.x, x_2528.y, x_2528.z, x_2527.y);
    let x_2531 : f32 = u_xlat4.x;
    let x_2533 : f32 = u_xlat0.x;
    u_xlat4.x = ((x_2531 * x_2533) + 1.000010014f);
    let x_2538 : f32 = u_xlat4.x;
    let x_2540 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2538 * x_2540);
    let x_2544 : f32 = u_xlat4.w;
    u_xlat67 = max(x_2544, 0.100000001f);
    let x_2546 : f32 = u_xlat67;
    let x_2548 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2546 * x_2548);
    let x_2551 : f32 = u_xlat25;
    let x_2553 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2551 * x_2553);
    let x_2556 : f32 = u_xlat65;
    let x_2558 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2556 / x_2558);
    let x_2561 : vec4<f32> = u_xlat5;
    let x_2563 : vec4<f32> = u_xlat4;
    let x_2566 : vec4<f32> = u_xlat6;
    let x_2568 : vec3<f32> = ((vec3<f32>(x_2561.x, x_2561.y, x_2561.z) * vec3<f32>(x_2563.x, x_2563.x, x_2563.x)) + vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
    let x_2569 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
    let x_2571 : vec4<f32> = u_xlat9;
    let x_2573 : vec4<f32> = u_xlat11;
    let x_2576 : vec4<f32> = u_xlat8;
    let x_2578 : vec3<f32> = ((vec3<f32>(x_2571.x, x_2571.y, x_2571.z) * vec3<f32>(x_2573.x, x_2573.y, x_2573.z)) + vec3<f32>(x_2576.x, x_2576.y, x_2576.z));
    let x_2579 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);

    continuing {
      let x_2581 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2581 + bitcast<u32>(1i));
    }
  }
  let x_2583 : vec4<f32> = u_xlat3;
  let x_2585 : f32 = u_xlat21;
  let x_2588 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2583.x, x_2583.y, x_2583.z) * vec3<f32>(x_2585, x_2585, x_2585)) + vec3<f32>(x_2588.x, x_2588.y, x_2588.z));
  let x_2591 : vec4<f32> = u_xlat8;
  let x_2593 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2591.x, x_2591.y, x_2591.z) + x_2593);
  let x_2595 : f32 = u_xlat63;
  let x_2597 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2595, x_2595, x_2595) * x_2597);
  let x_2599 : f32 = u_xlat64;
  let x_2600 : f32 = u_xlat64;
  u_xlat63 = (x_2599 * -(x_2600));
  let x_2603 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2603);
  let x_2607 : vec3<f32> = u_xlat0;
  let x_2608 : f32 = u_xlat63;
  let x_2610 : vec3<f32> = (x_2607 * vec3<f32>(x_2608, x_2608, x_2608));
  let x_2611 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
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

