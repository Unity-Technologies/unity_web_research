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
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_353 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1873 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb20 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat20 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_172 : vec3<f32>;
  var u_xlat58 : f32;
  var u_xlat59 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat60 : f32;
  var u_xlatb23 : bool;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat63 : f32;
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
  var u_xlat24 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb61 : bool;
  var x_1653 : f32;
  var u_xlat62 : f32;
  var u_xlatu5 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati44 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat44 : f32;
  var u_xlat64 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2090 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb20 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb20;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_135 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat20;
  let x_149 : vec3<f32> = u_xlat20;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat20;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat20 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_162;
  let x_165 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_165;
  let x_169 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_169;
  let x_171 : bool = u_xlatb1;
  if (x_171) {
    let x_175 : vec3<f32> = u_xlat20;
    x_172 = x_175;
  } else {
    let x_177 : vec3<f32> = u_xlat2;
    x_172 = x_177;
  }
  let x_178 : vec3<f32> = x_172;
  u_xlat1 = x_178;
  let x_181 : vec3<f32> = vs_TEXCOORD2;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  u_xlat58 = dot(x_181, x_182);
  let x_184 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat58;
  let x_188 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_186, x_186, x_186) * x_188);
  let x_190 : vec3<f32> = u_xlat1;
  let x_191 : vec3<f32> = u_xlat1;
  u_xlat58 = dot(x_190, x_191);
  let x_193 : f32 = u_xlat58;
  u_xlat58 = max(x_193, 1.17549435e-37f);
  let x_196 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_196);
  let x_200 : f32 = vs_TEXCOORD1.y;
  let x_202 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat59 = (x_200 * x_202);
  let x_205 : f32 = x_44.unity_MatrixV[0i].z;
  let x_207 : f32 = vs_TEXCOORD1.x;
  let x_209 : f32 = u_xlat59;
  u_xlat59 = ((x_205 * x_207) + x_209);
  let x_212 : f32 = x_44.unity_MatrixV[2i].z;
  let x_214 : f32 = vs_TEXCOORD1.z;
  let x_216 : f32 = u_xlat59;
  u_xlat59 = ((x_212 * x_214) + x_216);
  let x_218 : f32 = u_xlat59;
  let x_221 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat59 = (x_218 + x_221);
  let x_223 : f32 = u_xlat59;
  let x_227 : f32 = x_44.x_ProjectionParams.y;
  u_xlat59 = (-(x_223) + -(x_227));
  let x_230 : f32 = u_xlat59;
  u_xlat59 = max(x_230, 0.0f);
  let x_232 : f32 = u_xlat59;
  let x_235 : f32 = x_44.unity_FogParams.x;
  u_xlat59 = (x_232 * x_235);
  let x_244 : vec2<f32> = vs_TEXCOORD7;
  let x_246 : f32 = x_44.x_GlobalMipBias.x;
  let x_247 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_244, x_246);
  u_xlat3 = x_247;
  let x_253 : vec2<f32> = vs_TEXCOORD7;
  let x_255 : f32 = x_44.x_GlobalMipBias.x;
  let x_256 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_253, x_255);
  u_xlat4 = vec3<f32>(x_256.x, x_256.y, x_256.z);
  let x_258 : vec4<f32> = u_xlat3;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_263 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec3<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_265, vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_271 : f32 = u_xlat3.x;
  u_xlat3.x = (x_271 + 0.5f);
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec3<f32> = u_xlat4;
  let x_278 : vec3<f32> = (vec3<f32>(x_275.x, x_275.x, x_275.x) * x_277);
  let x_279 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_283 : f32 = u_xlat3.w;
  u_xlat60 = max(x_283, 0.0001f);
  let x_286 : vec4<f32> = u_xlat3;
  let x_288 : f32 = u_xlat60;
  let x_290 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) / vec3<f32>(x_288, x_288, x_288));
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_295 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_296 : vec2<f32> = vec2<f32>(x_295.x, x_295.y);
  let x_300 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_296.x, x_296.y));
  let x_301 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_300.x, x_300.y, x_301.z);
  let x_303 : vec3<f32> = u_xlat4;
  let x_305 : vec4<f32> = hlslcc_FragCoord;
  let x_307 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(x_305.x, x_305.y));
  let x_308 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_307.x, x_307.y, x_308.z);
  let x_311 : f32 = u_xlat4.y;
  let x_314 : f32 = x_44.x_ScaleBiasRt.x;
  let x_317 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_311 * x_314) + x_317);
  let x_319 : f32 = u_xlat60;
  u_xlat4.z = (-(x_319) + 1.0f);
  let x_328 : vec3<f32> = u_xlat4;
  let x_331 : f32 = x_44.x_GlobalMipBias.x;
  let x_332 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_328.x, x_328.z), x_331);
  u_xlat60 = x_332.x;
  let x_334 : f32 = u_xlat60;
  u_xlat4.x = (x_334 + -1.0f);
  let x_340 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_342 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_340 * x_342) + 1.0f);
  let x_346 : f32 = u_xlat60;
  u_xlat60 = min(x_346, 1.0f);
  let x_355 : f32 = x_353.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_355);
  let x_357 : bool = u_xlatb23;
  if (x_357) {
    let x_361 : f32 = x_353.x_MainLightShadowParams.y;
    u_xlatb23 = (x_361 == 1.0f);
    let x_363 : bool = u_xlatb23;
    if (x_363) {
      let x_368 : vec4<f32> = vs_TEXCOORD6;
      let x_371 : vec4<f32> = x_353.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_368.x, x_368.y, x_368.x, x_368.y) + x_371);
      let x_374 : vec4<f32> = u_xlat5;
      let x_375 : vec2<f32> = vec2<f32>(x_374.x, x_374.y);
      let x_377 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_375.x, x_375.y, x_377);
      let x_390 : vec3<f32> = txVec0;
      let x_392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_390.xy, x_390.z);
      u_xlat6.x = x_392;
      let x_395 : vec4<f32> = u_xlat5;
      let x_396 : vec2<f32> = vec2<f32>(x_395.z, x_395.w);
      let x_398 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_396.x, x_396.y, x_398);
      let x_405 : vec3<f32> = txVec1;
      let x_407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_405.xy, x_405.z);
      u_xlat6.y = x_407;
      let x_409 : vec4<f32> = vs_TEXCOORD6;
      let x_412 : vec4<f32> = x_353.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_409.x, x_409.y, x_409.x, x_409.y) + x_412);
      let x_415 : vec4<f32> = u_xlat5;
      let x_416 : vec2<f32> = vec2<f32>(x_415.x, x_415.y);
      let x_418 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_416.x, x_416.y, x_418);
      let x_425 : vec3<f32> = txVec2;
      let x_427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_425.xy, x_425.z);
      u_xlat6.z = x_427;
      let x_430 : vec4<f32> = u_xlat5;
      let x_431 : vec2<f32> = vec2<f32>(x_430.z, x_430.w);
      let x_433 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_431.x, x_431.y, x_433);
      let x_440 : vec3<f32> = txVec3;
      let x_442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_440.xy, x_440.z);
      u_xlat6.w = x_442;
      let x_445 : vec4<f32> = u_xlat6;
      u_xlat23.x = dot(x_445, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_453 : f32 = x_353.x_MainLightShadowParams.y;
      u_xlatb42 = (x_453 == 2.0f);
      let x_456 : bool = u_xlatb42;
      if (x_456) {
        let x_461 : vec4<f32> = vs_TEXCOORD6;
        let x_464 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_461.x, x_461.y) * vec2<f32>(x_464.z, x_464.w)) + vec2<f32>(0.5f, 0.5f));
        let x_469 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_469);
        let x_471 : vec4<f32> = vs_TEXCOORD6;
        let x_474 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_477 : vec2<f32> = u_xlat42;
        let x_479 : vec2<f32> = ((vec2<f32>(x_471.x, x_471.y) * vec2<f32>(x_474.z, x_474.w)) + -(x_477));
        let x_480 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_482 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_482.x, x_482.x, x_482.y, x_482.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_487 : vec4<f32> = u_xlat6;
        let x_489 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_487.x, x_487.x, x_487.z, x_487.z) * vec4<f32>(x_489.x, x_489.x, x_489.z, x_489.z));
        let x_493 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_493.y, x_493.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_498 : vec4<f32> = u_xlat7;
        let x_501 : vec4<f32> = u_xlat5;
        let x_504 : vec2<f32> = ((vec2<f32>(x_498.x, x_498.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_501.x, x_501.y)));
        let x_505 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_504.x, x_505.y, x_504.y, x_505.w);
        let x_507 : vec4<f32> = u_xlat5;
        let x_510 : vec2<f32> = (-(vec2<f32>(x_507.x, x_507.y)) + vec2<f32>(1.0f, 1.0f));
        let x_511 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
        let x_514 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_514.x, x_514.y), vec2<f32>(0.0f, 0.0f));
        let x_518 : vec2<f32> = u_xlat45;
        let x_520 : vec2<f32> = u_xlat45;
        let x_522 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_518) * x_520) + vec2<f32>(x_522.x, x_522.y));
        let x_525 : vec4<f32> = u_xlat5;
        let x_527 : vec2<f32> = max(vec2<f32>(x_525.x, x_525.y), vec2<f32>(0.0f, 0.0f));
        let x_528 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
        let x_530 : vec4<f32> = u_xlat5;
        let x_533 : vec4<f32> = u_xlat5;
        let x_536 : vec4<f32> = u_xlat6;
        let x_538 : vec2<f32> = ((-(vec2<f32>(x_530.x, x_530.y)) * vec2<f32>(x_533.x, x_533.y)) + vec2<f32>(x_536.y, x_536.w));
        let x_539 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
        let x_541 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_541 + vec2<f32>(1.0f, 1.0f));
        let x_543 : vec4<f32> = u_xlat5;
        let x_545 : vec2<f32> = (vec2<f32>(x_543.x, x_543.y) + vec2<f32>(1.0f, 1.0f));
        let x_546 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_549 : vec4<f32> = u_xlat6;
        let x_553 : vec2<f32> = (vec2<f32>(x_549.x, x_549.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_554 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
        let x_557 : vec4<f32> = u_xlat7;
        let x_559 : vec2<f32> = (vec2<f32>(x_557.x, x_557.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_560 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_562 : vec2<f32> = u_xlat45;
        let x_563 : vec2<f32> = (x_562 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_564 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_563.x, x_563.y, x_564.z, x_564.w);
        let x_567 : vec4<f32> = u_xlat5;
        let x_569 : vec2<f32> = (vec2<f32>(x_567.x, x_567.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_570 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat6;
        let x_574 : vec2<f32> = (vec2<f32>(x_572.y, x_572.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_575 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
        let x_578 : f32 = u_xlat7.x;
        u_xlat8.z = x_578;
        let x_581 : f32 = u_xlat5.x;
        u_xlat8.w = x_581;
        let x_584 : f32 = u_xlat10.x;
        u_xlat9.z = x_584;
        let x_587 : f32 = u_xlat43.x;
        u_xlat9.w = x_587;
        let x_589 : vec4<f32> = u_xlat8;
        let x_591 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_589.z, x_589.w, x_589.x, x_589.z) + vec4<f32>(x_591.z, x_591.w, x_591.x, x_591.z));
        let x_595 : f32 = u_xlat8.y;
        u_xlat7.z = x_595;
        let x_598 : f32 = u_xlat5.y;
        u_xlat7.w = x_598;
        let x_601 : f32 = u_xlat9.y;
        u_xlat10.z = x_601;
        let x_604 : f32 = u_xlat43.y;
        u_xlat10.w = x_604;
        let x_606 : vec4<f32> = u_xlat7;
        let x_608 : vec4<f32> = u_xlat10;
        let x_610 : vec3<f32> = (vec3<f32>(x_606.z, x_606.y, x_606.w) + vec3<f32>(x_608.z, x_608.y, x_608.w));
        let x_611 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
        let x_613 : vec4<f32> = u_xlat9;
        let x_615 : vec4<f32> = u_xlat6;
        let x_617 : vec3<f32> = (vec3<f32>(x_613.x, x_613.z, x_613.w) / vec3<f32>(x_615.z, x_615.w, x_615.y));
        let x_618 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
        let x_620 : vec4<f32> = u_xlat7;
        let x_625 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_626 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat10;
        let x_630 : vec4<f32> = u_xlat5;
        let x_632 : vec3<f32> = (vec3<f32>(x_628.z, x_628.y, x_628.w) / vec3<f32>(x_630.x, x_630.y, x_630.z));
        let x_633 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat8;
        let x_637 : vec3<f32> = (vec3<f32>(x_635.x, x_635.y, x_635.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_638 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
        let x_640 : vec4<f32> = u_xlat7;
        let x_643 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_645 : vec3<f32> = (vec3<f32>(x_640.y, x_640.x, x_640.z) * vec3<f32>(x_643.x, x_643.x, x_643.x));
        let x_646 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat8;
        let x_651 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_653 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(x_651.y, x_651.y, x_651.y));
        let x_654 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_657 : f32 = u_xlat8.x;
        u_xlat7.w = x_657;
        let x_659 : vec2<f32> = u_xlat42;
        let x_662 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_665 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y) * vec4<f32>(x_662.x, x_662.y, x_662.x, x_662.y)) + vec4<f32>(x_665.y, x_665.w, x_665.x, x_665.w));
        let x_668 : vec2<f32> = u_xlat42;
        let x_670 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_673 : vec4<f32> = u_xlat7;
        let x_675 : vec2<f32> = ((x_668 * vec2<f32>(x_670.x, x_670.y)) + vec2<f32>(x_673.z, x_673.w));
        let x_676 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_679 : f32 = u_xlat7.y;
        u_xlat8.w = x_679;
        let x_681 : vec4<f32> = u_xlat8;
        let x_682 : vec2<f32> = vec2<f32>(x_681.y, x_681.z);
        let x_683 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_683.x, x_682.x, x_683.z, x_682.y);
        let x_686 : vec2<f32> = u_xlat42;
        let x_689 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_692 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_686.x, x_686.y, x_686.x, x_686.y) * vec4<f32>(x_689.x, x_689.y, x_689.x, x_689.y)) + vec4<f32>(x_692.x, x_692.y, x_692.z, x_692.y));
        let x_695 : vec2<f32> = u_xlat42;
        let x_698 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_695.x, x_695.y, x_695.x, x_695.y) * vec4<f32>(x_698.x, x_698.y, x_698.x, x_698.y)) + vec4<f32>(x_701.w, x_701.y, x_701.w, x_701.z));
        let x_704 : vec2<f32> = u_xlat42;
        let x_707 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_710 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y) * vec4<f32>(x_707.x, x_707.y, x_707.x, x_707.y)) + vec4<f32>(x_710.x, x_710.w, x_710.z, x_710.w));
        let x_714 : vec4<f32> = u_xlat5;
        let x_716 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_714.x, x_714.x, x_714.x, x_714.y) * vec4<f32>(x_716.z, x_716.w, x_716.y, x_716.z));
        let x_720 : vec4<f32> = u_xlat5;
        let x_722 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_720.y, x_720.y, x_720.z, x_720.z) * x_722);
        let x_725 : f32 = u_xlat5.z;
        let x_727 : f32 = u_xlat6.y;
        u_xlat42.x = (x_725 * x_727);
        let x_731 : vec4<f32> = u_xlat9;
        let x_732 : vec2<f32> = vec2<f32>(x_731.x, x_731.y);
        let x_734 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_732.x, x_732.y, x_734);
        let x_742 : vec3<f32> = txVec4;
        let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_742.xy, x_742.z);
        u_xlat61 = x_744;
        let x_746 : vec4<f32> = u_xlat9;
        let x_747 : vec2<f32> = vec2<f32>(x_746.z, x_746.w);
        let x_749 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_747.x, x_747.y, x_749);
        let x_756 : vec3<f32> = txVec5;
        let x_758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_756.xy, x_756.z);
        u_xlat5.x = x_758;
        let x_761 : f32 = u_xlat5.x;
        let x_763 : f32 = u_xlat12.y;
        u_xlat5.x = (x_761 * x_763);
        let x_767 : f32 = u_xlat12.x;
        let x_768 : f32 = u_xlat61;
        let x_771 : f32 = u_xlat5.x;
        u_xlat61 = ((x_767 * x_768) + x_771);
        let x_774 : vec4<f32> = u_xlat10;
        let x_775 : vec2<f32> = vec2<f32>(x_774.x, x_774.y);
        let x_777 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_775.x, x_775.y, x_777);
        let x_784 : vec3<f32> = txVec6;
        let x_786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_784.xy, x_784.z);
        u_xlat5.x = x_786;
        let x_789 : f32 = u_xlat12.z;
        let x_791 : f32 = u_xlat5.x;
        let x_793 : f32 = u_xlat61;
        u_xlat61 = ((x_789 * x_791) + x_793);
        let x_796 : vec4<f32> = u_xlat8;
        let x_797 : vec2<f32> = vec2<f32>(x_796.x, x_796.y);
        let x_799 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_797.x, x_797.y, x_799);
        let x_806 : vec3<f32> = txVec7;
        let x_808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_806.xy, x_806.z);
        u_xlat5.x = x_808;
        let x_811 : f32 = u_xlat12.w;
        let x_813 : f32 = u_xlat5.x;
        let x_815 : f32 = u_xlat61;
        u_xlat61 = ((x_811 * x_813) + x_815);
        let x_818 : vec4<f32> = u_xlat11;
        let x_819 : vec2<f32> = vec2<f32>(x_818.x, x_818.y);
        let x_821 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_819.x, x_819.y, x_821);
        let x_828 : vec3<f32> = txVec8;
        let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_828.xy, x_828.z);
        u_xlat5.x = x_830;
        let x_833 : f32 = u_xlat13.x;
        let x_835 : f32 = u_xlat5.x;
        let x_837 : f32 = u_xlat61;
        u_xlat61 = ((x_833 * x_835) + x_837);
        let x_840 : vec4<f32> = u_xlat11;
        let x_841 : vec2<f32> = vec2<f32>(x_840.z, x_840.w);
        let x_843 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec9;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_850.xy, x_850.z);
        u_xlat5.x = x_852;
        let x_855 : f32 = u_xlat13.y;
        let x_857 : f32 = u_xlat5.x;
        let x_859 : f32 = u_xlat61;
        u_xlat61 = ((x_855 * x_857) + x_859);
        let x_862 : vec4<f32> = u_xlat8;
        let x_863 : vec2<f32> = vec2<f32>(x_862.z, x_862.w);
        let x_865 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_863.x, x_863.y, x_865);
        let x_872 : vec3<f32> = txVec10;
        let x_874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_872.xy, x_872.z);
        u_xlat5.x = x_874;
        let x_877 : f32 = u_xlat13.z;
        let x_879 : f32 = u_xlat5.x;
        let x_881 : f32 = u_xlat61;
        u_xlat61 = ((x_877 * x_879) + x_881);
        let x_884 : vec4<f32> = u_xlat7;
        let x_885 : vec2<f32> = vec2<f32>(x_884.x, x_884.y);
        let x_887 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_885.x, x_885.y, x_887);
        let x_894 : vec3<f32> = txVec11;
        let x_896 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_894.xy, x_894.z);
        u_xlat5.x = x_896;
        let x_899 : f32 = u_xlat13.w;
        let x_901 : f32 = u_xlat5.x;
        let x_903 : f32 = u_xlat61;
        u_xlat61 = ((x_899 * x_901) + x_903);
        let x_906 : vec4<f32> = u_xlat7;
        let x_907 : vec2<f32> = vec2<f32>(x_906.z, x_906.w);
        let x_909 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_907.x, x_907.y, x_909);
        let x_916 : vec3<f32> = txVec12;
        let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_916.xy, x_916.z);
        u_xlat5.x = x_918;
        let x_921 : f32 = u_xlat42.x;
        let x_923 : f32 = u_xlat5.x;
        let x_925 : f32 = u_xlat61;
        u_xlat23.x = ((x_921 * x_923) + x_925);
      } else {
        let x_929 : vec4<f32> = vs_TEXCOORD6;
        let x_932 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_929.x, x_929.y) * vec2<f32>(x_932.z, x_932.w)) + vec2<f32>(0.5f, 0.5f));
        let x_936 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_936);
        let x_938 : vec4<f32> = vs_TEXCOORD6;
        let x_941 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_944 : vec2<f32> = u_xlat42;
        let x_946 : vec2<f32> = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.z, x_941.w)) + -(x_944));
        let x_947 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_949.x, x_949.x, x_949.y, x_949.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_952 : vec4<f32> = u_xlat6;
        let x_954 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_952.x, x_952.x, x_952.z, x_952.z) * vec4<f32>(x_954.x, x_954.x, x_954.z, x_954.z));
        let x_957 : vec4<f32> = u_xlat7;
        let x_961 : vec2<f32> = (vec2<f32>(x_957.y, x_957.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_962.x, x_961.x, x_962.z, x_961.y);
        let x_964 : vec4<f32> = u_xlat7;
        let x_967 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_964.x, x_964.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_967.x, x_967.y)));
        let x_971 : vec4<f32> = u_xlat5;
        let x_974 : vec2<f32> = (-(vec2<f32>(x_971.x, x_971.y)) + vec2<f32>(1.0f, 1.0f));
        let x_975 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_974.x, x_975.y, x_974.y, x_975.w);
        let x_977 : vec4<f32> = u_xlat5;
        let x_979 : vec2<f32> = min(vec2<f32>(x_977.x, x_977.y), vec2<f32>(0.0f, 0.0f));
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
        let x_982 : vec4<f32> = u_xlat7;
        let x_985 : vec4<f32> = u_xlat7;
        let x_988 : vec4<f32> = u_xlat6;
        let x_990 : vec2<f32> = ((-(vec2<f32>(x_982.x, x_982.y)) * vec2<f32>(x_985.x, x_985.y)) + vec2<f32>(x_988.x, x_988.z));
        let x_991 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_990.x, x_991.y, x_990.y, x_991.w);
        let x_993 : vec4<f32> = u_xlat5;
        let x_995 : vec2<f32> = max(vec2<f32>(x_993.x, x_993.y), vec2<f32>(0.0f, 0.0f));
        let x_996 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat7;
        let x_1001 : vec4<f32> = u_xlat7;
        let x_1004 : vec4<f32> = u_xlat6;
        let x_1006 : vec2<f32> = ((-(vec2<f32>(x_998.x, x_998.y)) * vec2<f32>(x_1001.x, x_1001.y)) + vec2<f32>(x_1004.y, x_1004.w));
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1007.x, x_1006.x, x_1007.z, x_1006.y);
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1009 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1013 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1013 * 0.081632003f);
        let x_1017 : vec2<f32> = u_xlat43;
        let x_1020 : vec2<f32> = (vec2<f32>(x_1017.y, x_1017.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1021 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1020.x, x_1020.y, x_1021.z, x_1021.w);
        let x_1023 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1023.x, x_1023.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1027 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1027 * 0.081632003f);
        let x_1031 : f32 = u_xlat9.y;
        u_xlat7.x = x_1031;
        let x_1033 : vec4<f32> = u_xlat5;
        let x_1040 : vec2<f32> = ((vec2<f32>(x_1033.x, x_1033.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1041 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1041.x, x_1040.x, x_1041.z, x_1040.y);
        let x_1043 : vec4<f32> = u_xlat5;
        let x_1047 : vec2<f32> = ((vec2<f32>(x_1043.x, x_1043.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1048 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1047.x, x_1048.y, x_1047.y, x_1048.w);
        let x_1051 : f32 = u_xlat43.x;
        u_xlat6.y = x_1051;
        let x_1054 : f32 = u_xlat8.y;
        u_xlat6.w = x_1054;
        let x_1056 : vec4<f32> = u_xlat6;
        let x_1057 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1056 + x_1057);
        let x_1059 : vec4<f32> = u_xlat5;
        let x_1062 : vec2<f32> = ((vec2<f32>(x_1059.y, x_1059.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1063 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1063.x, x_1062.x, x_1063.z, x_1062.y);
        let x_1065 : vec4<f32> = u_xlat5;
        let x_1068 : vec2<f32> = ((vec2<f32>(x_1065.y, x_1065.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1069 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1068.x, x_1069.y, x_1068.y, x_1069.w);
        let x_1072 : f32 = u_xlat43.y;
        u_xlat8.y = x_1072;
        let x_1074 : vec4<f32> = u_xlat8;
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1074 + x_1075);
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1077 / x_1078);
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1080 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1086 : vec4<f32> = u_xlat8;
        let x_1087 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1086 / x_1087);
        let x_1089 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1089 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1091 : vec4<f32> = u_xlat6;
        let x_1094 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1091.w, x_1091.x, x_1091.y, x_1091.z) * vec4<f32>(x_1094.x, x_1094.x, x_1094.x, x_1094.x));
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1100 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1097.x, x_1097.w, x_1097.y, x_1097.z) * vec4<f32>(x_1100.y, x_1100.y, x_1100.y, x_1100.y));
        let x_1103 : vec4<f32> = u_xlat6;
        let x_1104 : vec3<f32> = vec3<f32>(x_1103.y, x_1103.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1104.x, x_1105.y, x_1104.y, x_1104.z);
        let x_1108 : f32 = u_xlat8.x;
        u_xlat9.y = x_1108;
        let x_1110 : vec2<f32> = u_xlat42;
        let x_1113 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y) * vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y)) + vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1116.y));
        let x_1119 : vec2<f32> = u_xlat42;
        let x_1121 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1126 : vec2<f32> = ((x_1119 * vec2<f32>(x_1121.x, x_1121.y)) + vec2<f32>(x_1124.w, x_1124.y));
        let x_1127 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1130 : f32 = u_xlat9.y;
        u_xlat6.y = x_1130;
        let x_1133 : f32 = u_xlat8.z;
        u_xlat9.y = x_1133;
        let x_1135 : vec2<f32> = u_xlat42;
        let x_1138 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y) * vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y)) + vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1141.y));
        let x_1145 : vec2<f32> = u_xlat42;
        let x_1147 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1145 * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1150.w, x_1150.y));
        let x_1154 : f32 = u_xlat9.y;
        u_xlat6.z = x_1154;
        let x_1156 : vec2<f32> = u_xlat42;
        let x_1159 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1156.x, x_1156.y, x_1156.x, x_1156.y) * vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y)) + vec4<f32>(x_1162.x, x_1162.y, x_1162.x, x_1162.z));
        let x_1166 : f32 = u_xlat8.w;
        u_xlat9.y = x_1166;
        let x_1169 : vec2<f32> = u_xlat42;
        let x_1172 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y) * vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y)) + vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.y));
        let x_1179 : vec2<f32> = u_xlat42;
        let x_1181 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat9;
        let x_1186 : vec2<f32> = ((x_1179 * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.w, x_1184.y));
        let x_1187 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1186.x, x_1186.y, x_1187.z);
        let x_1190 : f32 = u_xlat9.y;
        u_xlat6.w = x_1190;
        let x_1193 : vec2<f32> = u_xlat42;
        let x_1195 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1193 * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.x, x_1198.w));
        let x_1201 : vec4<f32> = u_xlat9;
        let x_1202 : vec3<f32> = vec3<f32>(x_1201.x, x_1201.z, x_1201.w);
        let x_1203 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1202.x, x_1203.y, x_1202.y, x_1202.z);
        let x_1205 : vec2<f32> = u_xlat42;
        let x_1208 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y) * vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y)) + vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1211.y));
        let x_1215 : vec2<f32> = u_xlat42;
        let x_1217 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1215 * vec2<f32>(x_1217.x, x_1217.y)) + vec2<f32>(x_1220.w, x_1220.y));
        let x_1224 : f32 = u_xlat6.x;
        u_xlat8.x = x_1224;
        let x_1226 : vec2<f32> = u_xlat42;
        let x_1228 : vec4<f32> = x_353.x_MainLightShadowmapSize;
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat42 = ((x_1226 * vec2<f32>(x_1228.x, x_1228.y)) + vec2<f32>(x_1231.x, x_1231.y));
        let x_1235 : vec4<f32> = u_xlat5;
        let x_1237 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1235.x, x_1235.x, x_1235.x, x_1235.x) * x_1237);
        let x_1240 : vec4<f32> = u_xlat5;
        let x_1242 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1240.y, x_1240.y, x_1240.y, x_1240.y) * x_1242);
        let x_1245 : vec4<f32> = u_xlat5;
        let x_1247 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1245.z, x_1245.z, x_1245.z, x_1245.z) * x_1247);
        let x_1249 : vec4<f32> = u_xlat5;
        let x_1251 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1249.w, x_1249.w, x_1249.w, x_1249.w) * x_1251);
        let x_1254 : vec4<f32> = u_xlat10;
        let x_1255 : vec2<f32> = vec2<f32>(x_1254.x, x_1254.y);
        let x_1257 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1255.x, x_1255.y, x_1257);
        let x_1264 : vec3<f32> = txVec13;
        let x_1266 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1264.xy, x_1264.z);
        u_xlat6.x = x_1266;
        let x_1269 : vec4<f32> = u_xlat10;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.z, x_1269.w);
        let x_1272 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1280 : vec3<f32> = txVec14;
        let x_1282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1280.xy, x_1280.z);
        u_xlat63 = x_1282;
        let x_1283 : f32 = u_xlat63;
        let x_1285 : f32 = u_xlat16.y;
        u_xlat63 = (x_1283 * x_1285);
        let x_1288 : f32 = u_xlat16.x;
        let x_1290 : f32 = u_xlat6.x;
        let x_1292 : f32 = u_xlat63;
        u_xlat6.x = ((x_1288 * x_1290) + x_1292);
        let x_1296 : vec4<f32> = u_xlat11;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.x, x_1296.y);
        let x_1299 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec15;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1306.xy, x_1306.z);
        u_xlat63 = x_1308;
        let x_1310 : f32 = u_xlat16.z;
        let x_1311 : f32 = u_xlat63;
        let x_1314 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1310 * x_1311) + x_1314);
        let x_1318 : vec4<f32> = u_xlat13;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.x, x_1318.y);
        let x_1321 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec16;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1328.xy, x_1328.z);
        u_xlat63 = x_1330;
        let x_1332 : f32 = u_xlat16.w;
        let x_1333 : f32 = u_xlat63;
        let x_1336 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1332 * x_1333) + x_1336);
        let x_1340 : vec4<f32> = u_xlat12;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec17;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1350.xy, x_1350.z);
        u_xlat63 = x_1352;
        let x_1354 : f32 = u_xlat17.x;
        let x_1355 : f32 = u_xlat63;
        let x_1358 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1354 * x_1355) + x_1358);
        let x_1362 : vec4<f32> = u_xlat12;
        let x_1363 : vec2<f32> = vec2<f32>(x_1362.z, x_1362.w);
        let x_1365 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec18;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1372.xy, x_1372.z);
        u_xlat63 = x_1374;
        let x_1376 : f32 = u_xlat17.y;
        let x_1377 : f32 = u_xlat63;
        let x_1380 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1376 * x_1377) + x_1380);
        let x_1384 : vec2<f32> = u_xlat49;
        let x_1386 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec19;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1393.xy, x_1393.z);
        u_xlat63 = x_1395;
        let x_1397 : f32 = u_xlat17.z;
        let x_1398 : f32 = u_xlat63;
        let x_1401 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1397 * x_1398) + x_1401);
        let x_1405 : vec4<f32> = u_xlat13;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.z, x_1405.w);
        let x_1408 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec20;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1415.xy, x_1415.z);
        u_xlat63 = x_1417;
        let x_1419 : f32 = u_xlat17.w;
        let x_1420 : f32 = u_xlat63;
        let x_1423 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1419 * x_1420) + x_1423);
        let x_1427 : vec4<f32> = u_xlat14;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.x, x_1427.y);
        let x_1430 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec21;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1437.xy, x_1437.z);
        u_xlat63 = x_1439;
        let x_1441 : f32 = u_xlat18.x;
        let x_1442 : f32 = u_xlat63;
        let x_1445 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1441 * x_1442) + x_1445);
        let x_1449 : vec4<f32> = u_xlat14;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.z, x_1449.w);
        let x_1452 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec22;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1459.xy, x_1459.z);
        u_xlat63 = x_1461;
        let x_1463 : f32 = u_xlat18.y;
        let x_1464 : f32 = u_xlat63;
        let x_1467 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1463 * x_1464) + x_1467);
        let x_1471 : vec3<f32> = u_xlat25;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.x, x_1471.y);
        let x_1474 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec23;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1481.xy, x_1481.z);
        u_xlat25.x = x_1483;
        let x_1486 : f32 = u_xlat18.z;
        let x_1488 : f32 = u_xlat25.x;
        let x_1491 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1486 * x_1488) + x_1491);
        let x_1495 : vec2<f32> = u_xlat15;
        let x_1497 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec24;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat25.x = x_1506;
        let x_1509 : f32 = u_xlat18.w;
        let x_1511 : f32 = u_xlat25.x;
        let x_1514 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1509 * x_1511) + x_1514);
        let x_1518 : vec4<f32> = u_xlat9;
        let x_1519 : vec2<f32> = vec2<f32>(x_1518.x, x_1518.y);
        let x_1521 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1519.x, x_1519.y, x_1521);
        let x_1528 : vec3<f32> = txVec25;
        let x_1530 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1528.xy, x_1528.z);
        u_xlat25.x = x_1530;
        let x_1533 : f32 = u_xlat5.x;
        let x_1535 : f32 = u_xlat25.x;
        let x_1538 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1533 * x_1535) + x_1538);
        let x_1542 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.z, x_1542.w);
        let x_1545 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec26;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1552.xy, x_1552.z);
        u_xlat6.x = x_1554;
        let x_1557 : f32 = u_xlat5.y;
        let x_1559 : f32 = u_xlat6.x;
        let x_1562 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1557 * x_1559) + x_1562);
        let x_1566 : vec2<f32> = u_xlat46;
        let x_1568 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1576 : vec3<f32> = txVec27;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1576.xy, x_1576.z);
        u_xlat24.x = x_1578;
        let x_1581 : f32 = u_xlat5.z;
        let x_1583 : f32 = u_xlat24.x;
        let x_1586 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1581 * x_1583) + x_1586);
        let x_1590 : vec2<f32> = u_xlat42;
        let x_1592 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec28;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1599.xy, x_1599.z);
        u_xlat42.x = x_1601;
        let x_1604 : f32 = u_xlat5.w;
        let x_1606 : f32 = u_xlat42.x;
        let x_1609 : f32 = u_xlat5.x;
        u_xlat23.x = ((x_1604 * x_1606) + x_1609);
      }
    }
  } else {
    let x_1614 : vec4<f32> = vs_TEXCOORD6;
    let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
    let x_1617 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
    let x_1624 : vec3<f32> = txVec29;
    let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
    u_xlat23.x = x_1626;
  }
  let x_1629 : f32 = x_353.x_MainLightShadowParams.x;
  u_xlat42.x = (-(x_1629) + 1.0f);
  let x_1634 : f32 = u_xlat23.x;
  let x_1636 : f32 = x_353.x_MainLightShadowParams.x;
  let x_1639 : f32 = u_xlat42.x;
  u_xlat23.x = ((x_1634 * x_1636) + x_1639);
  let x_1643 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (0.0f >= x_1643);
  let x_1647 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1647 >= 1.0f);
  let x_1649 : bool = u_xlatb61;
  let x_1650 : bool = u_xlatb42;
  u_xlatb42 = (x_1649 | x_1650);
  let x_1652 : bool = u_xlatb42;
  if (x_1652) {
    x_1653 = 1.0f;
  } else {
    let x_1658 : f32 = u_xlat23.x;
    x_1653 = x_1658;
  }
  let x_1659 : f32 = x_1653;
  u_xlat23.x = x_1659;
  let x_1661 : vec3<f32> = vs_TEXCOORD1;
  let x_1663 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1665 : vec3<f32> = (x_1661 + -(x_1663));
  let x_1666 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1665.x, x_1665.y, x_1665.z, x_1666.w);
  let x_1668 : vec4<f32> = u_xlat5;
  let x_1670 : vec4<f32> = u_xlat5;
  u_xlat42.x = dot(vec3<f32>(x_1668.x, x_1668.y, x_1668.z), vec3<f32>(x_1670.x, x_1670.y, x_1670.z));
  let x_1675 : f32 = u_xlat42.x;
  let x_1677 : f32 = x_353.x_MainLightShadowParams.z;
  let x_1680 : f32 = x_353.x_MainLightShadowParams.w;
  u_xlat42.x = ((x_1675 * x_1677) + x_1680);
  let x_1684 : f32 = u_xlat42.x;
  u_xlat42.x = clamp(x_1684, 0.0f, 1.0f);
  let x_1688 : f32 = u_xlat23.x;
  u_xlat61 = (-(x_1688) + 1.0f);
  let x_1692 : f32 = u_xlat42.x;
  let x_1693 : f32 = u_xlat61;
  let x_1696 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1692 * x_1693) + x_1696);
  let x_1699 : vec3<f32> = u_xlat4;
  let x_1702 : vec4<f32> = x_44.x_MainLightColor;
  let x_1704 : vec3<f32> = (vec3<f32>(x_1699.x, x_1699.x, x_1699.x) * vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1705 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
  let x_1707 : f32 = u_xlat60;
  let x_1709 : vec4<f32> = u_xlat3;
  let x_1711 : vec3<f32> = (vec3<f32>(x_1707, x_1707, x_1707) * vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
  let x_1712 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
  let x_1715 : f32 = u_xlat23.x;
  let x_1718 : f32 = x_93.unity_LightData.z;
  u_xlat60 = (x_1715 * x_1718);
  let x_1720 : f32 = u_xlat60;
  let x_1722 : vec4<f32> = u_xlat5;
  u_xlat23 = (vec3<f32>(x_1720, x_1720, x_1720) * vec3<f32>(x_1722.x, x_1722.y, x_1722.z));
  let x_1725 : vec3<f32> = u_xlat2;
  let x_1727 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat60 = dot(x_1725, vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
  let x_1730 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1730, 0.0f, 1.0f);
  let x_1732 : f32 = u_xlat60;
  let x_1734 : vec3<f32> = u_xlat23;
  let x_1735 : vec3<f32> = (vec3<f32>(x_1732, x_1732, x_1732) * x_1734);
  let x_1736 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1736.w);
  let x_1739 : f32 = u_xlat0.x;
  u_xlat60 = ((x_1739 * 10.0f) + 1.0f);
  let x_1743 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1743);
  let x_1745 : vec3<f32> = u_xlat1;
  let x_1746 : f32 = u_xlat58;
  let x_1750 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1752 : vec3<f32> = ((x_1745 * vec3<f32>(x_1746, x_1746, x_1746)) + vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
  let x_1753 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  let x_1756 : vec4<f32> = u_xlat6;
  let x_1758 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(vec3<f32>(x_1756.x, x_1756.y, x_1756.z), vec3<f32>(x_1758.x, x_1758.y, x_1758.z));
  let x_1761 : f32 = u_xlat62;
  u_xlat62 = max(x_1761, 1.17549435e-37f);
  let x_1763 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_1763);
  let x_1765 : f32 = u_xlat62;
  let x_1767 : vec4<f32> = u_xlat6;
  let x_1769 : vec3<f32> = (vec3<f32>(x_1765, x_1765, x_1765) * vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
  let x_1770 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
  let x_1772 : vec3<f32> = u_xlat2;
  let x_1773 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(x_1772, vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1776, 0.0f, 1.0f);
  let x_1778 : f32 = u_xlat62;
  u_xlat62 = log2(x_1778);
  let x_1780 : f32 = u_xlat60;
  let x_1781 : f32 = u_xlat62;
  u_xlat62 = (x_1780 * x_1781);
  let x_1783 : f32 = u_xlat62;
  u_xlat62 = exp2(x_1783);
  let x_1785 : f32 = u_xlat62;
  let x_1788 : vec4<f32> = x_56.x_SpecColor;
  let x_1790 : vec3<f32> = (vec3<f32>(x_1785, x_1785, x_1785) * vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
  let x_1791 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : vec3<f32> = u_xlat23;
  let x_1794 : vec4<f32> = u_xlat6;
  u_xlat23 = (x_1793 * vec3<f32>(x_1794.x, x_1794.y, x_1794.z));
  let x_1797 : vec4<f32> = u_xlat5;
  let x_1799 : vec4<f32> = u_xlat0;
  let x_1802 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_1797.x, x_1797.y, x_1797.z) * vec3<f32>(x_1799.y, x_1799.z, x_1799.w)) + x_1802);
  let x_1805 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1807 : f32 = x_93.unity_LightData.y;
  u_xlat5.x = min(x_1805, x_1807);
  let x_1813 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1813));
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1825 : u32 = u_xlatu_loop_1;
    let x_1826 : u32 = u_xlatu5;
    if ((x_1825 < x_1826)) {
    } else {
      break;
    }
    let x_1829 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_1829 >> 2u);
    let x_1833 : u32 = u_xlatu_loop_1;
    u_xlati44 = bitcast<i32>((x_1833 & 3u));
    let x_1836 : u32 = u_xlatu25;
    let x_1839 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_1836)];
    let x_1849 : i32 = u_xlati44;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1854 : vec4<u32> = indexable[x_1849];
    u_xlat25.x = dot(x_1839, bitcast<vec4<f32>>(x_1854));
    let x_1860 : f32 = u_xlat25.x;
    u_xlati25 = i32(x_1860);
    let x_1862 : vec3<f32> = vs_TEXCOORD1;
    let x_1874 : i32 = u_xlati25;
    let x_1876 : vec4<f32> = x_1873.x_AdditionalLightsPosition[x_1874];
    let x_1879 : i32 = u_xlati25;
    let x_1881 : vec4<f32> = x_1873.x_AdditionalLightsPosition[x_1879];
    let x_1883 : vec3<f32> = ((-(x_1862) * vec3<f32>(x_1876.w, x_1876.w, x_1876.w)) + vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
    let x_1884 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
    let x_1887 : vec4<f32> = u_xlat7;
    let x_1889 : vec4<f32> = u_xlat7;
    u_xlat44 = dot(vec3<f32>(x_1887.x, x_1887.y, x_1887.z), vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
    let x_1892 : f32 = u_xlat44;
    u_xlat44 = max(x_1892, 6.10351562e-05f);
    let x_1895 : f32 = u_xlat44;
    u_xlat63 = inverseSqrt(x_1895);
    let x_1897 : f32 = u_xlat63;
    let x_1899 : vec4<f32> = u_xlat7;
    let x_1901 : vec3<f32> = (vec3<f32>(x_1897, x_1897, x_1897) * vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
    let x_1902 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);
    let x_1904 : f32 = u_xlat44;
    u_xlat63 = (1.0f / x_1904);
    let x_1906 : f32 = u_xlat44;
    let x_1907 : i32 = u_xlati25;
    let x_1909 : f32 = x_1873.x_AdditionalLightsAttenuation[x_1907].x;
    u_xlat44 = (x_1906 * x_1909);
    let x_1911 : f32 = u_xlat44;
    let x_1913 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1911) * x_1913) + 1.0f);
    let x_1916 : f32 = u_xlat44;
    u_xlat44 = max(x_1916, 0.0f);
    let x_1918 : f32 = u_xlat44;
    let x_1919 : f32 = u_xlat44;
    u_xlat44 = (x_1918 * x_1919);
    let x_1921 : f32 = u_xlat44;
    let x_1922 : f32 = u_xlat63;
    u_xlat44 = (x_1921 * x_1922);
    let x_1924 : i32 = u_xlati25;
    let x_1926 : vec4<f32> = x_1873.x_AdditionalLightsSpotDir[x_1924];
    let x_1928 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.z), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
    let x_1931 : f32 = u_xlat63;
    let x_1932 : i32 = u_xlati25;
    let x_1934 : f32 = x_1873.x_AdditionalLightsAttenuation[x_1932].z;
    let x_1936 : i32 = u_xlati25;
    let x_1938 : f32 = x_1873.x_AdditionalLightsAttenuation[x_1936].w;
    u_xlat63 = ((x_1931 * x_1934) + x_1938);
    let x_1940 : f32 = u_xlat63;
    u_xlat63 = clamp(x_1940, 0.0f, 1.0f);
    let x_1942 : f32 = u_xlat63;
    let x_1943 : f32 = u_xlat63;
    u_xlat63 = (x_1942 * x_1943);
    let x_1945 : f32 = u_xlat63;
    let x_1946 : f32 = u_xlat44;
    u_xlat44 = (x_1945 * x_1946);
    let x_1948 : vec3<f32> = u_xlat4;
    let x_1950 : i32 = u_xlati25;
    let x_1952 : vec4<f32> = x_1873.x_AdditionalLightsColor[x_1950];
    let x_1954 : vec3<f32> = (vec3<f32>(x_1948.x, x_1948.x, x_1948.x) * vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
    let x_1957 : f32 = u_xlat44;
    let x_1959 : vec4<f32> = u_xlat8;
    u_xlat25 = (vec3<f32>(x_1957, x_1957, x_1957) * vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
    let x_1963 : vec3<f32> = u_xlat2;
    let x_1964 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(x_1963, vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
    let x_1967 : f32 = u_xlat64;
    u_xlat64 = clamp(x_1967, 0.0f, 1.0f);
    let x_1969 : vec3<f32> = u_xlat25;
    let x_1970 : f32 = u_xlat64;
    let x_1972 : vec3<f32> = (x_1969 * vec3<f32>(x_1970, x_1970, x_1970));
    let x_1973 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
    let x_1975 : vec3<f32> = u_xlat1;
    let x_1976 : f32 = u_xlat58;
    let x_1979 : vec4<f32> = u_xlat7;
    let x_1981 : vec3<f32> = ((x_1975 * vec3<f32>(x_1976, x_1976, x_1976)) + vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
    let x_1982 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1981.x, x_1981.y, x_1981.z, x_1982.w);
    let x_1984 : vec4<f32> = u_xlat7;
    let x_1986 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(vec3<f32>(x_1984.x, x_1984.y, x_1984.z), vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
    let x_1989 : f32 = u_xlat64;
    u_xlat64 = max(x_1989, 1.17549435e-37f);
    let x_1991 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_1991);
    let x_1993 : f32 = u_xlat64;
    let x_1995 : vec4<f32> = u_xlat7;
    let x_1997 : vec3<f32> = (vec3<f32>(x_1993, x_1993, x_1993) * vec3<f32>(x_1995.x, x_1995.y, x_1995.z));
    let x_1998 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1997.x, x_1997.y, x_1997.z, x_1998.w);
    let x_2000 : vec3<f32> = u_xlat2;
    let x_2001 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(x_2000, vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
    let x_2006 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_2006, 0.0f, 1.0f);
    let x_2010 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_2010);
    let x_2013 : f32 = u_xlat60;
    let x_2015 : f32 = u_xlat7.x;
    u_xlat7.x = (x_2013 * x_2015);
    let x_2019 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_2019);
    let x_2022 : vec4<f32> = u_xlat7;
    let x_2025 : vec4<f32> = x_56.x_SpecColor;
    let x_2027 : vec3<f32> = (vec3<f32>(x_2022.x, x_2022.x, x_2022.x) * vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
    let x_2028 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
    let x_2030 : vec3<f32> = u_xlat25;
    let x_2031 : vec4<f32> = u_xlat7;
    u_xlat25 = (x_2030 * vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
    let x_2034 : vec4<f32> = u_xlat8;
    let x_2036 : vec4<f32> = u_xlat0;
    let x_2039 : vec3<f32> = u_xlat25;
    u_xlat25 = ((vec3<f32>(x_2034.x, x_2034.y, x_2034.z) * vec3<f32>(x_2036.y, x_2036.z, x_2036.w)) + x_2039);
    let x_2041 : vec3<f32> = u_xlat24;
    let x_2042 : vec3<f32> = u_xlat25;
    u_xlat24 = (x_2041 + x_2042);

    continuing {
      let x_2044 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2044 + bitcast<u32>(1i));
    }
  }
  let x_2047 : vec4<f32> = u_xlat3;
  let x_2049 : vec4<f32> = u_xlat0;
  let x_2052 : vec3<f32> = u_xlat23;
  u_xlat19 = ((vec3<f32>(x_2047.x, x_2047.y, x_2047.z) * vec3<f32>(x_2049.y, x_2049.z, x_2049.w)) + x_2052);
  let x_2054 : vec3<f32> = u_xlat24;
  let x_2055 : vec3<f32> = u_xlat19;
  u_xlat19 = (x_2054 + x_2055);
  let x_2057 : f32 = u_xlat59;
  let x_2058 : f32 = u_xlat59;
  u_xlat1.x = (x_2057 * -(x_2058));
  let x_2063 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2063);
  let x_2066 : vec3<f32> = u_xlat19;
  let x_2069 : vec4<f32> = x_44.unity_FogColor;
  u_xlat19 = (x_2066 + -(vec3<f32>(x_2069.x, x_2069.y, x_2069.z)));
  let x_2075 : vec3<f32> = u_xlat1;
  let x_2077 : vec3<f32> = u_xlat19;
  let x_2080 : vec4<f32> = x_44.unity_FogColor;
  let x_2082 : vec3<f32> = ((vec3<f32>(x_2075.x, x_2075.x, x_2075.x) * x_2077) + vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
  let x_2083 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
  let x_2087 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2087 == 1.0f);
  let x_2089 : bool = u_xlatb19;
  if (x_2089) {
    let x_2094 : f32 = u_xlat0.x;
    x_2090 = x_2094;
  } else {
    x_2090 = 1.0f;
  }
  let x_2096 : f32 = x_2090;
  SV_Target0.w = x_2096;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

