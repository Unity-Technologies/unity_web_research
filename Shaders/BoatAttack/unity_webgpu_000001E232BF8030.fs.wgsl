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
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(15) var sampler_Control : sampler;

@group(1) @binding(0) var<uniform> x_125 : PGlobals;

@group(0) @binding(3) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var x_Splat1 : texture_2d<f32>;

@group(0) @binding(5) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(6) var x_Splat3 : texture_2d<f32>;

@group(0) @binding(7) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal0 : sampler;

@group(0) @binding(8) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(10) var x_Normal3 : texture_2d<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(11) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_961 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2321 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2585 : AdditionalLights;

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
  var u_xlat40 : f32;
  var u_xlat20 : f32;
  var u_xlat62 : f32;
  var u_xlat23 : f32;
  var u_xlat43 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb63 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat63 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
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
  var u_xlatb64 : bool;
  var x_2187 : f32;
  var u_xlatu40 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati63 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati3 : i32;
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
  let x_130 : f32 = x_125.x_GlobalMipBias.x;
  let x_131 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_121.x, x_121.y), x_130);
  u_xlat4 = x_131;
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat60 = dot(x_134, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_147 : f32 = x_125.x_GlobalMipBias.x;
  let x_148 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_144.x, x_144.y), x_147);
  u_xlat5 = x_148;
  let x_154 : vec4<f32> = vs_TEXCOORD1;
  let x_157 : f32 = x_125.x_GlobalMipBias.x;
  let x_158 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_154.z, x_154.w), x_157);
  u_xlat6 = x_158;
  let x_165 : vec4<f32> = vs_TEXCOORD2;
  let x_168 : f32 = x_125.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_165.x, x_165.y), x_168);
  u_xlat7 = x_169;
  let x_175 : vec4<f32> = vs_TEXCOORD2;
  let x_178 : f32 = x_125.x_GlobalMipBias.x;
  let x_179 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_175.z, x_175.w), x_178);
  u_xlat8 = x_179;
  let x_182 : f32 = u_xlat5.w;
  u_xlat9.x = x_182;
  let x_185 : f32 = u_xlat6.w;
  u_xlat9.y = x_185;
  let x_189 : f32 = u_xlat7.w;
  u_xlat9.z = x_189;
  let x_193 : f32 = u_xlat8.w;
  u_xlat9.w = x_193;
  let x_196 : vec4<f32> = u_xlat9;
  let x_199 : f32 = x_30.x_Smoothness0;
  let x_202 : f32 = x_30.x_Smoothness1;
  let x_205 : f32 = x_30.x_Smoothness2;
  let x_208 : f32 = x_30.x_Smoothness3;
  u_xlat10 = (x_196 * vec4<f32>(x_199, x_202, x_205, x_208));
  let x_217 : f32 = x_30.x_NumLayersCount;
  u_xlatb61 = (4.0f >= x_217);
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_220) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_223 : vec4<f32> = u_xlat9;
  let x_224 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_223 + -(x_224));
  let x_227 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_227 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_231 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_231, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_236 : vec4<f32> = u_xlat4;
  let x_240 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_236 * vec4<f32>(0.001f, 0.001f, 0.001f, 0.001f)) + x_240);
  let x_243 : vec4<f32> = u_xlat4;
  let x_244 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_243 + -(x_244));
  let x_249 : f32 = u_xlat12.x;
  let x_252 : f32 = x_30.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_249 * x_252);
  let x_256 : f32 = u_xlat12.y;
  let x_259 : f32 = x_30.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_256 * x_259);
  let x_263 : f32 = u_xlat12.z;
  let x_266 : f32 = x_30.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.w;
  let x_273 : f32 = x_30.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_270 * x_273);
  let x_276 : vec4<f32> = u_xlat11;
  let x_277 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_276 + x_277);
  let x_279 : bool = u_xlatb61;
  let x_280 : vec4<f32> = u_xlat11;
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_281, x_280, vec4<bool>(x_279, x_279, x_279, x_279));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat61 = dot(x_286, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_288 : f32 = u_xlat61;
  u_xlat61 = (x_288 + 6.10351562e-05f);
  let x_291 : vec4<f32> = u_xlat4;
  let x_292 : f32 = u_xlat61;
  u_xlat4 = (x_291 / vec4<f32>(x_292, x_292, x_292, x_292));
  let x_295 : vec4<f32> = u_xlat4;
  let x_298 : vec4<f32> = x_30.x_DiffuseRemapScale0;
  let x_300 : vec3<f32> = (vec3<f32>(x_295.x, x_295.x, x_295.x) * vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat4;
  let x_306 : vec4<f32> = x_30.x_DiffuseRemapScale1;
  let x_308 : vec3<f32> = (vec3<f32>(x_303.y, x_303.y, x_303.y) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat6;
  let x_313 : vec4<f32> = u_xlat12;
  let x_315 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat5;
  let x_320 : vec4<f32> = u_xlat11;
  let x_323 : vec4<f32> = u_xlat6;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.x, x_320.y, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = x_30.x_DiffuseRemapScale2;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.z, x_328.z, x_328.z) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat7;
  let x_338 : vec4<f32> = u_xlat6;
  let x_341 : vec4<f32> = u_xlat5;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat4;
  let x_349 : vec4<f32> = x_30.x_DiffuseRemapScale3;
  let x_351 : vec3<f32> = (vec3<f32>(x_346.w, x_346.w, x_346.w) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat8;
  let x_356 : vec4<f32> = u_xlat6;
  let x_359 : vec4<f32> = u_xlat5;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.y, x_356.z)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_369 : vec4<f32> = vs_TEXCOORD1;
  let x_372 : f32 = x_125.x_GlobalMipBias.x;
  let x_373 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_369.x, x_369.y), x_372);
  let x_374 : vec3<f32> = vec3<f32>(x_373.x, x_373.y, x_373.w);
  let x_375 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : f32 = u_xlat6.x;
  let x_380 : f32 = u_xlat6.z;
  u_xlat6.x = (x_378 * x_380);
  let x_383 : vec4<f32> = u_xlat6;
  let x_388 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat6;
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_391.x, x_391.y), vec2<f32>(x_393.x, x_393.y));
  let x_396 : f32 = u_xlat61;
  u_xlat61 = min(x_396, 1.0f);
  let x_398 : f32 = u_xlat61;
  u_xlat61 = (-(x_398) + 1.0f);
  let x_401 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_401);
  let x_403 : f32 = u_xlat61;
  u_xlat7.z = max(x_403, 1.00000002e-16f);
  let x_407 : vec4<f32> = u_xlat6;
  let x_411 : f32 = x_30.x_NormalScale0;
  let x_413 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) * vec2<f32>(x_411, x_411));
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_420 : vec4<f32> = vs_TEXCOORD1;
  let x_423 : f32 = x_125.x_GlobalMipBias.x;
  let x_424 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_420.z, x_420.w), x_423);
  let x_425 : vec3<f32> = vec3<f32>(x_424.x, x_424.y, x_424.w);
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = u_xlat6.x;
  let x_431 : f32 = u_xlat6.z;
  u_xlat6.x = (x_429 * x_431);
  let x_434 : vec4<f32> = u_xlat6;
  let x_437 : vec2<f32> = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_438 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat6;
  let x_442 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec2<f32>(x_440.x, x_440.y), vec2<f32>(x_442.x, x_442.y));
  let x_445 : f32 = u_xlat61;
  u_xlat61 = min(x_445, 1.0f);
  let x_447 : f32 = u_xlat61;
  u_xlat61 = (-(x_447) + 1.0f);
  let x_450 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_450);
  let x_452 : f32 = u_xlat61;
  u_xlat8.z = max(x_452, 1.00000002e-16f);
  let x_455 : vec4<f32> = u_xlat6;
  let x_458 : f32 = x_30.x_NormalScale1;
  let x_460 : f32 = x_30.x_NormalScale1;
  let x_461 : vec2<f32> = vec2<f32>(x_458, x_460);
  let x_465 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) * vec2<f32>(x_461.x, x_461.y));
  let x_466 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec4<f32> = u_xlat8;
  let x_472 : vec3<f32> = (vec3<f32>(x_468.y, x_468.y, x_468.y) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat7;
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec3<f32> = ((vec3<f32>(x_475.x, x_475.x, x_475.x) * vec3<f32>(x_477.x, x_477.y, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_489 : vec4<f32> = vs_TEXCOORD2;
  let x_492 : f32 = x_125.x_GlobalMipBias.x;
  let x_493 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_489.x, x_489.y), x_492);
  let x_494 : vec3<f32> = vec3<f32>(x_493.x, x_493.y, x_493.w);
  let x_495 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_498 : f32 = u_xlat7.x;
  let x_500 : f32 = u_xlat7.z;
  u_xlat7.x = (x_498 * x_500);
  let x_503 : vec4<f32> = u_xlat7;
  let x_506 : vec2<f32> = ((vec2<f32>(x_503.x, x_503.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat7;
  let x_511 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_509.x, x_509.y), vec2<f32>(x_511.x, x_511.y));
  let x_514 : f32 = u_xlat61;
  u_xlat61 = min(x_514, 1.0f);
  let x_516 : f32 = u_xlat61;
  u_xlat61 = (-(x_516) + 1.0f);
  let x_519 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_519);
  let x_521 : f32 = u_xlat61;
  u_xlat8.z = max(x_521, 1.00000002e-16f);
  let x_524 : vec4<f32> = u_xlat7;
  let x_528 : f32 = x_30.x_NormalScale2;
  let x_530 : f32 = x_30.x_NormalScale2;
  let x_531 : vec2<f32> = vec2<f32>(x_528, x_530);
  let x_535 : vec2<f32> = (vec2<f32>(x_524.x, x_524.y) * vec2<f32>(x_531.x, x_531.y));
  let x_536 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec4<f32> = u_xlat8;
  let x_543 : vec4<f32> = u_xlat6;
  let x_545 : vec3<f32> = ((vec3<f32>(x_538.z, x_538.z, x_538.z) * vec3<f32>(x_540.x, x_540.y, x_540.z)) + vec3<f32>(x_543.x, x_543.y, x_543.z));
  let x_546 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_552 : vec4<f32> = vs_TEXCOORD2;
  let x_555 : f32 = x_125.x_GlobalMipBias.x;
  let x_556 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_552.z, x_552.w), x_555);
  let x_557 : vec3<f32> = vec3<f32>(x_556.x, x_556.y, x_556.w);
  let x_558 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : f32 = u_xlat7.x;
  let x_563 : f32 = u_xlat7.z;
  u_xlat7.x = (x_561 * x_563);
  let x_566 : vec4<f32> = u_xlat7;
  let x_569 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_570 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat7;
  let x_574 : vec4<f32> = u_xlat7;
  u_xlat61 = dot(vec2<f32>(x_572.x, x_572.y), vec2<f32>(x_574.x, x_574.y));
  let x_577 : f32 = u_xlat61;
  u_xlat61 = min(x_577, 1.0f);
  let x_579 : f32 = u_xlat61;
  u_xlat61 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat61;
  u_xlat61 = sqrt(x_582);
  let x_584 : f32 = u_xlat61;
  u_xlat8.z = max(x_584, 1.00000002e-16f);
  let x_587 : vec4<f32> = u_xlat7;
  let x_591 : f32 = x_30.x_NormalScale3;
  let x_593 : f32 = x_30.x_NormalScale3;
  let x_594 : vec2<f32> = vec2<f32>(x_591, x_593);
  let x_598 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_594.x, x_594.y));
  let x_599 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat4;
  let x_603 : vec4<f32> = u_xlat8;
  let x_606 : vec4<f32> = u_xlat6;
  let x_608 : vec3<f32> = ((vec3<f32>(x_601.w, x_601.w, x_601.w) * vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = u_xlat6.z;
  u_xlat6.w = (x_612 + 0.00001f);
  let x_616 : vec4<f32> = u_xlat6;
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat61 = dot(vec3<f32>(x_616.x, x_616.y, x_616.w), vec3<f32>(x_618.x, x_618.y, x_618.w));
  let x_621 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_621);
  let x_623 : f32 = u_xlat61;
  let x_625 : vec4<f32> = u_xlat6;
  let x_627 : vec3<f32> = (vec3<f32>(x_623, x_623, x_623) * vec3<f32>(x_625.x, x_625.y, x_625.w));
  let x_628 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = x_30.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_631;
  let x_634 : f32 = x_30.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_634;
  let x_637 : f32 = x_30.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_637;
  let x_640 : f32 = x_30.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_640;
  let x_643 : f32 = x_30.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_643;
  let x_646 : f32 = x_30.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_646;
  let x_649 : f32 = x_30.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_649;
  let x_652 : f32 = x_30.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_652;
  let x_654 : vec4<f32> = u_xlat7;
  let x_655 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_654 + x_655);
  let x_658 : f32 = u_xlat0.z;
  u_xlat8.x = x_658;
  let x_661 : f32 = u_xlat1.z;
  u_xlat8.y = x_661;
  let x_664 : f32 = u_xlat2.z;
  u_xlat8.z = x_664;
  let x_667 : f32 = u_xlat3.y;
  u_xlat8.w = x_667;
  let x_669 : vec4<f32> = u_xlat9;
  let x_672 : f32 = x_30.x_Smoothness0;
  let x_674 : f32 = x_30.x_Smoothness1;
  let x_676 : f32 = x_30.x_Smoothness2;
  let x_678 : f32 = x_30.x_Smoothness3;
  let x_681 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_669) * vec4<f32>(x_672, x_674, x_676, x_678)) + x_681);
  let x_685 : f32 = x_30.x_LayerHasMask0;
  let x_688 : f32 = x_30.x_LayerHasMask1;
  let x_691 : f32 = x_30.x_LayerHasMask2;
  let x_694 : f32 = x_30.x_LayerHasMask3;
  let x_696 : vec4<f32> = u_xlat8;
  let x_698 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_685, x_688, x_691, x_694) * x_696) + x_698);
  let x_701 : vec4<f32> = u_xlat4;
  let x_702 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(x_701, x_702);
  let x_705 : f32 = u_xlat0.x;
  u_xlat8.x = x_705;
  let x_708 : f32 = u_xlat1.x;
  u_xlat8.y = x_708;
  let x_711 : f32 = u_xlat2.x;
  u_xlat8.z = x_711;
  let x_714 : f32 = u_xlat3.x;
  u_xlat8.w = x_714;
  let x_716 : vec4<f32> = u_xlat8;
  let x_719 : f32 = x_30.x_Metallic0;
  let x_722 : f32 = x_30.x_Metallic1;
  let x_725 : f32 = x_30.x_Metallic2;
  let x_728 : f32 = x_30.x_Metallic3;
  u_xlat8 = (x_716 + -(vec4<f32>(x_719, x_722, x_725, x_728)));
  let x_733 : f32 = x_30.x_LayerHasMask0;
  let x_735 : f32 = x_30.x_LayerHasMask1;
  let x_737 : f32 = x_30.x_LayerHasMask2;
  let x_739 : f32 = x_30.x_LayerHasMask3;
  let x_741 : vec4<f32> = u_xlat8;
  let x_744 : f32 = x_30.x_Metallic0;
  let x_746 : f32 = x_30.x_Metallic1;
  let x_748 : f32 = x_30.x_Metallic2;
  let x_750 : f32 = x_30.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_733, x_735, x_737, x_739) * x_741) + vec4<f32>(x_744, x_746, x_748, x_750));
  let x_753 : vec4<f32> = u_xlat4;
  let x_754 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_753, x_754);
  let x_758 : f32 = u_xlat0.y;
  u_xlat3.x = x_758;
  let x_761 : f32 = u_xlat1.y;
  u_xlat3.y = x_761;
  let x_764 : f32 = u_xlat2.y;
  u_xlat3.z = x_764;
  let x_766 : vec4<f32> = u_xlat7;
  let x_768 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_766) + x_768);
  let x_771 : f32 = x_30.x_LayerHasMask0;
  let x_773 : f32 = x_30.x_LayerHasMask1;
  let x_775 : f32 = x_30.x_LayerHasMask2;
  let x_777 : f32 = x_30.x_LayerHasMask3;
  let x_779 : vec4<f32> = u_xlat1;
  let x_781 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_771, x_773, x_775, x_777) * x_779) + x_781);
  let x_784 : vec4<f32> = u_xlat4;
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat20 = dot(x_784, x_785);
  let x_787 : vec4<f32> = u_xlat6;
  let x_790 : vec4<f32> = vs_TEXCOORD5;
  let x_792 : vec3<f32> = (vec3<f32>(x_787.y, x_787.y, x_787.y) * vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat6;
  let x_798 : vec4<f32> = vs_TEXCOORD4;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.x, x_795.x) * -(vec3<f32>(x_798.x, x_798.y, x_798.z))) + vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat6;
  let x_810 : vec4<f32> = vs_TEXCOORD3;
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : vec3<f32> = ((vec3<f32>(x_807.z, x_807.z, x_807.z) * vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat61 = dot(vec3<f32>(x_818.x, x_818.y, x_818.z), vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : f32 = u_xlat61;
  u_xlat61 = inverseSqrt(x_823);
  let x_825 : f32 = u_xlat61;
  let x_827 : vec4<f32> = u_xlat1;
  let x_829 : vec3<f32> = (vec3<f32>(x_825, x_825, x_825) * vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_837 : vec4<f32> = vs_TEXCOORD0;
  let x_840 : f32 = x_125.x_GlobalMipBias.x;
  let x_841 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_837.z, x_837.w), x_840);
  u_xlat2 = vec3<f32>(x_841.x, x_841.y, x_841.z);
  let x_845 : vec4<f32> = x_125.x_ScaledScreenParams;
  let x_846 : vec2<f32> = vec2<f32>(x_845.x, x_845.y);
  let x_850 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_846.x, x_846.y));
  let x_851 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat3;
  let x_855 : vec4<f32> = hlslcc_FragCoord;
  let x_857 : vec2<f32> = (vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_855.x, x_855.y));
  let x_858 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_857.x, x_857.y, x_858.z, x_858.w);
  let x_861 : f32 = u_xlat3.y;
  let x_863 : f32 = x_125.x_ScaleBiasRt.x;
  let x_866 : f32 = x_125.x_ScaleBiasRt.y;
  u_xlat61 = ((x_861 * x_863) + x_866);
  let x_868 : f32 = u_xlat61;
  u_xlat3.z = (-(x_868) + 1.0f);
  let x_873 : f32 = u_xlat0.x;
  u_xlat61 = ((-(x_873) * 0.959999979f) + 0.959999979f);
  let x_879 : f32 = u_xlat40;
  let x_880 : f32 = u_xlat61;
  u_xlat62 = (x_879 + -(x_880));
  let x_883 : f32 = u_xlat61;
  let x_885 : vec4<f32> = u_xlat5;
  let x_887 : vec3<f32> = (vec3<f32>(x_883, x_883, x_883) * vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat5;
  let x_894 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_895 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec3<f32> = u_xlat0;
  let x_899 : vec4<f32> = u_xlat5;
  let x_904 : vec3<f32> = ((vec3<f32>(x_897.x, x_897.x, x_897.x) * vec3<f32>(x_899.x, x_899.y, x_899.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_905 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : f32 = u_xlat40;
  u_xlat0.x = (-(x_907) + 1.0f);
  let x_912 : f32 = u_xlat0.x;
  let x_914 : f32 = u_xlat0.x;
  u_xlat40 = (x_912 * x_914);
  let x_916 : f32 = u_xlat40;
  u_xlat40 = max(x_916, 0.0078125f);
  let x_919 : f32 = u_xlat40;
  let x_920 : f32 = u_xlat40;
  u_xlat61 = (x_919 * x_920);
  let x_922 : f32 = u_xlat62;
  u_xlat62 = (x_922 + 1.0f);
  let x_924 : f32 = u_xlat62;
  u_xlat62 = clamp(x_924, 0.0f, 1.0f);
  let x_927 : f32 = u_xlat40;
  u_xlat23 = ((x_927 * 4.0f) + 2.0f);
  let x_935 : vec4<f32> = u_xlat3;
  let x_938 : f32 = x_125.x_GlobalMipBias.x;
  let x_939 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_935.x, x_935.z), x_938);
  u_xlat3.x = x_939.x;
  let x_944 : f32 = u_xlat3.x;
  u_xlat43 = (x_944 + -1.0f);
  let x_947 : f32 = x_125.x_AmbientOcclusionParam.w;
  let x_948 : f32 = u_xlat43;
  u_xlat43 = ((x_947 * x_948) + 1.0f);
  let x_951 : f32 = u_xlat20;
  let x_953 : f32 = u_xlat3.x;
  u_xlat20 = min(x_951, x_953);
  let x_963 : f32 = x_961.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_963);
  let x_965 : bool = u_xlatb3;
  if (x_965) {
    let x_969 : f32 = x_961.x_MainLightShadowParams.y;
    u_xlatb3 = (x_969 == 1.0f);
    let x_971 : bool = u_xlatb3;
    if (x_971) {
      let x_975 : vec4<f32> = vs_TEXCOORD8;
      let x_978 : vec4<f32> = x_961.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) + x_978);
      let x_981 : vec4<f32> = u_xlat6;
      let x_982 : vec2<f32> = vec2<f32>(x_981.x, x_981.y);
      let x_984 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_982.x, x_982.y, x_984);
      let x_996 : vec3<f32> = txVec0;
      let x_998 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_996.xy, x_996.z);
      u_xlat7.x = x_998;
      let x_1001 : vec4<f32> = u_xlat6;
      let x_1002 : vec2<f32> = vec2<f32>(x_1001.z, x_1001.w);
      let x_1004 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_1002.x, x_1002.y, x_1004);
      let x_1011 : vec3<f32> = txVec1;
      let x_1013 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1011.xy, x_1011.z);
      u_xlat7.y = x_1013;
      let x_1015 : vec4<f32> = vs_TEXCOORD8;
      let x_1018 : vec4<f32> = x_961.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y) + x_1018);
      let x_1021 : vec4<f32> = u_xlat6;
      let x_1022 : vec2<f32> = vec2<f32>(x_1021.x, x_1021.y);
      let x_1024 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
      let x_1031 : vec3<f32> = txVec2;
      let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1031.xy, x_1031.z);
      u_xlat7.z = x_1033;
      let x_1036 : vec4<f32> = u_xlat6;
      let x_1037 : vec2<f32> = vec2<f32>(x_1036.z, x_1036.w);
      let x_1039 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_1037.x, x_1037.y, x_1039);
      let x_1046 : vec3<f32> = txVec3;
      let x_1048 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1046.xy, x_1046.z);
      u_xlat7.w = x_1048;
      let x_1050 : vec4<f32> = u_xlat7;
      u_xlat3.x = dot(x_1050, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1058 : f32 = x_961.x_MainLightShadowParams.y;
      u_xlatb63 = (x_1058 == 2.0f);
      let x_1060 : bool = u_xlatb63;
      if (x_1060) {
        let x_1063 : vec4<f32> = vs_TEXCOORD8;
        let x_1066 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1069 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(x_1066.z, x_1066.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1070 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat6;
        let x_1074 : vec2<f32> = floor(vec2<f32>(x_1072.x, x_1072.y));
        let x_1075 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1074.x, x_1074.y, x_1075.z, x_1075.w);
        let x_1079 : vec4<f32> = vs_TEXCOORD8;
        let x_1082 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1085 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1079.x, x_1079.y) * vec2<f32>(x_1082.z, x_1082.w)) + -(vec2<f32>(x_1085.x, x_1085.y)));
        let x_1089 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1089.x, x_1089.x, x_1089.y, x_1089.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.z, x_1093.z) * vec4<f32>(x_1095.x, x_1095.x, x_1095.z, x_1095.z));
        let x_1098 : vec4<f32> = u_xlat8;
        let x_1102 : vec2<f32> = (vec2<f32>(x_1098.y, x_1098.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_1103 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1102.x, x_1103.y, x_1102.y, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1108 : vec2<f32> = u_xlat46;
        let x_1110 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1108));
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1114 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_1114) + vec2<f32>(1.0f, 1.0f));
        let x_1117 : vec2<f32> = u_xlat46;
        let x_1119 : vec2<f32> = min(x_1117, vec2<f32>(0.0f, 0.0f));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat9;
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1128 : vec2<f32> = u_xlat48;
        let x_1129 : vec2<f32> = ((-(vec2<f32>(x_1122.x, x_1122.y)) * vec2<f32>(x_1125.x, x_1125.y)) + x_1128);
        let x_1130 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1129.x, x_1129.y, x_1130.z, x_1130.w);
        let x_1132 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_1132, vec2<f32>(0.0f, 0.0f));
        let x_1134 : vec2<f32> = u_xlat46;
        let x_1136 : vec2<f32> = u_xlat46;
        let x_1138 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_1134) * x_1136) + vec2<f32>(x_1138.y, x_1138.w));
        let x_1141 : vec4<f32> = u_xlat9;
        let x_1143 : vec2<f32> = (vec2<f32>(x_1141.x, x_1141.y) + vec2<f32>(1.0f, 1.0f));
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_1146 + vec2<f32>(1.0f, 1.0f));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1152 : vec2<f32> = (vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1155 : vec2<f32> = u_xlat48;
        let x_1156 : vec2<f32> = (x_1155 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1157 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1157.w);
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1161 : vec2<f32> = (vec2<f32>(x_1159.x, x_1159.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1162 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1164 : vec2<f32> = u_xlat46;
        let x_1165 : vec2<f32> = (x_1164 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1166 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_1168.y, x_1168.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_1172 : f32 = u_xlat9.x;
        u_xlat10.z = x_1172;
        let x_1175 : f32 = u_xlat46.x;
        u_xlat10.w = x_1175;
        let x_1178 : f32 = u_xlat11.x;
        u_xlat8.z = x_1178;
        let x_1181 : f32 = u_xlat7.x;
        u_xlat8.w = x_1181;
        let x_1183 : vec4<f32> = u_xlat8;
        let x_1185 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_1183.z, x_1183.w, x_1183.x, x_1183.z) + vec4<f32>(x_1185.z, x_1185.w, x_1185.x, x_1185.z));
        let x_1189 : f32 = u_xlat10.y;
        u_xlat9.z = x_1189;
        let x_1192 : f32 = u_xlat46.y;
        u_xlat9.w = x_1192;
        let x_1195 : f32 = u_xlat8.y;
        u_xlat11.z = x_1195;
        let x_1198 : f32 = u_xlat7.z;
        u_xlat11.w = x_1198;
        let x_1200 : vec4<f32> = u_xlat9;
        let x_1202 : vec4<f32> = u_xlat11;
        let x_1204 : vec3<f32> = (vec3<f32>(x_1200.z, x_1200.y, x_1200.w) + vec3<f32>(x_1202.z, x_1202.y, x_1202.w));
        let x_1205 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
        let x_1207 : vec4<f32> = u_xlat8;
        let x_1209 : vec4<f32> = u_xlat12;
        let x_1211 : vec3<f32> = (vec3<f32>(x_1207.x, x_1207.z, x_1207.w) / vec3<f32>(x_1209.z, x_1209.w, x_1209.y));
        let x_1212 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
        let x_1214 : vec4<f32> = u_xlat8;
        let x_1220 : vec3<f32> = (vec3<f32>(x_1214.x, x_1214.y, x_1214.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1221 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
        let x_1223 : vec4<f32> = u_xlat11;
        let x_1225 : vec4<f32> = u_xlat7;
        let x_1227 : vec3<f32> = (vec3<f32>(x_1223.z, x_1223.y, x_1223.w) / vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1227.x, x_1227.y, x_1227.z, x_1228.w);
        let x_1230 : vec4<f32> = u_xlat9;
        let x_1232 : vec3<f32> = (vec3<f32>(x_1230.x, x_1230.y, x_1230.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1238 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1240 : vec3<f32> = (vec3<f32>(x_1235.y, x_1235.x, x_1235.z) * vec3<f32>(x_1238.x, x_1238.x, x_1238.x));
        let x_1241 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat9;
        let x_1246 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1248 : vec3<f32> = (vec3<f32>(x_1243.x, x_1243.y, x_1243.z) * vec3<f32>(x_1246.y, x_1246.y, x_1246.y));
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
        let x_1252 : f32 = u_xlat9.x;
        u_xlat8.w = x_1252;
        let x_1254 : vec4<f32> = u_xlat6;
        let x_1257 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1254.x, x_1254.y, x_1254.x, x_1254.y) * vec4<f32>(x_1257.x, x_1257.y, x_1257.x, x_1257.y)) + vec4<f32>(x_1260.y, x_1260.w, x_1260.x, x_1260.w));
        let x_1263 : vec4<f32> = u_xlat6;
        let x_1266 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1263.x, x_1263.y) * vec2<f32>(x_1266.x, x_1266.y)) + vec2<f32>(x_1269.z, x_1269.w));
        let x_1273 : f32 = u_xlat8.y;
        u_xlat9.w = x_1273;
        let x_1275 : vec4<f32> = u_xlat9;
        let x_1276 : vec2<f32> = vec2<f32>(x_1275.y, x_1275.z);
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1277.x, x_1276.x, x_1277.z, x_1276.y);
        let x_1279 : vec4<f32> = u_xlat6;
        let x_1282 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1285.y));
        let x_1288 : vec4<f32> = u_xlat6;
        let x_1291 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.y) * vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y)) + vec4<f32>(x_1294.w, x_1294.y, x_1294.w, x_1294.z));
        let x_1297 : vec4<f32> = u_xlat6;
        let x_1300 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.y) * vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y)) + vec4<f32>(x_1303.x, x_1303.w, x_1303.z, x_1303.w));
        let x_1306 : vec4<f32> = u_xlat7;
        let x_1308 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1306.x, x_1306.x, x_1306.x, x_1306.y) * vec4<f32>(x_1308.z, x_1308.w, x_1308.y, x_1308.z));
        let x_1312 : vec4<f32> = u_xlat7;
        let x_1314 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1312.y, x_1312.y, x_1312.z, x_1312.z) * x_1314);
        let x_1318 : f32 = u_xlat7.z;
        let x_1320 : f32 = u_xlat12.y;
        u_xlat63 = (x_1318 * x_1320);
        let x_1323 : vec4<f32> = u_xlat10;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.x, x_1323.y);
        let x_1326 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1334 : vec3<f32> = txVec4;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat64 = x_1336;
        let x_1338 : vec4<f32> = u_xlat10;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.z, x_1338.w);
        let x_1341 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1349 : vec3<f32> = txVec5;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1349.xy, x_1349.z);
        u_xlat65 = x_1351;
        let x_1352 : f32 = u_xlat65;
        let x_1354 : f32 = u_xlat13.y;
        u_xlat65 = (x_1352 * x_1354);
        let x_1357 : f32 = u_xlat13.x;
        let x_1358 : f32 = u_xlat64;
        let x_1360 : f32 = u_xlat65;
        u_xlat64 = ((x_1357 * x_1358) + x_1360);
        let x_1363 : vec2<f32> = u_xlat46;
        let x_1365 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec6;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1372.xy, x_1372.z);
        u_xlat65 = x_1374;
        let x_1376 : f32 = u_xlat13.z;
        let x_1377 : f32 = u_xlat65;
        let x_1379 : f32 = u_xlat64;
        u_xlat64 = ((x_1376 * x_1377) + x_1379);
        let x_1382 : vec4<f32> = u_xlat9;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.x, x_1382.y);
        let x_1385 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec7;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1392.xy, x_1392.z);
        u_xlat65 = x_1394;
        let x_1396 : f32 = u_xlat13.w;
        let x_1397 : f32 = u_xlat65;
        let x_1399 : f32 = u_xlat64;
        u_xlat64 = ((x_1396 * x_1397) + x_1399);
        let x_1402 : vec4<f32> = u_xlat11;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec8;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat65 = x_1414;
        let x_1416 : f32 = u_xlat14.x;
        let x_1417 : f32 = u_xlat65;
        let x_1419 : f32 = u_xlat64;
        u_xlat64 = ((x_1416 * x_1417) + x_1419);
        let x_1422 : vec4<f32> = u_xlat11;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.z, x_1422.w);
        let x_1425 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec9;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1432.xy, x_1432.z);
        u_xlat65 = x_1434;
        let x_1436 : f32 = u_xlat14.y;
        let x_1437 : f32 = u_xlat65;
        let x_1439 : f32 = u_xlat64;
        u_xlat64 = ((x_1436 * x_1437) + x_1439);
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.z, x_1442.w);
        let x_1445 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec10;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1452.xy, x_1452.z);
        u_xlat65 = x_1454;
        let x_1456 : f32 = u_xlat14.z;
        let x_1457 : f32 = u_xlat65;
        let x_1459 : f32 = u_xlat64;
        u_xlat64 = ((x_1456 * x_1457) + x_1459);
        let x_1462 : vec4<f32> = u_xlat8;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
        let x_1465 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec11;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1472.xy, x_1472.z);
        u_xlat65 = x_1474;
        let x_1476 : f32 = u_xlat14.w;
        let x_1477 : f32 = u_xlat65;
        let x_1479 : f32 = u_xlat64;
        u_xlat64 = ((x_1476 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat8;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.z, x_1482.w);
        let x_1485 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec12;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1492.xy, x_1492.z);
        u_xlat65 = x_1494;
        let x_1495 : f32 = u_xlat63;
        let x_1496 : f32 = u_xlat65;
        let x_1498 : f32 = u_xlat64;
        u_xlat3.x = ((x_1495 * x_1496) + x_1498);
      } else {
        let x_1502 : vec4<f32> = vs_TEXCOORD8;
        let x_1505 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1508 : vec2<f32> = ((vec2<f32>(x_1502.x, x_1502.y) * vec2<f32>(x_1505.z, x_1505.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1509 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
        let x_1511 : vec4<f32> = u_xlat6;
        let x_1513 : vec2<f32> = floor(vec2<f32>(x_1511.x, x_1511.y));
        let x_1514 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1513.x, x_1513.y, x_1514.z, x_1514.w);
        let x_1516 : vec4<f32> = vs_TEXCOORD8;
        let x_1519 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1522 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1516.x, x_1516.y) * vec2<f32>(x_1519.z, x_1519.w)) + -(vec2<f32>(x_1522.x, x_1522.y)));
        let x_1526 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1526.x, x_1526.x, x_1526.y, x_1526.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1529 : vec4<f32> = u_xlat7;
        let x_1531 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1529.x, x_1529.x, x_1529.z, x_1529.z) * vec4<f32>(x_1531.x, x_1531.x, x_1531.z, x_1531.z));
        let x_1534 : vec4<f32> = u_xlat8;
        let x_1538 : vec2<f32> = (vec2<f32>(x_1534.y, x_1534.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1539 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1539.x, x_1538.x, x_1539.z, x_1538.y);
        let x_1541 : vec4<f32> = u_xlat8;
        let x_1544 : vec2<f32> = u_xlat46;
        let x_1546 : vec2<f32> = ((vec2<f32>(x_1541.x, x_1541.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1544));
        let x_1547 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1546.x, x_1547.y, x_1546.y, x_1547.w);
        let x_1549 : vec2<f32> = u_xlat46;
        let x_1551 : vec2<f32> = (-(x_1549) + vec2<f32>(1.0f, 1.0f));
        let x_1552 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1551.x, x_1551.y, x_1552.z, x_1552.w);
        let x_1554 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1554, vec2<f32>(0.0f, 0.0f));
        let x_1556 : vec2<f32> = u_xlat48;
        let x_1558 : vec2<f32> = u_xlat48;
        let x_1560 : vec4<f32> = u_xlat8;
        let x_1562 : vec2<f32> = ((-(x_1556) * x_1558) + vec2<f32>(x_1560.x, x_1560.y));
        let x_1563 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1562.x, x_1562.y, x_1563.z, x_1563.w);
        let x_1565 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1565, vec2<f32>(0.0f, 0.0f));
        let x_1568 : vec2<f32> = u_xlat48;
        let x_1570 : vec2<f32> = u_xlat48;
        let x_1572 : vec4<f32> = u_xlat7;
        let x_1574 : vec2<f32> = ((-(x_1568) * x_1570) + vec2<f32>(x_1572.y, x_1572.w));
        let x_1575 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1574.x, x_1575.y, x_1574.y);
        let x_1577 : vec4<f32> = u_xlat8;
        let x_1579 : vec2<f32> = (vec2<f32>(x_1577.x, x_1577.y) + vec2<f32>(2.0f, 2.0f));
        let x_1580 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1579.x, x_1579.y, x_1580.z, x_1580.w);
        let x_1582 : vec3<f32> = u_xlat27;
        let x_1584 : vec2<f32> = (vec2<f32>(x_1582.x, x_1582.z) + vec2<f32>(2.0f, 2.0f));
        let x_1585 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1585.x, x_1584.x, x_1585.z, x_1584.y);
        let x_1588 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1588 * 0.081632003f);
        let x_1592 : vec4<f32> = u_xlat7;
        let x_1595 : vec3<f32> = (vec3<f32>(x_1592.z, x_1592.x, x_1592.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1596 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1595.x, x_1595.y, x_1595.z, x_1596.w);
        let x_1598 : vec4<f32> = u_xlat8;
        let x_1601 : vec2<f32> = (vec2<f32>(x_1598.x, x_1598.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1601.x, x_1601.y, x_1602.z, x_1602.w);
        let x_1605 : f32 = u_xlat11.y;
        u_xlat10.x = x_1605;
        let x_1607 : vec2<f32> = u_xlat46;
        let x_1614 : vec2<f32> = ((vec2<f32>(x_1607.x, x_1607.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1615.x, x_1614.x, x_1615.z, x_1614.y);
        let x_1617 : vec2<f32> = u_xlat46;
        let x_1621 : vec2<f32> = ((vec2<f32>(x_1617.x, x_1617.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1622 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1621.x, x_1622.y, x_1621.y, x_1622.w);
        let x_1625 : f32 = u_xlat7.x;
        u_xlat8.y = x_1625;
        let x_1628 : f32 = u_xlat9.y;
        u_xlat8.w = x_1628;
        let x_1630 : vec4<f32> = u_xlat8;
        let x_1631 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1630 + x_1631);
        let x_1633 : vec2<f32> = u_xlat46;
        let x_1636 : vec2<f32> = ((vec2<f32>(x_1633.y, x_1633.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1637 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1637.x, x_1636.x, x_1637.z, x_1636.y);
        let x_1639 : vec2<f32> = u_xlat46;
        let x_1642 : vec2<f32> = ((vec2<f32>(x_1639.y, x_1639.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1643 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1642.x, x_1643.y, x_1642.y, x_1643.w);
        let x_1646 : f32 = u_xlat7.y;
        u_xlat9.y = x_1646;
        let x_1648 : vec4<f32> = u_xlat9;
        let x_1649 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1648 + x_1649);
        let x_1651 : vec4<f32> = u_xlat8;
        let x_1652 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1651 / x_1652);
        let x_1654 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1654 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1660 : vec4<f32> = u_xlat9;
        let x_1661 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1660 / x_1661);
        let x_1663 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1663 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1665 : vec4<f32> = u_xlat8;
        let x_1668 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1665.w, x_1665.x, x_1665.y, x_1665.z) * vec4<f32>(x_1668.x, x_1668.x, x_1668.x, x_1668.x));
        let x_1671 : vec4<f32> = u_xlat9;
        let x_1674 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1671.x, x_1671.w, x_1671.y, x_1671.z) * vec4<f32>(x_1674.y, x_1674.y, x_1674.y, x_1674.y));
        let x_1677 : vec4<f32> = u_xlat8;
        let x_1678 : vec3<f32> = vec3<f32>(x_1677.y, x_1677.z, x_1677.w);
        let x_1679 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1678.x, x_1679.y, x_1678.y, x_1678.z);
        let x_1682 : f32 = u_xlat9.x;
        u_xlat11.y = x_1682;
        let x_1684 : vec4<f32> = u_xlat6;
        let x_1687 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1690 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1684.x, x_1684.y, x_1684.x, x_1684.y) * vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.y)) + vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1690.y));
        let x_1693 : vec4<f32> = u_xlat6;
        let x_1696 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1699 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1693.x, x_1693.y) * vec2<f32>(x_1696.x, x_1696.y)) + vec2<f32>(x_1699.w, x_1699.y));
        let x_1703 : f32 = u_xlat11.y;
        u_xlat8.y = x_1703;
        let x_1706 : f32 = u_xlat9.z;
        u_xlat11.y = x_1706;
        let x_1708 : vec4<f32> = u_xlat6;
        let x_1711 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1714 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1708.x, x_1708.y, x_1708.x, x_1708.y) * vec4<f32>(x_1711.x, x_1711.y, x_1711.x, x_1711.y)) + vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1714.y));
        let x_1717 : vec4<f32> = u_xlat6;
        let x_1720 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1723 : vec4<f32> = u_xlat11;
        let x_1725 : vec2<f32> = ((vec2<f32>(x_1717.x, x_1717.y) * vec2<f32>(x_1720.x, x_1720.y)) + vec2<f32>(x_1723.w, x_1723.y));
        let x_1726 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
        let x_1729 : f32 = u_xlat11.y;
        u_xlat8.z = x_1729;
        let x_1732 : vec4<f32> = u_xlat6;
        let x_1735 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1738 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1732.x, x_1732.y, x_1732.x, x_1732.y) * vec4<f32>(x_1735.x, x_1735.y, x_1735.x, x_1735.y)) + vec4<f32>(x_1738.x, x_1738.y, x_1738.x, x_1738.z));
        let x_1742 : f32 = u_xlat9.w;
        u_xlat11.y = x_1742;
        let x_1745 : vec4<f32> = u_xlat6;
        let x_1748 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1751 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1745.x, x_1745.y, x_1745.x, x_1745.y) * vec4<f32>(x_1748.x, x_1748.y, x_1748.x, x_1748.y)) + vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1751.y));
        let x_1755 : vec4<f32> = u_xlat6;
        let x_1758 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1761 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1755.x, x_1755.y) * vec2<f32>(x_1758.x, x_1758.y)) + vec2<f32>(x_1761.w, x_1761.y));
        let x_1765 : f32 = u_xlat11.y;
        u_xlat8.w = x_1765;
        let x_1768 : vec4<f32> = u_xlat6;
        let x_1771 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1774 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1768.x, x_1768.y) * vec2<f32>(x_1771.x, x_1771.y)) + vec2<f32>(x_1774.x, x_1774.w));
        let x_1777 : vec4<f32> = u_xlat11;
        let x_1778 : vec3<f32> = vec3<f32>(x_1777.x, x_1777.z, x_1777.w);
        let x_1779 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1778.x, x_1779.y, x_1778.y, x_1778.z);
        let x_1781 : vec4<f32> = u_xlat6;
        let x_1784 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1787 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1781.x, x_1781.y, x_1781.x, x_1781.y) * vec4<f32>(x_1784.x, x_1784.y, x_1784.x, x_1784.y)) + vec4<f32>(x_1787.x, x_1787.y, x_1787.z, x_1787.y));
        let x_1791 : vec4<f32> = u_xlat6;
        let x_1794 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1797 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1791.x, x_1791.y) * vec2<f32>(x_1794.x, x_1794.y)) + vec2<f32>(x_1797.w, x_1797.y));
        let x_1801 : f32 = u_xlat8.x;
        u_xlat9.x = x_1801;
        let x_1803 : vec4<f32> = u_xlat6;
        let x_1806 : vec4<f32> = x_961.x_MainLightShadowmapSize;
        let x_1809 : vec4<f32> = u_xlat9;
        let x_1811 : vec2<f32> = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1806.x, x_1806.y)) + vec2<f32>(x_1809.x, x_1809.y));
        let x_1812 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1811.x, x_1811.y, x_1812.z, x_1812.w);
        let x_1815 : vec4<f32> = u_xlat7;
        let x_1817 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1815.x, x_1815.x, x_1815.x, x_1815.x) * x_1817);
        let x_1820 : vec4<f32> = u_xlat7;
        let x_1822 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1820.y, x_1820.y, x_1820.y, x_1820.y) * x_1822);
        let x_1825 : vec4<f32> = u_xlat7;
        let x_1827 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1825.z, x_1825.z, x_1825.z, x_1825.z) * x_1827);
        let x_1829 : vec4<f32> = u_xlat7;
        let x_1831 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1829.w, x_1829.w, x_1829.w, x_1829.w) * x_1831);
        let x_1834 : vec4<f32> = u_xlat12;
        let x_1835 : vec2<f32> = vec2<f32>(x_1834.x, x_1834.y);
        let x_1837 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
        let x_1844 : vec3<f32> = txVec13;
        let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1844.xy, x_1844.z);
        u_xlat63 = x_1846;
        let x_1848 : vec4<f32> = u_xlat12;
        let x_1849 : vec2<f32> = vec2<f32>(x_1848.z, x_1848.w);
        let x_1851 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1849.x, x_1849.y, x_1851);
        let x_1858 : vec3<f32> = txVec14;
        let x_1860 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1858.xy, x_1858.z);
        u_xlat64 = x_1860;
        let x_1861 : f32 = u_xlat64;
        let x_1863 : f32 = u_xlat17.y;
        u_xlat64 = (x_1861 * x_1863);
        let x_1866 : f32 = u_xlat17.x;
        let x_1867 : f32 = u_xlat63;
        let x_1869 : f32 = u_xlat64;
        u_xlat63 = ((x_1866 * x_1867) + x_1869);
        let x_1872 : vec2<f32> = u_xlat46;
        let x_1874 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1872.x, x_1872.y, x_1874);
        let x_1881 : vec3<f32> = txVec15;
        let x_1883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1881.xy, x_1881.z);
        u_xlat64 = x_1883;
        let x_1885 : f32 = u_xlat17.z;
        let x_1886 : f32 = u_xlat64;
        let x_1888 : f32 = u_xlat63;
        u_xlat63 = ((x_1885 * x_1886) + x_1888);
        let x_1891 : vec4<f32> = u_xlat15;
        let x_1892 : vec2<f32> = vec2<f32>(x_1891.x, x_1891.y);
        let x_1894 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1892.x, x_1892.y, x_1894);
        let x_1901 : vec3<f32> = txVec16;
        let x_1903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1901.xy, x_1901.z);
        u_xlat64 = x_1903;
        let x_1905 : f32 = u_xlat17.w;
        let x_1906 : f32 = u_xlat64;
        let x_1908 : f32 = u_xlat63;
        u_xlat63 = ((x_1905 * x_1906) + x_1908);
        let x_1911 : vec4<f32> = u_xlat13;
        let x_1912 : vec2<f32> = vec2<f32>(x_1911.x, x_1911.y);
        let x_1914 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1912.x, x_1912.y, x_1914);
        let x_1921 : vec3<f32> = txVec17;
        let x_1923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1921.xy, x_1921.z);
        u_xlat64 = x_1923;
        let x_1925 : f32 = u_xlat18.x;
        let x_1926 : f32 = u_xlat64;
        let x_1928 : f32 = u_xlat63;
        u_xlat63 = ((x_1925 * x_1926) + x_1928);
        let x_1931 : vec4<f32> = u_xlat13;
        let x_1932 : vec2<f32> = vec2<f32>(x_1931.z, x_1931.w);
        let x_1934 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1932.x, x_1932.y, x_1934);
        let x_1941 : vec3<f32> = txVec18;
        let x_1943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1941.xy, x_1941.z);
        u_xlat64 = x_1943;
        let x_1945 : f32 = u_xlat18.y;
        let x_1946 : f32 = u_xlat64;
        let x_1948 : f32 = u_xlat63;
        u_xlat63 = ((x_1945 * x_1946) + x_1948);
        let x_1951 : vec4<f32> = u_xlat14;
        let x_1952 : vec2<f32> = vec2<f32>(x_1951.x, x_1951.y);
        let x_1954 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1952.x, x_1952.y, x_1954);
        let x_1961 : vec3<f32> = txVec19;
        let x_1963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1961.xy, x_1961.z);
        u_xlat64 = x_1963;
        let x_1965 : f32 = u_xlat18.z;
        let x_1966 : f32 = u_xlat64;
        let x_1968 : f32 = u_xlat63;
        u_xlat63 = ((x_1965 * x_1966) + x_1968);
        let x_1971 : vec4<f32> = u_xlat15;
        let x_1972 : vec2<f32> = vec2<f32>(x_1971.z, x_1971.w);
        let x_1974 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1972.x, x_1972.y, x_1974);
        let x_1981 : vec3<f32> = txVec20;
        let x_1983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1981.xy, x_1981.z);
        u_xlat64 = x_1983;
        let x_1985 : f32 = u_xlat18.w;
        let x_1986 : f32 = u_xlat64;
        let x_1988 : f32 = u_xlat63;
        u_xlat63 = ((x_1985 * x_1986) + x_1988);
        let x_1991 : vec4<f32> = u_xlat16;
        let x_1992 : vec2<f32> = vec2<f32>(x_1991.x, x_1991.y);
        let x_1994 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1992.x, x_1992.y, x_1994);
        let x_2001 : vec3<f32> = txVec21;
        let x_2003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2001.xy, x_2001.z);
        u_xlat64 = x_2003;
        let x_2005 : f32 = u_xlat19.x;
        let x_2006 : f32 = u_xlat64;
        let x_2008 : f32 = u_xlat63;
        u_xlat63 = ((x_2005 * x_2006) + x_2008);
        let x_2011 : vec4<f32> = u_xlat16;
        let x_2012 : vec2<f32> = vec2<f32>(x_2011.z, x_2011.w);
        let x_2014 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_2012.x, x_2012.y, x_2014);
        let x_2021 : vec3<f32> = txVec22;
        let x_2023 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2021.xy, x_2021.z);
        u_xlat64 = x_2023;
        let x_2025 : f32 = u_xlat19.y;
        let x_2026 : f32 = u_xlat64;
        let x_2028 : f32 = u_xlat63;
        u_xlat63 = ((x_2025 * x_2026) + x_2028);
        let x_2031 : vec2<f32> = u_xlat28;
        let x_2033 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_2031.x, x_2031.y, x_2033);
        let x_2040 : vec3<f32> = txVec23;
        let x_2042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2040.xy, x_2040.z);
        u_xlat64 = x_2042;
        let x_2044 : f32 = u_xlat19.z;
        let x_2045 : f32 = u_xlat64;
        let x_2047 : f32 = u_xlat63;
        u_xlat63 = ((x_2044 * x_2045) + x_2047);
        let x_2050 : vec2<f32> = u_xlat54;
        let x_2052 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_2050.x, x_2050.y, x_2052);
        let x_2059 : vec3<f32> = txVec24;
        let x_2061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2059.xy, x_2059.z);
        u_xlat64 = x_2061;
        let x_2063 : f32 = u_xlat19.w;
        let x_2064 : f32 = u_xlat64;
        let x_2066 : f32 = u_xlat63;
        u_xlat63 = ((x_2063 * x_2064) + x_2066);
        let x_2069 : vec4<f32> = u_xlat11;
        let x_2070 : vec2<f32> = vec2<f32>(x_2069.x, x_2069.y);
        let x_2072 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_2070.x, x_2070.y, x_2072);
        let x_2079 : vec3<f32> = txVec25;
        let x_2081 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2079.xy, x_2079.z);
        u_xlat64 = x_2081;
        let x_2083 : f32 = u_xlat7.x;
        let x_2084 : f32 = u_xlat64;
        let x_2086 : f32 = u_xlat63;
        u_xlat63 = ((x_2083 * x_2084) + x_2086);
        let x_2089 : vec4<f32> = u_xlat11;
        let x_2090 : vec2<f32> = vec2<f32>(x_2089.z, x_2089.w);
        let x_2092 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_2090.x, x_2090.y, x_2092);
        let x_2099 : vec3<f32> = txVec26;
        let x_2101 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2099.xy, x_2099.z);
        u_xlat64 = x_2101;
        let x_2103 : f32 = u_xlat7.y;
        let x_2104 : f32 = u_xlat64;
        let x_2106 : f32 = u_xlat63;
        u_xlat63 = ((x_2103 * x_2104) + x_2106);
        let x_2109 : vec2<f32> = u_xlat49;
        let x_2111 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_2109.x, x_2109.y, x_2111);
        let x_2118 : vec3<f32> = txVec27;
        let x_2120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2118.xy, x_2118.z);
        u_xlat64 = x_2120;
        let x_2122 : f32 = u_xlat7.z;
        let x_2123 : f32 = u_xlat64;
        let x_2125 : f32 = u_xlat63;
        u_xlat63 = ((x_2122 * x_2123) + x_2125);
        let x_2128 : vec4<f32> = u_xlat6;
        let x_2129 : vec2<f32> = vec2<f32>(x_2128.x, x_2128.y);
        let x_2131 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_2129.x, x_2129.y, x_2131);
        let x_2138 : vec3<f32> = txVec28;
        let x_2140 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2138.xy, x_2138.z);
        u_xlat64 = x_2140;
        let x_2142 : f32 = u_xlat7.w;
        let x_2143 : f32 = u_xlat64;
        let x_2145 : f32 = u_xlat63;
        u_xlat3.x = ((x_2142 * x_2143) + x_2145);
      }
    }
  } else {
    let x_2150 : vec4<f32> = vs_TEXCOORD8;
    let x_2151 : vec2<f32> = vec2<f32>(x_2150.x, x_2150.y);
    let x_2153 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_2151.x, x_2151.y, x_2153);
    let x_2160 : vec3<f32> = txVec29;
    let x_2162 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2160.xy, x_2160.z);
    u_xlat3.x = x_2162;
  }
  let x_2165 : f32 = x_961.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_2165) + 1.0f);
  let x_2169 : f32 = u_xlat3.x;
  let x_2171 : f32 = x_961.x_MainLightShadowParams.x;
  let x_2173 : f32 = u_xlat63;
  u_xlat3.x = ((x_2169 * x_2171) + x_2173);
  let x_2177 : f32 = vs_TEXCOORD8.z;
  u_xlatb63 = (0.0f >= x_2177);
  let x_2181 : f32 = vs_TEXCOORD8.z;
  u_xlatb64 = (x_2181 >= 1.0f);
  let x_2183 : bool = u_xlatb63;
  let x_2184 : bool = u_xlatb64;
  u_xlatb63 = (x_2183 | x_2184);
  let x_2186 : bool = u_xlatb63;
  if (x_2186) {
    x_2187 = 1.0f;
  } else {
    let x_2192 : f32 = u_xlat3.x;
    x_2187 = x_2192;
  }
  let x_2193 : f32 = x_2187;
  u_xlat3.x = x_2193;
  let x_2197 : vec3<f32> = vs_TEXCOORD7;
  let x_2200 : vec3<f32> = x_125.x_WorldSpaceCameraPos;
  let x_2202 : vec3<f32> = (x_2197 + -(x_2200));
  let x_2203 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
  let x_2205 : vec4<f32> = u_xlat6;
  let x_2207 : vec4<f32> = u_xlat6;
  u_xlat63 = dot(vec3<f32>(x_2205.x, x_2205.y, x_2205.z), vec3<f32>(x_2207.x, x_2207.y, x_2207.z));
  let x_2210 : f32 = u_xlat63;
  let x_2212 : f32 = x_961.x_MainLightShadowParams.z;
  let x_2215 : f32 = x_961.x_MainLightShadowParams.w;
  u_xlat63 = ((x_2210 * x_2212) + x_2215);
  let x_2217 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2217, 0.0f, 1.0f);
  let x_2220 : f32 = u_xlat3.x;
  u_xlat64 = (-(x_2220) + 1.0f);
  let x_2223 : f32 = u_xlat63;
  let x_2224 : f32 = u_xlat64;
  let x_2227 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2223 * x_2224) + x_2227);
  let x_2230 : f32 = u_xlat43;
  let x_2233 : vec4<f32> = x_125.x_MainLightColor;
  let x_2235 : vec3<f32> = (vec3<f32>(x_2230, x_2230, x_2230) * vec3<f32>(x_2233.x, x_2233.y, x_2233.z));
  let x_2236 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
  let x_2239 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_2239;
  let x_2242 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_2242;
  let x_2245 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_2245;
  let x_2247 : vec4<f32> = u_xlat7;
  let x_2250 : vec4<f32> = u_xlat1;
  u_xlat63 = dot(-(vec3<f32>(x_2247.x, x_2247.y, x_2247.z)), vec3<f32>(x_2250.x, x_2250.y, x_2250.z));
  let x_2253 : f32 = u_xlat63;
  let x_2254 : f32 = u_xlat63;
  u_xlat63 = (x_2253 + x_2254);
  let x_2256 : vec4<f32> = u_xlat1;
  let x_2258 : f32 = u_xlat63;
  let x_2262 : vec4<f32> = u_xlat7;
  let x_2265 : vec3<f32> = ((vec3<f32>(x_2256.x, x_2256.y, x_2256.z) * -(vec3<f32>(x_2258, x_2258, x_2258))) + -(vec3<f32>(x_2262.x, x_2262.y, x_2262.z)));
  let x_2266 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
  let x_2268 : vec4<f32> = u_xlat1;
  let x_2270 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2268.x, x_2268.y, x_2268.z), vec3<f32>(x_2270.x, x_2270.y, x_2270.z));
  let x_2273 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2273, 0.0f, 1.0f);
  let x_2275 : f32 = u_xlat63;
  u_xlat63 = (-(x_2275) + 1.0f);
  let x_2278 : f32 = u_xlat63;
  let x_2279 : f32 = u_xlat63;
  u_xlat63 = (x_2278 * x_2279);
  let x_2281 : f32 = u_xlat63;
  let x_2282 : f32 = u_xlat63;
  u_xlat63 = (x_2281 * x_2282);
  let x_2285 : f32 = u_xlat0.x;
  u_xlat64 = ((-(x_2285) * 0.699999988f) + 1.700000048f);
  let x_2292 : f32 = u_xlat0.x;
  let x_2293 : f32 = u_xlat64;
  u_xlat0.x = (x_2292 * x_2293);
  let x_2297 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2297 * 6.0f);
  let x_2309 : vec4<f32> = u_xlat8;
  let x_2312 : f32 = u_xlat0.x;
  let x_2313 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2309.x, x_2309.y, x_2309.z), x_2312);
  u_xlat8 = x_2313;
  let x_2315 : f32 = u_xlat8.w;
  u_xlat0.x = (x_2315 + -1.0f);
  let x_2323 : f32 = x_2321.unity_SpecCube0_HDR.w;
  let x_2325 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2323 * x_2325) + 1.0f);
  let x_2330 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2330, 0.0f);
  let x_2334 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2334);
  let x_2338 : f32 = u_xlat0.x;
  let x_2340 : f32 = x_2321.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2338 * x_2340);
  let x_2344 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2344);
  let x_2348 : f32 = u_xlat0.x;
  let x_2350 : f32 = x_2321.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2348 * x_2350);
  let x_2353 : vec4<f32> = u_xlat8;
  let x_2355 : vec3<f32> = u_xlat0;
  let x_2357 : vec3<f32> = (vec3<f32>(x_2353.x, x_2353.y, x_2353.z) * vec3<f32>(x_2355.x, x_2355.x, x_2355.x));
  let x_2358 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
  let x_2360 : f32 = u_xlat40;
  let x_2362 : f32 = u_xlat40;
  let x_2366 : vec2<f32> = ((vec2<f32>(x_2360, x_2360) * vec2<f32>(x_2362, x_2362)) + vec2<f32>(-1.0f, 1.0f));
  let x_2367 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2366.x, x_2367.y, x_2366.y);
  let x_2370 : f32 = u_xlat0.z;
  u_xlat40 = (1.0f / x_2370);
  let x_2372 : vec4<f32> = u_xlat5;
  let x_2375 : f32 = u_xlat62;
  let x_2377 : vec3<f32> = (-(vec3<f32>(x_2372.x, x_2372.y, x_2372.z)) + vec3<f32>(x_2375, x_2375, x_2375));
  let x_2378 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2377.x, x_2377.y, x_2377.z, x_2378.w);
  let x_2380 : f32 = u_xlat63;
  let x_2382 : vec4<f32> = u_xlat9;
  let x_2385 : vec4<f32> = u_xlat5;
  let x_2387 : vec3<f32> = ((vec3<f32>(x_2380, x_2380, x_2380) * vec3<f32>(x_2382.x, x_2382.y, x_2382.z)) + vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
  let x_2388 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2387.x, x_2387.y, x_2387.z, x_2388.w);
  let x_2390 : f32 = u_xlat40;
  let x_2392 : vec4<f32> = u_xlat9;
  let x_2394 : vec3<f32> = (vec3<f32>(x_2390, x_2390, x_2390) * vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
  let x_2395 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
  let x_2397 : vec4<f32> = u_xlat8;
  let x_2399 : vec4<f32> = u_xlat9;
  let x_2401 : vec3<f32> = (vec3<f32>(x_2397.x, x_2397.y, x_2397.z) * vec3<f32>(x_2399.x, x_2399.y, x_2399.z));
  let x_2402 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
  let x_2404 : vec3<f32> = u_xlat2;
  let x_2405 : vec4<f32> = u_xlat4;
  let x_2408 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_2404 * vec3<f32>(x_2405.x, x_2405.y, x_2405.z)) + vec3<f32>(x_2408.x, x_2408.y, x_2408.z));
  let x_2412 : f32 = u_xlat3.x;
  let x_2414 : f32 = x_2321.unity_LightData.z;
  u_xlat40 = (x_2412 * x_2414);
  let x_2416 : vec4<f32> = u_xlat1;
  let x_2419 : vec4<f32> = x_125.x_MainLightPosition;
  u_xlat62 = dot(vec3<f32>(x_2416.x, x_2416.y, x_2416.z), vec3<f32>(x_2419.x, x_2419.y, x_2419.z));
  let x_2422 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2422, 0.0f, 1.0f);
  let x_2424 : f32 = u_xlat40;
  let x_2425 : f32 = u_xlat62;
  u_xlat40 = (x_2424 * x_2425);
  let x_2427 : f32 = u_xlat40;
  let x_2429 : vec4<f32> = u_xlat6;
  let x_2431 : vec3<f32> = (vec3<f32>(x_2427, x_2427, x_2427) * vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
  let x_2432 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2431.x, x_2431.y, x_2431.z, x_2432.w);
  let x_2434 : vec4<f32> = u_xlat7;
  let x_2437 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2439 : vec3<f32> = (vec3<f32>(x_2434.x, x_2434.y, x_2434.z) + vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
  let x_2440 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
  let x_2442 : vec4<f32> = u_xlat8;
  let x_2444 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2442.x, x_2442.y, x_2442.z), vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
  let x_2447 : f32 = u_xlat40;
  u_xlat40 = max(x_2447, 1.17549435e-37f);
  let x_2450 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_2450);
  let x_2452 : f32 = u_xlat40;
  let x_2454 : vec4<f32> = u_xlat8;
  let x_2456 : vec3<f32> = (vec3<f32>(x_2452, x_2452, x_2452) * vec3<f32>(x_2454.x, x_2454.y, x_2454.z));
  let x_2457 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
  let x_2459 : vec4<f32> = u_xlat1;
  let x_2461 : vec4<f32> = u_xlat8;
  u_xlat40 = dot(vec3<f32>(x_2459.x, x_2459.y, x_2459.z), vec3<f32>(x_2461.x, x_2461.y, x_2461.z));
  let x_2464 : f32 = u_xlat40;
  u_xlat40 = clamp(x_2464, 0.0f, 1.0f);
  let x_2467 : vec4<f32> = x_125.x_MainLightPosition;
  let x_2469 : vec4<f32> = u_xlat8;
  u_xlat62 = dot(vec3<f32>(x_2467.x, x_2467.y, x_2467.z), vec3<f32>(x_2469.x, x_2469.y, x_2469.z));
  let x_2472 : f32 = u_xlat62;
  u_xlat62 = clamp(x_2472, 0.0f, 1.0f);
  let x_2474 : f32 = u_xlat40;
  let x_2475 : f32 = u_xlat40;
  u_xlat40 = (x_2474 * x_2475);
  let x_2477 : f32 = u_xlat40;
  let x_2479 : f32 = u_xlat0.x;
  u_xlat40 = ((x_2477 * x_2479) + 1.000010014f);
  let x_2483 : f32 = u_xlat62;
  let x_2484 : f32 = u_xlat62;
  u_xlat62 = (x_2483 * x_2484);
  let x_2486 : f32 = u_xlat40;
  let x_2487 : f32 = u_xlat40;
  u_xlat40 = (x_2486 * x_2487);
  let x_2489 : f32 = u_xlat62;
  u_xlat62 = max(x_2489, 0.100000001f);
  let x_2492 : f32 = u_xlat40;
  let x_2493 : f32 = u_xlat62;
  u_xlat40 = (x_2492 * x_2493);
  let x_2495 : f32 = u_xlat23;
  let x_2496 : f32 = u_xlat40;
  u_xlat40 = (x_2495 * x_2496);
  let x_2498 : f32 = u_xlat61;
  let x_2499 : f32 = u_xlat40;
  u_xlat40 = (x_2498 / x_2499);
  let x_2501 : vec4<f32> = u_xlat5;
  let x_2503 : f32 = u_xlat40;
  let x_2506 : vec4<f32> = u_xlat4;
  let x_2508 : vec3<f32> = ((vec3<f32>(x_2501.x, x_2501.y, x_2501.z) * vec3<f32>(x_2503, x_2503, x_2503)) + vec3<f32>(x_2506.x, x_2506.y, x_2506.z));
  let x_2509 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2508.x, x_2508.y, x_2508.z, x_2509.w);
  let x_2511 : vec4<f32> = u_xlat6;
  let x_2513 : vec4<f32> = u_xlat8;
  let x_2515 : vec3<f32> = (vec3<f32>(x_2511.x, x_2511.y, x_2511.z) * vec3<f32>(x_2513.x, x_2513.y, x_2513.z));
  let x_2516 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2515.x, x_2515.y, x_2515.z, x_2516.w);
  let x_2519 : f32 = x_125.x_AdditionalLightsCount.x;
  let x_2521 : f32 = x_2321.unity_LightData.y;
  u_xlat40 = min(x_2519, x_2521);
  let x_2525 : f32 = u_xlat40;
  u_xlatu40 = bitcast<u32>(i32(x_2525));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2537 : u32 = u_xlatu_loop_1;
    let x_2538 : u32 = u_xlatu40;
    if ((x_2537 < x_2538)) {
    } else {
      break;
    }
    let x_2541 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_2541 >> 2u);
    let x_2545 : u32 = u_xlatu_loop_1;
    u_xlati63 = bitcast<i32>((x_2545 & 3u));
    let x_2548 : u32 = u_xlatu3;
    let x_2551 : vec4<f32> = x_2321.unity_LightIndices[bitcast<i32>(x_2548)];
    let x_2561 : i32 = u_xlati63;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2566 : vec4<u32> = indexable[x_2561];
    u_xlat3.x = dot(x_2551, bitcast<vec4<f32>>(x_2566));
    let x_2572 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_2572);
    let x_2574 : vec3<f32> = vs_TEXCOORD7;
    let x_2586 : i32 = u_xlati3;
    let x_2588 : vec4<f32> = x_2585.x_AdditionalLightsPosition[x_2586];
    let x_2591 : i32 = u_xlati3;
    let x_2593 : vec4<f32> = x_2585.x_AdditionalLightsPosition[x_2591];
    let x_2595 : vec3<f32> = ((-(x_2574) * vec3<f32>(x_2588.w, x_2588.w, x_2588.w)) + vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
    let x_2596 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
    let x_2598 : vec4<f32> = u_xlat9;
    let x_2600 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2598.x, x_2598.y, x_2598.z), vec3<f32>(x_2600.x, x_2600.y, x_2600.z));
    let x_2603 : f32 = u_xlat63;
    u_xlat63 = max(x_2603, 6.10351562e-05f);
    let x_2605 : f32 = u_xlat63;
    u_xlat64 = inverseSqrt(x_2605);
    let x_2607 : f32 = u_xlat64;
    let x_2609 : vec4<f32> = u_xlat9;
    let x_2611 : vec3<f32> = (vec3<f32>(x_2607, x_2607, x_2607) * vec3<f32>(x_2609.x, x_2609.y, x_2609.z));
    let x_2612 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2611.x, x_2611.y, x_2611.z, x_2612.w);
    let x_2614 : f32 = u_xlat63;
    u_xlat65 = (1.0f / x_2614);
    let x_2616 : f32 = u_xlat63;
    let x_2617 : i32 = u_xlati3;
    let x_2619 : f32 = x_2585.x_AdditionalLightsAttenuation[x_2617].x;
    u_xlat63 = (x_2616 * x_2619);
    let x_2621 : f32 = u_xlat63;
    let x_2623 : f32 = u_xlat63;
    u_xlat63 = ((-(x_2621) * x_2623) + 1.0f);
    let x_2626 : f32 = u_xlat63;
    u_xlat63 = max(x_2626, 0.0f);
    let x_2628 : f32 = u_xlat63;
    let x_2629 : f32 = u_xlat63;
    u_xlat63 = (x_2628 * x_2629);
    let x_2631 : f32 = u_xlat63;
    let x_2632 : f32 = u_xlat65;
    u_xlat63 = (x_2631 * x_2632);
    let x_2634 : i32 = u_xlati3;
    let x_2636 : vec4<f32> = x_2585.x_AdditionalLightsSpotDir[x_2634];
    let x_2638 : vec4<f32> = u_xlat10;
    u_xlat65 = dot(vec3<f32>(x_2636.x, x_2636.y, x_2636.z), vec3<f32>(x_2638.x, x_2638.y, x_2638.z));
    let x_2641 : f32 = u_xlat65;
    let x_2642 : i32 = u_xlati3;
    let x_2644 : f32 = x_2585.x_AdditionalLightsAttenuation[x_2642].z;
    let x_2646 : i32 = u_xlati3;
    let x_2648 : f32 = x_2585.x_AdditionalLightsAttenuation[x_2646].w;
    u_xlat65 = ((x_2641 * x_2644) + x_2648);
    let x_2650 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2650, 0.0f, 1.0f);
    let x_2652 : f32 = u_xlat65;
    let x_2653 : f32 = u_xlat65;
    u_xlat65 = (x_2652 * x_2653);
    let x_2655 : f32 = u_xlat63;
    let x_2656 : f32 = u_xlat65;
    u_xlat63 = (x_2655 * x_2656);
    let x_2658 : f32 = u_xlat43;
    let x_2660 : i32 = u_xlati3;
    let x_2662 : vec4<f32> = x_2585.x_AdditionalLightsColor[x_2660];
    let x_2664 : vec3<f32> = (vec3<f32>(x_2658, x_2658, x_2658) * vec3<f32>(x_2662.x, x_2662.y, x_2662.z));
    let x_2665 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2664.x, x_2664.y, x_2664.z, x_2665.w);
    let x_2667 : vec4<f32> = u_xlat1;
    let x_2669 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_2667.x, x_2667.y, x_2667.z), vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
    let x_2674 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2674, 0.0f, 1.0f);
    let x_2678 : f32 = u_xlat3.x;
    let x_2679 : f32 = u_xlat63;
    u_xlat3.x = (x_2678 * x_2679);
    let x_2682 : vec4<f32> = u_xlat3;
    let x_2684 : vec4<f32> = u_xlat11;
    let x_2686 : vec3<f32> = (vec3<f32>(x_2682.x, x_2682.x, x_2682.x) * vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
    let x_2687 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2686.x, x_2686.y, x_2686.z, x_2687.w);
    let x_2689 : vec4<f32> = u_xlat9;
    let x_2691 : f32 = u_xlat64;
    let x_2694 : vec4<f32> = u_xlat7;
    let x_2696 : vec3<f32> = ((vec3<f32>(x_2689.x, x_2689.y, x_2689.z) * vec3<f32>(x_2691, x_2691, x_2691)) + vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
    let x_2697 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
    let x_2699 : vec4<f32> = u_xlat9;
    let x_2701 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_2699.x, x_2699.y, x_2699.z), vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
    let x_2706 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_2706, 1.17549435e-37f);
    let x_2710 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_2710);
    let x_2713 : vec4<f32> = u_xlat3;
    let x_2715 : vec4<f32> = u_xlat9;
    let x_2717 : vec3<f32> = (vec3<f32>(x_2713.x, x_2713.x, x_2713.x) * vec3<f32>(x_2715.x, x_2715.y, x_2715.z));
    let x_2718 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2717.x, x_2717.y, x_2717.z, x_2718.w);
    let x_2720 : vec4<f32> = u_xlat1;
    let x_2722 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_2720.x, x_2720.y, x_2720.z), vec3<f32>(x_2722.x, x_2722.y, x_2722.z));
    let x_2727 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_2727, 0.0f, 1.0f);
    let x_2730 : vec4<f32> = u_xlat10;
    let x_2732 : vec4<f32> = u_xlat9;
    u_xlat3.w = dot(vec3<f32>(x_2730.x, x_2730.y, x_2730.z), vec3<f32>(x_2732.x, x_2732.y, x_2732.z));
    let x_2737 : f32 = u_xlat3.w;
    u_xlat3.w = clamp(x_2737, 0.0f, 1.0f);
    let x_2740 : vec4<f32> = u_xlat3;
    let x_2742 : vec4<f32> = u_xlat3;
    let x_2744 : vec2<f32> = (vec2<f32>(x_2740.x, x_2740.w) * vec2<f32>(x_2742.x, x_2742.w));
    let x_2745 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_2744.x, x_2745.y, x_2745.z, x_2744.y);
    let x_2748 : f32 = u_xlat3.x;
    let x_2750 : f32 = u_xlat0.x;
    u_xlat3.x = ((x_2748 * x_2750) + 1.000010014f);
    let x_2755 : f32 = u_xlat3.x;
    let x_2757 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2755 * x_2757);
    let x_2761 : f32 = u_xlat3.w;
    u_xlat63 = max(x_2761, 0.100000001f);
    let x_2763 : f32 = u_xlat63;
    let x_2765 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2763 * x_2765);
    let x_2768 : f32 = u_xlat23;
    let x_2770 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2768 * x_2770);
    let x_2773 : f32 = u_xlat61;
    let x_2775 : f32 = u_xlat3.x;
    u_xlat3.x = (x_2773 / x_2775);
    let x_2778 : vec4<f32> = u_xlat5;
    let x_2780 : vec4<f32> = u_xlat3;
    let x_2783 : vec4<f32> = u_xlat4;
    let x_2785 : vec3<f32> = ((vec3<f32>(x_2778.x, x_2778.y, x_2778.z) * vec3<f32>(x_2780.x, x_2780.x, x_2780.x)) + vec3<f32>(x_2783.x, x_2783.y, x_2783.z));
    let x_2786 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2785.x, x_2785.y, x_2785.z, x_2786.w);
    let x_2788 : vec4<f32> = u_xlat9;
    let x_2790 : vec4<f32> = u_xlat11;
    let x_2793 : vec4<f32> = u_xlat8;
    let x_2795 : vec3<f32> = ((vec3<f32>(x_2788.x, x_2788.y, x_2788.z) * vec3<f32>(x_2790.x, x_2790.y, x_2790.z)) + vec3<f32>(x_2793.x, x_2793.y, x_2793.z));
    let x_2796 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);

    continuing {
      let x_2798 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2798 + bitcast<u32>(1i));
    }
  }
  let x_2800 : vec3<f32> = u_xlat2;
  let x_2801 : f32 = u_xlat20;
  let x_2804 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_2800 * vec3<f32>(x_2801, x_2801, x_2801)) + vec3<f32>(x_2804.x, x_2804.y, x_2804.z));
  let x_2807 : vec4<f32> = u_xlat8;
  let x_2809 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2807.x, x_2807.y, x_2807.z) + x_2809);
  let x_2813 : f32 = u_xlat60;
  let x_2815 : vec3<f32> = u_xlat0;
  let x_2816 : vec3<f32> = (vec3<f32>(x_2813, x_2813, x_2813) * x_2815);
  let x_2817 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2817.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

