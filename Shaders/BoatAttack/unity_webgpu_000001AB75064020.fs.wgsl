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

@group(1) @binding(4) var<uniform> x_595 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2322 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2572 : AdditionalLights;

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
  var x_2186 : f32;
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
      let x_1033 : f32 = x_595.x_MainLightShadowParams.y;
      u_xlatb28 = (x_1033 == 2.0f);
      let x_1035 : bool = u_xlatb28;
      if (x_1035) {
        let x_1039 : vec4<f32> = u_xlat3;
        let x_1042 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1045 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.y) * vec2<f32>(x_1042.z, x_1042.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1046 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1045.x, x_1045.y, x_1046.z);
        let x_1048 : vec3<f32> = u_xlat28;
        let x_1050 : vec2<f32> = floor(vec2<f32>(x_1048.x, x_1048.y));
        let x_1051 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1050.x, x_1050.y, x_1051.z);
        let x_1053 : vec4<f32> = u_xlat3;
        let x_1056 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1059 : vec3<f32> = u_xlat28;
        let x_1062 : vec2<f32> = ((vec2<f32>(x_1053.x, x_1053.y) * vec2<f32>(x_1056.z, x_1056.w)) + -(vec2<f32>(x_1059.x, x_1059.y)));
        let x_1063 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1065.x, x_1065.x, x_1065.y, x_1065.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1069 : vec4<f32> = u_xlat9;
        let x_1071 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1069.x, x_1069.x, x_1069.z, x_1069.z) * vec4<f32>(x_1071.x, x_1071.x, x_1071.z, x_1071.z));
        let x_1076 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_1076.y, x_1076.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1081 : vec4<f32> = u_xlat10;
        let x_1084 : vec4<f32> = u_xlat8;
        let x_1087 : vec2<f32> = ((vec2<f32>(x_1081.x, x_1081.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1084.x, x_1084.y)));
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1093 : vec2<f32> = (-(vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1094 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1093.x, x_1093.y, x_1094.z, x_1094.w);
        let x_1097 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_1097.x, x_1097.y), vec2<f32>(0.0f, 0.0f));
        let x_1101 : vec2<f32> = u_xlat54;
        let x_1103 : vec2<f32> = u_xlat54;
        let x_1105 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_1101) * x_1103) + vec2<f32>(x_1105.x, x_1105.y));
        let x_1108 : vec4<f32> = u_xlat8;
        let x_1110 : vec2<f32> = max(vec2<f32>(x_1108.x, x_1108.y), vec2<f32>(0.0f, 0.0f));
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec4<f32> = u_xlat8;
        let x_1116 : vec4<f32> = u_xlat8;
        let x_1119 : vec4<f32> = u_xlat9;
        let x_1121 : vec2<f32> = ((-(vec2<f32>(x_1113.x, x_1113.y)) * vec2<f32>(x_1116.x, x_1116.y)) + vec2<f32>(x_1119.y, x_1119.w));
        let x_1122 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
        let x_1124 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_1124 + vec2<f32>(1.0f, 1.0f));
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1128 : vec2<f32> = (vec2<f32>(x_1126.x, x_1126.y) + vec2<f32>(1.0f, 1.0f));
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1135 : vec2<f32> = (vec2<f32>(x_1131.x, x_1131.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1136 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1138 : vec4<f32> = u_xlat10;
        let x_1140 : vec2<f32> = (vec2<f32>(x_1138.x, x_1138.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1141 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1140.x, x_1140.y, x_1141.z, x_1141.w);
        let x_1143 : vec2<f32> = u_xlat54;
        let x_1144 : vec2<f32> = (x_1143 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat8;
        let x_1149 : vec2<f32> = (vec2<f32>(x_1147.x, x_1147.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1150 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec4<f32> = u_xlat9;
        let x_1154 : vec2<f32> = (vec2<f32>(x_1152.y, x_1152.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1158 : f32 = u_xlat10.x;
        u_xlat11.z = x_1158;
        let x_1161 : f32 = u_xlat8.x;
        u_xlat11.w = x_1161;
        let x_1164 : f32 = u_xlat13.x;
        u_xlat12.z = x_1164;
        let x_1167 : f32 = u_xlat52.x;
        u_xlat12.w = x_1167;
        let x_1169 : vec4<f32> = u_xlat11;
        let x_1171 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1169.z, x_1169.w, x_1169.x, x_1169.z) + vec4<f32>(x_1171.z, x_1171.w, x_1171.x, x_1171.z));
        let x_1175 : f32 = u_xlat11.y;
        u_xlat10.z = x_1175;
        let x_1178 : f32 = u_xlat8.y;
        u_xlat10.w = x_1178;
        let x_1181 : f32 = u_xlat12.y;
        u_xlat13.z = x_1181;
        let x_1184 : f32 = u_xlat52.y;
        u_xlat13.w = x_1184;
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1188 : vec4<f32> = u_xlat13;
        let x_1190 : vec3<f32> = (vec3<f32>(x_1186.z, x_1186.y, x_1186.w) + vec3<f32>(x_1188.z, x_1188.y, x_1188.w));
        let x_1191 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
        let x_1193 : vec4<f32> = u_xlat12;
        let x_1195 : vec4<f32> = u_xlat9;
        let x_1197 : vec3<f32> = (vec3<f32>(x_1193.x, x_1193.z, x_1193.w) / vec3<f32>(x_1195.z, x_1195.w, x_1195.y));
        let x_1198 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
        let x_1200 : vec4<f32> = u_xlat10;
        let x_1206 : vec3<f32> = (vec3<f32>(x_1200.x, x_1200.y, x_1200.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1207 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
        let x_1209 : vec4<f32> = u_xlat13;
        let x_1211 : vec4<f32> = u_xlat8;
        let x_1213 : vec3<f32> = (vec3<f32>(x_1209.z, x_1209.y, x_1209.w) / vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
        let x_1214 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
        let x_1216 : vec4<f32> = u_xlat11;
        let x_1218 : vec3<f32> = (vec3<f32>(x_1216.x, x_1216.y, x_1216.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1219 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1224 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1226 : vec3<f32> = (vec3<f32>(x_1221.y, x_1221.x, x_1221.z) * vec3<f32>(x_1224.x, x_1224.x, x_1224.x));
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat11;
        let x_1232 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1234 : vec3<f32> = (vec3<f32>(x_1229.x, x_1229.y, x_1229.z) * vec3<f32>(x_1232.y, x_1232.y, x_1232.y));
        let x_1235 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
        let x_1238 : f32 = u_xlat11.x;
        u_xlat10.w = x_1238;
        let x_1240 : vec3<f32> = u_xlat28;
        let x_1243 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1240.x, x_1240.y, x_1240.x, x_1240.y) * vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y)) + vec4<f32>(x_1246.y, x_1246.w, x_1246.x, x_1246.w));
        let x_1249 : vec3<f32> = u_xlat28;
        let x_1252 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1255 : vec4<f32> = u_xlat10;
        let x_1257 : vec2<f32> = ((vec2<f32>(x_1249.x, x_1249.y) * vec2<f32>(x_1252.x, x_1252.y)) + vec2<f32>(x_1255.z, x_1255.w));
        let x_1258 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1257.x, x_1257.y, x_1258.z, x_1258.w);
        let x_1261 : f32 = u_xlat10.y;
        u_xlat11.w = x_1261;
        let x_1263 : vec4<f32> = u_xlat11;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.y, x_1263.z);
        let x_1265 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1265.x, x_1264.x, x_1265.z, x_1264.y);
        let x_1268 : vec3<f32> = u_xlat28;
        let x_1271 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_1268.x, x_1268.y, x_1268.x, x_1268.y) * vec4<f32>(x_1271.x, x_1271.y, x_1271.x, x_1271.y)) + vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1274.y));
        let x_1277 : vec3<f32> = u_xlat28;
        let x_1280 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y) * vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y)) + vec4<f32>(x_1283.w, x_1283.y, x_1283.w, x_1283.z));
        let x_1286 : vec3<f32> = u_xlat28;
        let x_1289 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1286.x, x_1286.y, x_1286.x, x_1286.y) * vec4<f32>(x_1289.x, x_1289.y, x_1289.x, x_1289.y)) + vec4<f32>(x_1292.x, x_1292.w, x_1292.z, x_1292.w));
        let x_1296 : vec4<f32> = u_xlat8;
        let x_1298 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_1296.x, x_1296.x, x_1296.x, x_1296.y) * vec4<f32>(x_1298.z, x_1298.w, x_1298.y, x_1298.z));
        let x_1302 : vec4<f32> = u_xlat8;
        let x_1304 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1302.y, x_1302.y, x_1302.z, x_1302.z) * x_1304);
        let x_1307 : f32 = u_xlat8.z;
        let x_1309 : f32 = u_xlat9.y;
        u_xlat28.x = (x_1307 * x_1309);
        let x_1313 : vec4<f32> = u_xlat12;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.x, x_1313.y);
        let x_1316 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1324 : vec3<f32> = txVec4;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1324.xy, x_1324.z);
        u_xlat50 = x_1326;
        let x_1328 : vec4<f32> = u_xlat12;
        let x_1329 : vec2<f32> = vec2<f32>(x_1328.z, x_1328.w);
        let x_1331 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1329.x, x_1329.y, x_1331);
        let x_1339 : vec3<f32> = txVec5;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1339.xy, x_1339.z);
        u_xlat72 = x_1341;
        let x_1342 : f32 = u_xlat72;
        let x_1344 : f32 = u_xlat15.y;
        u_xlat72 = (x_1342 * x_1344);
        let x_1347 : f32 = u_xlat15.x;
        let x_1348 : f32 = u_xlat50;
        let x_1350 : f32 = u_xlat72;
        u_xlat50 = ((x_1347 * x_1348) + x_1350);
        let x_1353 : vec4<f32> = u_xlat13;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.x, x_1353.y);
        let x_1356 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec6;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1363.xy, x_1363.z);
        u_xlat72 = x_1365;
        let x_1367 : f32 = u_xlat15.z;
        let x_1368 : f32 = u_xlat72;
        let x_1370 : f32 = u_xlat50;
        u_xlat50 = ((x_1367 * x_1368) + x_1370);
        let x_1373 : vec4<f32> = u_xlat11;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.x, x_1373.y);
        let x_1376 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec7;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1383.xy, x_1383.z);
        u_xlat72 = x_1385;
        let x_1387 : f32 = u_xlat15.w;
        let x_1388 : f32 = u_xlat72;
        let x_1390 : f32 = u_xlat50;
        u_xlat50 = ((x_1387 * x_1388) + x_1390);
        let x_1393 : vec4<f32> = u_xlat14;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.x, x_1393.y);
        let x_1396 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec8;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1403.xy, x_1403.z);
        u_xlat72 = x_1405;
        let x_1407 : f32 = u_xlat16.x;
        let x_1408 : f32 = u_xlat72;
        let x_1410 : f32 = u_xlat50;
        u_xlat50 = ((x_1407 * x_1408) + x_1410);
        let x_1413 : vec4<f32> = u_xlat14;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.z, x_1413.w);
        let x_1416 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec9;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1423.xy, x_1423.z);
        u_xlat72 = x_1425;
        let x_1427 : f32 = u_xlat16.y;
        let x_1428 : f32 = u_xlat72;
        let x_1430 : f32 = u_xlat50;
        u_xlat50 = ((x_1427 * x_1428) + x_1430);
        let x_1433 : vec4<f32> = u_xlat11;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.z, x_1433.w);
        let x_1436 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec10;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1443.xy, x_1443.z);
        u_xlat72 = x_1445;
        let x_1447 : f32 = u_xlat16.z;
        let x_1448 : f32 = u_xlat72;
        let x_1450 : f32 = u_xlat50;
        u_xlat50 = ((x_1447 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat10;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.x, x_1453.y);
        let x_1456 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec11;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1463.xy, x_1463.z);
        u_xlat72 = x_1465;
        let x_1467 : f32 = u_xlat16.w;
        let x_1468 : f32 = u_xlat72;
        let x_1470 : f32 = u_xlat50;
        u_xlat50 = ((x_1467 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat10;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.z, x_1473.w);
        let x_1476 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec12;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1483.xy, x_1483.z);
        u_xlat72 = x_1485;
        let x_1487 : f32 = u_xlat28.x;
        let x_1488 : f32 = u_xlat72;
        let x_1490 : f32 = u_xlat50;
        u_xlat71 = ((x_1487 * x_1488) + x_1490);
      } else {
        let x_1493 : vec4<f32> = u_xlat3;
        let x_1496 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1499 : vec2<f32> = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.z, x_1496.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1500 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1499.x, x_1499.y, x_1500.z);
        let x_1502 : vec3<f32> = u_xlat28;
        let x_1504 : vec2<f32> = floor(vec2<f32>(x_1502.x, x_1502.y));
        let x_1505 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1504.x, x_1504.y, x_1505.z);
        let x_1507 : vec4<f32> = u_xlat3;
        let x_1510 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1513 : vec3<f32> = u_xlat28;
        let x_1516 : vec2<f32> = ((vec2<f32>(x_1507.x, x_1507.y) * vec2<f32>(x_1510.z, x_1510.w)) + -(vec2<f32>(x_1513.x, x_1513.y)));
        let x_1517 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1516.x, x_1516.y, x_1517.z, x_1517.w);
        let x_1519 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1519.x, x_1519.x, x_1519.y, x_1519.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1522 : vec4<f32> = u_xlat9;
        let x_1524 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1522.x, x_1522.x, x_1522.z, x_1522.z) * vec4<f32>(x_1524.x, x_1524.x, x_1524.z, x_1524.z));
        let x_1527 : vec4<f32> = u_xlat10;
        let x_1531 : vec2<f32> = (vec2<f32>(x_1527.y, x_1527.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1532 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1532.x, x_1531.x, x_1532.z, x_1531.y);
        let x_1534 : vec4<f32> = u_xlat10;
        let x_1537 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1534.x, x_1534.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1537.x, x_1537.y)));
        let x_1541 : vec4<f32> = u_xlat8;
        let x_1544 : vec2<f32> = (-(vec2<f32>(x_1541.x, x_1541.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1545 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1544.x, x_1545.y, x_1544.y, x_1545.w);
        let x_1547 : vec4<f32> = u_xlat8;
        let x_1549 : vec2<f32> = min(vec2<f32>(x_1547.x, x_1547.y), vec2<f32>(0.0f, 0.0f));
        let x_1550 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1549.x, x_1549.y, x_1550.z, x_1550.w);
        let x_1552 : vec4<f32> = u_xlat10;
        let x_1555 : vec4<f32> = u_xlat10;
        let x_1558 : vec4<f32> = u_xlat9;
        let x_1560 : vec2<f32> = ((-(vec2<f32>(x_1552.x, x_1552.y)) * vec2<f32>(x_1555.x, x_1555.y)) + vec2<f32>(x_1558.x, x_1558.z));
        let x_1561 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1560.x, x_1561.y, x_1560.y, x_1561.w);
        let x_1563 : vec4<f32> = u_xlat8;
        let x_1565 : vec2<f32> = max(vec2<f32>(x_1563.x, x_1563.y), vec2<f32>(0.0f, 0.0f));
        let x_1566 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1565.x, x_1565.y, x_1566.z, x_1566.w);
        let x_1568 : vec4<f32> = u_xlat10;
        let x_1571 : vec4<f32> = u_xlat10;
        let x_1574 : vec4<f32> = u_xlat9;
        let x_1576 : vec2<f32> = ((-(vec2<f32>(x_1568.x, x_1568.y)) * vec2<f32>(x_1571.x, x_1571.y)) + vec2<f32>(x_1574.y, x_1574.w));
        let x_1577 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1577.x, x_1576.x, x_1577.z, x_1576.y);
        let x_1579 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1579 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1583 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1583 * 0.081632003f);
        let x_1587 : vec2<f32> = u_xlat52;
        let x_1590 : vec2<f32> = (vec2<f32>(x_1587.y, x_1587.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1591 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1590.x, x_1590.y, x_1591.z, x_1591.w);
        let x_1593 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1593.x, x_1593.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1597 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1597 * 0.081632003f);
        let x_1601 : f32 = u_xlat12.y;
        u_xlat10.x = x_1601;
        let x_1603 : vec4<f32> = u_xlat8;
        let x_1610 : vec2<f32> = ((vec2<f32>(x_1603.x, x_1603.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1611 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1611.x, x_1610.x, x_1611.z, x_1610.y);
        let x_1613 : vec4<f32> = u_xlat8;
        let x_1617 : vec2<f32> = ((vec2<f32>(x_1613.x, x_1613.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1618 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1617.x, x_1618.y, x_1617.y, x_1618.w);
        let x_1621 : f32 = u_xlat52.x;
        u_xlat9.y = x_1621;
        let x_1624 : f32 = u_xlat11.y;
        u_xlat9.w = x_1624;
        let x_1626 : vec4<f32> = u_xlat9;
        let x_1627 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1626 + x_1627);
        let x_1629 : vec4<f32> = u_xlat8;
        let x_1632 : vec2<f32> = ((vec2<f32>(x_1629.y, x_1629.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1633 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1633.x, x_1632.x, x_1633.z, x_1632.y);
        let x_1635 : vec4<f32> = u_xlat8;
        let x_1638 : vec2<f32> = ((vec2<f32>(x_1635.y, x_1635.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1639 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1638.x, x_1639.y, x_1638.y, x_1639.w);
        let x_1642 : f32 = u_xlat52.y;
        u_xlat11.y = x_1642;
        let x_1644 : vec4<f32> = u_xlat11;
        let x_1645 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1644 + x_1645);
        let x_1647 : vec4<f32> = u_xlat9;
        let x_1648 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1647 / x_1648);
        let x_1650 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1650 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1656 : vec4<f32> = u_xlat11;
        let x_1657 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1656 / x_1657);
        let x_1659 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1659 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1661 : vec4<f32> = u_xlat9;
        let x_1664 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1661.w, x_1661.x, x_1661.y, x_1661.z) * vec4<f32>(x_1664.x, x_1664.x, x_1664.x, x_1664.x));
        let x_1667 : vec4<f32> = u_xlat11;
        let x_1670 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1667.x, x_1667.w, x_1667.y, x_1667.z) * vec4<f32>(x_1670.y, x_1670.y, x_1670.y, x_1670.y));
        let x_1673 : vec4<f32> = u_xlat9;
        let x_1674 : vec3<f32> = vec3<f32>(x_1673.y, x_1673.z, x_1673.w);
        let x_1675 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1674.x, x_1675.y, x_1674.y, x_1674.z);
        let x_1678 : f32 = u_xlat11.x;
        u_xlat12.y = x_1678;
        let x_1680 : vec3<f32> = u_xlat28;
        let x_1683 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1686 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1680.x, x_1680.y, x_1680.x, x_1680.y) * vec4<f32>(x_1683.x, x_1683.y, x_1683.x, x_1683.y)) + vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1686.y));
        let x_1689 : vec3<f32> = u_xlat28;
        let x_1692 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1695 : vec4<f32> = u_xlat12;
        let x_1697 : vec2<f32> = ((vec2<f32>(x_1689.x, x_1689.y) * vec2<f32>(x_1692.x, x_1692.y)) + vec2<f32>(x_1695.w, x_1695.y));
        let x_1698 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1697.x, x_1697.y, x_1698.z, x_1698.w);
        let x_1701 : f32 = u_xlat12.y;
        u_xlat9.y = x_1701;
        let x_1704 : f32 = u_xlat11.z;
        u_xlat12.y = x_1704;
        let x_1706 : vec3<f32> = u_xlat28;
        let x_1709 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1712 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1706.x, x_1706.y, x_1706.x, x_1706.y) * vec4<f32>(x_1709.x, x_1709.y, x_1709.x, x_1709.y)) + vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1712.y));
        let x_1716 : vec3<f32> = u_xlat28;
        let x_1719 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1722 : vec4<f32> = u_xlat12;
        u_xlat58 = ((vec2<f32>(x_1716.x, x_1716.y) * vec2<f32>(x_1719.x, x_1719.y)) + vec2<f32>(x_1722.w, x_1722.y));
        let x_1726 : f32 = u_xlat12.y;
        u_xlat9.z = x_1726;
        let x_1728 : vec3<f32> = u_xlat28;
        let x_1731 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1734 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1728.x, x_1728.y, x_1728.x, x_1728.y) * vec4<f32>(x_1731.x, x_1731.y, x_1731.x, x_1731.y)) + vec4<f32>(x_1734.x, x_1734.y, x_1734.x, x_1734.z));
        let x_1738 : f32 = u_xlat11.w;
        u_xlat12.y = x_1738;
        let x_1741 : vec3<f32> = u_xlat28;
        let x_1744 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1747 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1741.x, x_1741.y, x_1741.x, x_1741.y) * vec4<f32>(x_1744.x, x_1744.y, x_1744.x, x_1744.y)) + vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1747.y));
        let x_1751 : vec3<f32> = u_xlat28;
        let x_1754 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1757 : vec4<f32> = u_xlat12;
        u_xlat31 = ((vec2<f32>(x_1751.x, x_1751.y) * vec2<f32>(x_1754.x, x_1754.y)) + vec2<f32>(x_1757.w, x_1757.y));
        let x_1761 : f32 = u_xlat12.y;
        u_xlat9.w = x_1761;
        let x_1764 : vec3<f32> = u_xlat28;
        let x_1767 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1770 : vec4<f32> = u_xlat9;
        u_xlat18 = ((vec2<f32>(x_1764.x, x_1764.y) * vec2<f32>(x_1767.x, x_1767.y)) + vec2<f32>(x_1770.x, x_1770.w));
        let x_1773 : vec4<f32> = u_xlat12;
        let x_1774 : vec3<f32> = vec3<f32>(x_1773.x, x_1773.z, x_1773.w);
        let x_1775 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1774.x, x_1775.y, x_1774.y, x_1774.z);
        let x_1777 : vec3<f32> = u_xlat28;
        let x_1780 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1783 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1777.x, x_1777.y, x_1777.x, x_1777.y) * vec4<f32>(x_1780.x, x_1780.y, x_1780.x, x_1780.y)) + vec4<f32>(x_1783.x, x_1783.y, x_1783.z, x_1783.y));
        let x_1787 : vec3<f32> = u_xlat28;
        let x_1790 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1793 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1787.x, x_1787.y) * vec2<f32>(x_1790.x, x_1790.y)) + vec2<f32>(x_1793.w, x_1793.y));
        let x_1797 : f32 = u_xlat9.x;
        u_xlat11.x = x_1797;
        let x_1799 : vec3<f32> = u_xlat28;
        let x_1802 : vec4<f32> = x_595.x_MainLightShadowmapSize;
        let x_1805 : vec4<f32> = u_xlat11;
        let x_1807 : vec2<f32> = ((vec2<f32>(x_1799.x, x_1799.y) * vec2<f32>(x_1802.x, x_1802.y)) + vec2<f32>(x_1805.x, x_1805.y));
        let x_1808 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1807.x, x_1807.y, x_1808.z);
        let x_1811 : vec4<f32> = u_xlat8;
        let x_1813 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1811.x, x_1811.x, x_1811.x, x_1811.x) * x_1813);
        let x_1816 : vec4<f32> = u_xlat8;
        let x_1818 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1816.y, x_1816.y, x_1816.y, x_1816.y) * x_1818);
        let x_1821 : vec4<f32> = u_xlat8;
        let x_1823 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1821.z, x_1821.z, x_1821.z, x_1821.z) * x_1823);
        let x_1825 : vec4<f32> = u_xlat8;
        let x_1827 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1825.w, x_1825.w, x_1825.w, x_1825.w) * x_1827);
        let x_1830 : vec4<f32> = u_xlat13;
        let x_1831 : vec2<f32> = vec2<f32>(x_1830.x, x_1830.y);
        let x_1833 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1831.x, x_1831.y, x_1833);
        let x_1840 : vec3<f32> = txVec13;
        let x_1842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1840.xy, x_1840.z);
        u_xlat72 = x_1842;
        let x_1844 : vec4<f32> = u_xlat13;
        let x_1845 : vec2<f32> = vec2<f32>(x_1844.z, x_1844.w);
        let x_1847 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1845.x, x_1845.y, x_1847);
        let x_1855 : vec3<f32> = txVec14;
        let x_1857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1855.xy, x_1855.z);
        u_xlat73 = x_1857;
        let x_1858 : f32 = u_xlat73;
        let x_1860 : f32 = u_xlat19.y;
        u_xlat73 = (x_1858 * x_1860);
        let x_1863 : f32 = u_xlat19.x;
        let x_1864 : f32 = u_xlat72;
        let x_1866 : f32 = u_xlat73;
        u_xlat72 = ((x_1863 * x_1864) + x_1866);
        let x_1869 : vec4<f32> = u_xlat14;
        let x_1870 : vec2<f32> = vec2<f32>(x_1869.x, x_1869.y);
        let x_1872 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
        let x_1879 : vec3<f32> = txVec15;
        let x_1881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1879.xy, x_1879.z);
        u_xlat73 = x_1881;
        let x_1883 : f32 = u_xlat19.z;
        let x_1884 : f32 = u_xlat73;
        let x_1886 : f32 = u_xlat72;
        u_xlat72 = ((x_1883 * x_1884) + x_1886);
        let x_1889 : vec4<f32> = u_xlat16;
        let x_1890 : vec2<f32> = vec2<f32>(x_1889.x, x_1889.y);
        let x_1892 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1890.x, x_1890.y, x_1892);
        let x_1899 : vec3<f32> = txVec16;
        let x_1901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1899.xy, x_1899.z);
        u_xlat73 = x_1901;
        let x_1903 : f32 = u_xlat19.w;
        let x_1904 : f32 = u_xlat73;
        let x_1906 : f32 = u_xlat72;
        u_xlat72 = ((x_1903 * x_1904) + x_1906);
        let x_1909 : vec4<f32> = u_xlat15;
        let x_1910 : vec2<f32> = vec2<f32>(x_1909.x, x_1909.y);
        let x_1912 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1910.x, x_1910.y, x_1912);
        let x_1919 : vec3<f32> = txVec17;
        let x_1921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1919.xy, x_1919.z);
        u_xlat73 = x_1921;
        let x_1923 : f32 = u_xlat20.x;
        let x_1924 : f32 = u_xlat73;
        let x_1926 : f32 = u_xlat72;
        u_xlat72 = ((x_1923 * x_1924) + x_1926);
        let x_1929 : vec4<f32> = u_xlat15;
        let x_1930 : vec2<f32> = vec2<f32>(x_1929.z, x_1929.w);
        let x_1932 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1930.x, x_1930.y, x_1932);
        let x_1939 : vec3<f32> = txVec18;
        let x_1941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1939.xy, x_1939.z);
        u_xlat73 = x_1941;
        let x_1943 : f32 = u_xlat20.y;
        let x_1944 : f32 = u_xlat73;
        let x_1946 : f32 = u_xlat72;
        u_xlat72 = ((x_1943 * x_1944) + x_1946);
        let x_1949 : vec2<f32> = u_xlat58;
        let x_1951 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1949.x, x_1949.y, x_1951);
        let x_1958 : vec3<f32> = txVec19;
        let x_1960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1958.xy, x_1958.z);
        u_xlat73 = x_1960;
        let x_1962 : f32 = u_xlat20.z;
        let x_1963 : f32 = u_xlat73;
        let x_1965 : f32 = u_xlat72;
        u_xlat72 = ((x_1962 * x_1963) + x_1965);
        let x_1968 : vec4<f32> = u_xlat16;
        let x_1969 : vec2<f32> = vec2<f32>(x_1968.z, x_1968.w);
        let x_1971 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1969.x, x_1969.y, x_1971);
        let x_1978 : vec3<f32> = txVec20;
        let x_1980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1978.xy, x_1978.z);
        u_xlat73 = x_1980;
        let x_1982 : f32 = u_xlat20.w;
        let x_1983 : f32 = u_xlat73;
        let x_1985 : f32 = u_xlat72;
        u_xlat72 = ((x_1982 * x_1983) + x_1985);
        let x_1988 : vec4<f32> = u_xlat17;
        let x_1989 : vec2<f32> = vec2<f32>(x_1988.x, x_1988.y);
        let x_1991 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1989.x, x_1989.y, x_1991);
        let x_1998 : vec3<f32> = txVec21;
        let x_2000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1998.xy, x_1998.z);
        u_xlat73 = x_2000;
        let x_2002 : f32 = u_xlat21.x;
        let x_2003 : f32 = u_xlat73;
        let x_2005 : f32 = u_xlat72;
        u_xlat72 = ((x_2002 * x_2003) + x_2005);
        let x_2008 : vec4<f32> = u_xlat17;
        let x_2009 : vec2<f32> = vec2<f32>(x_2008.z, x_2008.w);
        let x_2011 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_2009.x, x_2009.y, x_2011);
        let x_2018 : vec3<f32> = txVec22;
        let x_2020 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2018.xy, x_2018.z);
        u_xlat73 = x_2020;
        let x_2022 : f32 = u_xlat21.y;
        let x_2023 : f32 = u_xlat73;
        let x_2025 : f32 = u_xlat72;
        u_xlat72 = ((x_2022 * x_2023) + x_2025);
        let x_2028 : vec2<f32> = u_xlat31;
        let x_2030 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_2028.x, x_2028.y, x_2030);
        let x_2037 : vec3<f32> = txVec23;
        let x_2039 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2037.xy, x_2037.z);
        u_xlat73 = x_2039;
        let x_2041 : f32 = u_xlat21.z;
        let x_2042 : f32 = u_xlat73;
        let x_2044 : f32 = u_xlat72;
        u_xlat72 = ((x_2041 * x_2042) + x_2044);
        let x_2047 : vec2<f32> = u_xlat18;
        let x_2049 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_2047.x, x_2047.y, x_2049);
        let x_2056 : vec3<f32> = txVec24;
        let x_2058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2056.xy, x_2056.z);
        u_xlat73 = x_2058;
        let x_2060 : f32 = u_xlat21.w;
        let x_2061 : f32 = u_xlat73;
        let x_2063 : f32 = u_xlat72;
        u_xlat72 = ((x_2060 * x_2061) + x_2063);
        let x_2066 : vec4<f32> = u_xlat12;
        let x_2067 : vec2<f32> = vec2<f32>(x_2066.x, x_2066.y);
        let x_2069 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_2067.x, x_2067.y, x_2069);
        let x_2076 : vec3<f32> = txVec25;
        let x_2078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2076.xy, x_2076.z);
        u_xlat73 = x_2078;
        let x_2080 : f32 = u_xlat8.x;
        let x_2081 : f32 = u_xlat73;
        let x_2083 : f32 = u_xlat72;
        u_xlat72 = ((x_2080 * x_2081) + x_2083);
        let x_2086 : vec4<f32> = u_xlat12;
        let x_2087 : vec2<f32> = vec2<f32>(x_2086.z, x_2086.w);
        let x_2089 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_2087.x, x_2087.y, x_2089);
        let x_2096 : vec3<f32> = txVec26;
        let x_2098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2096.xy, x_2096.z);
        u_xlat73 = x_2098;
        let x_2100 : f32 = u_xlat8.y;
        let x_2101 : f32 = u_xlat73;
        let x_2103 : f32 = u_xlat72;
        u_xlat72 = ((x_2100 * x_2101) + x_2103);
        let x_2106 : vec2<f32> = u_xlat55;
        let x_2108 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2106.x, x_2106.y, x_2108);
        let x_2115 : vec3<f32> = txVec27;
        let x_2117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2115.xy, x_2115.z);
        u_xlat73 = x_2117;
        let x_2119 : f32 = u_xlat8.z;
        let x_2120 : f32 = u_xlat73;
        let x_2122 : f32 = u_xlat72;
        u_xlat72 = ((x_2119 * x_2120) + x_2122);
        let x_2125 : vec3<f32> = u_xlat28;
        let x_2126 : vec2<f32> = vec2<f32>(x_2125.x, x_2125.y);
        let x_2128 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2126.x, x_2126.y, x_2128);
        let x_2135 : vec3<f32> = txVec28;
        let x_2137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2135.xy, x_2135.z);
        u_xlat28.x = x_2137;
        let x_2140 : f32 = u_xlat8.w;
        let x_2142 : f32 = u_xlat28.x;
        let x_2144 : f32 = u_xlat72;
        u_xlat71 = ((x_2140 * x_2142) + x_2144);
      }
    }
  } else {
    let x_2148 : vec4<f32> = u_xlat3;
    let x_2149 : vec2<f32> = vec2<f32>(x_2148.x, x_2148.y);
    let x_2151 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2149.x, x_2149.y, x_2151);
    let x_2158 : vec3<f32> = txVec29;
    let x_2160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2158.xy, x_2158.z);
    u_xlat71 = x_2160;
  }
  let x_2162 : f32 = x_595.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2162) + 1.0f);
  let x_2166 : f32 = u_xlat71;
  let x_2168 : f32 = x_595.x_MainLightShadowParams.x;
  let x_2171 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2166 * x_2168) + x_2171);
  let x_2176 : f32 = u_xlat3.z;
  u_xlatb25 = (0.0f >= x_2176);
  let x_2180 : f32 = u_xlat3.z;
  u_xlatb47 = (x_2180 >= 1.0f);
  let x_2182 : bool = u_xlatb47;
  let x_2183 : bool = u_xlatb25;
  u_xlatb25 = (x_2182 | x_2183);
  let x_2185 : bool = u_xlatb25;
  if (x_2185) {
    x_2186 = 1.0f;
  } else {
    let x_2191 : f32 = u_xlat3.x;
    x_2186 = x_2191;
  }
  let x_2192 : f32 = x_2186;
  u_xlat3.x = x_2192;
  let x_2194 : vec3<f32> = vs_TEXCOORD7;
  let x_2196 : vec3<f32> = x_126.x_WorldSpaceCameraPos;
  u_xlat28 = (x_2194 + -(x_2196));
  let x_2200 : vec3<f32> = u_xlat28;
  let x_2201 : vec3<f32> = u_xlat28;
  u_xlat25.x = dot(x_2200, x_2201);
  let x_2205 : f32 = u_xlat25.x;
  let x_2207 : f32 = x_595.x_MainLightShadowParams.z;
  let x_2210 : f32 = x_595.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_2205 * x_2207) + x_2210);
  let x_2214 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2214, 0.0f, 1.0f);
  let x_2219 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_2219) + 1.0f);
  let x_2223 : f32 = u_xlat25.x;
  let x_2224 : f32 = u_xlat47;
  let x_2227 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2223 * x_2224) + x_2227);
  let x_2230 : vec4<f32> = u_xlat6;
  let x_2233 : vec4<f32> = x_126.x_MainLightColor;
  u_xlat28 = (vec3<f32>(x_2230.x, x_2230.x, x_2230.x) * vec3<f32>(x_2233.x, x_2233.y, x_2233.z));
  let x_2236 : vec4<f32> = u_xlat1;
  let x_2239 : vec3<f32> = u_xlat2;
  u_xlat25.x = dot(-(vec3<f32>(x_2236.x, x_2236.y, x_2236.z)), x_2239);
  let x_2243 : f32 = u_xlat25.x;
  let x_2245 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2243 + x_2245);
  let x_2248 : vec3<f32> = u_xlat2;
  let x_2249 : vec3<f32> = u_xlat25;
  let x_2253 : vec4<f32> = u_xlat1;
  let x_2256 : vec3<f32> = ((x_2248 * -(vec3<f32>(x_2249.x, x_2249.x, x_2249.x))) + -(vec3<f32>(x_2253.x, x_2253.y, x_2253.z)));
  let x_2257 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
  let x_2259 : vec3<f32> = u_xlat2;
  let x_2260 : vec4<f32> = u_xlat1;
  u_xlat25.x = dot(x_2259, vec3<f32>(x_2260.x, x_2260.y, x_2260.z));
  let x_2265 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_2265, 0.0f, 1.0f);
  let x_2269 : f32 = u_xlat25.x;
  u_xlat25.x = (-(x_2269) + 1.0f);
  let x_2274 : f32 = u_xlat25.x;
  let x_2276 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2274 * x_2276);
  let x_2280 : f32 = u_xlat25.x;
  let x_2282 : f32 = u_xlat25.x;
  u_xlat25.x = (x_2280 * x_2282);
  let x_2286 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_2286) * 0.699999988f) + 1.700000048f);
  let x_2293 : f32 = u_xlat0.x;
  let x_2294 : f32 = u_xlat47;
  u_xlat0.x = (x_2293 * x_2294);
  let x_2298 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2298 * 6.0f);
  let x_2310 : vec4<f32> = u_xlat8;
  let x_2313 : f32 = u_xlat0.x;
  let x_2314 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2310.x, x_2310.y, x_2310.z), x_2313);
  u_xlat8 = x_2314;
  let x_2316 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2316 + -1.0f);
  let x_2324 : f32 = x_2322.unity_SpecCube0_HDR.w;
  let x_2326 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2324 * x_2326) + 1.0f);
  let x_2331 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2331, 0.0f);
  let x_2335 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2335);
  let x_2339 : f32 = u_xlat0.x;
  let x_2341 : f32 = x_2322.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2339 * x_2341);
  let x_2345 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2345);
  let x_2349 : f32 = u_xlat0.x;
  let x_2351 : f32 = x_2322.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2349 * x_2351);
  let x_2354 : vec4<f32> = u_xlat8;
  let x_2356 : vec3<f32> = u_xlat0;
  let x_2358 : vec3<f32> = (vec3<f32>(x_2354.x, x_2354.y, x_2354.z) * vec3<f32>(x_2356.x, x_2356.x, x_2356.x));
  let x_2359 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2358.x, x_2358.y, x_2358.z, x_2359.w);
  let x_2361 : f32 = u_xlat44;
  let x_2363 : f32 = u_xlat44;
  let x_2367 : vec2<f32> = ((vec2<f32>(x_2361, x_2361) * vec2<f32>(x_2363, x_2363)) + vec2<f32>(-1.0f, 1.0f));
  let x_2368 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2367.x, x_2368.y, x_2367.y);
  let x_2371 : f32 = u_xlat0.z;
  u_xlat44 = (1.0f / x_2371);
  let x_2373 : vec4<f32> = u_xlat5;
  let x_2376 : f32 = u_xlat69;
  let x_2378 : vec3<f32> = (-(vec3<f32>(x_2373.x, x_2373.y, x_2373.z)) + vec3<f32>(x_2376, x_2376, x_2376));
  let x_2379 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
  let x_2381 : vec3<f32> = u_xlat25;
  let x_2383 : vec4<f32> = u_xlat9;
  let x_2386 : vec4<f32> = u_xlat5;
  u_xlat25 = ((vec3<f32>(x_2381.x, x_2381.x, x_2381.x) * vec3<f32>(x_2383.x, x_2383.y, x_2383.z)) + vec3<f32>(x_2386.x, x_2386.y, x_2386.z));
  let x_2389 : f32 = u_xlat44;
  let x_2391 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_2389, x_2389, x_2389) * x_2391);
  let x_2393 : vec3<f32> = u_xlat25;
  let x_2394 : vec4<f32> = u_xlat8;
  u_xlat25 = (x_2393 * vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
  let x_2397 : vec4<f32> = u_xlat4;
  let x_2399 : vec4<f32> = u_xlat7;
  let x_2402 : vec3<f32> = u_xlat25;
  u_xlat25 = ((vec3<f32>(x_2397.x, x_2397.y, x_2397.z) * vec3<f32>(x_2399.x, x_2399.y, x_2399.z)) + x_2402);
  let x_2405 : f32 = u_xlat3.x;
  let x_2407 : f32 = x_2322.unity_LightData.z;
  u_xlat44 = (x_2405 * x_2407);
  let x_2409 : vec3<f32> = u_xlat2;
  let x_2411 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat3.x = dot(x_2409, vec3<f32>(x_2411.x, x_2411.y, x_2411.z));
  let x_2416 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2416, 0.0f, 1.0f);
  let x_2419 : f32 = u_xlat44;
  let x_2421 : f32 = u_xlat3.x;
  u_xlat44 = (x_2419 * x_2421);
  let x_2423 : f32 = u_xlat44;
  let x_2425 : vec3<f32> = u_xlat28;
  let x_2426 : vec3<f32> = (vec3<f32>(x_2423, x_2423, x_2423) * x_2425);
  let x_2427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2427.w);
  let x_2429 : vec4<f32> = u_xlat1;
  let x_2432 : vec4<f32> = x_126.x_MainLightPosition;
  u_xlat28 = (vec3<f32>(x_2429.x, x_2429.y, x_2429.z) + vec3<f32>(x_2432.x, x_2432.y, x_2432.z));
  let x_2435 : vec3<f32> = u_xlat28;
  let x_2436 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2435, x_2436);
  let x_2438 : f32 = u_xlat44;
  u_xlat44 = max(x_2438, 1.17549435e-37f);
  let x_2441 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_2441);
  let x_2443 : f32 = u_xlat44;
  let x_2445 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_2443, x_2443, x_2443) * x_2445);
  let x_2447 : vec3<f32> = u_xlat2;
  let x_2448 : vec3<f32> = u_xlat28;
  u_xlat44 = dot(x_2447, x_2448);
  let x_2450 : f32 = u_xlat44;
  u_xlat44 = clamp(x_2450, 0.0f, 1.0f);
  let x_2453 : vec4<f32> = x_126.x_MainLightPosition;
  let x_2455 : vec3<f32> = u_xlat28;
  u_xlat3.x = dot(vec3<f32>(x_2453.x, x_2453.y, x_2453.z), x_2455);
  let x_2459 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2459, 0.0f, 1.0f);
  let x_2462 : f32 = u_xlat44;
  let x_2463 : f32 = u_xlat44;
  u_xlat44 = (x_2462 * x_2463);
  let x_2465 : f32 = u_xlat44;
  let x_2467 : f32 = u_xlat0.x;
  u_xlat44 = ((x_2465 * x_2467) + 1.000010014f);
  let x_2472 : f32 = u_xlat3.x;
  let x_2474 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2472 * x_2474);
  let x_2477 : f32 = u_xlat44;
  let x_2478 : f32 = u_xlat44;
  u_xlat44 = (x_2477 * x_2478);
  let x_2481 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2481, 0.100000001f);
  let x_2485 : f32 = u_xlat44;
  let x_2487 : f32 = u_xlat3.x;
  u_xlat44 = (x_2485 * x_2487);
  let x_2489 : f32 = u_xlat70;
  let x_2490 : f32 = u_xlat44;
  u_xlat44 = (x_2489 * x_2490);
  let x_2492 : f32 = u_xlat68;
  let x_2493 : f32 = u_xlat44;
  u_xlat44 = (x_2492 / x_2493);
  let x_2495 : vec4<f32> = u_xlat5;
  let x_2497 : f32 = u_xlat44;
  let x_2500 : vec4<f32> = u_xlat7;
  u_xlat28 = ((vec3<f32>(x_2495.x, x_2495.y, x_2495.z) * vec3<f32>(x_2497, x_2497, x_2497)) + vec3<f32>(x_2500.x, x_2500.y, x_2500.z));
  let x_2503 : vec4<f32> = u_xlat4;
  let x_2505 : vec3<f32> = u_xlat28;
  let x_2506 : vec3<f32> = (vec3<f32>(x_2503.x, x_2503.y, x_2503.z) * x_2505);
  let x_2507 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
  let x_2510 : f32 = x_126.x_AdditionalLightsCount.x;
  let x_2512 : f32 = x_2322.unity_LightData.y;
  u_xlat44 = min(x_2510, x_2512);
  let x_2515 : f32 = u_xlat44;
  u_xlatu44 = bitcast<u32>(i32(x_2515));
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2527 : u32 = u_xlatu_loop_1;
    let x_2528 : u32 = u_xlatu44;
    if ((x_2527 < x_2528)) {
    } else {
      break;
    }
    let x_2531 : u32 = u_xlatu_loop_1;
    u_xlatu71 = (x_2531 >> 2u);
    let x_2534 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_2534 & 3u));
    let x_2537 : u32 = u_xlatu71;
    let x_2540 : vec4<f32> = x_2322.unity_LightIndices[bitcast<i32>(x_2537)];
    let x_2550 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2555 : vec4<u32> = indexable[x_2550];
    u_xlat71 = dot(x_2540, bitcast<vec4<f32>>(x_2555));
    let x_2559 : f32 = u_xlat71;
    u_xlati71 = i32(x_2559);
    let x_2561 : vec3<f32> = vs_TEXCOORD7;
    let x_2573 : i32 = u_xlati71;
    let x_2575 : vec4<f32> = x_2572.x_AdditionalLightsPosition[x_2573];
    let x_2578 : i32 = u_xlati71;
    let x_2580 : vec4<f32> = x_2572.x_AdditionalLightsPosition[x_2578];
    let x_2582 : vec3<f32> = ((-(x_2561) * vec3<f32>(x_2575.w, x_2575.w, x_2575.w)) + vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
    let x_2583 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
    let x_2585 : vec4<f32> = u_xlat8;
    let x_2587 : vec4<f32> = u_xlat8;
    u_xlat73 = dot(vec3<f32>(x_2585.x, x_2585.y, x_2585.z), vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
    let x_2590 : f32 = u_xlat73;
    u_xlat73 = max(x_2590, 6.10351562e-05f);
    let x_2593 : f32 = u_xlat73;
    u_xlat74 = inverseSqrt(x_2593);
    let x_2595 : f32 = u_xlat74;
    let x_2597 : vec4<f32> = u_xlat8;
    let x_2599 : vec3<f32> = (vec3<f32>(x_2595, x_2595, x_2595) * vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
    let x_2600 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
    let x_2603 : f32 = u_xlat73;
    u_xlat75 = (1.0f / x_2603);
    let x_2605 : f32 = u_xlat73;
    let x_2606 : i32 = u_xlati71;
    let x_2608 : f32 = x_2572.x_AdditionalLightsAttenuation[x_2606].x;
    u_xlat73 = (x_2605 * x_2608);
    let x_2610 : f32 = u_xlat73;
    let x_2612 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2610) * x_2612) + 1.0f);
    let x_2615 : f32 = u_xlat73;
    u_xlat73 = max(x_2615, 0.0f);
    let x_2617 : f32 = u_xlat73;
    let x_2618 : f32 = u_xlat73;
    u_xlat73 = (x_2617 * x_2618);
    let x_2620 : f32 = u_xlat73;
    let x_2621 : f32 = u_xlat75;
    u_xlat73 = (x_2620 * x_2621);
    let x_2623 : i32 = u_xlati71;
    let x_2625 : vec4<f32> = x_2572.x_AdditionalLightsSpotDir[x_2623];
    let x_2627 : vec4<f32> = u_xlat9;
    u_xlat75 = dot(vec3<f32>(x_2625.x, x_2625.y, x_2625.z), vec3<f32>(x_2627.x, x_2627.y, x_2627.z));
    let x_2630 : f32 = u_xlat75;
    let x_2631 : i32 = u_xlati71;
    let x_2633 : f32 = x_2572.x_AdditionalLightsAttenuation[x_2631].z;
    let x_2635 : i32 = u_xlati71;
    let x_2637 : f32 = x_2572.x_AdditionalLightsAttenuation[x_2635].w;
    u_xlat75 = ((x_2630 * x_2633) + x_2637);
    let x_2639 : f32 = u_xlat75;
    u_xlat75 = clamp(x_2639, 0.0f, 1.0f);
    let x_2641 : f32 = u_xlat75;
    let x_2642 : f32 = u_xlat75;
    u_xlat75 = (x_2641 * x_2642);
    let x_2644 : f32 = u_xlat73;
    let x_2645 : f32 = u_xlat75;
    u_xlat73 = (x_2644 * x_2645);
    let x_2647 : vec4<f32> = u_xlat6;
    let x_2649 : i32 = u_xlati71;
    let x_2651 : vec4<f32> = x_2572.x_AdditionalLightsColor[x_2649];
    let x_2653 : vec3<f32> = (vec3<f32>(x_2647.x, x_2647.x, x_2647.x) * vec3<f32>(x_2651.x, x_2651.y, x_2651.z));
    let x_2654 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2653.x, x_2653.y, x_2653.z, x_2654.w);
    let x_2656 : vec3<f32> = u_xlat2;
    let x_2657 : vec4<f32> = u_xlat9;
    u_xlat71 = dot(x_2656, vec3<f32>(x_2657.x, x_2657.y, x_2657.z));
    let x_2660 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2660, 0.0f, 1.0f);
    let x_2662 : f32 = u_xlat71;
    let x_2663 : f32 = u_xlat73;
    u_xlat71 = (x_2662 * x_2663);
    let x_2665 : f32 = u_xlat71;
    let x_2667 : vec4<f32> = u_xlat10;
    let x_2669 : vec3<f32> = (vec3<f32>(x_2665, x_2665, x_2665) * vec3<f32>(x_2667.x, x_2667.y, x_2667.z));
    let x_2670 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2669.x, x_2669.y, x_2669.z, x_2670.w);
    let x_2672 : vec4<f32> = u_xlat8;
    let x_2674 : f32 = u_xlat74;
    let x_2677 : vec4<f32> = u_xlat1;
    let x_2679 : vec3<f32> = ((vec3<f32>(x_2672.x, x_2672.y, x_2672.z) * vec3<f32>(x_2674, x_2674, x_2674)) + vec3<f32>(x_2677.x, x_2677.y, x_2677.z));
    let x_2680 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2679.x, x_2679.y, x_2679.z, x_2680.w);
    let x_2682 : vec4<f32> = u_xlat8;
    let x_2684 : vec4<f32> = u_xlat8;
    u_xlat71 = dot(vec3<f32>(x_2682.x, x_2682.y, x_2682.z), vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
    let x_2687 : f32 = u_xlat71;
    u_xlat71 = max(x_2687, 1.17549435e-37f);
    let x_2689 : f32 = u_xlat71;
    u_xlat71 = inverseSqrt(x_2689);
    let x_2691 : f32 = u_xlat71;
    let x_2693 : vec4<f32> = u_xlat8;
    let x_2695 : vec3<f32> = (vec3<f32>(x_2691, x_2691, x_2691) * vec3<f32>(x_2693.x, x_2693.y, x_2693.z));
    let x_2696 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2695.x, x_2695.y, x_2695.z, x_2696.w);
    let x_2698 : vec3<f32> = u_xlat2;
    let x_2699 : vec4<f32> = u_xlat8;
    u_xlat71 = dot(x_2698, vec3<f32>(x_2699.x, x_2699.y, x_2699.z));
    let x_2702 : f32 = u_xlat71;
    u_xlat71 = clamp(x_2702, 0.0f, 1.0f);
    let x_2704 : vec4<f32> = u_xlat9;
    let x_2706 : vec4<f32> = u_xlat8;
    u_xlat73 = dot(vec3<f32>(x_2704.x, x_2704.y, x_2704.z), vec3<f32>(x_2706.x, x_2706.y, x_2706.z));
    let x_2709 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2709, 0.0f, 1.0f);
    let x_2711 : f32 = u_xlat71;
    let x_2712 : f32 = u_xlat71;
    u_xlat71 = (x_2711 * x_2712);
    let x_2714 : f32 = u_xlat71;
    let x_2716 : f32 = u_xlat0.x;
    u_xlat71 = ((x_2714 * x_2716) + 1.000010014f);
    let x_2719 : f32 = u_xlat73;
    let x_2720 : f32 = u_xlat73;
    u_xlat73 = (x_2719 * x_2720);
    let x_2722 : f32 = u_xlat71;
    let x_2723 : f32 = u_xlat71;
    u_xlat71 = (x_2722 * x_2723);
    let x_2725 : f32 = u_xlat73;
    u_xlat73 = max(x_2725, 0.100000001f);
    let x_2727 : f32 = u_xlat71;
    let x_2728 : f32 = u_xlat73;
    u_xlat71 = (x_2727 * x_2728);
    let x_2730 : f32 = u_xlat70;
    let x_2731 : f32 = u_xlat71;
    u_xlat71 = (x_2730 * x_2731);
    let x_2733 : f32 = u_xlat68;
    let x_2734 : f32 = u_xlat71;
    u_xlat71 = (x_2733 / x_2734);
    let x_2736 : vec4<f32> = u_xlat5;
    let x_2738 : f32 = u_xlat71;
    let x_2741 : vec4<f32> = u_xlat7;
    let x_2743 : vec3<f32> = ((vec3<f32>(x_2736.x, x_2736.y, x_2736.z) * vec3<f32>(x_2738, x_2738, x_2738)) + vec3<f32>(x_2741.x, x_2741.y, x_2741.z));
    let x_2744 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2743.x, x_2743.y, x_2743.z, x_2744.w);
    let x_2746 : vec4<f32> = u_xlat8;
    let x_2748 : vec4<f32> = u_xlat10;
    let x_2751 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2746.x, x_2746.y, x_2746.z) * vec3<f32>(x_2748.x, x_2748.y, x_2748.z)) + x_2751);

    continuing {
      let x_2753 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2753 + bitcast<u32>(1i));
    }
  }
  let x_2755 : vec3<f32> = u_xlat25;
  let x_2756 : f32 = u_xlat22;
  let x_2759 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_2755 * vec3<f32>(x_2756, x_2756, x_2756)) + vec3<f32>(x_2759.x, x_2759.y, x_2759.z));
  let x_2762 : vec3<f32> = u_xlat28;
  let x_2763 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_2762 + x_2763);
  let x_2765 : f32 = u_xlat66;
  let x_2767 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2765, x_2765, x_2765) * x_2767);
  let x_2769 : f32 = u_xlat67;
  let x_2770 : f32 = u_xlat67;
  u_xlat66 = (x_2769 * -(x_2770));
  let x_2773 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2773);
  let x_2777 : vec3<f32> = u_xlat0;
  let x_2778 : f32 = u_xlat66;
  let x_2780 : vec3<f32> = (x_2777 * vec3<f32>(x_2778, x_2778, x_2778));
  let x_2781 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2781.w);
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

