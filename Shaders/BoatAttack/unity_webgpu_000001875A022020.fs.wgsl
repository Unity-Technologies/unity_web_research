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

@group(1) @binding(4) var<uniform> x_595 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(8) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2361 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2611 : AdditionalLights;

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
  var u_xlatb28 : bool;
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
  var u_xlatb25 : bool;
  var u_xlatb47 : bool;
  var x_2225 : f32;
  var u_xlat25 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlatu44 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu71 : u32;
  var u_xlati73 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati71 : i32;
  var u_xlat74 : f32;
  var u_xlat75 : f32;
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
      let x_1073 : f32 = x_595.x_MainLightShadowParams.y;
      u_xlatb28 = (x_1073 == 2.0f);
      let x_1075 : bool = u_xlatb28;
      if (x_1075) {
        let x_1079 : vec4<f32> = u_xlat3;
        let x_1082 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1085 : vec2<f32> = ((vec2<f32>(x_1079.x, x_1079.y) * vec2<f32>(x_1082.z, x_1082.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1086 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1085.x, x_1085.y, x_1086.z);
        let x_1088 : vec3<f32> = u_xlat28;
        let x_1090 : vec2<f32> = floor(vec2<f32>(x_1088.x, x_1088.y));
        let x_1091 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1090.x, x_1090.y, x_1091.z);
        let x_1093 : vec4<f32> = u_xlat3;
        let x_1096 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1099 : vec3<f32> = u_xlat28;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1096.z, x_1096.w)) + -(vec2<f32>(x_1099.x, x_1099.y)));
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1105.x, x_1105.x, x_1105.y, x_1105.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1109 : vec4<f32> = u_xlat9;
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1109.x, x_1109.x, x_1109.z, x_1109.z) * vec4<f32>(x_1111.x, x_1111.x, x_1111.z, x_1111.z));
        let x_1116 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1116.y, x_1116.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1121 : vec4<f32> = u_xlat10;
        let x_1124 : vec4<f32> = u_xlat8;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1121.x, x_1121.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1124.x, x_1124.y)));
        let x_1128 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1127.x, x_1128.y, x_1127.y, x_1128.w);
        let x_1130 : vec4<f32> = u_xlat8;
        let x_1133 : vec2<f32> = (-(vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1134 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1133.x, x_1133.y, x_1134.z, x_1134.w);
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1137.x, x_1137.y), vec2<f32>(0.0f, 0.0f));
        let x_1141 : vec2<f32> = u_xlat54;
        let x_1143 : vec2<f32> = u_xlat54;
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1141) * x_1143) + vec2<f32>(x_1145.x, x_1145.y));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1150 : vec2<f32> = max(vec2<f32>(x_1148.x, x_1148.y), vec2<f32>(0.0f, 0.0f));
        let x_1151 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
        let x_1153 : vec4<f32> = u_xlat8;
        let x_1156 : vec4<f32> = u_xlat8;
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1161 : vec2<f32> = ((-(vec2<f32>(x_1153.x, x_1153.y)) * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.y, x_1159.w));
        let x_1162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1164 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1164 + vec2<f32>(1.0f, 1.0f));
        let x_1166 : vec4<f32> = u_xlat8;
        let x_1168 : vec2<f32> = (vec2<f32>(x_1166.x, x_1166.y) + vec2<f32>(1.0f, 1.0f));
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1175 : vec2<f32> = (vec2<f32>(x_1171.x, x_1171.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1178 : vec4<f32> = u_xlat10;
        let x_1180 : vec2<f32> = (vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1181 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1180.x, x_1180.y, x_1181.z, x_1181.w);
        let x_1183 : vec2<f32> = u_xlat54;
        let x_1184 : vec2<f32> = (x_1183 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1185 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1189 : vec2<f32> = (vec2<f32>(x_1187.x, x_1187.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1190 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1194 : vec2<f32> = (vec2<f32>(x_1192.y, x_1192.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1195 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1194.x, x_1194.y, x_1195.z, x_1195.w);
        let x_1198 : f32 = u_xlat10.x;
        u_xlat11.z = x_1198;
        let x_1201 : f32 = u_xlat8.x;
        u_xlat11.w = x_1201;
        let x_1204 : f32 = u_xlat13.x;
        u_xlat12.z = x_1204;
        let x_1207 : f32 = u_xlat52.x;
        u_xlat12.w = x_1207;
        let x_1209 : vec4<f32> = u_xlat11;
        let x_1211 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1209.z, x_1209.w, x_1209.x, x_1209.z) + vec4<f32>(x_1211.z, x_1211.w, x_1211.x, x_1211.z));
        let x_1215 : f32 = u_xlat11.y;
        u_xlat10.z = x_1215;
        let x_1218 : f32 = u_xlat8.y;
        u_xlat10.w = x_1218;
        let x_1221 : f32 = u_xlat12.y;
        u_xlat13.z = x_1221;
        let x_1224 : f32 = u_xlat52.y;
        u_xlat13.w = x_1224;
        let x_1226 : vec4<f32> = u_xlat10;
        let x_1228 : vec4<f32> = u_xlat13;
        let x_1230 : vec3<f32> = (vec3<f32>(x_1226.z, x_1226.y, x_1226.w) + vec3<f32>(x_1228.z, x_1228.y, x_1228.w));
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
        let x_1233 : vec4<f32> = u_xlat12;
        let x_1235 : vec4<f32> = u_xlat9;
        let x_1237 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.z, x_1233.w) / vec3<f32>(x_1235.z, x_1235.w, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1245 : vec3<f32> = (vec3<f32>(x_1240.x, x_1240.y, x_1240.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1246 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
        let x_1248 : vec4<f32> = u_xlat13;
        let x_1250 : vec4<f32> = u_xlat8;
        let x_1252 : vec3<f32> = (vec3<f32>(x_1248.z, x_1248.y, x_1248.w) / vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
        let x_1253 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
        let x_1255 : vec4<f32> = u_xlat11;
        let x_1257 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
        let x_1260 : vec4<f32> = u_xlat10;
        let x_1263 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1265 : vec3<f32> = (vec3<f32>(x_1260.y, x_1260.x, x_1260.z) * vec3<f32>(x_1263.x, x_1263.x, x_1263.x));
        let x_1266 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
        let x_1268 : vec4<f32> = u_xlat11;
        let x_1271 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1273 : vec3<f32> = (vec3<f32>(x_1268.x, x_1268.y, x_1268.z) * vec3<f32>(x_1271.y, x_1271.y, x_1271.y));
        let x_1274 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
        let x_1277 : f32 = u_xlat11.x;
        u_xlat10.w = x_1277;
        let x_1279 : vec3<f32> = u_xlat28;
        let x_1282 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.y, x_1285.w, x_1285.x, x_1285.w));
        let x_1288 : vec3<f32> = u_xlat28;
        let x_1291 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat10;
        let x_1296 : vec2<f32> = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(x_1291.x, x_1291.y)) + vec2<f32>(x_1294.z, x_1294.w));
        let x_1297 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1296.x, x_1296.y, x_1297.z, x_1297.w);
        let x_1300 : f32 = u_xlat10.y;
        u_xlat11.w = x_1300;
        let x_1302 : vec4<f32> = u_xlat11;
        let x_1303 : vec2<f32> = vec2<f32>(x_1302.y, x_1302.z);
        let x_1304 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1304.x, x_1303.x, x_1304.z, x_1303.y);
        let x_1307 : vec3<f32> = u_xlat28;
        let x_1310 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y) * vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y)) + vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1313.y));
        let x_1316 : vec3<f32> = u_xlat28;
        let x_1319 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y) * vec4<f32>(x_1319.x, x_1319.y, x_1319.x, x_1319.y)) + vec4<f32>(x_1322.w, x_1322.y, x_1322.w, x_1322.z));
        let x_1325 : vec3<f32> = u_xlat28;
        let x_1328 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y) * vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y)) + vec4<f32>(x_1331.x, x_1331.w, x_1331.z, x_1331.w));
        let x_1335 : vec4<f32> = u_xlat8;
        let x_1337 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1335.x, x_1335.x, x_1335.x, x_1335.y) * vec4<f32>(x_1337.z, x_1337.w, x_1337.y, x_1337.z));
        let x_1341 : vec4<f32> = u_xlat8;
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1341.y, x_1341.y, x_1341.z, x_1341.z) * x_1343);
        let x_1346 : f32 = u_xlat8.z;
        let x_1348 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1346 * x_1348);
        let x_1352 : vec4<f32> = u_xlat12;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.x, x_1352.y);
        let x_1355 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1363 : vec3<f32> = txVec4;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1363.xy, x_1363.z);
        u_xlat50 = x_1365;
        let x_1367 : vec4<f32> = u_xlat12;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.z, x_1367.w);
        let x_1370 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1378 : vec3<f32> = txVec5;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat72 = x_1380;
        let x_1381 : f32 = u_xlat72;
        let x_1383 : f32 = u_xlat15.y;
        u_xlat72 = (x_1381 * x_1383);
        let x_1386 : f32 = u_xlat15.x;
        let x_1387 : f32 = u_xlat50;
        let x_1389 : f32 = u_xlat72;
        u_xlat50 = ((x_1386 * x_1387) + x_1389);
        let x_1392 : vec4<f32> = u_xlat13;
        let x_1393 : vec2<f32> = vec2<f32>(x_1392.x, x_1392.y);
        let x_1395 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec6;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1402.xy, x_1402.z);
        u_xlat72 = x_1404;
        let x_1406 : f32 = u_xlat15.z;
        let x_1407 : f32 = u_xlat72;
        let x_1409 : f32 = u_xlat50;
        u_xlat50 = ((x_1406 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat11;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec7;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat72 = x_1424;
        let x_1426 : f32 = u_xlat15.w;
        let x_1427 : f32 = u_xlat72;
        let x_1429 : f32 = u_xlat50;
        u_xlat50 = ((x_1426 * x_1427) + x_1429);
        let x_1432 : vec4<f32> = u_xlat14;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.x, x_1432.y);
        let x_1435 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec8;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1442.xy, x_1442.z);
        u_xlat72 = x_1444;
        let x_1446 : f32 = u_xlat16.x;
        let x_1447 : f32 = u_xlat72;
        let x_1449 : f32 = u_xlat50;
        u_xlat50 = ((x_1446 * x_1447) + x_1449);
        let x_1452 : vec4<f32> = u_xlat14;
        let x_1453 : vec2<f32> = vec2<f32>(x_1452.z, x_1452.w);
        let x_1455 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
        let x_1462 : vec3<f32> = txVec9;
        let x_1464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1462.xy, x_1462.z);
        u_xlat72 = x_1464;
        let x_1466 : f32 = u_xlat16.y;
        let x_1467 : f32 = u_xlat72;
        let x_1469 : f32 = u_xlat50;
        u_xlat50 = ((x_1466 * x_1467) + x_1469);
        let x_1472 : vec4<f32> = u_xlat11;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec10;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat72 = x_1484;
        let x_1486 : f32 = u_xlat16.z;
        let x_1487 : f32 = u_xlat72;
        let x_1489 : f32 = u_xlat50;
        u_xlat50 = ((x_1486 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat10;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.x, x_1492.y);
        let x_1495 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec11;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1502.xy, x_1502.z);
        u_xlat72 = x_1504;
        let x_1506 : f32 = u_xlat16.w;
        let x_1507 : f32 = u_xlat72;
        let x_1509 : f32 = u_xlat50;
        u_xlat50 = ((x_1506 * x_1507) + x_1509);
        let x_1512 : vec4<f32> = u_xlat10;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.z, x_1512.w);
        let x_1515 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec12;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
        u_xlat72 = x_1524;
        let x_1526 : f32 = u_xlat28.x;
        let x_1527 : f32 = u_xlat72;
        let x_1529 : f32 = u_xlat50;
        u_xlat71 = ((x_1526 * x_1527) + x_1529);
      } else {
        let x_1532 : vec4<f32> = u_xlat3;
        let x_1535 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1538 : vec2<f32> = ((vec2<f32>(x_1532.x, x_1532.y) * vec2<f32>(x_1535.z, x_1535.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1539 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1538.x, x_1538.y, x_1539.z);
        let x_1541 : vec3<f32> = u_xlat28;
        let x_1543 : vec2<f32> = floor(vec2<f32>(x_1541.x, x_1541.y));
        let x_1544 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1543.x, x_1543.y, x_1544.z);
        let x_1546 : vec4<f32> = u_xlat3;
        let x_1549 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1552 : vec3<f32> = u_xlat28;
        let x_1555 : vec2<f32> = ((vec2<f32>(x_1546.x, x_1546.y) * vec2<f32>(x_1549.z, x_1549.w)) + -(vec2<f32>(x_1552.x, x_1552.y)));
        let x_1556 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1555.x, x_1555.y, x_1556.z, x_1556.w);
        let x_1558 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1558.x, x_1558.x, x_1558.y, x_1558.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1561 : vec4<f32> = u_xlat9;
        let x_1563 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1561.x, x_1561.x, x_1561.z, x_1561.z) * vec4<f32>(x_1563.x, x_1563.x, x_1563.z, x_1563.z));
        let x_1566 : vec4<f32> = u_xlat10;
        let x_1570 : vec2<f32> = (vec2<f32>(x_1566.y, x_1566.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1571 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1571.x, x_1570.x, x_1571.z, x_1570.y);
        let x_1573 : vec4<f32> = u_xlat10;
        let x_1576 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1573.x, x_1573.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1576.x, x_1576.y)));
        let x_1580 : vec4<f32> = u_xlat8;
        let x_1583 : vec2<f32> = (-(vec2<f32>(x_1580.x, x_1580.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1584 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1583.x, x_1584.y, x_1583.y, x_1584.w);
        let x_1586 : vec4<f32> = u_xlat8;
        let x_1588 : vec2<f32> = min(vec2<f32>(x_1586.x, x_1586.y), vec2<f32>(0.0f, 0.0f));
        let x_1589 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1588.x, x_1588.y, x_1589.z, x_1589.w);
        let x_1591 : vec4<f32> = u_xlat10;
        let x_1594 : vec4<f32> = u_xlat10;
        let x_1597 : vec4<f32> = u_xlat9;
        let x_1599 : vec2<f32> = ((-(vec2<f32>(x_1591.x, x_1591.y)) * vec2<f32>(x_1594.x, x_1594.y)) + vec2<f32>(x_1597.x, x_1597.z));
        let x_1600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1599.x, x_1600.y, x_1599.y, x_1600.w);
        let x_1602 : vec4<f32> = u_xlat8;
        let x_1604 : vec2<f32> = max(vec2<f32>(x_1602.x, x_1602.y), vec2<f32>(0.0f, 0.0f));
        let x_1605 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
        let x_1607 : vec4<f32> = u_xlat10;
        let x_1610 : vec4<f32> = u_xlat10;
        let x_1613 : vec4<f32> = u_xlat9;
        let x_1615 : vec2<f32> = ((-(vec2<f32>(x_1607.x, x_1607.y)) * vec2<f32>(x_1610.x, x_1610.y)) + vec2<f32>(x_1613.y, x_1613.w));
        let x_1616 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1616.x, x_1615.x, x_1616.z, x_1615.y);
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1618 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1622 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1622 * 0.081632003f);
        let x_1626 : vec2<f32> = u_xlat52;
        let x_1629 : vec2<f32> = (vec2<f32>(x_1626.y, x_1626.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1630 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1629.x, x_1629.y, x_1630.z, x_1630.w);
        let x_1632 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1632.x, x_1632.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1636 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1636 * 0.081632003f);
        let x_1640 : f32 = u_xlat12.y;
        u_xlat10.x = x_1640;
        let x_1642 : vec4<f32> = u_xlat8;
        let x_1649 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1650 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1650.x, x_1649.x, x_1650.z, x_1649.y);
        let x_1652 : vec4<f32> = u_xlat8;
        let x_1656 : vec2<f32> = ((vec2<f32>(x_1652.x, x_1652.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1657 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1656.x, x_1657.y, x_1656.y, x_1657.w);
        let x_1660 : f32 = u_xlat52.x;
        u_xlat9.y = x_1660;
        let x_1663 : f32 = u_xlat11.y;
        u_xlat9.w = x_1663;
        let x_1665 : vec4<f32> = u_xlat9;
        let x_1666 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1665 + x_1666);
        let x_1668 : vec4<f32> = u_xlat8;
        let x_1671 : vec2<f32> = ((vec2<f32>(x_1668.y, x_1668.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1672 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1672.x, x_1671.x, x_1672.z, x_1671.y);
        let x_1674 : vec4<f32> = u_xlat8;
        let x_1677 : vec2<f32> = ((vec2<f32>(x_1674.y, x_1674.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1678 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1677.x, x_1678.y, x_1677.y, x_1678.w);
        let x_1681 : f32 = u_xlat52.y;
        u_xlat11.y = x_1681;
        let x_1683 : vec4<f32> = u_xlat11;
        let x_1684 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1683 + x_1684);
        let x_1686 : vec4<f32> = u_xlat9;
        let x_1687 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1686 / x_1687);
        let x_1689 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1689 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1695 : vec4<f32> = u_xlat11;
        let x_1696 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1695 / x_1696);
        let x_1698 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1698 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1700 : vec4<f32> = u_xlat9;
        let x_1703 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1700.w, x_1700.x, x_1700.y, x_1700.z) * vec4<f32>(x_1703.x, x_1703.x, x_1703.x, x_1703.x));
        let x_1706 : vec4<f32> = u_xlat11;
        let x_1709 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1706.x, x_1706.w, x_1706.y, x_1706.z) * vec4<f32>(x_1709.y, x_1709.y, x_1709.y, x_1709.y));
        let x_1712 : vec4<f32> = u_xlat9;
        let x_1713 : vec3<f32> = vec3<f32>(x_1712.y, x_1712.z, x_1712.w);
        let x_1714 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1713.x, x_1714.y, x_1713.y, x_1713.z);
        let x_1717 : f32 = u_xlat11.x;
        u_xlat12.y = x_1717;
        let x_1719 : vec3<f32> = u_xlat28;
        let x_1722 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1725 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1719.x, x_1719.y, x_1719.x, x_1719.y) * vec4<f32>(x_1722.x, x_1722.y, x_1722.x, x_1722.y)) + vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1725.y));
        let x_1728 : vec3<f32> = u_xlat28;
        let x_1731 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat12;
        let x_1736 : vec2<f32> = ((vec2<f32>(x_1728.x, x_1728.y) * vec2<f32>(x_1731.x, x_1731.y)) + vec2<f32>(x_1734.w, x_1734.y));
        let x_1737 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1736.x, x_1736.y, x_1737.z, x_1737.w);
        let x_1740 : f32 = u_xlat12.y;
        u_xlat9.y = x_1740;
        let x_1743 : f32 = u_xlat11.z;
        u_xlat12.y = x_1743;
        let x_1745 : vec3<f32> = u_xlat28;
        let x_1748 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1751 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1745.x, x_1745.y, x_1745.x, x_1745.y) * vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y)) + vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1751.y));
        let x_1755 : vec3<f32> = u_xlat28;
        let x_1758 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1761 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1755.x, x_1755.y) * vec2<f32>(x_1758.x, x_1758.y)) + vec2<f32>(x_1761.w, x_1761.y));
        let x_1765 : f32 = u_xlat12.y;
        u_xlat9.z = x_1765;
        let x_1767 : vec3<f32> = u_xlat28;
        let x_1770 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1773 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1767.x, x_1767.y, x_1767.x, x_1767.y) * vec4<f32>(x_1770.x, x_1770.y, x_1770.x, x_1770.y)) + vec4<f32>(x_1773.x, x_1773.y, x_1773.x, x_1773.z));
        let x_1777 : f32 = u_xlat11.w;
        u_xlat12.y = x_1777;
        let x_1780 : vec3<f32> = u_xlat28;
        let x_1783 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1786 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1780.x, x_1780.y, x_1780.x, x_1780.y) * vec4<f32>(x_1783.x, x_1783.y, x_1783.x, x_1783.y)) + vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1786.y));
        let x_1790 : vec3<f32> = u_xlat28;
        let x_1793 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1796 : vec4<f32> = u_xlat12;
        u_xlat31 = ((vec2<f32>(x_1790.x, x_1790.y) * vec2<f32>(x_1793.x, x_1793.y)) + vec2<f32>(x_1796.w, x_1796.y));
        let x_1800 : f32 = u_xlat12.y;
        u_xlat9.w = x_1800;
        let x_1803 : vec3<f32> = u_xlat28;
        let x_1806 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.x, x_1809.w));
        let x_1812 : vec4<f32> = u_xlat12;
        let x_1813 : vec3<f32> = vec3<f32>(x_1812.x, x_1812.z, x_1812.w);
        let x_1814 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1813.x, x_1814.y, x_1813.y, x_1813.z);
        let x_1816 : vec3<f32> = u_xlat28;
        let x_1819 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1822 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1816.x, x_1816.y, x_1816.x, x_1816.y) * vec4<f32>(x_1819.x, x_1819.y, x_1819.x, x_1819.y)) + vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1822.y));
        let x_1826 : vec3<f32> = u_xlat28;
        let x_1829 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1832 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(x_1829.x, x_1829.y)) + vec2<f32>(x_1832.w, x_1832.y));
        let x_1836 : f32 = u_xlat9.x;
        u_xlat11.x = x_1836;
        let x_1838 : vec3<f32> = u_xlat28;
        let x_1841 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1844 : vec4<f32> = u_xlat11;
        let x_1846 : vec2<f32> = ((vec2<f32>(x_1838.x, x_1838.y) * vec2<f32>(x_1841.x, x_1841.y)) + vec2<f32>(x_1844.x, x_1844.y));
        let x_1847 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1846.x, x_1846.y, x_1847.z);
        let x_1850 : vec4<f32> = u_xlat8;
        let x_1852 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1850.x, x_1850.x, x_1850.x, x_1850.x) * x_1852);
        let x_1855 : vec4<f32> = u_xlat8;
        let x_1857 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1855.y, x_1855.y, x_1855.y, x_1855.y) * x_1857);
        let x_1860 : vec4<f32> = u_xlat8;
        let x_1862 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1860.z, x_1860.z, x_1860.z, x_1860.z) * x_1862);
        let x_1864 : vec4<f32> = u_xlat8;
        let x_1866 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1864.w, x_1864.w, x_1864.w, x_1864.w) * x_1866);
        let x_1869 : vec4<f32> = u_xlat13;
        let x_1870 : vec2<f32> = vec2<f32>(x_1869.x, x_1869.y);
        let x_1872 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
        let x_1879 : vec3<f32> = txVec13;
        let x_1881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1879.xy, x_1879.z);
        u_xlat72 = x_1881;
        let x_1883 : vec4<f32> = u_xlat13;
        let x_1884 : vec2<f32> = vec2<f32>(x_1883.z, x_1883.w);
        let x_1886 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1884.x, x_1884.y, x_1886);
        let x_1894 : vec3<f32> = txVec14;
        let x_1896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1894.xy, x_1894.z);
        u_xlat73 = x_1896;
        let x_1897 : f32 = u_xlat73;
        let x_1899 : f32 = u_xlat19.y;
        u_xlat73 = (x_1897 * x_1899);
        let x_1902 : f32 = u_xlat19.x;
        let x_1903 : f32 = u_xlat72;
        let x_1905 : f32 = u_xlat73;
        u_xlat72 = ((x_1902 * x_1903) + x_1905);
        let x_1908 : vec4<f32> = u_xlat14;
        let x_1909 : vec2<f32> = vec2<f32>(x_1908.x, x_1908.y);
        let x_1911 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1909.x, x_1909.y, x_1911);
        let x_1918 : vec3<f32> = txVec15;
        let x_1920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1918.xy, x_1918.z);
        u_xlat73 = x_1920;
        let x_1922 : f32 = u_xlat19.z;
        let x_1923 : f32 = u_xlat73;
        let x_1925 : f32 = u_xlat72;
        u_xlat72 = ((x_1922 * x_1923) + x_1925);
        let x_1928 : vec4<f32> = u_xlat16;
        let x_1929 : vec2<f32> = vec2<f32>(x_1928.x, x_1928.y);
        let x_1931 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1929.x, x_1929.y, x_1931);
        let x_1938 : vec3<f32> = txVec16;
        let x_1940 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1938.xy, x_1938.z);
        u_xlat73 = x_1940;
        let x_1942 : f32 = u_xlat19.w;
        let x_1943 : f32 = u_xlat73;
        let x_1945 : f32 = u_xlat72;
        u_xlat72 = ((x_1942 * x_1943) + x_1945);
        let x_1948 : vec4<f32> = u_xlat15;
        let x_1949 : vec2<f32> = vec2<f32>(x_1948.x, x_1948.y);
        let x_1951 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1949.x, x_1949.y, x_1951);
        let x_1958 : vec3<f32> = txVec17;
        let x_1960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1958.xy, x_1958.z);
        u_xlat73 = x_1960;
        let x_1962 : f32 = u_xlat20.x;
        let x_1963 : f32 = u_xlat73;
        let x_1965 : f32 = u_xlat72;
        u_xlat72 = ((x_1962 * x_1963) + x_1965);
        let x_1968 : vec4<f32> = u_xlat15;
        let x_1969 : vec2<f32> = vec2<f32>(x_1968.z, x_1968.w);
        let x_1971 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1969.x, x_1969.y, x_1971);
        let x_1978 : vec3<f32> = txVec18;
        let x_1980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1978.xy, x_1978.z);
        u_xlat73 = x_1980;
        let x_1982 : f32 = u_xlat20.y;
        let x_1983 : f32 = u_xlat73;
        let x_1985 : f32 = u_xlat72;
        u_xlat72 = ((x_1982 * x_1983) + x_1985);
        let x_1988 : vec2<f32> = u_xlat58;
        let x_1990 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1988.x, x_1988.y, x_1990);
        let x_1997 : vec3<f32> = txVec19;
        let x_1999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1997.xy, x_1997.z);
        u_xlat73 = x_1999;
        let x_2001 : f32 = u_xlat20.z;
        let x_2002 : f32 = u_xlat73;
        let x_2004 : f32 = u_xlat72;
        u_xlat72 = ((x_2001 * x_2002) + x_2004);
        let x_2007 : vec4<f32> = u_xlat16;
        let x_2008 : vec2<f32> = vec2<f32>(x_2007.z, x_2007.w);
        let x_2010 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_2008.x, x_2008.y, x_2010);
        let x_2017 : vec3<f32> = txVec20;
        let x_2019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2017.xy, x_2017.z);
        u_xlat73 = x_2019;
        let x_2021 : f32 = u_xlat20.w;
        let x_2022 : f32 = u_xlat73;
        let x_2024 : f32 = u_xlat72;
        u_xlat72 = ((x_2021 * x_2022) + x_2024);
        let x_2027 : vec4<f32> = u_xlat17;
        let x_2028 : vec2<f32> = vec2<f32>(x_2027.x, x_2027.y);
        let x_2030 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_2028.x, x_2028.y, x_2030);
        let x_2037 : vec3<f32> = txVec21;
        let x_2039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2037.xy, x_2037.z);
        u_xlat73 = x_2039;
        let x_2041 : f32 = u_xlat21.x;
        let x_2042 : f32 = u_xlat73;
        let x_2044 : f32 = u_xlat72;
        u_xlat72 = ((x_2041 * x_2042) + x_2044);
        let x_2047 : vec4<f32> = u_xlat17;
        let x_2048 : vec2<f32> = vec2<f32>(x_2047.z, x_2047.w);
        let x_2050 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2048.x, x_2048.y, x_2050);
        let x_2057 : vec3<f32> = txVec22;
        let x_2059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2057.xy, x_2057.z);
        u_xlat73 = x_2059;
        let x_2061 : f32 = u_xlat21.y;
        let x_2062 : f32 = u_xlat73;
        let x_2064 : f32 = u_xlat72;
        u_xlat72 = ((x_2061 * x_2062) + x_2064);
        let x_2067 : vec2<f32> = u_xlat31;
        let x_2069 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
        let x_2076 : vec3<f32> = txVec23;
        let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2076.xy, x_2076.z);
        u_xlat73 = x_2078;
        let x_2080 : f32 = u_xlat21.z;
        let x_2081 : f32 = u_xlat73;
        let x_2083 : f32 = u_xlat72;
        u_xlat72 = ((x_2080 * x_2081) + x_2083);
        let x_2086 : vec2<f32> = u_xlat18;
        let x_2088 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2086.x, x_2086.y, x_2088);
        let x_2095 : vec3<f32> = txVec24;
        let x_2097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2095.xy, x_2095.z);
        u_xlat73 = x_2097;
        let x_2099 : f32 = u_xlat21.w;
        let x_2100 : f32 = u_xlat73;
        let x_2102 : f32 = u_xlat72;
        u_xlat72 = ((x_2099 * x_2100) + x_2102);
        let x_2105 : vec4<f32> = u_xlat12;
        let x_2106 : vec2<f32> = vec2<f32>(x_2105.x, x_2105.y);
        let x_2108 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2106.x, x_2106.y, x_2108);
        let x_2115 : vec3<f32> = txVec25;
        let x_2117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2115.xy, x_2115.z);
        u_xlat73 = x_2117;
        let x_2119 : f32 = u_xlat8.x;
        let x_2120 : f32 = u_xlat73;
        let x_2122 : f32 = u_xlat72;
        u_xlat72 = ((x_2119 * x_2120) + x_2122);
        let x_2125 : vec4<f32> = u_xlat12;
        let x_2126 : vec2<f32> = vec2<f32>(x_2125.z, x_2125.w);
        let x_2128 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2126.x, x_2126.y, x_2128);
        let x_2135 : vec3<f32> = txVec26;
        let x_2137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2135.xy, x_2135.z);
        u_xlat73 = x_2137;
        let x_2139 : f32 = u_xlat8.y;
        let x_2140 : f32 = u_xlat73;
        let x_2142 : f32 = u_xlat72;
        u_xlat72 = ((x_2139 * x_2140) + x_2142);
        let x_2145 : vec2<f32> = u_xlat55;
        let x_2147 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2145.x, x_2145.y, x_2147);
        let x_2154 : vec3<f32> = txVec27;
        let x_2156 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2154.xy, x_2154.z);
        u_xlat73 = x_2156;
        let x_2158 : f32 = u_xlat8.z;
        let x_2159 : f32 = u_xlat73;
        let x_2161 : f32 = u_xlat72;
        u_xlat72 = ((x_2158 * x_2159) + x_2161);
        let x_2164 : vec3<f32> = u_xlat28;
        let x_2165 : vec2<f32> = vec2<f32>(x_2164.x, x_2164.y);
        let x_2167 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2165.x, x_2165.y, x_2167);
        let x_2174 : vec3<f32> = txVec28;
        let x_2176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2174.xy, x_2174.z);
        u_xlat28.x = x_2176;
        let x_2179 : f32 = u_xlat8.w;
        let x_2181 : f32 = u_xlat28.x;
        let x_2183 : f32 = u_xlat72;
        u_xlat71 = ((x_2179 * x_2181) + x_2183);
      }
    }
  } else {
    let x_2187 : vec4<f32> = u_xlat3;
    let x_2188 : vec2<f32> = vec2<f32>(x_2187.x, x_2187.y);
    let x_2190 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2188.x, x_2188.y, x_2190);
    let x_2197 : vec3<f32> = txVec29;
    let x_2199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2197.xy, x_2197.z);
    u_xlat71 = x_2199;
  }
  let x_2201 : f32 = x_595.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2201) + 1.0f);
  let x_2205 : f32 = u_xlat71;
  let x_2207 : f32 = x_595.x_MainLightShadowParams.x;
  let x_2210 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2205 * x_2207) + x_2210);
  let x_2215 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f >= x_2215);
  let x_2219 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2219 >= 1.0f);
  let x_2221 : bool = u_xlatb47;
  let x_2222 : bool = u_xlatb25;
  u_xlatb25 = (x_2221 | x_2222);
  let x_2224 : bool = u_xlatb25;
  if (x_2224) {
    x_2225 = 1.0f;
  } else {
    let x_2230 : f32 = u_xlat3.x;
    x_2225 = x_2230;
  }
  let x_2231 : f32 = x_2225;
  u_xlat3.x = x_2231;
  let x_2233 : vec3<f32> = vs_TEXCOORD7;
  let x_2235 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2233 + -(x_2235));
  let x_2239 : vec3<f32> = u_xlat28;
  let x_2240 : vec3<f32> = u_xlat28;
  u_xlat25.x = dot(x_2239, x_2240);
  let x_2244 : f32 = u_xlat25.x;
  let x_2246 : f32 = x_595.x_MainLightShadowParams.z;
  let x_2249 : f32 = x_595.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2244 * x_2246) + x_2249);
  let x_2253 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2253, 0.0f, 1.0f);
  let x_2258 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2258) + 1.0f);
  let x_2262 : f32 = u_xlat25.x;
  let x_2263 : f32 = u_xlat47;
  let x_2266 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2262 * x_2263) + x_2266);
  let x_2269 : vec4<f32> = u_xlat6;
  let x_2272 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat28 = (vec3<f32>(x_2269.x, x_2269.x, x_2269.x) * vec3<f32>(x_2272.x, x_2272.y, x_2272.z));
  let x_2275 : vec4<f32> = u_xlat1;
  let x_2278 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(-(vec3<f32>(x_2275.x, x_2275.y, x_2275.z)), x_2278);
  let x_2282 : f32 = u_xlat25.x;
  let x_2284 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2282 + x_2284);
  let x_2287 : vec3<f32> = u_xlat2;
  let x_2288 : vec3<f32> = u_xlat25;
  let x_2292 : vec4<f32> = u_xlat1;
  let x_2295 : vec3<f32> = ((x_2287 * -(vec3<f32>(x_2288.x, x_2288.x, x_2288.x))) + -(vec3<f32>(x_2292.x, x_2292.y, x_2292.z)));
  let x_2296 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
  let x_2298 : vec3<f32> = u_xlat2;
  let x_2299 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2298, vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
  let x_2304 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2304, 0.0f, 1.0f);
  let x_2308 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2308) + 1.0f);
  let x_2313 : f32 = u_xlat25.x;
  let x_2315 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2313 * x_2315);
  let x_2319 : f32 = u_xlat25.x;
  let x_2321 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2319 * x_2321);
  let x_2325 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2325) * 0.699999988f) + 1.700000048f);
  let x_2332 : f32 = u_xlat0.x;
  let x_2333 : f32 = u_xlat47;
  u_xlat0.x = (x_2332 * x_2333);
  let x_2337 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2337 * 6.0f);
  let x_2349 : vec4<f32> = u_xlat8;
  let x_2352 : f32 = u_xlat0.x;
  let x_2353 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2349.x, x_2349.y, x_2349.z), x_2352);
  u_xlat8 = x_2353;
  let x_2355 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2355 + -1.0f);
  let x_2363 : f32 = x_2361.unity_SpecCube0_HDR.w;
  let x_2365 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2363 * x_2365) + 1.0f);
  let x_2370 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2370, 0.0f);
  let x_2374 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2374);
  let x_2378 : f32 = u_xlat0.x;
  let x_2380 : f32 = x_2361.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2378 * x_2380);
  let x_2384 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2384);
  let x_2388 : f32 = u_xlat0.x;
  let x_2390 : f32 = x_2361.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2388 * x_2390);
  let x_2393 : vec4<f32> = u_xlat8;
  let x_2395 : vec3<f32> = u_xlat0;
  let x_2397 : vec3<f32> = (vec3<f32>(x_2393.x, x_2393.y, x_2393.z) * vec3<f32>(x_2395.x, x_2395.x, x_2395.x));
  let x_2398 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
  let x_2400 : f32 = u_xlat44;
  let x_2402 : f32 = u_xlat44;
  let x_2406 : vec2<f32> = ((vec2<f32>(x_2400, x_2400) * vec2<f32>(x_2402, x_2402)) + vec2<f32>(-1.0f, 1.0f));
  let x_2407 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2406.x, x_2407.y, x_2406.y);
  let x_2410 : f32 = u_xlat0.z;
  u_xlat44 = (1.0f / x_2410);
  let x_2412 : vec4<f32> = u_xlat5;
  let x_2415 : f32 = u_xlat69;
  let x_2417 : vec3<f32> = (-(vec3<f32>(x_2412.x, x_2412.y, x_2412.z)) + vec3<f32>(x_2415, x_2415, x_2415));
  let x_2418 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2417.x, x_2417.y, x_2417.z, x_2418.w);
  let x_2420 : vec3<f32> = u_xlat25;
  let x_2422 : vec4<f32> = u_xlat9;
  let x_2425 : vec4<f32> = u_xlat5;
  u_xlat25 = ((vec3<f32>(x_2420.x, x_2420.x, x_2420.x) * vec3<f32>(x_2422.x, x_2422.y, x_2422.z)) + vec3<f32>(x_2425.x, x_2425.y, x_2425.z));
  let x_2428 : f32 = u_xlat44;
  let x_2430 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2428, x_2428, x_2428) * x_2430);
  let x_2432 : vec3<f32> = u_xlat25;
  let x_2433 : vec4<f32> = u_xlat8;
  u_xlat25 = (x_2432 * vec3<f32>(x_2433.x, x_2433.y, x_2433.z));
  let x_2436 : vec4<f32> = u_xlat4;
  let x_2438 : vec4<f32> = u_xlat7;
  let x_2441 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_2436.x, x_2436.y, x_2436.z) * vec3<f32>(x_2438.x, x_2438.y, x_2438.z)) + x_2441);
  let x_2444 : f32 = u_xlat3.x;
  let x_2446 : f32 = x_2361.unity_LightData.z;
  u_xlat44 = (x_2444 * x_2446);
  let x_2448 : vec3<f32> = u_xlat2;
  let x_2450 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_2448, vec3<f32>(x_2450.x, x_2450.y, x_2450.z));
  let x_2455 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2455, 0.0f, 1.0f);
  let x_2458 : f32 = u_xlat44;
  let x_2460 : f32 = u_xlat3.x;
  u_xlat44 = (x_2458 * x_2460);
  let x_2462 : f32 = u_xlat44;
  let x_2464 : vec3<f32> = u_xlat28;
  let x_2465 : vec3<f32> = (vec3<f32>(x_2462, x_2462, x_2462) * x_2464);
  let x_2466 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
  let x_2468 : vec4<f32> = u_xlat1;
  let x_2471 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2468.x, x_2468.y, x_2468.z) + vec3<f32>(x_2471.x, x_2471.y, x_2471.z));
  let x_2474 : vec3<f32> = u_xlat28;
  let x_2475 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2474, x_2475);
  let x_2477 : f32 = u_xlat44;
  u_xlat44 = max(x_2477, 1.17549435e-37f);
  let x_2480 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_2480);
  let x_2482 : f32 = u_xlat44;
  let x_2484 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2482, x_2482, x_2482) * x_2484);
  let x_2486 : vec3<f32> = u_xlat2;
  let x_2487 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2486, x_2487);
  let x_2489 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2489, 0.0f, 1.0f);
  let x_2492 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2494 : vec3<f32> = u_xlat28;
  u_xlat3.x = dot(vec3<f32>(x_2492.x, x_2492.y, x_2492.z), x_2494);
  let x_2498 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2498, 0.0f, 1.0f);
  let x_2501 : f32 = u_xlat44;
  let x_2502 : f32 = u_xlat44;
  u_xlat44 = (x_2501 * x_2502);
  let x_2504 : f32 = u_xlat44;
  let x_2506 : f32 = u_xlat0.x;
  u_xlat44 = ((x_2504 * x_2506) + 1.000010014f);
  let x_2511 : f32 = u_xlat3.x;
  let x_2513 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2511 * x_2513);
  let x_2516 : f32 = u_xlat44;
  let x_2517 : f32 = u_xlat44;
  u_xlat44 = (x_2516 * x_2517);
  let x_2520 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2520, 0.100000001f);
  let x_2524 : f32 = u_xlat44;
  let x_2526 : f32 = u_xlat3.x;
  u_xlat44 = (x_2524 * x_2526);
  let x_2528 : f32 = u_xlat70;
  let x_2529 : f32 = u_xlat44;
  u_xlat44 = (x_2528 * x_2529);
  let x_2531 : f32 = u_xlat68;
  let x_2532 : f32 = u_xlat44;
  u_xlat44 = (x_2531 / x_2532);
  let x_2534 : vec4<f32> = u_xlat5;
  let x_2536 : f32 = u_xlat44;
  let x_2539 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2534.x, x_2534.y, x_2534.z) * vec3<f32>(x_2536, x_2536, x_2536)) + vec3<f32>(x_2539.x, x_2539.y, x_2539.z));
  let x_2542 : vec4<f32> = u_xlat4;
  let x_2544 : vec3<f32> = u_xlat28;
  let x_2545 : vec3<f32> = (vec3<f32>(x_2542.x, x_2542.y, x_2542.z) * x_2544);
  let x_2546 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2545.x, x_2545.y, x_2545.z, x_2546.w);
  let x_2549 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2551 : f32 = x_2361.unity_LightData.y;
  u_xlat44 = min(x_2549, x_2551);
  let x_2554 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_2554));
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2566 : u32 = u_xlatu_loop_1;
    let x_2567 : u32 = u_xlatu44;
    if ((x_2566 < x_2567)) {
    } else {
      break;
    }
    let x_2570 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2570 >> 2u);
    let x_2573 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_2573 & 3u));
    let x_2576 : u32 = u_xlatu71;
    let x_2579 : vec4<f32> = x_2361.unity_LightIndices[bitcast<i32>(x_2576)];
    let x_2589 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2594 : vec4<u32> = indexable[x_2589];
    u_xlat71 = dot(x_2579, bitcast<vec4<f32>>(x_2594));
    let x_2598 : f32 = u_xlat71;
    u_xlati71 = i32(x_2598);
    let x_2600 : vec3<f32> = vs_TEXCOORD7;
    let x_2612 : i32 = u_xlati71;
    let x_2614 : vec4<f32> = x_2611.x_AdditionalLightsPosition[x_2612];
    let x_2617 : i32 = u_xlati71;
    let x_2619 : vec4<f32> = x_2611.x_AdditionalLightsPosition[x_2617];
    let x_2621 : vec3<f32> = ((-(x_2600) * vec3<f32>(x_2614.w, x_2614.w, x_2614.w)) + vec3<f32>(x_2619.x, x_2619.y, x_2619.z));
    let x_2622 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2621.x, x_2621.y, x_2621.z, x_2622.w);
    let x_2624 : vec4<f32> = u_xlat8;
    let x_2626 : vec4<f32> = u_xlat8;
    u_xlat73 = dot(vec3<f32>(x_2624.x, x_2624.y, x_2624.z), vec3<f32>(x_2626.x, x_2626.y, x_2626.z));
    let x_2629 : f32 = u_xlat73;
    u_xlat73 = max(x_2629, 6.10351562e-05f);
    let x_2632 : f32 = u_xlat73;
    u_xlat74 = inverseSqrt(x_2632);
    let x_2634 : f32 = u_xlat74;
    let x_2636 : vec4<f32> = u_xlat8;
    let x_2638 : vec3<f32> = (vec3<f32>(x_2634, x_2634, x_2634) * vec3<f32>(x_2636.x, x_2636.y, x_2636.z));
    let x_2639 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2638.x, x_2638.y, x_2638.z, x_2639.w);
    let x_2642 : f32 = u_xlat73;
    u_xlat75 = (1.0f / x_2642);
    let x_2644 : f32 = u_xlat73;
    let x_2645 : i32 = u_xlati71;
    let x_2647 : f32 = x_2611.x_AdditionalLightsAttenuation[x_2645].x;
    u_xlat73 = (x_2644 * x_2647);
    let x_2649 : f32 = u_xlat73;
    let x_2651 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2649) * x_2651) + 1.0f);
    let x_2654 : f32 = u_xlat73;
    u_xlat73 = max(x_2654, 0.0f);
    let x_2656 : f32 = u_xlat73;
    let x_2657 : f32 = u_xlat73;
    u_xlat73 = (x_2656 * x_2657);
    let x_2659 : f32 = u_xlat73;
    let x_2660 : f32 = u_xlat75;
    u_xlat73 = (x_2659 * x_2660);
    let x_2662 : i32 = u_xlati71;
    let x_2664 : vec4<f32> = x_2611.x_AdditionalLightsSpotDir[x_2662];
    let x_2666 : vec4<f32> = u_xlat9;
    u_xlat75 = dot(vec3<f32>(x_2664.x, x_2664.y, x_2664.z), vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
    let x_2669 : f32 = u_xlat75;
    let x_2670 : i32 = u_xlati71;
    let x_2672 : f32 = x_2611.x_AdditionalLightsAttenuation[x_2670].z;
    let x_2674 : i32 = u_xlati71;
    let x_2676 : f32 = x_2611.x_AdditionalLightsAttenuation[x_2674].w;
    u_xlat75 = ((x_2669 * x_2672) + x_2676);
    let x_2678 : f32 = u_xlat75;
    u_xlat75 = clamp(x_2678, 0.0f, 1.0f);
    let x_2680 : f32 = u_xlat75;
    let x_2681 : f32 = u_xlat75;
    u_xlat75 = (x_2680 * x_2681);
    let x_2683 : f32 = u_xlat73;
    let x_2684 : f32 = u_xlat75;
    u_xlat73 = (x_2683 * x_2684);
    let x_2686 : vec4<f32> = u_xlat6;
    let x_2688 : i32 = u_xlati71;
    let x_2690 : vec4<f32> = x_2611.x_AdditionalLightsColor[x_2688];
    let x_2692 : vec3<f32> = (vec3<f32>(x_2686.x, x_2686.x, x_2686.x) * vec3<f32>(x_2690.x, x_2690.y, x_2690.z));
    let x_2693 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2692.x, x_2692.y, x_2692.z, x_2693.w);
    let x_2695 : vec3<f32> = u_xlat2;
    let x_2696 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(x_2695, vec3<f32>(x_2696.x, x_2696.y, x_2696.z));
    let x_2699 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2699, 0.0f, 1.0f);
    let x_2701 : f32 = u_xlat71;
    let x_2702 : f32 = u_xlat73;
    u_xlat71 = (x_2701 * x_2702);
    let x_2704 : f32 = u_xlat71;
    let x_2706 : vec4<f32> = u_xlat10;
    let x_2708 : vec3<f32> = (vec3<f32>(x_2704, x_2704, x_2704) * vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
    let x_2709 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2709.w);
    let x_2711 : vec4<f32> = u_xlat8;
    let x_2713 : f32 = u_xlat74;
    let x_2716 : vec4<f32> = u_xlat1;
    let x_2718 : vec3<f32> = ((vec3<f32>(x_2711.x, x_2711.y, x_2711.z) * vec3<f32>(x_2713, x_2713, x_2713)) + vec3<f32>(x_2716.x, x_2716.y, x_2716.z));
    let x_2719 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
    let x_2721 : vec4<f32> = u_xlat8;
    let x_2723 : vec4<f32> = u_xlat8;
    u_xlat71 = dot(vec3<f32>(x_2721.x, x_2721.y, x_2721.z), vec3<f32>(x_2723.x, x_2723.y, x_2723.z));
    let x_2726 : f32 = u_xlat71;
    u_xlat71 = max(x_2726, 1.17549435e-37f);
    let x_2728 : f32 = u_xlat71;
    u_xlat71 = inverseSqrt(x_2728);
    let x_2730 : f32 = u_xlat71;
    let x_2732 : vec4<f32> = u_xlat8;
    let x_2734 : vec3<f32> = (vec3<f32>(x_2730, x_2730, x_2730) * vec3<f32>(x_2732.x, x_2732.y, x_2732.z));
    let x_2735 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
    let x_2737 : vec3<f32> = u_xlat2;
    let x_2738 : vec4<f32> = u_xlat8;
    u_xlat71 = dot(x_2737, vec3<f32>(x_2738.x, x_2738.y, x_2738.z));
    let x_2741 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2741, 0.0f, 1.0f);
    let x_2743 : vec4<f32> = u_xlat9;
    let x_2745 : vec4<f32> = u_xlat8;
    u_xlat73 = dot(vec3<f32>(x_2743.x, x_2743.y, x_2743.z), vec3<f32>(x_2745.x, x_2745.y, x_2745.z));
    let x_2748 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2748, 0.0f, 1.0f);
    let x_2750 : f32 = u_xlat71;
    let x_2751 : f32 = u_xlat71;
    u_xlat71 = (x_2750 * x_2751);
    let x_2753 : f32 = u_xlat71;
    let x_2755 : f32 = u_xlat0.x;
    u_xlat71 = ((x_2753 * x_2755) + 1.000010014f);
    let x_2758 : f32 = u_xlat73;
    let x_2759 : f32 = u_xlat73;
    u_xlat73 = (x_2758 * x_2759);
    let x_2761 : f32 = u_xlat71;
    let x_2762 : f32 = u_xlat71;
    u_xlat71 = (x_2761 * x_2762);
    let x_2764 : f32 = u_xlat73;
    u_xlat73 = max(x_2764, 0.100000001f);
    let x_2766 : f32 = u_xlat71;
    let x_2767 : f32 = u_xlat73;
    u_xlat71 = (x_2766 * x_2767);
    let x_2769 : f32 = u_xlat70;
    let x_2770 : f32 = u_xlat71;
    u_xlat71 = (x_2769 * x_2770);
    let x_2772 : f32 = u_xlat68;
    let x_2773 : f32 = u_xlat71;
    u_xlat71 = (x_2772 / x_2773);
    let x_2775 : vec4<f32> = u_xlat5;
    let x_2777 : f32 = u_xlat71;
    let x_2780 : vec4<f32> = u_xlat7;
    let x_2782 : vec3<f32> = ((vec3<f32>(x_2775.x, x_2775.y, x_2775.z) * vec3<f32>(x_2777, x_2777, x_2777)) + vec3<f32>(x_2780.x, x_2780.y, x_2780.z));
    let x_2783 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2782.x, x_2782.y, x_2782.z, x_2783.w);
    let x_2785 : vec4<f32> = u_xlat8;
    let x_2787 : vec4<f32> = u_xlat10;
    let x_2790 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2785.x, x_2785.y, x_2785.z) * vec3<f32>(x_2787.x, x_2787.y, x_2787.z)) + x_2790);

    continuing {
      let x_2792 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2792 + bitcast<u32>(1i));
    }
  }
  let x_2794 : vec3<f32> = u_xlat25;
  let x_2795 : f32 = u_xlat22;
  let x_2798 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_2794 * vec3<f32>(x_2795, x_2795, x_2795)) + vec3<f32>(x_2798.x, x_2798.y, x_2798.z));
  let x_2801 : vec3<f32> = u_xlat28;
  let x_2802 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2801 + x_2802);
  let x_2804 : f32 = u_xlat66;
  let x_2806 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2804, x_2804, x_2804) * x_2806);
  let x_2808 : f32 = u_xlat67;
  let x_2809 : f32 = u_xlat67;
  u_xlat66 = (x_2808 * -(x_2809));
  let x_2812 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2812);
  let x_2816 : vec3<f32> = u_xlat0;
  let x_2817 : f32 = u_xlat66;
  let x_2819 : vec3<f32> = (x_2816 * vec3<f32>(x_2817, x_2817, x_2817));
  let x_2820 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2819.x, x_2819.y, x_2819.z, x_2820.w);
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

