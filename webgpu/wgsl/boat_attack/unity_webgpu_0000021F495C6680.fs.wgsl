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

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(12) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_126 : PGlobals;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_798 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2144 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2409 : AdditionalLights;

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
  var x_2025 : f32;
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
  let x_800 : f32 = x_798.x_MainLightShadowParams.y;
  u_xlatb4 = (0.0f < x_800);
  let x_802 : bool = u_xlatb4;
  if (x_802) {
    let x_806 : f32 = x_798.x_MainLightShadowParams.y;
    u_xlatb4 = (x_806 == 1.0f);
    let x_808 : bool = u_xlatb4;
    if (x_808) {
      let x_812 : vec4<f32> = vs_TEXCOORD8;
      let x_815 : vec4<f32> = x_798.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_812.x, x_812.y, x_812.x, x_812.y) + x_815);
      let x_818 : vec4<f32> = u_xlat7;
      let x_819 : vec2<f32> = vec2<f32>(x_818.x, x_818.y);
      let x_821 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_819.x, x_819.y, x_821);
      let x_833 : vec3<f32> = txVec0;
      let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_833.xy, x_833.z);
      u_xlat8.x = x_835;
      let x_838 : vec4<f32> = u_xlat7;
      let x_839 : vec2<f32> = vec2<f32>(x_838.z, x_838.w);
      let x_841 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_839.x, x_839.y, x_841);
      let x_848 : vec3<f32> = txVec1;
      let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_848.xy, x_848.z);
      u_xlat8.y = x_850;
      let x_852 : vec4<f32> = vs_TEXCOORD8;
      let x_855 : vec4<f32> = x_798.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_852.x, x_852.y, x_852.x, x_852.y) + x_855);
      let x_858 : vec4<f32> = u_xlat7;
      let x_859 : vec2<f32> = vec2<f32>(x_858.x, x_858.y);
      let x_861 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_859.x, x_859.y, x_861);
      let x_868 : vec3<f32> = txVec2;
      let x_870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_868.xy, x_868.z);
      u_xlat8.z = x_870;
      let x_873 : vec4<f32> = u_xlat7;
      let x_874 : vec2<f32> = vec2<f32>(x_873.z, x_873.w);
      let x_876 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_874.x, x_874.y, x_876);
      let x_883 : vec3<f32> = txVec3;
      let x_885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_883.xy, x_883.z);
      u_xlat8.w = x_885;
      let x_887 : vec4<f32> = u_xlat8;
      u_xlat4.x = dot(x_887, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_895 : f32 = x_798.x_MainLightShadowParams.y;
      u_xlatb67 = (x_895 == 2.0f);
      let x_897 : bool = u_xlatb67;
      if (x_897) {
        let x_900 : vec4<f32> = vs_TEXCOORD8;
        let x_903 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_906 : vec2<f32> = ((vec2<f32>(x_900.x, x_900.y) * vec2<f32>(x_903.z, x_903.w)) + vec2<f32>(0.5f, 0.5f));
        let x_907 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_909 : vec4<f32> = u_xlat7;
        let x_911 : vec2<f32> = floor(vec2<f32>(x_909.x, x_909.y));
        let x_912 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_916 : vec4<f32> = vs_TEXCOORD8;
        let x_919 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_922 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_916.x, x_916.y) * vec2<f32>(x_919.z, x_919.w)) + -(vec2<f32>(x_922.x, x_922.y)));
        let x_926 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_926.x, x_926.x, x_926.y, x_926.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_930 : vec4<f32> = u_xlat8;
        let x_932 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_930.x, x_930.x, x_930.z, x_930.z) * vec4<f32>(x_932.x, x_932.x, x_932.z, x_932.z));
        let x_935 : vec4<f32> = u_xlat9;
        let x_939 : vec2<f32> = (vec2<f32>(x_935.y, x_935.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_940 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_939.x, x_940.y, x_939.y, x_940.w);
        let x_942 : vec4<f32> = u_xlat9;
        let x_945 : vec2<f32> = u_xlat49;
        let x_947 : vec2<f32> = ((vec2<f32>(x_942.x, x_942.z) * vec2<f32>(0.5f, 0.5f)) + -(x_945));
        let x_948 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
        let x_951 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_951) + vec2<f32>(1.0f, 1.0f));
        let x_954 : vec2<f32> = u_xlat49;
        let x_956 : vec2<f32> = min(x_954, vec2<f32>(0.0f, 0.0f));
        let x_957 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
        let x_959 : vec4<f32> = u_xlat10;
        let x_962 : vec4<f32> = u_xlat10;
        let x_965 : vec2<f32> = u_xlat51;
        let x_966 : vec2<f32> = ((-(vec2<f32>(x_959.x, x_959.y)) * vec2<f32>(x_962.x, x_962.y)) + x_965);
        let x_967 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
        let x_969 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_969, vec2<f32>(0.0f, 0.0f));
        let x_971 : vec2<f32> = u_xlat49;
        let x_973 : vec2<f32> = u_xlat49;
        let x_975 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_971) * x_973) + vec2<f32>(x_975.y, x_975.w));
        let x_978 : vec4<f32> = u_xlat10;
        let x_980 : vec2<f32> = (vec2<f32>(x_978.x, x_978.y) + vec2<f32>(1.0f, 1.0f));
        let x_981 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_983 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_983 + vec2<f32>(1.0f, 1.0f));
        let x_985 : vec4<f32> = u_xlat9;
        let x_989 : vec2<f32> = (vec2<f32>(x_985.x, x_985.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_990 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec2<f32> = u_xlat51;
        let x_993 : vec2<f32> = (x_992 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_994 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec4<f32> = u_xlat10;
        let x_998 : vec2<f32> = (vec2<f32>(x_996.x, x_996.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_999 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_998.x, x_998.y, x_999.z, x_999.w);
        let x_1001 : vec2<f32> = u_xlat49;
        let x_1002 : vec2<f32> = (x_1001 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1003 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
        let x_1005 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1005.y, x_1005.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1009 : f32 = u_xlat10.x;
        u_xlat11.z = x_1009;
        let x_1012 : f32 = u_xlat49.x;
        u_xlat11.w = x_1012;
        let x_1015 : f32 = u_xlat12.x;
        u_xlat9.z = x_1015;
        let x_1018 : f32 = u_xlat8.x;
        u_xlat9.w = x_1018;
        let x_1020 : vec4<f32> = u_xlat9;
        let x_1022 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1020.z, x_1020.w, x_1020.x, x_1020.z) + vec4<f32>(x_1022.z, x_1022.w, x_1022.x, x_1022.z));
        let x_1026 : f32 = u_xlat11.y;
        u_xlat10.z = x_1026;
        let x_1029 : f32 = u_xlat49.y;
        u_xlat10.w = x_1029;
        let x_1032 : f32 = u_xlat9.y;
        u_xlat12.z = x_1032;
        let x_1035 : f32 = u_xlat8.z;
        u_xlat12.w = x_1035;
        let x_1037 : vec4<f32> = u_xlat10;
        let x_1039 : vec4<f32> = u_xlat12;
        let x_1041 : vec3<f32> = (vec3<f32>(x_1037.z, x_1037.y, x_1037.w) + vec3<f32>(x_1039.z, x_1039.y, x_1039.w));
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat9;
        let x_1046 : vec4<f32> = u_xlat13;
        let x_1048 : vec3<f32> = (vec3<f32>(x_1044.x, x_1044.z, x_1044.w) / vec3<f32>(x_1046.z, x_1046.w, x_1046.y));
        let x_1049 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
        let x_1051 : vec4<f32> = u_xlat9;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1057 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat12;
        let x_1061 : vec4<f32> = u_xlat8;
        let x_1063 : vec3<f32> = (vec3<f32>(x_1059.z, x_1059.y, x_1059.w) / vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
        let x_1064 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
        let x_1066 : vec4<f32> = u_xlat10;
        let x_1068 : vec3<f32> = (vec3<f32>(x_1066.x, x_1066.y, x_1066.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1069 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1074 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1076 : vec3<f32> = (vec3<f32>(x_1071.y, x_1071.x, x_1071.z) * vec3<f32>(x_1074.x, x_1074.x, x_1074.x));
        let x_1077 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
        let x_1079 : vec4<f32> = u_xlat10;
        let x_1082 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1084 : vec3<f32> = (vec3<f32>(x_1079.x, x_1079.y, x_1079.z) * vec3<f32>(x_1082.y, x_1082.y, x_1082.y));
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
        let x_1088 : f32 = u_xlat10.x;
        u_xlat9.w = x_1088;
        let x_1090 : vec4<f32> = u_xlat7;
        let x_1093 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y) * vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y)) + vec4<f32>(x_1096.y, x_1096.w, x_1096.x, x_1096.w));
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1102 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(x_1102.x, x_1102.y)) + vec2<f32>(x_1105.z, x_1105.w));
        let x_1109 : f32 = u_xlat9.y;
        u_xlat10.w = x_1109;
        let x_1111 : vec4<f32> = u_xlat10;
        let x_1112 : vec2<f32> = vec2<f32>(x_1111.y, x_1111.z);
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1113.x, x_1112.x, x_1113.z, x_1112.y);
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1118 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y) * vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) + vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1121.y));
        let x_1124 : vec4<f32> = u_xlat7;
        let x_1127 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y) * vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y)) + vec4<f32>(x_1130.w, x_1130.y, x_1130.w, x_1130.z));
        let x_1133 : vec4<f32> = u_xlat7;
        let x_1136 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1133.x, x_1133.y, x_1133.x, x_1133.y) * vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y)) + vec4<f32>(x_1139.x, x_1139.w, x_1139.z, x_1139.w));
        let x_1143 : vec4<f32> = u_xlat8;
        let x_1145 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1143.x, x_1143.x, x_1143.x, x_1143.y) * vec4<f32>(x_1145.z, x_1145.w, x_1145.y, x_1145.z));
        let x_1149 : vec4<f32> = u_xlat8;
        let x_1151 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1149.y, x_1149.y, x_1149.z, x_1149.z) * x_1151);
        let x_1155 : f32 = u_xlat8.z;
        let x_1157 : f32 = u_xlat13.y;
        u_xlat67 = (x_1155 * x_1157);
        let x_1160 : vec4<f32> = u_xlat11;
        let x_1161 : vec2<f32> = vec2<f32>(x_1160.x, x_1160.y);
        let x_1163 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1161.x, x_1161.y, x_1163);
        let x_1171 : vec3<f32> = txVec4;
        let x_1173 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1171.xy, x_1171.z);
        u_xlat68 = x_1173;
        let x_1175 : vec4<f32> = u_xlat11;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.z, x_1175.w);
        let x_1178 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1186 : vec3<f32> = txVec5;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1186.xy, x_1186.z);
        u_xlat69 = x_1188;
        let x_1189 : f32 = u_xlat69;
        let x_1191 : f32 = u_xlat14.y;
        u_xlat69 = (x_1189 * x_1191);
        let x_1194 : f32 = u_xlat14.x;
        let x_1195 : f32 = u_xlat68;
        let x_1197 : f32 = u_xlat69;
        u_xlat68 = ((x_1194 * x_1195) + x_1197);
        let x_1200 : vec2<f32> = u_xlat49;
        let x_1202 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1200.x, x_1200.y, x_1202);
        let x_1209 : vec3<f32> = txVec6;
        let x_1211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1209.xy, x_1209.z);
        u_xlat69 = x_1211;
        let x_1213 : f32 = u_xlat14.z;
        let x_1214 : f32 = u_xlat69;
        let x_1216 : f32 = u_xlat68;
        u_xlat68 = ((x_1213 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat10;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.x, x_1219.y);
        let x_1222 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec7;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1229.xy, x_1229.z);
        u_xlat69 = x_1231;
        let x_1233 : f32 = u_xlat14.w;
        let x_1234 : f32 = u_xlat69;
        let x_1236 : f32 = u_xlat68;
        u_xlat68 = ((x_1233 * x_1234) + x_1236);
        let x_1239 : vec4<f32> = u_xlat12;
        let x_1240 : vec2<f32> = vec2<f32>(x_1239.x, x_1239.y);
        let x_1242 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1240.x, x_1240.y, x_1242);
        let x_1249 : vec3<f32> = txVec8;
        let x_1251 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1249.xy, x_1249.z);
        u_xlat69 = x_1251;
        let x_1253 : f32 = u_xlat15.x;
        let x_1254 : f32 = u_xlat69;
        let x_1256 : f32 = u_xlat68;
        u_xlat68 = ((x_1253 * x_1254) + x_1256);
        let x_1259 : vec4<f32> = u_xlat12;
        let x_1260 : vec2<f32> = vec2<f32>(x_1259.z, x_1259.w);
        let x_1262 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1260.x, x_1260.y, x_1262);
        let x_1269 : vec3<f32> = txVec9;
        let x_1271 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1269.xy, x_1269.z);
        u_xlat69 = x_1271;
        let x_1273 : f32 = u_xlat15.y;
        let x_1274 : f32 = u_xlat69;
        let x_1276 : f32 = u_xlat68;
        u_xlat68 = ((x_1273 * x_1274) + x_1276);
        let x_1279 : vec4<f32> = u_xlat10;
        let x_1280 : vec2<f32> = vec2<f32>(x_1279.z, x_1279.w);
        let x_1282 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1280.x, x_1280.y, x_1282);
        let x_1289 : vec3<f32> = txVec10;
        let x_1291 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1289.xy, x_1289.z);
        u_xlat69 = x_1291;
        let x_1293 : f32 = u_xlat15.z;
        let x_1294 : f32 = u_xlat69;
        let x_1296 : f32 = u_xlat68;
        u_xlat68 = ((x_1293 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat9;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
        let x_1302 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec11;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
        u_xlat69 = x_1311;
        let x_1313 : f32 = u_xlat15.w;
        let x_1314 : f32 = u_xlat69;
        let x_1316 : f32 = u_xlat68;
        u_xlat68 = ((x_1313 * x_1314) + x_1316);
        let x_1319 : vec4<f32> = u_xlat9;
        let x_1320 : vec2<f32> = vec2<f32>(x_1319.z, x_1319.w);
        let x_1322 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1320.x, x_1320.y, x_1322);
        let x_1329 : vec3<f32> = txVec12;
        let x_1331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1329.xy, x_1329.z);
        u_xlat69 = x_1331;
        let x_1332 : f32 = u_xlat67;
        let x_1333 : f32 = u_xlat69;
        let x_1335 : f32 = u_xlat68;
        u_xlat4.x = ((x_1332 * x_1333) + x_1335);
      } else {
        let x_1339 : vec4<f32> = vs_TEXCOORD8;
        let x_1342 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1345 : vec2<f32> = ((vec2<f32>(x_1339.x, x_1339.y) * vec2<f32>(x_1342.z, x_1342.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1346 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
        let x_1348 : vec4<f32> = u_xlat7;
        let x_1350 : vec2<f32> = floor(vec2<f32>(x_1348.x, x_1348.y));
        let x_1351 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec4<f32> = vs_TEXCOORD8;
        let x_1356 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1359 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1353.x, x_1353.y) * vec2<f32>(x_1356.z, x_1356.w)) + -(vec2<f32>(x_1359.x, x_1359.y)));
        let x_1363 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1363.x, x_1363.x, x_1363.y, x_1363.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1366 : vec4<f32> = u_xlat8;
        let x_1368 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1366.x, x_1366.x, x_1366.z, x_1366.z) * vec4<f32>(x_1368.x, x_1368.x, x_1368.z, x_1368.z));
        let x_1371 : vec4<f32> = u_xlat9;
        let x_1375 : vec2<f32> = (vec2<f32>(x_1371.y, x_1371.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1376 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1376.x, x_1375.x, x_1376.z, x_1375.y);
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1381 : vec2<f32> = u_xlat49;
        let x_1383 : vec2<f32> = ((vec2<f32>(x_1378.x, x_1378.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1381));
        let x_1384 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1383.x, x_1384.y, x_1383.y, x_1384.w);
        let x_1386 : vec2<f32> = u_xlat49;
        let x_1388 : vec2<f32> = (-(x_1386) + vec2<f32>(1.0f, 1.0f));
        let x_1389 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1388.x, x_1388.y, x_1389.z, x_1389.w);
        let x_1391 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1391, vec2<f32>(0.0f, 0.0f));
        let x_1393 : vec2<f32> = u_xlat51;
        let x_1395 : vec2<f32> = u_xlat51;
        let x_1397 : vec4<f32> = u_xlat9;
        let x_1399 : vec2<f32> = ((-(x_1393) * x_1395) + vec2<f32>(x_1397.x, x_1397.y));
        let x_1400 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1399.x, x_1399.y, x_1400.z, x_1400.w);
        let x_1402 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1402, vec2<f32>(0.0f, 0.0f));
        let x_1405 : vec2<f32> = u_xlat51;
        let x_1407 : vec2<f32> = u_xlat51;
        let x_1409 : vec4<f32> = u_xlat8;
        let x_1411 : vec2<f32> = ((-(x_1405) * x_1407) + vec2<f32>(x_1409.y, x_1409.w));
        let x_1412 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1411.x, x_1412.y, x_1411.y);
        let x_1414 : vec4<f32> = u_xlat9;
        let x_1417 : vec2<f32> = (vec2<f32>(x_1414.x, x_1414.y) + vec2<f32>(2.0f, 2.0f));
        let x_1418 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1417.x, x_1417.y, x_1418.z, x_1418.w);
        let x_1420 : vec3<f32> = u_xlat29;
        let x_1422 : vec2<f32> = (vec2<f32>(x_1420.x, x_1420.z) + vec2<f32>(2.0f, 2.0f));
        let x_1423 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1423.x, x_1422.x, x_1423.z, x_1422.y);
        let x_1426 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1426 * 0.081632003f);
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1433 : vec3<f32> = (vec3<f32>(x_1430.z, x_1430.x, x_1430.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1434 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
        let x_1436 : vec4<f32> = u_xlat9;
        let x_1439 : vec2<f32> = (vec2<f32>(x_1436.x, x_1436.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1440 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1439.x, x_1439.y, x_1440.z, x_1440.w);
        let x_1443 : f32 = u_xlat12.y;
        u_xlat11.x = x_1443;
        let x_1445 : vec2<f32> = u_xlat49;
        let x_1452 : vec2<f32> = ((vec2<f32>(x_1445.x, x_1445.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1453 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1453.x, x_1452.x, x_1453.z, x_1452.y);
        let x_1455 : vec2<f32> = u_xlat49;
        let x_1459 : vec2<f32> = ((vec2<f32>(x_1455.x, x_1455.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1460 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1459.x, x_1460.y, x_1459.y, x_1460.w);
        let x_1463 : f32 = u_xlat8.x;
        u_xlat9.y = x_1463;
        let x_1466 : f32 = u_xlat10.y;
        u_xlat9.w = x_1466;
        let x_1468 : vec4<f32> = u_xlat9;
        let x_1469 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1468 + x_1469);
        let x_1471 : vec2<f32> = u_xlat49;
        let x_1474 : vec2<f32> = ((vec2<f32>(x_1471.y, x_1471.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1475 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1475.x, x_1474.x, x_1475.z, x_1474.y);
        let x_1477 : vec2<f32> = u_xlat49;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1477.y, x_1477.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1481 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1480.x, x_1481.y, x_1480.y, x_1481.w);
        let x_1484 : f32 = u_xlat8.y;
        u_xlat10.y = x_1484;
        let x_1486 : vec4<f32> = u_xlat10;
        let x_1487 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1486 + x_1487);
        let x_1489 : vec4<f32> = u_xlat9;
        let x_1490 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1489 / x_1490);
        let x_1492 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1492 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1498 : vec4<f32> = u_xlat10;
        let x_1499 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1498 / x_1499);
        let x_1501 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1501 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1503 : vec4<f32> = u_xlat9;
        let x_1506 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1503.w, x_1503.x, x_1503.y, x_1503.z) * vec4<f32>(x_1506.x, x_1506.x, x_1506.x, x_1506.x));
        let x_1509 : vec4<f32> = u_xlat10;
        let x_1512 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1509.x, x_1509.w, x_1509.y, x_1509.z) * vec4<f32>(x_1512.y, x_1512.y, x_1512.y, x_1512.y));
        let x_1515 : vec4<f32> = u_xlat9;
        let x_1516 : vec3<f32> = vec3<f32>(x_1515.y, x_1515.z, x_1515.w);
        let x_1517 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1516.x, x_1517.y, x_1516.y, x_1516.z);
        let x_1520 : f32 = u_xlat10.x;
        u_xlat12.y = x_1520;
        let x_1522 : vec4<f32> = u_xlat7;
        let x_1525 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1528 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1522.x, x_1522.y, x_1522.x, x_1522.y) * vec4<f32>(x_1525.x, x_1525.y, x_1525.x, x_1525.y)) + vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1528.y));
        let x_1531 : vec4<f32> = u_xlat7;
        let x_1534 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1537 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1531.x, x_1531.y) * vec2<f32>(x_1534.x, x_1534.y)) + vec2<f32>(x_1537.w, x_1537.y));
        let x_1541 : f32 = u_xlat12.y;
        u_xlat9.y = x_1541;
        let x_1544 : f32 = u_xlat10.z;
        u_xlat12.y = x_1544;
        let x_1546 : vec4<f32> = u_xlat7;
        let x_1549 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1546.x, x_1546.y, x_1546.x, x_1546.y) * vec4<f32>(x_1549.x, x_1549.y, x_1549.x, x_1549.y)) + vec4<f32>(x_1552.x, x_1552.y, x_1552.z, x_1552.y));
        let x_1555 : vec4<f32> = u_xlat7;
        let x_1558 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1561 : vec4<f32> = u_xlat12;
        let x_1563 : vec2<f32> = ((vec2<f32>(x_1555.x, x_1555.y) * vec2<f32>(x_1558.x, x_1558.y)) + vec2<f32>(x_1561.w, x_1561.y));
        let x_1564 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1563.x, x_1563.y, x_1564.z, x_1564.w);
        let x_1567 : f32 = u_xlat12.y;
        u_xlat9.z = x_1567;
        let x_1570 : vec4<f32> = u_xlat7;
        let x_1573 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1576 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1570.x, x_1570.y, x_1570.x, x_1570.y) * vec4<f32>(x_1573.x, x_1573.y, x_1573.x, x_1573.y)) + vec4<f32>(x_1576.x, x_1576.y, x_1576.x, x_1576.z));
        let x_1580 : f32 = u_xlat10.w;
        u_xlat12.y = x_1580;
        let x_1583 : vec4<f32> = u_xlat7;
        let x_1586 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1583.x, x_1583.y, x_1583.x, x_1583.y) * vec4<f32>(x_1586.x, x_1586.y, x_1586.x, x_1586.y)) + vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1589.y));
        let x_1593 : vec4<f32> = u_xlat7;
        let x_1596 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1599 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1593.x, x_1593.y) * vec2<f32>(x_1596.x, x_1596.y)) + vec2<f32>(x_1599.w, x_1599.y));
        let x_1603 : f32 = u_xlat12.y;
        u_xlat9.w = x_1603;
        let x_1606 : vec4<f32> = u_xlat7;
        let x_1609 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1612 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1606.x, x_1606.y) * vec2<f32>(x_1609.x, x_1609.y)) + vec2<f32>(x_1612.x, x_1612.w));
        let x_1615 : vec4<f32> = u_xlat12;
        let x_1616 : vec3<f32> = vec3<f32>(x_1615.x, x_1615.z, x_1615.w);
        let x_1617 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1616.x, x_1617.y, x_1616.y, x_1616.z);
        let x_1619 : vec4<f32> = u_xlat7;
        let x_1622 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1625 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1619.x, x_1619.y, x_1619.x, x_1619.y) * vec4<f32>(x_1622.x, x_1622.y, x_1622.x, x_1622.y)) + vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1625.y));
        let x_1629 : vec4<f32> = u_xlat7;
        let x_1632 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1635 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1629.x, x_1629.y) * vec2<f32>(x_1632.x, x_1632.y)) + vec2<f32>(x_1635.w, x_1635.y));
        let x_1639 : f32 = u_xlat9.x;
        u_xlat10.x = x_1639;
        let x_1641 : vec4<f32> = u_xlat7;
        let x_1644 : vec4<f32> = x_798.x_MainLightShadowmapSize;
        let x_1647 : vec4<f32> = u_xlat10;
        let x_1649 : vec2<f32> = ((vec2<f32>(x_1641.x, x_1641.y) * vec2<f32>(x_1644.x, x_1644.y)) + vec2<f32>(x_1647.x, x_1647.y));
        let x_1650 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1649.x, x_1649.y, x_1650.z, x_1650.w);
        let x_1653 : vec4<f32> = u_xlat8;
        let x_1655 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1653.x, x_1653.x, x_1653.x, x_1653.x) * x_1655);
        let x_1658 : vec4<f32> = u_xlat8;
        let x_1660 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1658.y, x_1658.y, x_1658.y, x_1658.y) * x_1660);
        let x_1663 : vec4<f32> = u_xlat8;
        let x_1665 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1663.z, x_1663.z, x_1663.z, x_1663.z) * x_1665);
        let x_1667 : vec4<f32> = u_xlat8;
        let x_1669 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1667.w, x_1667.w, x_1667.w, x_1667.w) * x_1669);
        let x_1672 : vec4<f32> = u_xlat13;
        let x_1673 : vec2<f32> = vec2<f32>(x_1672.x, x_1672.y);
        let x_1675 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
        let x_1682 : vec3<f32> = txVec13;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1682.xy, x_1682.z);
        u_xlat67 = x_1684;
        let x_1686 : vec4<f32> = u_xlat13;
        let x_1687 : vec2<f32> = vec2<f32>(x_1686.z, x_1686.w);
        let x_1689 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1687.x, x_1687.y, x_1689);
        let x_1696 : vec3<f32> = txVec14;
        let x_1698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1696.xy, x_1696.z);
        u_xlat68 = x_1698;
        let x_1699 : f32 = u_xlat68;
        let x_1701 : f32 = u_xlat18.y;
        u_xlat68 = (x_1699 * x_1701);
        let x_1704 : f32 = u_xlat18.x;
        let x_1705 : f32 = u_xlat67;
        let x_1707 : f32 = u_xlat68;
        u_xlat67 = ((x_1704 * x_1705) + x_1707);
        let x_1710 : vec2<f32> = u_xlat49;
        let x_1712 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1710.x, x_1710.y, x_1712);
        let x_1719 : vec3<f32> = txVec15;
        let x_1721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1719.xy, x_1719.z);
        u_xlat68 = x_1721;
        let x_1723 : f32 = u_xlat18.z;
        let x_1724 : f32 = u_xlat68;
        let x_1726 : f32 = u_xlat67;
        u_xlat67 = ((x_1723 * x_1724) + x_1726);
        let x_1729 : vec4<f32> = u_xlat16;
        let x_1730 : vec2<f32> = vec2<f32>(x_1729.x, x_1729.y);
        let x_1732 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1730.x, x_1730.y, x_1732);
        let x_1739 : vec3<f32> = txVec16;
        let x_1741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1739.xy, x_1739.z);
        u_xlat68 = x_1741;
        let x_1743 : f32 = u_xlat18.w;
        let x_1744 : f32 = u_xlat68;
        let x_1746 : f32 = u_xlat67;
        u_xlat67 = ((x_1743 * x_1744) + x_1746);
        let x_1749 : vec4<f32> = u_xlat14;
        let x_1750 : vec2<f32> = vec2<f32>(x_1749.x, x_1749.y);
        let x_1752 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1759 : vec3<f32> = txVec17;
        let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1759.xy, x_1759.z);
        u_xlat68 = x_1761;
        let x_1763 : f32 = u_xlat19.x;
        let x_1764 : f32 = u_xlat68;
        let x_1766 : f32 = u_xlat67;
        u_xlat67 = ((x_1763 * x_1764) + x_1766);
        let x_1769 : vec4<f32> = u_xlat14;
        let x_1770 : vec2<f32> = vec2<f32>(x_1769.z, x_1769.w);
        let x_1772 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1770.x, x_1770.y, x_1772);
        let x_1779 : vec3<f32> = txVec18;
        let x_1781 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1779.xy, x_1779.z);
        u_xlat68 = x_1781;
        let x_1783 : f32 = u_xlat19.y;
        let x_1784 : f32 = u_xlat68;
        let x_1786 : f32 = u_xlat67;
        u_xlat67 = ((x_1783 * x_1784) + x_1786);
        let x_1789 : vec4<f32> = u_xlat15;
        let x_1790 : vec2<f32> = vec2<f32>(x_1789.x, x_1789.y);
        let x_1792 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1790.x, x_1790.y, x_1792);
        let x_1799 : vec3<f32> = txVec19;
        let x_1801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1799.xy, x_1799.z);
        u_xlat68 = x_1801;
        let x_1803 : f32 = u_xlat19.z;
        let x_1804 : f32 = u_xlat68;
        let x_1806 : f32 = u_xlat67;
        u_xlat67 = ((x_1803 * x_1804) + x_1806);
        let x_1809 : vec4<f32> = u_xlat16;
        let x_1810 : vec2<f32> = vec2<f32>(x_1809.z, x_1809.w);
        let x_1812 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1810.x, x_1810.y, x_1812);
        let x_1819 : vec3<f32> = txVec20;
        let x_1821 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1819.xy, x_1819.z);
        u_xlat68 = x_1821;
        let x_1823 : f32 = u_xlat19.w;
        let x_1824 : f32 = u_xlat68;
        let x_1826 : f32 = u_xlat67;
        u_xlat67 = ((x_1823 * x_1824) + x_1826);
        let x_1829 : vec4<f32> = u_xlat17;
        let x_1830 : vec2<f32> = vec2<f32>(x_1829.x, x_1829.y);
        let x_1832 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
        let x_1839 : vec3<f32> = txVec21;
        let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1839.xy, x_1839.z);
        u_xlat68 = x_1841;
        let x_1843 : f32 = u_xlat20.x;
        let x_1844 : f32 = u_xlat68;
        let x_1846 : f32 = u_xlat67;
        u_xlat67 = ((x_1843 * x_1844) + x_1846);
        let x_1849 : vec4<f32> = u_xlat17;
        let x_1850 : vec2<f32> = vec2<f32>(x_1849.z, x_1849.w);
        let x_1852 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1850.x, x_1850.y, x_1852);
        let x_1859 : vec3<f32> = txVec22;
        let x_1861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1859.xy, x_1859.z);
        u_xlat68 = x_1861;
        let x_1863 : f32 = u_xlat20.y;
        let x_1864 : f32 = u_xlat68;
        let x_1866 : f32 = u_xlat67;
        u_xlat67 = ((x_1863 * x_1864) + x_1866);
        let x_1869 : vec2<f32> = u_xlat30;
        let x_1871 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec23;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1878.xy, x_1878.z);
        u_xlat68 = x_1880;
        let x_1882 : f32 = u_xlat20.z;
        let x_1883 : f32 = u_xlat68;
        let x_1885 : f32 = u_xlat67;
        u_xlat67 = ((x_1882 * x_1883) + x_1885);
        let x_1888 : vec2<f32> = u_xlat57;
        let x_1890 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
        let x_1897 : vec3<f32> = txVec24;
        let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1897.xy, x_1897.z);
        u_xlat68 = x_1899;
        let x_1901 : f32 = u_xlat20.w;
        let x_1902 : f32 = u_xlat68;
        let x_1904 : f32 = u_xlat67;
        u_xlat67 = ((x_1901 * x_1902) + x_1904);
        let x_1907 : vec4<f32> = u_xlat12;
        let x_1908 : vec2<f32> = vec2<f32>(x_1907.x, x_1907.y);
        let x_1910 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1908.x, x_1908.y, x_1910);
        let x_1917 : vec3<f32> = txVec25;
        let x_1919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1917.xy, x_1917.z);
        u_xlat68 = x_1919;
        let x_1921 : f32 = u_xlat8.x;
        let x_1922 : f32 = u_xlat68;
        let x_1924 : f32 = u_xlat67;
        u_xlat67 = ((x_1921 * x_1922) + x_1924);
        let x_1927 : vec4<f32> = u_xlat12;
        let x_1928 : vec2<f32> = vec2<f32>(x_1927.z, x_1927.w);
        let x_1930 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1928.x, x_1928.y, x_1930);
        let x_1937 : vec3<f32> = txVec26;
        let x_1939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1937.xy, x_1937.z);
        u_xlat68 = x_1939;
        let x_1941 : f32 = u_xlat8.y;
        let x_1942 : f32 = u_xlat68;
        let x_1944 : f32 = u_xlat67;
        u_xlat67 = ((x_1941 * x_1942) + x_1944);
        let x_1947 : vec2<f32> = u_xlat52;
        let x_1949 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1947.x, x_1947.y, x_1949);
        let x_1956 : vec3<f32> = txVec27;
        let x_1958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1956.xy, x_1956.z);
        u_xlat68 = x_1958;
        let x_1960 : f32 = u_xlat8.z;
        let x_1961 : f32 = u_xlat68;
        let x_1963 : f32 = u_xlat67;
        u_xlat67 = ((x_1960 * x_1961) + x_1963);
        let x_1966 : vec4<f32> = u_xlat7;
        let x_1967 : vec2<f32> = vec2<f32>(x_1966.x, x_1966.y);
        let x_1969 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1967.x, x_1967.y, x_1969);
        let x_1976 : vec3<f32> = txVec28;
        let x_1978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1976.xy, x_1976.z);
        u_xlat68 = x_1978;
        let x_1980 : f32 = u_xlat8.w;
        let x_1981 : f32 = u_xlat68;
        let x_1983 : f32 = u_xlat67;
        u_xlat4.x = ((x_1980 * x_1981) + x_1983);
      }
    }
  } else {
    let x_1988 : vec4<f32> = vs_TEXCOORD8;
    let x_1989 : vec2<f32> = vec2<f32>(x_1988.x, x_1988.y);
    let x_1991 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1989.x, x_1989.y, x_1991);
    let x_1998 : vec3<f32> = txVec29;
    let x_2000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1998.xy, x_1998.z);
    u_xlat4.x = x_2000;
  }
  let x_2003 : f32 = x_798.x_MainLightShadowParams.x;
  u_xlat67 = (-(x_2003) + 1.0f);
  let x_2007 : f32 = u_xlat4.x;
  let x_2009 : f32 = x_798.x_MainLightShadowParams.x;
  let x_2011 : f32 = u_xlat67;
  u_xlat4.x = ((x_2007 * x_2009) + x_2011);
  let x_2015 : f32 = vs_TEXCOORD8.z;
  u_xlatb67 = (0.0f >= x_2015);
  let x_2019 : f32 = vs_TEXCOORD8.z;
  u_xlatb68 = (x_2019 >= 1.0f);
  let x_2021 : bool = u_xlatb67;
  let x_2022 : bool = u_xlatb68;
  u_xlatb67 = (x_2021 | x_2022);
  let x_2024 : bool = u_xlatb67;
  if (x_2024) {
    x_2025 = 1.0f;
  } else {
    let x_2030 : f32 = u_xlat4.x;
    x_2025 = x_2030;
  }
  let x_2031 : f32 = x_2025;
  u_xlat4.x = x_2031;
  let x_2033 : vec3<f32> = vs_TEXCOORD7;
  let x_2035 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  let x_2037 : vec3<f32> = (x_2033 + -(x_2035));
  let x_2038 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
  let x_2040 : vec4<f32> = u_xlat7;
  let x_2042 : vec4<f32> = u_xlat7;
  u_xlat67 = dot(vec3<f32>(x_2040.x, x_2040.y, x_2040.z), vec3<f32>(x_2042.x, x_2042.y, x_2042.z));
  let x_2045 : f32 = u_xlat67;
  let x_2047 : f32 = x_798.x_MainLightShadowParams.z;
  let x_2050 : f32 = x_798.x_MainLightShadowParams.w;
  u_xlat67 = ((x_2045 * x_2047) + x_2050);
  let x_2052 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2052, 0.0f, 1.0f);
  let x_2055 : f32 = u_xlat4.x;
  u_xlat68 = (-(x_2055) + 1.0f);
  let x_2058 : f32 = u_xlat67;
  let x_2059 : f32 = u_xlat68;
  let x_2062 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2058 * x_2059) + x_2062);
  let x_2065 : f32 = u_xlat46;
  let x_2068 : vec4<f32> = x_126.x_MainLightColor;
  let x_2070 : vec3<f32> = (vec3<f32>(x_2065, x_2065, x_2065) * vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
  let x_2071 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
  let x_2073 : vec4<f32> = u_xlat1;
  let x_2076 : vec3<f32> = u_xlat2;
  u_xlat67 = dot(-(vec3<f32>(x_2073.x, x_2073.y, x_2073.z)), x_2076);
  let x_2078 : f32 = u_xlat67;
  let x_2079 : f32 = u_xlat67;
  u_xlat67 = (x_2078 + x_2079);
  let x_2081 : vec3<f32> = u_xlat2;
  let x_2082 : f32 = u_xlat67;
  let x_2086 : vec4<f32> = u_xlat1;
  let x_2089 : vec3<f32> = ((x_2081 * -(vec3<f32>(x_2082, x_2082, x_2082))) + -(vec3<f32>(x_2086.x, x_2086.y, x_2086.z)));
  let x_2090 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
  let x_2092 : vec3<f32> = u_xlat2;
  let x_2093 : vec4<f32> = u_xlat1;
  u_xlat67 = dot(x_2092, vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2096 : f32 = u_xlat67;
  u_xlat67 = clamp(x_2096, 0.0f, 1.0f);
  let x_2098 : f32 = u_xlat67;
  u_xlat67 = (-(x_2098) + 1.0f);
  let x_2101 : f32 = u_xlat67;
  let x_2102 : f32 = u_xlat67;
  u_xlat67 = (x_2101 * x_2102);
  let x_2104 : f32 = u_xlat67;
  let x_2105 : f32 = u_xlat67;
  u_xlat67 = (x_2104 * x_2105);
  let x_2108 : f32 = u_xlat0.x;
  u_xlat68 = ((-(x_2108) * 0.699999988f) + 1.700000048f);
  let x_2115 : f32 = u_xlat0.x;
  let x_2116 : f32 = u_xlat68;
  u_xlat0.x = (x_2115 * x_2116);
  let x_2120 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2120 * 6.0f);
  let x_2132 : vec4<f32> = u_xlat8;
  let x_2135 : f32 = u_xlat0.x;
  let x_2136 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2132.x, x_2132.y, x_2132.z), x_2135);
  u_xlat8 = x_2136;
  let x_2138 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2138 + -1.0f);
  let x_2146 : f32 = x_2144.unity_SpecCube0_HDR.w;
  let x_2148 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2146 * x_2148) + 1.0f);
  let x_2153 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2153, 0.0f);
  let x_2157 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2157);
  let x_2161 : f32 = u_xlat0.x;
  let x_2163 : f32 = x_2144.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2161 * x_2163);
  let x_2167 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2167);
  let x_2171 : f32 = u_xlat0.x;
  let x_2173 : f32 = x_2144.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2171 * x_2173);
  let x_2176 : vec4<f32> = u_xlat8;
  let x_2178 : vec3<f32> = u_xlat0;
  let x_2180 : vec3<f32> = (vec3<f32>(x_2176.x, x_2176.y, x_2176.z) * vec3<f32>(x_2178.x, x_2178.x, x_2178.x));
  let x_2181 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2183 : f32 = u_xlat42;
  let x_2185 : f32 = u_xlat42;
  let x_2189 : vec2<f32> = ((vec2<f32>(x_2183, x_2183) * vec2<f32>(x_2185, x_2185)) + vec2<f32>(-1.0f, 1.0f));
  let x_2190 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2189.x, x_2190.y, x_2189.y);
  let x_2193 : f32 = u_xlat0.z;
  u_xlat42 = (1.0f / x_2193);
  let x_2195 : vec4<f32> = u_xlat5;
  let x_2198 : f32 = u_xlat66;
  let x_2200 : vec3<f32> = (-(vec3<f32>(x_2195.x, x_2195.y, x_2195.z)) + vec3<f32>(x_2198, x_2198, x_2198));
  let x_2201 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
  let x_2203 : f32 = u_xlat67;
  let x_2205 : vec4<f32> = u_xlat9;
  let x_2208 : vec4<f32> = u_xlat5;
  let x_2210 : vec3<f32> = ((vec3<f32>(x_2203, x_2203, x_2203) * vec3<f32>(x_2205.x, x_2205.y, x_2205.z)) + vec3<f32>(x_2208.x, x_2208.y, x_2208.z));
  let x_2211 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
  let x_2213 : f32 = u_xlat42;
  let x_2215 : vec4<f32> = u_xlat9;
  let x_2217 : vec3<f32> = (vec3<f32>(x_2213, x_2213, x_2213) * vec3<f32>(x_2215.x, x_2215.y, x_2215.z));
  let x_2218 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2217.x, x_2217.y, x_2217.z, x_2218.w);
  let x_2220 : vec4<f32> = u_xlat8;
  let x_2222 : vec4<f32> = u_xlat9;
  let x_2224 : vec3<f32> = (vec3<f32>(x_2220.x, x_2220.y, x_2220.z) * vec3<f32>(x_2222.x, x_2222.y, x_2222.z));
  let x_2225 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
  let x_2227 : vec4<f32> = u_xlat3;
  let x_2229 : vec4<f32> = u_xlat6;
  let x_2232 : vec4<f32> = u_xlat8;
  let x_2234 : vec3<f32> = ((vec3<f32>(x_2227.x, x_2227.y, x_2227.z) * vec3<f32>(x_2229.x, x_2229.y, x_2229.z)) + vec3<f32>(x_2232.x, x_2232.y, x_2232.z));
  let x_2235 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2235.w);
  let x_2238 : f32 = u_xlat4.x;
  let x_2240 : f32 = x_2144.unity_LightData.z;
  u_xlat42 = (x_2238 * x_2240);
  let x_2242 : vec3<f32> = u_xlat2;
  let x_2244 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat66 = dot(x_2242, vec3<f32>(x_2244.x, x_2244.y, x_2244.z));
  let x_2247 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2247, 0.0f, 1.0f);
  let x_2249 : f32 = u_xlat42;
  let x_2250 : f32 = u_xlat66;
  u_xlat42 = (x_2249 * x_2250);
  let x_2252 : f32 = u_xlat42;
  let x_2254 : vec4<f32> = u_xlat7;
  let x_2256 : vec3<f32> = (vec3<f32>(x_2252, x_2252, x_2252) * vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
  let x_2257 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
  let x_2259 : vec4<f32> = u_xlat1;
  let x_2262 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2264 : vec3<f32> = (vec3<f32>(x_2259.x, x_2259.y, x_2259.z) + vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
  let x_2265 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
  let x_2267 : vec4<f32> = u_xlat8;
  let x_2269 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_2267.x, x_2267.y, x_2267.z), vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
  let x_2272 : f32 = u_xlat42;
  u_xlat42 = max(x_2272, 1.17549435e-37f);
  let x_2275 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_2275);
  let x_2277 : f32 = u_xlat42;
  let x_2279 : vec4<f32> = u_xlat8;
  let x_2281 : vec3<f32> = (vec3<f32>(x_2277, x_2277, x_2277) * vec3<f32>(x_2279.x, x_2279.y, x_2279.z));
  let x_2282 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
  let x_2284 : vec3<f32> = u_xlat2;
  let x_2285 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_2284, vec3<f32>(x_2285.x, x_2285.y, x_2285.z));
  let x_2288 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2288, 0.0f, 1.0f);
  let x_2291 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2293 : vec4<f32> = u_xlat8;
  u_xlat66 = dot(vec3<f32>(x_2291.x, x_2291.y, x_2291.z), vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
  let x_2296 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2296, 0.0f, 1.0f);
  let x_2298 : f32 = u_xlat42;
  let x_2299 : f32 = u_xlat42;
  u_xlat42 = (x_2298 * x_2299);
  let x_2301 : f32 = u_xlat42;
  let x_2303 : f32 = u_xlat0.x;
  u_xlat42 = ((x_2301 * x_2303) + 1.000010014f);
  let x_2307 : f32 = u_xlat66;
  let x_2308 : f32 = u_xlat66;
  u_xlat66 = (x_2307 * x_2308);
  let x_2310 : f32 = u_xlat42;
  let x_2311 : f32 = u_xlat42;
  u_xlat42 = (x_2310 * x_2311);
  let x_2313 : f32 = u_xlat66;
  u_xlat66 = max(x_2313, 0.100000001f);
  let x_2316 : f32 = u_xlat42;
  let x_2317 : f32 = u_xlat66;
  u_xlat42 = (x_2316 * x_2317);
  let x_2319 : f32 = u_xlat25;
  let x_2320 : f32 = u_xlat42;
  u_xlat42 = (x_2319 * x_2320);
  let x_2322 : f32 = u_xlat65;
  let x_2323 : f32 = u_xlat42;
  u_xlat42 = (x_2322 / x_2323);
  let x_2325 : vec4<f32> = u_xlat5;
  let x_2327 : f32 = u_xlat42;
  let x_2330 : vec4<f32> = u_xlat6;
  let x_2332 : vec3<f32> = ((vec3<f32>(x_2325.x, x_2325.y, x_2325.z) * vec3<f32>(x_2327, x_2327, x_2327)) + vec3<f32>(x_2330.x, x_2330.y, x_2330.z));
  let x_2333 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2332.x, x_2332.y, x_2332.z, x_2333.w);
  let x_2335 : vec4<f32> = u_xlat7;
  let x_2337 : vec4<f32> = u_xlat8;
  let x_2339 : vec3<f32> = (vec3<f32>(x_2335.x, x_2335.y, x_2335.z) * vec3<f32>(x_2337.x, x_2337.y, x_2337.z));
  let x_2340 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2340.w);
  let x_2343 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2345 : f32 = x_2144.unity_LightData.y;
  u_xlat42 = min(x_2343, x_2345);
  let x_2349 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_2349));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2361 : u32 = u_xlatu_loop_1;
    let x_2362 : u32 = u_xlatu42;
    if ((x_2361 < x_2362)) {
    } else {
      break;
    }
    let x_2365 : u32 = u_xlatu_loop_1;
    u_xlatu4 = (x_2365 >> 2u);
    let x_2369 : u32 = u_xlatu_loop_1;
    u_xlati67 = bitcast<i32>((x_2369 & 3u));
    let x_2372 : u32 = u_xlatu4;
    let x_2375 : vec4<f32> = x_2144.unity_LightIndices[bitcast<i32>(x_2372)];
    let x_2385 : i32 = u_xlati67;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2390 : vec4<u32> = indexable[x_2385];
    u_xlat4.x = dot(x_2375, bitcast<vec4<f32>>(x_2390));
    let x_2396 : f32 = u_xlat4.x;
    u_xlati4 = i32(x_2396);
    let x_2398 : vec3<f32> = vs_TEXCOORD7;
    let x_2410 : i32 = u_xlati4;
    let x_2412 : vec4<f32> = x_2409.x_AdditionalLightsPosition[x_2410];
    let x_2415 : i32 = u_xlati4;
    let x_2417 : vec4<f32> = x_2409.x_AdditionalLightsPosition[x_2415];
    let x_2419 : vec3<f32> = ((-(x_2398) * vec3<f32>(x_2412.w, x_2412.w, x_2412.w)) + vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
    let x_2420 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2419.x, x_2419.y, x_2419.z, x_2420.w);
    let x_2422 : vec4<f32> = u_xlat9;
    let x_2424 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_2422.x, x_2422.y, x_2422.z), vec3<f32>(x_2424.x, x_2424.y, x_2424.z));
    let x_2427 : f32 = u_xlat67;
    u_xlat67 = max(x_2427, 6.10351562e-05f);
    let x_2429 : f32 = u_xlat67;
    u_xlat68 = inverseSqrt(x_2429);
    let x_2431 : f32 = u_xlat68;
    let x_2433 : vec4<f32> = u_xlat9;
    let x_2435 : vec3<f32> = (vec3<f32>(x_2431, x_2431, x_2431) * vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
    let x_2436 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
    let x_2438 : f32 = u_xlat67;
    u_xlat69 = (1.0f / x_2438);
    let x_2440 : f32 = u_xlat67;
    let x_2441 : i32 = u_xlati4;
    let x_2443 : f32 = x_2409.x_AdditionalLightsAttenuation[x_2441].x;
    u_xlat67 = (x_2440 * x_2443);
    let x_2445 : f32 = u_xlat67;
    let x_2447 : f32 = u_xlat67;
    u_xlat67 = ((-(x_2445) * x_2447) + 1.0f);
    let x_2450 : f32 = u_xlat67;
    u_xlat67 = max(x_2450, 0.0f);
    let x_2452 : f32 = u_xlat67;
    let x_2453 : f32 = u_xlat67;
    u_xlat67 = (x_2452 * x_2453);
    let x_2455 : f32 = u_xlat67;
    let x_2456 : f32 = u_xlat69;
    u_xlat67 = (x_2455 * x_2456);
    let x_2458 : i32 = u_xlati4;
    let x_2460 : vec4<f32> = x_2409.x_AdditionalLightsSpotDir[x_2458];
    let x_2462 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2460.x, x_2460.y, x_2460.z), vec3<f32>(x_2462.x, x_2462.y, x_2462.z));
    let x_2465 : f32 = u_xlat69;
    let x_2466 : i32 = u_xlati4;
    let x_2468 : f32 = x_2409.x_AdditionalLightsAttenuation[x_2466].z;
    let x_2470 : i32 = u_xlati4;
    let x_2472 : f32 = x_2409.x_AdditionalLightsAttenuation[x_2470].w;
    u_xlat69 = ((x_2465 * x_2468) + x_2472);
    let x_2474 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2474, 0.0f, 1.0f);
    let x_2476 : f32 = u_xlat69;
    let x_2477 : f32 = u_xlat69;
    u_xlat69 = (x_2476 * x_2477);
    let x_2479 : f32 = u_xlat67;
    let x_2480 : f32 = u_xlat69;
    u_xlat67 = (x_2479 * x_2480);
    let x_2482 : f32 = u_xlat46;
    let x_2484 : i32 = u_xlati4;
    let x_2486 : vec4<f32> = x_2409.x_AdditionalLightsColor[x_2484];
    let x_2488 : vec3<f32> = (vec3<f32>(x_2482, x_2482, x_2482) * vec3<f32>(x_2486.x, x_2486.y, x_2486.z));
    let x_2489 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2488.x, x_2488.y, x_2488.z, x_2489.w);
    let x_2491 : vec3<f32> = u_xlat2;
    let x_2492 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(x_2491, vec3<f32>(x_2492.x, x_2492.y, x_2492.z));
    let x_2497 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2497, 0.0f, 1.0f);
    let x_2501 : f32 = u_xlat4.x;
    let x_2502 : f32 = u_xlat67;
    u_xlat4.x = (x_2501 * x_2502);
    let x_2505 : vec4<f32> = u_xlat4;
    let x_2507 : vec4<f32> = u_xlat11;
    let x_2509 : vec3<f32> = (vec3<f32>(x_2505.x, x_2505.x, x_2505.x) * vec3<f32>(x_2507.x, x_2507.y, x_2507.z));
    let x_2510 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2509.x, x_2509.y, x_2509.z, x_2510.w);
    let x_2512 : vec4<f32> = u_xlat9;
    let x_2514 : f32 = u_xlat68;
    let x_2517 : vec4<f32> = u_xlat1;
    let x_2519 : vec3<f32> = ((vec3<f32>(x_2512.x, x_2512.y, x_2512.z) * vec3<f32>(x_2514, x_2514, x_2514)) + vec3<f32>(x_2517.x, x_2517.y, x_2517.z));
    let x_2520 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2519.x, x_2519.y, x_2519.z, x_2520.w);
    let x_2522 : vec4<f32> = u_xlat9;
    let x_2524 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(vec3<f32>(x_2522.x, x_2522.y, x_2522.z), vec3<f32>(x_2524.x, x_2524.y, x_2524.z));
    let x_2529 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_2529, 1.17549435e-37f);
    let x_2533 : f32 = u_xlat4.x;
    u_xlat4.x = inverseSqrt(x_2533);
    let x_2536 : vec4<f32> = u_xlat4;
    let x_2538 : vec4<f32> = u_xlat9;
    let x_2540 : vec3<f32> = (vec3<f32>(x_2536.x, x_2536.x, x_2536.x) * vec3<f32>(x_2538.x, x_2538.y, x_2538.z));
    let x_2541 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
    let x_2543 : vec3<f32> = u_xlat2;
    let x_2544 : vec4<f32> = u_xlat9;
    u_xlat4.x = dot(x_2543, vec3<f32>(x_2544.x, x_2544.y, x_2544.z));
    let x_2549 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_2549, 0.0f, 1.0f);
    let x_2552 : vec4<f32> = u_xlat10;
    let x_2554 : vec4<f32> = u_xlat9;
    u_xlat4.w = dot(vec3<f32>(x_2552.x, x_2552.y, x_2552.z), vec3<f32>(x_2554.x, x_2554.y, x_2554.z));
    let x_2559 : f32 = u_xlat4.w;
    u_xlat4.w = clamp(x_2559, 0.0f, 1.0f);
    let x_2562 : vec4<f32> = u_xlat4;
    let x_2564 : vec4<f32> = u_xlat4;
    let x_2566 : vec2<f32> = (vec2<f32>(x_2562.x, x_2562.w) * vec2<f32>(x_2564.x, x_2564.w));
    let x_2567 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_2566.x, x_2567.y, x_2567.z, x_2566.y);
    let x_2570 : f32 = u_xlat4.x;
    let x_2572 : f32 = u_xlat0.x;
    u_xlat4.x = ((x_2570 * x_2572) + 1.000010014f);
    let x_2577 : f32 = u_xlat4.x;
    let x_2579 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2577 * x_2579);
    let x_2583 : f32 = u_xlat4.w;
    u_xlat67 = max(x_2583, 0.100000001f);
    let x_2585 : f32 = u_xlat67;
    let x_2587 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2585 * x_2587);
    let x_2590 : f32 = u_xlat25;
    let x_2592 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2590 * x_2592);
    let x_2595 : f32 = u_xlat65;
    let x_2597 : f32 = u_xlat4.x;
    u_xlat4.x = (x_2595 / x_2597);
    let x_2600 : vec4<f32> = u_xlat5;
    let x_2602 : vec4<f32> = u_xlat4;
    let x_2605 : vec4<f32> = u_xlat6;
    let x_2607 : vec3<f32> = ((vec3<f32>(x_2600.x, x_2600.y, x_2600.z) * vec3<f32>(x_2602.x, x_2602.x, x_2602.x)) + vec3<f32>(x_2605.x, x_2605.y, x_2605.z));
    let x_2608 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2607.x, x_2607.y, x_2607.z, x_2608.w);
    let x_2610 : vec4<f32> = u_xlat9;
    let x_2612 : vec4<f32> = u_xlat11;
    let x_2615 : vec4<f32> = u_xlat8;
    let x_2617 : vec3<f32> = ((vec3<f32>(x_2610.x, x_2610.y, x_2610.z) * vec3<f32>(x_2612.x, x_2612.y, x_2612.z)) + vec3<f32>(x_2615.x, x_2615.y, x_2615.z));
    let x_2618 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2618.w);

    continuing {
      let x_2620 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2620 + bitcast<u32>(1i));
    }
  }
  let x_2622 : vec4<f32> = u_xlat3;
  let x_2624 : f32 = u_xlat21;
  let x_2627 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2622.x, x_2622.y, x_2622.z) * vec3<f32>(x_2624, x_2624, x_2624)) + vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
  let x_2630 : vec4<f32> = u_xlat8;
  let x_2632 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2630.x, x_2630.y, x_2630.z) + x_2632);
  let x_2634 : f32 = u_xlat63;
  let x_2636 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2634, x_2634, x_2634) * x_2636);
  let x_2638 : f32 = u_xlat64;
  let x_2639 : f32 = u_xlat64;
  u_xlat63 = (x_2638 * -(x_2639));
  let x_2642 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2642);
  let x_2646 : vec3<f32> = u_xlat0;
  let x_2647 : f32 = u_xlat63;
  let x_2649 : vec3<f32> = (x_2646 * vec3<f32>(x_2647, x_2647, x_2647));
  let x_2650 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2650.w);
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

