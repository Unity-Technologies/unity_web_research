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
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_404 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_764 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb33 : bool;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_153 : f32;
  var x_165 : f32;
  var x_177 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat16 : f32;
  var u_xlat27 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb17 : bool;
  var u_xlat17 : f32;
  var u_xlat39 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_944 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_44.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_82 : vec3<f32> = u_xlat2;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat33 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat33;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat33;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat33 = x_110;
  let x_111 : f32 = u_xlat33;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat33 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat33;
  u_xlatb33 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb33;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat35;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_152 : bool = u_xlatb33;
  if (x_152) {
    let x_157 : f32 = u_xlat2.x;
    x_153 = x_157;
  } else {
    let x_161 : f32 = x_44.unity_MatrixV[0i].z;
    x_153 = x_161;
  }
  let x_162 : f32 = x_153;
  u_xlat3.x = x_162;
  let x_164 : bool = u_xlatb33;
  if (x_164) {
    let x_170 : f32 = u_xlat2.y;
    x_165 = x_170;
  } else {
    let x_173 : f32 = x_44.unity_MatrixV[1i].z;
    x_165 = x_173;
  }
  let x_174 : f32 = x_165;
  u_xlat3.y = x_174;
  let x_176 : bool = u_xlatb33;
  if (x_176) {
    let x_181 : f32 = u_xlat2.z;
    x_177 = x_181;
  } else {
    let x_184 : f32 = x_44.unity_MatrixV[2i].z;
    x_177 = x_184;
  }
  let x_185 : f32 = x_177;
  u_xlat3.z = x_185;
  let x_188 : vec3<f32> = vs_TEXCOORD2;
  let x_189 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_188, x_189);
  let x_191 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_191);
  let x_193 : f32 = u_xlat33;
  let x_195 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_193, x_193, x_193) * x_195);
  let x_204 : vec2<f32> = vs_TEXCOORD8;
  let x_206 : f32 = x_44.x_GlobalMipBias.x;
  let x_207 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_204, x_206);
  u_xlat4 = x_207;
  let x_213 : vec2<f32> = vs_TEXCOORD8;
  let x_215 : f32 = x_44.x_GlobalMipBias.x;
  let x_216 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_213, x_215);
  u_xlat5 = vec3<f32>(x_216.x, x_216.y, x_216.z);
  let x_218 : vec4<f32> = u_xlat4;
  let x_222 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec3<f32> = u_xlat2;
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_225, vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : f32 = u_xlat33;
  u_xlat33 = (x_229 + 0.5f);
  let x_232 : f32 = u_xlat33;
  let x_234 : vec3<f32> = u_xlat5;
  let x_235 : vec3<f32> = (vec3<f32>(x_232, x_232, x_232) * x_234);
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : f32 = u_xlat4.w;
  u_xlat33 = max(x_239, 0.0001f);
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : f32 = u_xlat33;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) / vec3<f32>(x_244, x_244, x_244));
  let x_247 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_251 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_252 : vec2<f32> = vec2<f32>(x_251.x, x_251.y);
  let x_256 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_252.x, x_252.y));
  let x_257 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_256.x, x_256.y, x_257.z);
  let x_259 : vec3<f32> = u_xlat5;
  let x_261 : vec4<f32> = hlslcc_FragCoord;
  let x_263 : vec2<f32> = (vec2<f32>(x_259.x, x_259.y) * vec2<f32>(x_261.x, x_261.y));
  let x_264 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_263.x, x_263.y, x_264.z);
  let x_267 : f32 = u_xlat5.y;
  let x_270 : f32 = x_44.x_ScaleBiasRt.x;
  let x_273 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_267 * x_270) + x_273);
  let x_275 : f32 = u_xlat33;
  u_xlat5.z = (-(x_275) + 1.0f);
  let x_280 : f32 = x_57.x_Metallic;
  u_xlat33 = ((-(x_280) * 0.959999979f) + 0.959999979f);
  let x_285 : f32 = u_xlat33;
  let x_288 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_285) + x_288);
  let x_291 : f32 = u_xlat33;
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_291, x_291, x_291) * vec3<f32>(x_293.y, x_293.z, x_293.w));
  let x_296 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = x_57.x_BaseColor;
  let x_304 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_299.x, x_299.y, x_299.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_305 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_308 : f32 = x_57.x_Metallic;
  let x_310 : f32 = x_57.x_Metallic;
  let x_312 : f32 = x_57.x_Metallic;
  let x_313 : vec3<f32> = vec3<f32>(x_308, x_310, x_312);
  let x_318 : vec4<f32> = u_xlat0;
  let x_323 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_318.x, x_318.y, x_318.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : f32 = x_57.x_Smoothness;
  u_xlat33 = (-(x_327) + 1.0f);
  let x_331 : f32 = u_xlat33;
  let x_332 : f32 = u_xlat33;
  u_xlat36 = (x_331 * x_332);
  let x_334 : f32 = u_xlat36;
  u_xlat36 = max(x_334, 0.0078125f);
  let x_338 : f32 = u_xlat36;
  let x_339 : f32 = u_xlat36;
  u_xlat37 = (x_338 * x_339);
  let x_341 : f32 = u_xlat35;
  u_xlat35 = (x_341 + 1.0f);
  let x_343 : f32 = u_xlat35;
  u_xlat35 = clamp(x_343, 0.0f, 1.0f);
  let x_346 : f32 = u_xlat36;
  u_xlat16 = ((x_346 * 4.0f) + 2.0f);
  let x_356 : vec3<f32> = u_xlat5;
  let x_359 : f32 = x_44.x_GlobalMipBias.x;
  let x_360 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_356.x, x_356.z), x_359);
  u_xlat5.x = x_360.x;
  let x_365 : f32 = u_xlat5.x;
  u_xlat27 = (x_365 + -1.0f);
  let x_370 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_371 : f32 = u_xlat27;
  u_xlat27 = ((x_370 * x_371) + 1.0f);
  let x_375 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_375, 1.0f);
  let x_380 : vec4<f32> = vs_TEXCOORD6;
  let x_381 : vec2<f32> = vec2<f32>(x_380.x, x_380.y);
  let x_383 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_381.x, x_381.y, x_383);
  let x_396 : vec3<f32> = txVec0;
  let x_398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_396.xy, x_396.z);
  u_xlat38 = x_398;
  let x_406 : f32 = x_404.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_406) + 1.0f);
  let x_410 : f32 = u_xlat38;
  let x_412 : f32 = x_404.x_MainLightShadowParams.x;
  let x_415 : f32 = u_xlat6.x;
  u_xlat38 = ((x_410 * x_412) + x_415);
  let x_419 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_419);
  let x_423 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_423 >= 1.0f);
  let x_425 : bool = u_xlatb17;
  let x_426 : bool = u_xlatb6;
  u_xlatb6 = (x_425 | x_426);
  let x_428 : bool = u_xlatb6;
  let x_429 : f32 = u_xlat38;
  u_xlat38 = select(x_429, 1.0f, x_428);
  let x_431 : vec3<f32> = vs_TEXCOORD1;
  let x_433 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_431 + -(x_433));
  let x_436 : vec3<f32> = u_xlat6;
  let x_437 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_436, x_437);
  let x_441 : f32 = u_xlat6.x;
  let x_443 : f32 = x_404.x_MainLightShadowParams.z;
  let x_446 : f32 = x_404.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_441 * x_443) + x_446);
  let x_450 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_450, 0.0f, 1.0f);
  let x_454 : f32 = u_xlat38;
  u_xlat17 = (-(x_454) + 1.0f);
  let x_458 : f32 = u_xlat6.x;
  let x_459 : f32 = u_xlat17;
  let x_461 : f32 = u_xlat38;
  u_xlat38 = ((x_458 * x_459) + x_461);
  let x_463 : f32 = u_xlat27;
  let x_467 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_463, x_463, x_463) * vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_471 : vec3<f32> = u_xlat3;
  let x_473 : vec3<f32> = u_xlat2;
  u_xlat39 = dot(-(x_471), x_473);
  let x_475 : f32 = u_xlat39;
  let x_476 : f32 = u_xlat39;
  u_xlat39 = (x_475 + x_476);
  let x_479 : vec3<f32> = u_xlat2;
  let x_480 : f32 = u_xlat39;
  let x_484 : vec3<f32> = u_xlat3;
  let x_486 : vec3<f32> = ((x_479 * -(vec3<f32>(x_480, x_480, x_480))) + -(x_484));
  let x_487 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec3<f32> = u_xlat2;
  let x_490 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_489, x_490);
  let x_492 : f32 = u_xlat39;
  u_xlat39 = clamp(x_492, 0.0f, 1.0f);
  let x_494 : f32 = u_xlat39;
  u_xlat39 = (-(x_494) + 1.0f);
  let x_497 : f32 = u_xlat39;
  let x_498 : f32 = u_xlat39;
  u_xlat39 = (x_497 * x_498);
  let x_500 : f32 = u_xlat39;
  let x_501 : f32 = u_xlat39;
  u_xlat39 = (x_500 * x_501);
  let x_504 : f32 = u_xlat33;
  u_xlat40 = ((-(x_504) * 0.699999988f) + 1.700000048f);
  let x_510 : f32 = u_xlat33;
  let x_511 : f32 = u_xlat40;
  u_xlat33 = (x_510 * x_511);
  let x_513 : f32 = u_xlat33;
  u_xlat33 = (x_513 * 6.0f);
  let x_524 : vec4<f32> = u_xlat7;
  let x_526 : f32 = u_xlat33;
  let x_527 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_524.x, x_524.y, x_524.z), x_526);
  u_xlat7 = x_527;
  let x_529 : f32 = u_xlat7.w;
  u_xlat33 = (x_529 + -1.0f);
  let x_532 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_533 : f32 = u_xlat33;
  u_xlat33 = ((x_532 * x_533) + 1.0f);
  let x_536 : f32 = u_xlat33;
  u_xlat33 = max(x_536, 0.0f);
  let x_538 : f32 = u_xlat33;
  u_xlat33 = log2(x_538);
  let x_540 : f32 = u_xlat33;
  let x_542 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_540 * x_542);
  let x_544 : f32 = u_xlat33;
  u_xlat33 = exp2(x_544);
  let x_546 : f32 = u_xlat33;
  let x_548 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_546 * x_548);
  let x_550 : vec4<f32> = u_xlat7;
  let x_552 : f32 = u_xlat33;
  let x_554 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) * vec3<f32>(x_552, x_552, x_552));
  let x_555 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_559 : f32 = u_xlat36;
  let x_561 : f32 = u_xlat36;
  u_xlat8 = ((vec2<f32>(x_559, x_559) * vec2<f32>(x_561, x_561)) + vec2<f32>(-1.0f, 1.0f));
  let x_567 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_567);
  let x_570 : vec4<f32> = u_xlat0;
  let x_573 : f32 = u_xlat35;
  u_xlat19 = (-(vec3<f32>(x_570.x, x_570.y, x_570.z)) + vec3<f32>(x_573, x_573, x_573));
  let x_576 : f32 = u_xlat39;
  let x_578 : vec3<f32> = u_xlat19;
  let x_580 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_576, x_576, x_576) * x_578) + vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : f32 = u_xlat33;
  let x_585 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_583, x_583, x_583) * x_585);
  let x_587 : vec4<f32> = u_xlat7;
  let x_589 : vec3<f32> = u_xlat19;
  let x_590 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) * x_589);
  let x_591 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat4;
  let x_595 : vec3<f32> = u_xlat12;
  let x_597 : vec4<f32> = u_xlat7;
  let x_599 : vec3<f32> = ((vec3<f32>(x_593.x, x_593.y, x_593.z) * x_595) + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : f32 = u_xlat38;
  let x_605 : f32 = x_95.unity_LightData.z;
  u_xlat33 = (x_602 * x_605);
  let x_607 : vec3<f32> = u_xlat2;
  let x_609 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(x_607, vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : f32 = u_xlat35;
  u_xlat35 = clamp(x_612, 0.0f, 1.0f);
  let x_614 : f32 = u_xlat33;
  let x_615 : f32 = u_xlat35;
  u_xlat33 = (x_614 * x_615);
  let x_617 : f32 = u_xlat33;
  let x_619 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_617, x_617, x_617) * x_619);
  let x_621 : vec3<f32> = u_xlat3;
  let x_623 : vec4<f32> = x_44.x_MainLightPosition;
  let x_625 : vec3<f32> = (x_621 + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat7;
  let x_630 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : f32 = u_xlat33;
  u_xlat33 = max(x_633, 1.17549435e-37f);
  let x_636 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_636);
  let x_638 : f32 = u_xlat33;
  let x_640 : vec4<f32> = u_xlat7;
  let x_642 : vec3<f32> = (vec3<f32>(x_638, x_638, x_638) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = u_xlat2;
  let x_646 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_645, vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : f32 = u_xlat33;
  u_xlat33 = clamp(x_649, 0.0f, 1.0f);
  let x_652 : vec4<f32> = x_44.x_MainLightPosition;
  let x_654 : vec4<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_652.x, x_652.y, x_652.z), vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : f32 = u_xlat35;
  u_xlat35 = clamp(x_657, 0.0f, 1.0f);
  let x_659 : f32 = u_xlat33;
  let x_660 : f32 = u_xlat33;
  u_xlat33 = (x_659 * x_660);
  let x_662 : f32 = u_xlat33;
  let x_664 : f32 = u_xlat8.x;
  u_xlat33 = ((x_662 * x_664) + 1.000010014f);
  let x_668 : f32 = u_xlat35;
  let x_669 : f32 = u_xlat35;
  u_xlat35 = (x_668 * x_669);
  let x_671 : f32 = u_xlat33;
  let x_672 : f32 = u_xlat33;
  u_xlat33 = (x_671 * x_672);
  let x_674 : f32 = u_xlat35;
  u_xlat35 = max(x_674, 0.100000001f);
  let x_677 : f32 = u_xlat33;
  let x_678 : f32 = u_xlat35;
  u_xlat33 = (x_677 * x_678);
  let x_680 : f32 = u_xlat16;
  let x_681 : f32 = u_xlat33;
  u_xlat33 = (x_680 * x_681);
  let x_683 : f32 = u_xlat37;
  let x_684 : f32 = u_xlat33;
  u_xlat33 = (x_683 / x_684);
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : f32 = u_xlat33;
  let x_691 : vec3<f32> = u_xlat12;
  let x_692 : vec3<f32> = ((vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(x_688, x_688, x_688)) + x_691);
  let x_693 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat6;
  let x_696 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_695 * vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_700 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_702 : f32 = x_95.unity_LightData.y;
  u_xlat33 = min(x_700, x_702);
  let x_706 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_706));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_718 : u32 = u_xlatu_loop_1;
    let x_719 : u32 = u_xlatu33;
    if ((x_718 < x_719)) {
    } else {
      break;
    }
    let x_722 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_722 >> 2u);
    let x_726 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_726 & 3u));
    let x_729 : u32 = u_xlatu36;
    let x_732 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_729)];
    let x_742 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_747 : vec4<u32> = indexable[x_742];
    u_xlat36 = dot(x_732, bitcast<vec4<f32>>(x_747));
    let x_751 : f32 = u_xlat36;
    u_xlati36 = i32(x_751);
    let x_753 : vec3<f32> = vs_TEXCOORD1;
    let x_765 : i32 = u_xlati36;
    let x_767 : vec4<f32> = x_764.x_AdditionalLightsPosition[x_765];
    let x_770 : i32 = u_xlati36;
    let x_772 : vec4<f32> = x_764.x_AdditionalLightsPosition[x_770];
    u_xlat19 = ((-(x_753) * vec3<f32>(x_767.w, x_767.w, x_767.w)) + vec3<f32>(x_772.x, x_772.y, x_772.z));
    let x_775 : vec3<f32> = u_xlat19;
    let x_776 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_775, x_776);
    let x_778 : f32 = u_xlat38;
    u_xlat38 = max(x_778, 6.10351562e-05f);
    let x_781 : f32 = u_xlat38;
    u_xlat39 = inverseSqrt(x_781);
    let x_784 : f32 = u_xlat39;
    let x_786 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_784, x_784, x_784) * x_786);
    let x_788 : f32 = u_xlat38;
    u_xlat40 = (1.0f / x_788);
    let x_790 : f32 = u_xlat38;
    let x_791 : i32 = u_xlati36;
    let x_793 : f32 = x_764.x_AdditionalLightsAttenuation[x_791].x;
    u_xlat38 = (x_790 * x_793);
    let x_795 : f32 = u_xlat38;
    let x_797 : f32 = u_xlat38;
    u_xlat38 = ((-(x_795) * x_797) + 1.0f);
    let x_800 : f32 = u_xlat38;
    u_xlat38 = max(x_800, 0.0f);
    let x_802 : f32 = u_xlat38;
    let x_803 : f32 = u_xlat38;
    u_xlat38 = (x_802 * x_803);
    let x_805 : f32 = u_xlat38;
    let x_806 : f32 = u_xlat40;
    u_xlat38 = (x_805 * x_806);
    let x_808 : i32 = u_xlati36;
    let x_810 : vec4<f32> = x_764.x_AdditionalLightsSpotDir[x_808];
    let x_812 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_810.x, x_810.y, x_810.z), x_812);
    let x_814 : f32 = u_xlat40;
    let x_815 : i32 = u_xlati36;
    let x_817 : f32 = x_764.x_AdditionalLightsAttenuation[x_815].z;
    let x_819 : i32 = u_xlati36;
    let x_821 : f32 = x_764.x_AdditionalLightsAttenuation[x_819].w;
    u_xlat40 = ((x_814 * x_817) + x_821);
    let x_823 : f32 = u_xlat40;
    u_xlat40 = clamp(x_823, 0.0f, 1.0f);
    let x_825 : f32 = u_xlat40;
    let x_826 : f32 = u_xlat40;
    u_xlat40 = (x_825 * x_826);
    let x_828 : f32 = u_xlat38;
    let x_829 : f32 = u_xlat40;
    u_xlat38 = (x_828 * x_829);
    let x_832 : f32 = u_xlat27;
    let x_834 : i32 = u_xlati36;
    let x_836 : vec4<f32> = x_764.x_AdditionalLightsColor[x_834];
    u_xlat10 = (vec3<f32>(x_832, x_832, x_832) * vec3<f32>(x_836.x, x_836.y, x_836.z));
    let x_839 : vec3<f32> = u_xlat2;
    let x_840 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(x_839, x_840);
    let x_842 : f32 = u_xlat36;
    u_xlat36 = clamp(x_842, 0.0f, 1.0f);
    let x_844 : f32 = u_xlat36;
    let x_845 : f32 = u_xlat38;
    u_xlat36 = (x_844 * x_845);
    let x_847 : f32 = u_xlat36;
    let x_849 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_847, x_847, x_847) * x_849);
    let x_851 : vec3<f32> = u_xlat19;
    let x_852 : f32 = u_xlat39;
    let x_855 : vec3<f32> = u_xlat3;
    u_xlat19 = ((x_851 * vec3<f32>(x_852, x_852, x_852)) + x_855);
    let x_857 : vec3<f32> = u_xlat19;
    let x_858 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_857, x_858);
    let x_860 : f32 = u_xlat36;
    u_xlat36 = max(x_860, 1.17549435e-37f);
    let x_862 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_862);
    let x_864 : f32 = u_xlat36;
    let x_866 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_864, x_864, x_864) * x_866);
    let x_868 : vec3<f32> = u_xlat2;
    let x_869 : vec3<f32> = u_xlat19;
    u_xlat36 = dot(x_868, x_869);
    let x_871 : f32 = u_xlat36;
    u_xlat36 = clamp(x_871, 0.0f, 1.0f);
    let x_873 : vec3<f32> = u_xlat9;
    let x_874 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_873, x_874);
    let x_876 : f32 = u_xlat38;
    u_xlat38 = clamp(x_876, 0.0f, 1.0f);
    let x_878 : f32 = u_xlat36;
    let x_879 : f32 = u_xlat36;
    u_xlat36 = (x_878 * x_879);
    let x_881 : f32 = u_xlat36;
    let x_883 : f32 = u_xlat8.x;
    u_xlat36 = ((x_881 * x_883) + 1.000010014f);
    let x_886 : f32 = u_xlat38;
    let x_887 : f32 = u_xlat38;
    u_xlat38 = (x_886 * x_887);
    let x_889 : f32 = u_xlat36;
    let x_890 : f32 = u_xlat36;
    u_xlat36 = (x_889 * x_890);
    let x_892 : f32 = u_xlat38;
    u_xlat38 = max(x_892, 0.100000001f);
    let x_894 : f32 = u_xlat36;
    let x_895 : f32 = u_xlat38;
    u_xlat36 = (x_894 * x_895);
    let x_897 : f32 = u_xlat16;
    let x_898 : f32 = u_xlat36;
    u_xlat36 = (x_897 * x_898);
    let x_900 : f32 = u_xlat37;
    let x_901 : f32 = u_xlat36;
    u_xlat36 = (x_900 / x_901);
    let x_903 : vec4<f32> = u_xlat0;
    let x_905 : f32 = u_xlat36;
    let x_908 : vec3<f32> = u_xlat12;
    u_xlat19 = ((vec3<f32>(x_903.x, x_903.y, x_903.z) * vec3<f32>(x_905, x_905, x_905)) + x_908);
    let x_910 : vec3<f32> = u_xlat19;
    let x_911 : vec3<f32> = u_xlat10;
    let x_913 : vec4<f32> = u_xlat7;
    let x_915 : vec3<f32> = ((x_910 * x_911) + vec3<f32>(x_913.x, x_913.y, x_913.z));
    let x_916 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);

    continuing {
      let x_918 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_918 + bitcast<u32>(1i));
    }
  }
  let x_920 : vec4<f32> = u_xlat4;
  let x_922 : vec3<f32> = u_xlat5;
  let x_925 : vec3<f32> = u_xlat6;
  let x_926 : vec3<f32> = ((vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(x_922.x, x_922.x, x_922.x)) + x_925);
  let x_927 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_931 : vec4<f32> = u_xlat7;
  let x_933 : vec4<f32> = u_xlat0;
  let x_935 : vec3<f32> = (vec3<f32>(x_931.x, x_931.y, x_931.z) + vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_941 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_941 == 1.0f);
  let x_943 : bool = u_xlatb0;
  if (x_943) {
    let x_948 : f32 = u_xlat1.x;
    x_944 = x_948;
  } else {
    x_944 = 1.0f;
  }
  let x_950 : f32 = x_944;
  SV_Target0.w = x_950;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

