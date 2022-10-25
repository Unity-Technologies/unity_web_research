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

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(12) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_982 : MainLightShadows;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1142 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1406 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat42 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb43 : bool;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat43 : f32;
  var u_xlat28 : f32;
  var u_xlat14 : f32;
  var u_xlat44 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb45 : bool;
  var u_xlatb46 : bool;
  var x_1007 : f32;
  var u_xlat46 : f32;
  var u_xlatu28 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu3 : u32;
  var u_xlati45 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati3 : i32;
  var u_xlat47 : f32;
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
  u_xlat42 = dot(x_134, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
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
  u_xlatb43 = (4.0f >= x_217);
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
  let x_279 : bool = u_xlatb43;
  let x_280 : vec4<f32> = u_xlat11;
  let x_281 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_281, x_280, vec4<bool>(x_279, x_279, x_279, x_279));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_286, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_288 : f32 = u_xlat43;
  u_xlat43 = (x_288 + 6.10351562e-05f);
  let x_291 : vec4<f32> = u_xlat4;
  let x_292 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_391.x, x_391.y), vec2<f32>(x_393.x, x_393.y));
  let x_396 : f32 = u_xlat43;
  u_xlat43 = min(x_396, 1.0f);
  let x_398 : f32 = u_xlat43;
  u_xlat43 = (-(x_398) + 1.0f);
  let x_401 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_401);
  let x_403 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_440.x, x_440.y), vec2<f32>(x_442.x, x_442.y));
  let x_445 : f32 = u_xlat43;
  u_xlat43 = min(x_445, 1.0f);
  let x_447 : f32 = u_xlat43;
  u_xlat43 = (-(x_447) + 1.0f);
  let x_450 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_450);
  let x_452 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_509.x, x_509.y), vec2<f32>(x_511.x, x_511.y));
  let x_514 : f32 = u_xlat43;
  u_xlat43 = min(x_514, 1.0f);
  let x_516 : f32 = u_xlat43;
  u_xlat43 = (-(x_516) + 1.0f);
  let x_519 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_519);
  let x_521 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec2<f32>(x_572.x, x_572.y), vec2<f32>(x_574.x, x_574.y));
  let x_577 : f32 = u_xlat43;
  u_xlat43 = min(x_577, 1.0f);
  let x_579 : f32 = u_xlat43;
  u_xlat43 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_582);
  let x_584 : f32 = u_xlat43;
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
  u_xlat43 = dot(vec3<f32>(x_616.x, x_616.y, x_616.w), vec3<f32>(x_618.x, x_618.y, x_618.w));
  let x_621 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_621);
  let x_623 : f32 = u_xlat43;
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
  u_xlat28 = dot(x_701, x_702);
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
  u_xlat14 = dot(x_784, x_785);
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
  u_xlat43 = dot(vec3<f32>(x_818.x, x_818.y, x_818.z), vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_823);
  let x_825 : f32 = u_xlat43;
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
  u_xlat43 = ((x_861 * x_863) + x_866);
  let x_868 : f32 = u_xlat43;
  u_xlat3.z = (-(x_868) + 1.0f);
  let x_873 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_873) * 0.959999979f) + 0.959999979f);
  let x_879 : f32 = u_xlat28;
  let x_880 : f32 = u_xlat43;
  u_xlat44 = (x_879 + -(x_880));
  let x_883 : f32 = u_xlat43;
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
  let x_907 : f32 = u_xlat28;
  u_xlat0.x = (-(x_907) + 1.0f);
  let x_912 : f32 = u_xlat0.x;
  let x_914 : f32 = u_xlat0.x;
  u_xlat28 = (x_912 * x_914);
  let x_916 : f32 = u_xlat28;
  u_xlat28 = max(x_916, 0.0078125f);
  let x_919 : f32 = u_xlat28;
  let x_920 : f32 = u_xlat28;
  u_xlat43 = (x_919 * x_920);
  let x_922 : f32 = u_xlat44;
  u_xlat44 = (x_922 + 1.0f);
  let x_924 : f32 = u_xlat44;
  u_xlat44 = clamp(x_924, 0.0f, 1.0f);
  let x_927 : f32 = u_xlat28;
  u_xlat17 = ((x_927 * 4.0f) + 2.0f);
  let x_935 : vec4<f32> = u_xlat3;
  let x_938 : f32 = x_125.x_GlobalMipBias.x;
  let x_939 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_935.x, x_935.z), x_938);
  u_xlat3.x = x_939.x;
  let x_944 : f32 = u_xlat3.x;
  u_xlat31 = (x_944 + -1.0f);
  let x_947 : f32 = x_125.x_AmbientOcclusionParam.w;
  let x_948 : f32 = u_xlat31;
  u_xlat31 = ((x_947 * x_948) + 1.0f);
  let x_951 : f32 = u_xlat14;
  let x_953 : f32 = u_xlat3.x;
  u_xlat14 = min(x_951, x_953);
  let x_957 : vec4<f32> = vs_TEXCOORD8;
  let x_958 : vec2<f32> = vec2<f32>(x_957.x, x_957.y);
  let x_960 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_958.x, x_958.y, x_960);
  let x_972 : vec3<f32> = txVec0;
  let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_972.xy, x_972.z);
  u_xlat3.x = x_974;
  let x_984 : f32 = x_982.x_MainLightShadowParams.x;
  u_xlat45 = (-(x_984) + 1.0f);
  let x_988 : f32 = u_xlat3.x;
  let x_990 : f32 = x_982.x_MainLightShadowParams.x;
  let x_992 : f32 = u_xlat45;
  u_xlat3.x = ((x_988 * x_990) + x_992);
  let x_997 : f32 = vs_TEXCOORD8.z;
  u_xlatb45 = (0.0f >= x_997);
  let x_1001 : f32 = vs_TEXCOORD8.z;
  u_xlatb46 = (x_1001 >= 1.0f);
  let x_1003 : bool = u_xlatb45;
  let x_1004 : bool = u_xlatb46;
  u_xlatb45 = (x_1003 | x_1004);
  let x_1006 : bool = u_xlatb45;
  if (x_1006) {
    x_1007 = 1.0f;
  } else {
    let x_1012 : f32 = u_xlat3.x;
    x_1007 = x_1012;
  }
  let x_1013 : f32 = x_1007;
  u_xlat3.x = x_1013;
  let x_1017 : vec3<f32> = vs_TEXCOORD7;
  let x_1020 : vec3<f32> = x_125.x_WorldSpaceCameraPos;
  let x_1022 : vec3<f32> = (x_1017 + -(x_1020));
  let x_1023 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : vec4<f32> = u_xlat6;
  let x_1027 : vec4<f32> = u_xlat6;
  u_xlat45 = dot(vec3<f32>(x_1025.x, x_1025.y, x_1025.z), vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : f32 = u_xlat45;
  let x_1032 : f32 = x_982.x_MainLightShadowParams.z;
  let x_1035 : f32 = x_982.x_MainLightShadowParams.w;
  u_xlat45 = ((x_1030 * x_1032) + x_1035);
  let x_1037 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1037, 0.0f, 1.0f);
  let x_1041 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_1041) + 1.0f);
  let x_1044 : f32 = u_xlat45;
  let x_1045 : f32 = u_xlat46;
  let x_1048 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1044 * x_1045) + x_1048);
  let x_1051 : f32 = u_xlat31;
  let x_1054 : vec4<f32> = x_125.x_MainLightColor;
  let x_1056 : vec3<f32> = (vec3<f32>(x_1051, x_1051, x_1051) * vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1060 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1060;
  let x_1063 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1063;
  let x_1066 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1066;
  let x_1068 : vec4<f32> = u_xlat7;
  let x_1071 : vec4<f32> = u_xlat1;
  u_xlat45 = dot(-(vec3<f32>(x_1068.x, x_1068.y, x_1068.z)), vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1074 : f32 = u_xlat45;
  let x_1075 : f32 = u_xlat45;
  u_xlat45 = (x_1074 + x_1075);
  let x_1077 : vec4<f32> = u_xlat1;
  let x_1079 : f32 = u_xlat45;
  let x_1083 : vec4<f32> = u_xlat7;
  let x_1086 : vec3<f32> = ((vec3<f32>(x_1077.x, x_1077.y, x_1077.z) * -(vec3<f32>(x_1079, x_1079, x_1079))) + -(vec3<f32>(x_1083.x, x_1083.y, x_1083.z)));
  let x_1087 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1089 : vec4<f32> = u_xlat1;
  let x_1091 : vec4<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_1089.x, x_1089.y, x_1089.z), vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
  let x_1094 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1094, 0.0f, 1.0f);
  let x_1096 : f32 = u_xlat45;
  u_xlat45 = (-(x_1096) + 1.0f);
  let x_1099 : f32 = u_xlat45;
  let x_1100 : f32 = u_xlat45;
  u_xlat45 = (x_1099 * x_1100);
  let x_1102 : f32 = u_xlat45;
  let x_1103 : f32 = u_xlat45;
  u_xlat45 = (x_1102 * x_1103);
  let x_1106 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1106) * 0.699999988f) + 1.700000048f);
  let x_1113 : f32 = u_xlat0.x;
  let x_1114 : f32 = u_xlat46;
  u_xlat0.x = (x_1113 * x_1114);
  let x_1118 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1118 * 6.0f);
  let x_1130 : vec4<f32> = u_xlat8;
  let x_1133 : f32 = u_xlat0.x;
  let x_1134 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1130.x, x_1130.y, x_1130.z), x_1133);
  u_xlat8 = x_1134;
  let x_1136 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1136 + -1.0f);
  let x_1144 : f32 = x_1142.unity_SpecCube0_HDR.w;
  let x_1146 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1144 * x_1146) + 1.0f);
  let x_1151 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1151, 0.0f);
  let x_1155 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1155);
  let x_1159 : f32 = u_xlat0.x;
  let x_1161 : f32 = x_1142.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1159 * x_1161);
  let x_1165 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1165);
  let x_1169 : f32 = u_xlat0.x;
  let x_1171 : f32 = x_1142.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1169 * x_1171);
  let x_1174 : vec4<f32> = u_xlat8;
  let x_1176 : vec3<f32> = u_xlat0;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1174.x, x_1174.y, x_1174.z) * vec3<f32>(x_1176.x, x_1176.x, x_1176.x));
  let x_1179 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : f32 = u_xlat28;
  let x_1183 : f32 = u_xlat28;
  let x_1187 : vec2<f32> = ((vec2<f32>(x_1181, x_1181) * vec2<f32>(x_1183, x_1183)) + vec2<f32>(-1.0f, 1.0f));
  let x_1188 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1187.x, x_1188.y, x_1187.y);
  let x_1191 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1191);
  let x_1193 : vec4<f32> = u_xlat5;
  let x_1196 : f32 = u_xlat44;
  let x_1198 : vec3<f32> = (-(vec3<f32>(x_1193.x, x_1193.y, x_1193.z)) + vec3<f32>(x_1196, x_1196, x_1196));
  let x_1199 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1201 : f32 = u_xlat45;
  let x_1203 : vec4<f32> = u_xlat9;
  let x_1206 : vec4<f32> = u_xlat5;
  let x_1208 : vec3<f32> = ((vec3<f32>(x_1201, x_1201, x_1201) * vec3<f32>(x_1203.x, x_1203.y, x_1203.z)) + vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
  let x_1209 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1211 : f32 = u_xlat28;
  let x_1213 : vec4<f32> = u_xlat9;
  let x_1215 : vec3<f32> = (vec3<f32>(x_1211, x_1211, x_1211) * vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
  let x_1218 : vec4<f32> = u_xlat8;
  let x_1220 : vec4<f32> = u_xlat9;
  let x_1222 : vec3<f32> = (vec3<f32>(x_1218.x, x_1218.y, x_1218.z) * vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1223 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1225 : vec3<f32> = u_xlat2;
  let x_1226 : vec4<f32> = u_xlat4;
  let x_1229 : vec4<f32> = u_xlat8;
  u_xlat2 = ((x_1225 * vec3<f32>(x_1226.x, x_1226.y, x_1226.z)) + vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
  let x_1233 : f32 = u_xlat3.x;
  let x_1235 : f32 = x_1142.unity_LightData.z;
  u_xlat28 = (x_1233 * x_1235);
  let x_1237 : vec4<f32> = u_xlat1;
  let x_1240 : vec4<f32> = x_125.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1237.x, x_1237.y, x_1237.z), vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1243, 0.0f, 1.0f);
  let x_1245 : f32 = u_xlat28;
  let x_1246 : f32 = u_xlat44;
  u_xlat28 = (x_1245 * x_1246);
  let x_1248 : f32 = u_xlat28;
  let x_1250 : vec4<f32> = u_xlat6;
  let x_1252 : vec3<f32> = (vec3<f32>(x_1248, x_1248, x_1248) * vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : vec4<f32> = u_xlat7;
  let x_1258 : vec4<f32> = x_125.x_MainLightPosition;
  let x_1260 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) + vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  let x_1263 : vec4<f32> = u_xlat8;
  let x_1265 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1263.x, x_1263.y, x_1263.z), vec3<f32>(x_1265.x, x_1265.y, x_1265.z));
  let x_1268 : f32 = u_xlat28;
  u_xlat28 = max(x_1268, 1.17549435e-37f);
  let x_1271 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1271);
  let x_1273 : f32 = u_xlat28;
  let x_1275 : vec4<f32> = u_xlat8;
  let x_1277 : vec3<f32> = (vec3<f32>(x_1273, x_1273, x_1273) * vec3<f32>(x_1275.x, x_1275.y, x_1275.z));
  let x_1278 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : vec4<f32> = u_xlat1;
  let x_1282 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1280.x, x_1280.y, x_1280.z), vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1285 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1285, 0.0f, 1.0f);
  let x_1288 : vec4<f32> = x_125.x_MainLightPosition;
  let x_1290 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1288.x, x_1288.y, x_1288.z), vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1293, 0.0f, 1.0f);
  let x_1295 : f32 = u_xlat28;
  let x_1296 : f32 = u_xlat28;
  u_xlat28 = (x_1295 * x_1296);
  let x_1298 : f32 = u_xlat28;
  let x_1300 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1298 * x_1300) + 1.000010014f);
  let x_1304 : f32 = u_xlat44;
  let x_1305 : f32 = u_xlat44;
  u_xlat44 = (x_1304 * x_1305);
  let x_1307 : f32 = u_xlat28;
  let x_1308 : f32 = u_xlat28;
  u_xlat28 = (x_1307 * x_1308);
  let x_1310 : f32 = u_xlat44;
  u_xlat44 = max(x_1310, 0.100000001f);
  let x_1313 : f32 = u_xlat28;
  let x_1314 : f32 = u_xlat44;
  u_xlat28 = (x_1313 * x_1314);
  let x_1316 : f32 = u_xlat17;
  let x_1317 : f32 = u_xlat28;
  u_xlat28 = (x_1316 * x_1317);
  let x_1319 : f32 = u_xlat43;
  let x_1320 : f32 = u_xlat28;
  u_xlat28 = (x_1319 / x_1320);
  let x_1322 : vec4<f32> = u_xlat5;
  let x_1324 : f32 = u_xlat28;
  let x_1327 : vec4<f32> = u_xlat4;
  let x_1329 : vec3<f32> = ((vec3<f32>(x_1322.x, x_1322.y, x_1322.z) * vec3<f32>(x_1324, x_1324, x_1324)) + vec3<f32>(x_1327.x, x_1327.y, x_1327.z));
  let x_1330 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
  let x_1332 : vec4<f32> = u_xlat6;
  let x_1334 : vec4<f32> = u_xlat8;
  let x_1336 : vec3<f32> = (vec3<f32>(x_1332.x, x_1332.y, x_1332.z) * vec3<f32>(x_1334.x, x_1334.y, x_1334.z));
  let x_1337 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
  let x_1340 : f32 = x_125.x_AdditionalLightsCount.x;
  let x_1342 : f32 = x_1142.unity_LightData.y;
  u_xlat28 = min(x_1340, x_1342);
  let x_1346 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1346));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1358 : u32 = u_xlatu_loop_1;
    let x_1359 : u32 = u_xlatu28;
    if ((x_1358 < x_1359)) {
    } else {
      break;
    }
    let x_1362 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_1362 >> 2u);
    let x_1366 : u32 = u_xlatu_loop_1;
    u_xlati45 = bitcast<i32>((x_1366 & 3u));
    let x_1369 : u32 = u_xlatu3;
    let x_1372 : vec4<f32> = x_1142.unity_LightIndices[bitcast<i32>(x_1369)];
    let x_1382 : i32 = u_xlati45;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1387 : vec4<u32> = indexable[x_1382];
    u_xlat3.x = dot(x_1372, bitcast<vec4<f32>>(x_1387));
    let x_1393 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_1393);
    let x_1395 : vec3<f32> = vs_TEXCOORD7;
    let x_1407 : i32 = u_xlati3;
    let x_1409 : vec4<f32> = x_1406.x_AdditionalLightsPosition[x_1407];
    let x_1412 : i32 = u_xlati3;
    let x_1414 : vec4<f32> = x_1406.x_AdditionalLightsPosition[x_1412];
    let x_1416 : vec3<f32> = ((-(x_1395) * vec3<f32>(x_1409.w, x_1409.w, x_1409.w)) + vec3<f32>(x_1414.x, x_1414.y, x_1414.z));
    let x_1417 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1416.x, x_1416.y, x_1416.z, x_1417.w);
    let x_1419 : vec4<f32> = u_xlat9;
    let x_1421 : vec4<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1419.x, x_1419.y, x_1419.z), vec3<f32>(x_1421.x, x_1421.y, x_1421.z));
    let x_1424 : f32 = u_xlat45;
    u_xlat45 = max(x_1424, 6.10351562e-05f);
    let x_1426 : f32 = u_xlat45;
    u_xlat46 = inverseSqrt(x_1426);
    let x_1428 : f32 = u_xlat46;
    let x_1430 : vec4<f32> = u_xlat9;
    let x_1432 : vec3<f32> = (vec3<f32>(x_1428, x_1428, x_1428) * vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
    let x_1433 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
    let x_1436 : f32 = u_xlat45;
    u_xlat47 = (1.0f / x_1436);
    let x_1438 : f32 = u_xlat45;
    let x_1439 : i32 = u_xlati3;
    let x_1441 : f32 = x_1406.x_AdditionalLightsAttenuation[x_1439].x;
    u_xlat45 = (x_1438 * x_1441);
    let x_1443 : f32 = u_xlat45;
    let x_1445 : f32 = u_xlat45;
    u_xlat45 = ((-(x_1443) * x_1445) + 1.0f);
    let x_1448 : f32 = u_xlat45;
    u_xlat45 = max(x_1448, 0.0f);
    let x_1450 : f32 = u_xlat45;
    let x_1451 : f32 = u_xlat45;
    u_xlat45 = (x_1450 * x_1451);
    let x_1453 : f32 = u_xlat45;
    let x_1454 : f32 = u_xlat47;
    u_xlat45 = (x_1453 * x_1454);
    let x_1456 : i32 = u_xlati3;
    let x_1458 : vec4<f32> = x_1406.x_AdditionalLightsSpotDir[x_1456];
    let x_1460 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1458.x, x_1458.y, x_1458.z), vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
    let x_1463 : f32 = u_xlat47;
    let x_1464 : i32 = u_xlati3;
    let x_1466 : f32 = x_1406.x_AdditionalLightsAttenuation[x_1464].z;
    let x_1468 : i32 = u_xlati3;
    let x_1470 : f32 = x_1406.x_AdditionalLightsAttenuation[x_1468].w;
    u_xlat47 = ((x_1463 * x_1466) + x_1470);
    let x_1472 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1472, 0.0f, 1.0f);
    let x_1474 : f32 = u_xlat47;
    let x_1475 : f32 = u_xlat47;
    u_xlat47 = (x_1474 * x_1475);
    let x_1477 : f32 = u_xlat45;
    let x_1478 : f32 = u_xlat47;
    u_xlat45 = (x_1477 * x_1478);
    let x_1480 : f32 = u_xlat31;
    let x_1482 : i32 = u_xlati3;
    let x_1484 : vec4<f32> = x_1406.x_AdditionalLightsColor[x_1482];
    let x_1486 : vec3<f32> = (vec3<f32>(x_1480, x_1480, x_1480) * vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
    let x_1487 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
    let x_1489 : vec4<f32> = u_xlat1;
    let x_1491 : vec4<f32> = u_xlat10;
    u_xlat3.x = dot(vec3<f32>(x_1489.x, x_1489.y, x_1489.z), vec3<f32>(x_1491.x, x_1491.y, x_1491.z));
    let x_1496 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1496, 0.0f, 1.0f);
    let x_1500 : f32 = u_xlat3.x;
    let x_1501 : f32 = u_xlat45;
    u_xlat3.x = (x_1500 * x_1501);
    let x_1504 : vec4<f32> = u_xlat3;
    let x_1506 : vec4<f32> = u_xlat11;
    let x_1508 : vec3<f32> = (vec3<f32>(x_1504.x, x_1504.x, x_1504.x) * vec3<f32>(x_1506.x, x_1506.y, x_1506.z));
    let x_1509 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1508.x, x_1508.y, x_1508.z, x_1509.w);
    let x_1511 : vec4<f32> = u_xlat9;
    let x_1513 : f32 = u_xlat46;
    let x_1516 : vec4<f32> = u_xlat7;
    let x_1518 : vec3<f32> = ((vec3<f32>(x_1511.x, x_1511.y, x_1511.z) * vec3<f32>(x_1513, x_1513, x_1513)) + vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
    let x_1519 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
    let x_1521 : vec4<f32> = u_xlat9;
    let x_1523 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_1521.x, x_1521.y, x_1521.z), vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
    let x_1528 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_1528, 1.17549435e-37f);
    let x_1532 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_1532);
    let x_1535 : vec4<f32> = u_xlat3;
    let x_1537 : vec4<f32> = u_xlat9;
    let x_1539 : vec3<f32> = (vec3<f32>(x_1535.x, x_1535.x, x_1535.x) * vec3<f32>(x_1537.x, x_1537.y, x_1537.z));
    let x_1540 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
    let x_1542 : vec4<f32> = u_xlat1;
    let x_1544 : vec4<f32> = u_xlat9;
    u_xlat3.x = dot(vec3<f32>(x_1542.x, x_1542.y, x_1542.z), vec3<f32>(x_1544.x, x_1544.y, x_1544.z));
    let x_1549 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_1549, 0.0f, 1.0f);
    let x_1552 : vec4<f32> = u_xlat10;
    let x_1554 : vec4<f32> = u_xlat9;
    u_xlat3.w = dot(vec3<f32>(x_1552.x, x_1552.y, x_1552.z), vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
    let x_1559 : f32 = u_xlat3.w;
    u_xlat3.w = clamp(x_1559, 0.0f, 1.0f);
    let x_1562 : vec4<f32> = u_xlat3;
    let x_1564 : vec4<f32> = u_xlat3;
    let x_1566 : vec2<f32> = (vec2<f32>(x_1562.x, x_1562.w) * vec2<f32>(x_1564.x, x_1564.w));
    let x_1567 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1566.x, x_1567.y, x_1567.z, x_1566.y);
    let x_1570 : f32 = u_xlat3.x;
    let x_1572 : f32 = u_xlat0.x;
    u_xlat3.x = ((x_1570 * x_1572) + 1.000010014f);
    let x_1577 : f32 = u_xlat3.x;
    let x_1579 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1577 * x_1579);
    let x_1583 : f32 = u_xlat3.w;
    u_xlat45 = max(x_1583, 0.100000001f);
    let x_1585 : f32 = u_xlat45;
    let x_1587 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1585 * x_1587);
    let x_1590 : f32 = u_xlat17;
    let x_1592 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1590 * x_1592);
    let x_1595 : f32 = u_xlat43;
    let x_1597 : f32 = u_xlat3.x;
    u_xlat3.x = (x_1595 / x_1597);
    let x_1600 : vec4<f32> = u_xlat5;
    let x_1602 : vec4<f32> = u_xlat3;
    let x_1605 : vec4<f32> = u_xlat4;
    let x_1607 : vec3<f32> = ((vec3<f32>(x_1600.x, x_1600.y, x_1600.z) * vec3<f32>(x_1602.x, x_1602.x, x_1602.x)) + vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
    let x_1608 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
    let x_1610 : vec4<f32> = u_xlat9;
    let x_1612 : vec4<f32> = u_xlat11;
    let x_1615 : vec4<f32> = u_xlat8;
    let x_1617 : vec3<f32> = ((vec3<f32>(x_1610.x, x_1610.y, x_1610.z) * vec3<f32>(x_1612.x, x_1612.y, x_1612.z)) + vec3<f32>(x_1615.x, x_1615.y, x_1615.z));
    let x_1618 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1618.w);

    continuing {
      let x_1620 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1620 + bitcast<u32>(1i));
    }
  }
  let x_1622 : vec3<f32> = u_xlat2;
  let x_1623 : f32 = u_xlat14;
  let x_1626 : vec4<f32> = u_xlat6;
  u_xlat0 = ((x_1622 * vec3<f32>(x_1623, x_1623, x_1623)) + vec3<f32>(x_1626.x, x_1626.y, x_1626.z));
  let x_1629 : vec4<f32> = u_xlat8;
  let x_1631 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1629.x, x_1629.y, x_1629.z) + x_1631);
  let x_1635 : f32 = u_xlat42;
  let x_1637 : vec3<f32> = u_xlat0;
  let x_1638 : vec3<f32> = (vec3<f32>(x_1635, x_1635, x_1635) * x_1637);
  let x_1639 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
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

