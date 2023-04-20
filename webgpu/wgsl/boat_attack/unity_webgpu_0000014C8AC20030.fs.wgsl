diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_96 : UnityPerDraw;

var<private> u_xlatb78 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatb57 : bool;

@group(1) @binding(4) var<uniform> x_383 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatu57 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati57 : i32;

@group(1) @binding(1) var<uniform> x_2015 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu82 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_167 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
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
  var x_1669 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2154 : f32;
  var x_2164 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3614 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_67 : vec4<f32> = hlslcc_FragCoord;
  let x_71 : f32 = x_45.x_DitheringTextureInvSize;
  let x_73 : vec2<f32> = (vec2<f32>(x_67.x, x_67.y) * vec2<f32>(x_71, x_71));
  let x_74 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_73.x, x_73.y, x_74.z);
  let x_83 : vec3<f32> = u_xlat2;
  let x_86 : f32 = x_45.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_83.x, x_83.y), x_86);
  u_xlat78 = x_87.w;
  let x_98 : f32 = x_96.unity_LODFade.x;
  u_xlatb2 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb2;
  if (x_101) {
    let x_106 : f32 = u_xlat78;
    x_103 = abs(x_106);
  } else {
    let x_109 : f32 = u_xlat78;
    x_103 = -(abs(x_109));
  }
  let x_112 : f32 = x_103;
  u_xlat78 = x_112;
  let x_113 : f32 = u_xlat78;
  let x_116 : f32 = x_96.unity_LODFade.x;
  u_xlat78 = (-(x_113) + x_116);
  let x_119 : f32 = u_xlat78;
  u_xlatb78 = (x_119 < 0.0f);
  let x_121 : bool = u_xlatb78;
  if (((select(0i, 1i, x_121) * -1i) != 0i)) {
    discard;
  }
  let x_132 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb78 = (x_132 == 0.0f);
  let x_136 : vec3<f32> = vs_TEXCOORD1;
  let x_141 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_136) + x_141);
  let x_144 : vec3<f32> = u_xlat2;
  let x_145 : vec3<f32> = u_xlat2;
  u_xlat80 = dot(x_144, x_145);
  let x_147 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_147);
  let x_149 : f32 = u_xlat80;
  let x_151 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_149, x_149, x_149) * x_151);
  let x_156 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat3.x = x_156;
  let x_159 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat3.y = x_159;
  let x_163 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat3.z = x_163;
  let x_165 : bool = u_xlatb78;
  if (x_165) {
    let x_170 : vec3<f32> = u_xlat2;
    x_167 = x_170;
  } else {
    let x_172 : vec4<f32> = u_xlat3;
    x_167 = vec3<f32>(x_172.x, x_172.y, x_172.z);
  }
  let x_174 : vec3<f32> = x_167;
  u_xlat2 = x_174;
  let x_176 : vec3<f32> = vs_TEXCOORD2;
  let x_177 : vec3<f32> = vs_TEXCOORD2;
  u_xlat78 = dot(x_176, x_177);
  let x_179 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat78;
  let x_183 : vec3<f32> = vs_TEXCOORD2;
  let x_184 : vec3<f32> = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : f32 = vs_TEXCOORD1.y;
  let x_190 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat78 = (x_188 * x_190);
  let x_193 : f32 = x_45.unity_MatrixV[0i].z;
  let x_195 : f32 = vs_TEXCOORD1.x;
  let x_197 : f32 = u_xlat78;
  u_xlat78 = ((x_193 * x_195) + x_197);
  let x_200 : f32 = x_45.unity_MatrixV[2i].z;
  let x_202 : f32 = vs_TEXCOORD1.z;
  let x_204 : f32 = u_xlat78;
  u_xlat78 = ((x_200 * x_202) + x_204);
  let x_206 : f32 = u_xlat78;
  let x_209 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat78 = (x_206 + x_209);
  let x_211 : f32 = u_xlat78;
  let x_215 : f32 = x_45.x_ProjectionParams.y;
  u_xlat78 = (-(x_211) + -(x_215));
  let x_218 : f32 = u_xlat78;
  u_xlat78 = max(x_218, 0.0f);
  let x_220 : f32 = u_xlat78;
  let x_223 : f32 = x_45.unity_FogParams.x;
  u_xlat78 = (x_220 * x_223);
  u_xlat3.w = 1.0f;
  let x_229 : vec4<f32> = x_96.unity_SHAr;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_229, x_230);
  let x_235 : vec4<f32> = x_96.unity_SHAg;
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_235, x_236);
  let x_241 : vec4<f32> = x_96.unity_SHAb;
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_241, x_242);
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_246.y, x_246.z, x_246.z, x_246.x) * vec4<f32>(x_248.x, x_248.y, x_248.z, x_248.z));
  let x_254 : vec4<f32> = x_96.unity_SHBr;
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_254, x_255);
  let x_260 : vec4<f32> = x_96.unity_SHBg;
  let x_261 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_260, x_261);
  let x_266 : vec4<f32> = x_96.unity_SHBb;
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_266, x_267);
  let x_271 : f32 = u_xlat3.y;
  let x_273 : f32 = u_xlat3.y;
  u_xlat80 = (x_271 * x_273);
  let x_276 : f32 = u_xlat3.x;
  let x_278 : f32 = u_xlat3.x;
  let x_280 : f32 = u_xlat80;
  u_xlat80 = ((x_276 * x_278) + -(x_280));
  let x_285 : vec4<f32> = x_96.unity_SHC;
  let x_287 : f32 = u_xlat80;
  let x_290 : vec4<f32> = u_xlat6;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287, x_287, x_287)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec3<f32> = u_xlat4;
  let x_296 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_295 + vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_299, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_303 : f32 = x_58.x_Metallic;
  u_xlat80 = ((-(x_303) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_309 : f32 = u_xlat80;
  let x_312 : f32 = x_58.x_Smoothness;
  u_xlat81 = (-(x_309) + x_312);
  let x_315 : vec4<f32> = u_xlat1;
  let x_317 : f32 = u_xlat80;
  u_xlat27 = (vec3<f32>(x_315.y, x_315.z, x_315.w) * vec3<f32>(x_317, x_317, x_317));
  let x_320 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = x_58.x_BaseColor;
  let x_328 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : f32 = x_58.x_Metallic;
  let x_334 : f32 = x_58.x_Metallic;
  let x_336 : f32 = x_58.x_Metallic;
  let x_337 : vec3<f32> = vec3<f32>(x_332, x_334, x_336);
  let x_342 : vec4<f32> = u_xlat0;
  let x_347 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_342.x, x_342.y, x_342.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_348 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_351 : f32 = x_58.x_Smoothness;
  u_xlat80 = (-(x_351) + 1.0f);
  let x_355 : f32 = u_xlat80;
  let x_356 : f32 = u_xlat80;
  u_xlat82 = (x_355 * x_356);
  let x_358 : f32 = u_xlat82;
  u_xlat82 = max(x_358, 0.0078125f);
  let x_361 : f32 = u_xlat82;
  let x_362 : f32 = u_xlat82;
  u_xlat5.x = (x_361 * x_362);
  let x_365 : f32 = u_xlat81;
  u_xlat81 = (x_365 + 1.0f);
  let x_367 : f32 = u_xlat81;
  u_xlat81 = clamp(x_367, 0.0f, 1.0f);
  let x_370 : f32 = u_xlat82;
  u_xlat31 = ((x_370 * 4.0f) + 2.0f);
  let x_386 : f32 = x_383.x_MainLightShadowParams.y;
  u_xlatb57 = (0.0f < x_386);
  let x_388 : bool = u_xlatb57;
  if (x_388) {
    let x_392 : f32 = x_383.x_MainLightShadowParams.y;
    u_xlatb57 = (x_392 == 1.0f);
    let x_394 : bool = u_xlatb57;
    if (x_394) {
      let x_398 : vec4<f32> = vs_TEXCOORD6;
      let x_401 : vec4<f32> = x_383.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_398.x, x_398.y, x_398.x, x_398.y) + x_401);
      let x_404 : vec4<f32> = u_xlat6;
      let x_405 : vec2<f32> = vec2<f32>(x_404.x, x_404.y);
      let x_407 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_405.x, x_405.y, x_407);
      let x_420 : vec3<f32> = txVec0;
      let x_422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_420.xy, x_420.z);
      u_xlat7.x = x_422;
      let x_425 : vec4<f32> = u_xlat6;
      let x_426 : vec2<f32> = vec2<f32>(x_425.z, x_425.w);
      let x_428 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_426.x, x_426.y, x_428);
      let x_435 : vec3<f32> = txVec1;
      let x_437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_435.xy, x_435.z);
      u_xlat7.y = x_437;
      let x_439 : vec4<f32> = vs_TEXCOORD6;
      let x_442 : vec4<f32> = x_383.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_439.x, x_439.y, x_439.x, x_439.y) + x_442);
      let x_445 : vec4<f32> = u_xlat6;
      let x_446 : vec2<f32> = vec2<f32>(x_445.x, x_445.y);
      let x_448 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_446.x, x_446.y, x_448);
      let x_455 : vec3<f32> = txVec2;
      let x_457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_455.xy, x_455.z);
      u_xlat7.z = x_457;
      let x_460 : vec4<f32> = u_xlat6;
      let x_461 : vec2<f32> = vec2<f32>(x_460.z, x_460.w);
      let x_463 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_461.x, x_461.y, x_463);
      let x_470 : vec3<f32> = txVec3;
      let x_472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_470.xy, x_470.z);
      u_xlat7.w = x_472;
      let x_476 : vec4<f32> = u_xlat7;
      u_xlat57.x = dot(x_476, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_484 : f32 = x_383.x_MainLightShadowParams.y;
      u_xlatb83 = (x_484 == 2.0f);
      let x_486 : bool = u_xlatb83;
      if (x_486) {
        let x_489 : vec4<f32> = vs_TEXCOORD6;
        let x_492 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_497 : vec2<f32> = ((vec2<f32>(x_489.x, x_489.y) * vec2<f32>(x_492.z, x_492.w)) + vec2<f32>(0.5f, 0.5f));
        let x_498 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_500 : vec4<f32> = u_xlat6;
        let x_502 : vec2<f32> = floor(vec2<f32>(x_500.x, x_500.y));
        let x_503 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
        let x_506 : vec4<f32> = vs_TEXCOORD6;
        let x_509 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_512 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_506.x, x_506.y) * vec2<f32>(x_509.z, x_509.w)) + -(vec2<f32>(x_512.x, x_512.y)));
        let x_516 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_516.x, x_516.x, x_516.y, x_516.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_521 : vec4<f32> = u_xlat7;
        let x_523 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_521.x, x_521.x, x_521.z, x_521.z) * vec4<f32>(x_523.x, x_523.x, x_523.z, x_523.z));
        let x_526 : vec4<f32> = u_xlat8;
        let x_530 : vec2<f32> = (vec2<f32>(x_526.y, x_526.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_531 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_530.x, x_531.y, x_530.y, x_531.w);
        let x_533 : vec4<f32> = u_xlat8;
        let x_536 : vec2<f32> = u_xlat58;
        let x_538 : vec2<f32> = ((vec2<f32>(x_533.x, x_533.z) * vec2<f32>(0.5f, 0.5f)) + -(x_536));
        let x_539 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
        let x_542 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_542) + vec2<f32>(1.0f, 1.0f));
        let x_547 : vec2<f32> = u_xlat58;
        let x_549 : vec2<f32> = min(x_547, vec2<f32>(0.0f, 0.0f));
        let x_550 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
        let x_552 : vec4<f32> = u_xlat9;
        let x_555 : vec4<f32> = u_xlat9;
        let x_558 : vec2<f32> = u_xlat60;
        let x_559 : vec2<f32> = ((-(vec2<f32>(x_552.x, x_552.y)) * vec2<f32>(x_555.x, x_555.y)) + x_558);
        let x_560 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_562 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_562, vec2<f32>(0.0f, 0.0f));
        let x_564 : vec2<f32> = u_xlat58;
        let x_566 : vec2<f32> = u_xlat58;
        let x_568 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_564) * x_566) + vec2<f32>(x_568.y, x_568.w));
        let x_571 : vec4<f32> = u_xlat9;
        let x_573 : vec2<f32> = (vec2<f32>(x_571.x, x_571.y) + vec2<f32>(1.0f, 1.0f));
        let x_574 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_573.x, x_573.y, x_574.z, x_574.w);
        let x_576 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_576 + vec2<f32>(1.0f, 1.0f));
        let x_579 : vec4<f32> = u_xlat8;
        let x_583 : vec2<f32> = (vec2<f32>(x_579.x, x_579.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_584 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_586 : vec2<f32> = u_xlat60;
        let x_587 : vec2<f32> = (x_586 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_588 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_590 : vec4<f32> = u_xlat9;
        let x_592 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_596 : vec2<f32> = u_xlat58;
        let x_597 : vec2<f32> = (x_596 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_598 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_600.y, x_600.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_604 : f32 = u_xlat9.x;
        u_xlat10.z = x_604;
        let x_607 : f32 = u_xlat58.x;
        u_xlat10.w = x_607;
        let x_610 : f32 = u_xlat11.x;
        u_xlat8.z = x_610;
        let x_613 : f32 = u_xlat7.x;
        u_xlat8.w = x_613;
        let x_616 : vec4<f32> = u_xlat8;
        let x_618 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_616.z, x_616.w, x_616.x, x_616.z) + vec4<f32>(x_618.z, x_618.w, x_618.x, x_618.z));
        let x_622 : f32 = u_xlat10.y;
        u_xlat9.z = x_622;
        let x_625 : f32 = u_xlat58.y;
        u_xlat9.w = x_625;
        let x_628 : f32 = u_xlat8.y;
        u_xlat11.z = x_628;
        let x_631 : f32 = u_xlat7.z;
        u_xlat11.w = x_631;
        let x_633 : vec4<f32> = u_xlat9;
        let x_635 : vec4<f32> = u_xlat11;
        let x_637 : vec3<f32> = (vec3<f32>(x_633.z, x_633.y, x_633.w) + vec3<f32>(x_635.z, x_635.y, x_635.w));
        let x_638 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
        let x_640 : vec4<f32> = u_xlat8;
        let x_642 : vec4<f32> = u_xlat12;
        let x_644 : vec3<f32> = (vec3<f32>(x_640.x, x_640.z, x_640.w) / vec3<f32>(x_642.z, x_642.w, x_642.y));
        let x_645 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
        let x_647 : vec4<f32> = u_xlat8;
        let x_653 : vec3<f32> = (vec3<f32>(x_647.x, x_647.y, x_647.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_654 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat11;
        let x_658 : vec4<f32> = u_xlat7;
        let x_660 : vec3<f32> = (vec3<f32>(x_656.z, x_656.y, x_656.w) / vec3<f32>(x_658.x, x_658.y, x_658.z));
        let x_661 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
        let x_663 : vec4<f32> = u_xlat9;
        let x_665 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_666 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat8;
        let x_671 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_673 : vec3<f32> = (vec3<f32>(x_668.y, x_668.x, x_668.z) * vec3<f32>(x_671.x, x_671.x, x_671.x));
        let x_674 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
        let x_676 : vec4<f32> = u_xlat9;
        let x_679 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_681 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_679.y, x_679.y, x_679.y));
        let x_682 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
        let x_685 : f32 = u_xlat9.x;
        u_xlat8.w = x_685;
        let x_687 : vec4<f32> = u_xlat6;
        let x_690 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_687.x, x_687.y, x_687.x, x_687.y) * vec4<f32>(x_690.x, x_690.y, x_690.x, x_690.y)) + vec4<f32>(x_693.y, x_693.w, x_693.x, x_693.w));
        let x_696 : vec4<f32> = u_xlat6;
        let x_699 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_702 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_696.x, x_696.y) * vec2<f32>(x_699.x, x_699.y)) + vec2<f32>(x_702.z, x_702.w));
        let x_706 : f32 = u_xlat8.y;
        u_xlat9.w = x_706;
        let x_708 : vec4<f32> = u_xlat9;
        let x_709 : vec2<f32> = vec2<f32>(x_708.y, x_708.z);
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_710.x, x_709.x, x_710.z, x_709.y);
        let x_712 : vec4<f32> = u_xlat6;
        let x_715 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_718 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_712.x, x_712.y, x_712.x, x_712.y) * vec4<f32>(x_715.x, x_715.y, x_715.x, x_715.y)) + vec4<f32>(x_718.x, x_718.y, x_718.z, x_718.y));
        let x_721 : vec4<f32> = u_xlat6;
        let x_724 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_727 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_721.x, x_721.y, x_721.x, x_721.y) * vec4<f32>(x_724.x, x_724.y, x_724.x, x_724.y)) + vec4<f32>(x_727.w, x_727.y, x_727.w, x_727.z));
        let x_730 : vec4<f32> = u_xlat6;
        let x_733 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_736 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_730.x, x_730.y, x_730.x, x_730.y) * vec4<f32>(x_733.x, x_733.y, x_733.x, x_733.y)) + vec4<f32>(x_736.x, x_736.w, x_736.z, x_736.w));
        let x_740 : vec4<f32> = u_xlat7;
        let x_742 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_740.x, x_740.x, x_740.x, x_740.y) * vec4<f32>(x_742.z, x_742.w, x_742.y, x_742.z));
        let x_746 : vec4<f32> = u_xlat7;
        let x_748 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_746.y, x_746.y, x_746.z, x_746.z) * x_748);
        let x_752 : f32 = u_xlat7.z;
        let x_754 : f32 = u_xlat12.y;
        u_xlat83 = (x_752 * x_754);
        let x_757 : vec4<f32> = u_xlat10;
        let x_758 : vec2<f32> = vec2<f32>(x_757.x, x_757.y);
        let x_760 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_758.x, x_758.y, x_760);
        let x_767 : vec3<f32> = txVec4;
        let x_769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_767.xy, x_767.z);
        u_xlat6.x = x_769;
        let x_772 : vec4<f32> = u_xlat10;
        let x_773 : vec2<f32> = vec2<f32>(x_772.z, x_772.w);
        let x_775 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_773.x, x_773.y, x_775);
        let x_783 : vec3<f32> = txVec5;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_783.xy, x_783.z);
        u_xlat32 = x_785;
        let x_786 : f32 = u_xlat32;
        let x_788 : f32 = u_xlat13.y;
        u_xlat32 = (x_786 * x_788);
        let x_791 : f32 = u_xlat13.x;
        let x_793 : f32 = u_xlat6.x;
        let x_795 : f32 = u_xlat32;
        u_xlat6.x = ((x_791 * x_793) + x_795);
        let x_799 : vec2<f32> = u_xlat58;
        let x_801 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec6;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_808.xy, x_808.z);
        u_xlat32 = x_810;
        let x_812 : f32 = u_xlat13.z;
        let x_813 : f32 = u_xlat32;
        let x_816 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_812 * x_813) + x_816);
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
        let x_823 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_830 : vec3<f32> = txVec7;
        let x_832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_830.xy, x_830.z);
        u_xlat32 = x_832;
        let x_834 : f32 = u_xlat13.w;
        let x_835 : f32 = u_xlat32;
        let x_838 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_834 * x_835) + x_838);
        let x_842 : vec4<f32> = u_xlat11;
        let x_843 : vec2<f32> = vec2<f32>(x_842.x, x_842.y);
        let x_845 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_852 : vec3<f32> = txVec8;
        let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_852.xy, x_852.z);
        u_xlat32 = x_854;
        let x_856 : f32 = u_xlat14.x;
        let x_857 : f32 = u_xlat32;
        let x_860 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_856 * x_857) + x_860);
        let x_864 : vec4<f32> = u_xlat11;
        let x_865 : vec2<f32> = vec2<f32>(x_864.z, x_864.w);
        let x_867 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec9;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat32 = x_876;
        let x_878 : f32 = u_xlat14.y;
        let x_879 : f32 = u_xlat32;
        let x_882 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_878 * x_879) + x_882);
        let x_886 : vec4<f32> = u_xlat9;
        let x_887 : vec2<f32> = vec2<f32>(x_886.z, x_886.w);
        let x_889 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_896 : vec3<f32> = txVec10;
        let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_896.xy, x_896.z);
        u_xlat32 = x_898;
        let x_900 : f32 = u_xlat14.z;
        let x_901 : f32 = u_xlat32;
        let x_904 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_900 * x_901) + x_904);
        let x_908 : vec4<f32> = u_xlat8;
        let x_909 : vec2<f32> = vec2<f32>(x_908.x, x_908.y);
        let x_911 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_909.x, x_909.y, x_911);
        let x_918 : vec3<f32> = txVec11;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_918.xy, x_918.z);
        u_xlat32 = x_920;
        let x_922 : f32 = u_xlat14.w;
        let x_923 : f32 = u_xlat32;
        let x_926 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_922 * x_923) + x_926);
        let x_930 : vec4<f32> = u_xlat8;
        let x_931 : vec2<f32> = vec2<f32>(x_930.z, x_930.w);
        let x_933 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_931.x, x_931.y, x_933);
        let x_940 : vec3<f32> = txVec12;
        let x_942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_940.xy, x_940.z);
        u_xlat32 = x_942;
        let x_943 : f32 = u_xlat83;
        let x_944 : f32 = u_xlat32;
        let x_947 : f32 = u_xlat6.x;
        u_xlat57.x = ((x_943 * x_944) + x_947);
      } else {
        let x_951 : vec4<f32> = vs_TEXCOORD6;
        let x_954 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_957 : vec2<f32> = ((vec2<f32>(x_951.x, x_951.y) * vec2<f32>(x_954.z, x_954.w)) + vec2<f32>(0.5f, 0.5f));
        let x_958 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
        let x_960 : vec4<f32> = u_xlat6;
        let x_962 : vec2<f32> = floor(vec2<f32>(x_960.x, x_960.y));
        let x_963 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_965 : vec4<f32> = vs_TEXCOORD6;
        let x_968 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_971 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_965.x, x_965.y) * vec2<f32>(x_968.z, x_968.w)) + -(vec2<f32>(x_971.x, x_971.y)));
        let x_975 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_975.x, x_975.x, x_975.y, x_975.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_978 : vec4<f32> = u_xlat7;
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_978.x, x_978.x, x_978.z, x_978.z) * vec4<f32>(x_980.x, x_980.x, x_980.z, x_980.z));
        let x_983 : vec4<f32> = u_xlat8;
        let x_987 : vec2<f32> = (vec2<f32>(x_983.y, x_983.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_988 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_988.x, x_987.x, x_988.z, x_987.y);
        let x_990 : vec4<f32> = u_xlat8;
        let x_993 : vec2<f32> = u_xlat58;
        let x_995 : vec2<f32> = ((vec2<f32>(x_990.x, x_990.z) * vec2<f32>(0.5f, 0.5f)) + -(x_993));
        let x_996 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_995.x, x_996.y, x_995.y, x_996.w);
        let x_998 : vec2<f32> = u_xlat58;
        let x_1000 : vec2<f32> = (-(x_998) + vec2<f32>(1.0f, 1.0f));
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1003 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1003, vec2<f32>(0.0f, 0.0f));
        let x_1005 : vec2<f32> = u_xlat60;
        let x_1007 : vec2<f32> = u_xlat60;
        let x_1009 : vec4<f32> = u_xlat8;
        let x_1011 : vec2<f32> = ((-(x_1005) * x_1007) + vec2<f32>(x_1009.x, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1014, vec2<f32>(0.0f, 0.0f));
        let x_1017 : vec2<f32> = u_xlat60;
        let x_1019 : vec2<f32> = u_xlat60;
        let x_1021 : vec4<f32> = u_xlat7;
        let x_1023 : vec2<f32> = ((-(x_1017) * x_1019) + vec2<f32>(x_1021.y, x_1021.w));
        let x_1024 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1023.x, x_1024.y, x_1023.y);
        let x_1026 : vec4<f32> = u_xlat8;
        let x_1029 : vec2<f32> = (vec2<f32>(x_1026.x, x_1026.y) + vec2<f32>(2.0f, 2.0f));
        let x_1030 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
        let x_1032 : vec3<f32> = u_xlat33;
        let x_1034 : vec2<f32> = (vec2<f32>(x_1032.x, x_1032.z) + vec2<f32>(2.0f, 2.0f));
        let x_1035 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1035.x, x_1034.x, x_1035.z, x_1034.y);
        let x_1038 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1038 * 0.08163200318813323975f);
        let x_1042 : vec4<f32> = u_xlat7;
        let x_1045 : vec3<f32> = (vec3<f32>(x_1042.z, x_1042.x, x_1042.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1046 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
        let x_1048 : vec4<f32> = u_xlat8;
        let x_1051 : vec2<f32> = (vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1052 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1055 : f32 = u_xlat11.y;
        u_xlat10.x = x_1055;
        let x_1057 : vec2<f32> = u_xlat58;
        let x_1064 : vec2<f32> = ((vec2<f32>(x_1057.x, x_1057.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1065 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1065.x, x_1064.x, x_1065.z, x_1064.y);
        let x_1067 : vec2<f32> = u_xlat58;
        let x_1071 : vec2<f32> = ((vec2<f32>(x_1067.x, x_1067.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1071.x, x_1072.y, x_1071.y, x_1072.w);
        let x_1075 : f32 = u_xlat7.x;
        u_xlat8.y = x_1075;
        let x_1078 : f32 = u_xlat9.y;
        u_xlat8.w = x_1078;
        let x_1080 : vec4<f32> = u_xlat8;
        let x_1081 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1080 + x_1081);
        let x_1083 : vec2<f32> = u_xlat58;
        let x_1086 : vec2<f32> = ((vec2<f32>(x_1083.y, x_1083.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1087 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1087.x, x_1086.x, x_1087.z, x_1086.y);
        let x_1089 : vec2<f32> = u_xlat58;
        let x_1092 : vec2<f32> = ((vec2<f32>(x_1089.y, x_1089.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1093 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1092.x, x_1093.y, x_1092.y, x_1093.w);
        let x_1096 : f32 = u_xlat7.y;
        u_xlat9.y = x_1096;
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1099 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1098 + x_1099);
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1102 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1101 / x_1102);
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1104 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1110 : vec4<f32> = u_xlat9;
        let x_1111 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1110 / x_1111);
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1113 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1115 : vec4<f32> = u_xlat8;
        let x_1118 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1115.w, x_1115.x, x_1115.y, x_1115.z) * vec4<f32>(x_1118.x, x_1118.x, x_1118.x, x_1118.x));
        let x_1121 : vec4<f32> = u_xlat9;
        let x_1124 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1121.x, x_1121.w, x_1121.y, x_1121.z) * vec4<f32>(x_1124.y, x_1124.y, x_1124.y, x_1124.y));
        let x_1127 : vec4<f32> = u_xlat8;
        let x_1128 : vec3<f32> = vec3<f32>(x_1127.y, x_1127.z, x_1127.w);
        let x_1129 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1128.x, x_1129.y, x_1128.y, x_1128.z);
        let x_1132 : f32 = u_xlat9.x;
        u_xlat11.y = x_1132;
        let x_1134 : vec4<f32> = u_xlat6;
        let x_1137 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y) * vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.y)) + vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1140.y));
        let x_1143 : vec4<f32> = u_xlat6;
        let x_1146 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(x_1146.x, x_1146.y)) + vec2<f32>(x_1149.w, x_1149.y));
        let x_1153 : f32 = u_xlat11.y;
        u_xlat8.y = x_1153;
        let x_1156 : f32 = u_xlat9.z;
        u_xlat11.y = x_1156;
        let x_1158 : vec4<f32> = u_xlat6;
        let x_1161 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1164 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y) * vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.y)) + vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1164.y));
        let x_1167 : vec4<f32> = u_xlat6;
        let x_1170 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat11;
        let x_1175 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1170.x, x_1170.y)) + vec2<f32>(x_1173.w, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1175.x, x_1175.y, x_1176.z, x_1176.w);
        let x_1179 : f32 = u_xlat11.y;
        u_xlat8.z = x_1179;
        let x_1182 : vec4<f32> = u_xlat6;
        let x_1185 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y) * vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y)) + vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.z));
        let x_1192 : f32 = u_xlat9.w;
        u_xlat11.y = x_1192;
        let x_1195 : vec4<f32> = u_xlat6;
        let x_1198 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1201.y));
        let x_1205 : vec4<f32> = u_xlat6;
        let x_1208 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1211 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1205.x, x_1205.y) * vec2<f32>(x_1208.x, x_1208.y)) + vec2<f32>(x_1211.w, x_1211.y));
        let x_1215 : f32 = u_xlat11.y;
        u_xlat8.w = x_1215;
        let x_1218 : vec4<f32> = u_xlat6;
        let x_1221 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.x, x_1224.w));
        let x_1227 : vec4<f32> = u_xlat11;
        let x_1228 : vec3<f32> = vec3<f32>(x_1227.x, x_1227.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1228.x, x_1229.y, x_1228.y, x_1228.z);
        let x_1231 : vec4<f32> = u_xlat6;
        let x_1234 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) * vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y)) + vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1237.y));
        let x_1241 : vec4<f32> = u_xlat6;
        let x_1244 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1241.x, x_1241.y) * vec2<f32>(x_1244.x, x_1244.y)) + vec2<f32>(x_1247.w, x_1247.y));
        let x_1251 : f32 = u_xlat8.x;
        u_xlat9.x = x_1251;
        let x_1253 : vec4<f32> = u_xlat6;
        let x_1256 : vec4<f32> = x_383.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat9;
        let x_1261 : vec2<f32> = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.x, x_1259.y));
        let x_1262 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
        let x_1265 : vec4<f32> = u_xlat7;
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1265.x, x_1265.x, x_1265.x, x_1265.x) * x_1267);
        let x_1270 : vec4<f32> = u_xlat7;
        let x_1272 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1270.y, x_1270.y, x_1270.y, x_1270.y) * x_1272);
        let x_1275 : vec4<f32> = u_xlat7;
        let x_1277 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1275.z, x_1275.z, x_1275.z, x_1275.z) * x_1277);
        let x_1279 : vec4<f32> = u_xlat7;
        let x_1281 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1279.w, x_1279.w, x_1279.w, x_1279.w) * x_1281);
        let x_1284 : vec4<f32> = u_xlat12;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
        let x_1287 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec13;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat83 = x_1296;
        let x_1298 : vec4<f32> = u_xlat12;
        let x_1299 : vec2<f32> = vec2<f32>(x_1298.z, x_1298.w);
        let x_1301 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1299.x, x_1299.y, x_1301);
        let x_1308 : vec3<f32> = txVec14;
        let x_1310 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1308.xy, x_1308.z);
        u_xlat8.x = x_1310;
        let x_1313 : f32 = u_xlat8.x;
        let x_1315 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1313 * x_1315);
        let x_1319 : f32 = u_xlat17.x;
        let x_1320 : f32 = u_xlat83;
        let x_1323 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1319 * x_1320) + x_1323);
        let x_1326 : vec2<f32> = u_xlat58;
        let x_1328 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec15;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1335.xy, x_1335.z);
        u_xlat58.x = x_1337;
        let x_1340 : f32 = u_xlat17.z;
        let x_1342 : f32 = u_xlat58.x;
        let x_1344 : f32 = u_xlat83;
        u_xlat83 = ((x_1340 * x_1342) + x_1344);
        let x_1347 : vec4<f32> = u_xlat15;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.x, x_1347.y);
        let x_1350 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec16;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1357.xy, x_1357.z);
        u_xlat58.x = x_1359;
        let x_1362 : f32 = u_xlat17.w;
        let x_1364 : f32 = u_xlat58.x;
        let x_1366 : f32 = u_xlat83;
        u_xlat83 = ((x_1362 * x_1364) + x_1366);
        let x_1369 : vec4<f32> = u_xlat13;
        let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.y);
        let x_1372 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1370.x, x_1370.y, x_1372);
        let x_1379 : vec3<f32> = txVec17;
        let x_1381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1379.xy, x_1379.z);
        u_xlat58.x = x_1381;
        let x_1384 : f32 = u_xlat18.x;
        let x_1386 : f32 = u_xlat58.x;
        let x_1388 : f32 = u_xlat83;
        u_xlat83 = ((x_1384 * x_1386) + x_1388);
        let x_1391 : vec4<f32> = u_xlat13;
        let x_1392 : vec2<f32> = vec2<f32>(x_1391.z, x_1391.w);
        let x_1394 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1392.x, x_1392.y, x_1394);
        let x_1401 : vec3<f32> = txVec18;
        let x_1403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1401.xy, x_1401.z);
        u_xlat58.x = x_1403;
        let x_1406 : f32 = u_xlat18.y;
        let x_1408 : f32 = u_xlat58.x;
        let x_1410 : f32 = u_xlat83;
        u_xlat83 = ((x_1406 * x_1408) + x_1410);
        let x_1413 : vec4<f32> = u_xlat14;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.x, x_1413.y);
        let x_1416 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec19;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1423.xy, x_1423.z);
        u_xlat58.x = x_1425;
        let x_1428 : f32 = u_xlat18.z;
        let x_1430 : f32 = u_xlat58.x;
        let x_1432 : f32 = u_xlat83;
        u_xlat83 = ((x_1428 * x_1430) + x_1432);
        let x_1435 : vec4<f32> = u_xlat15;
        let x_1436 : vec2<f32> = vec2<f32>(x_1435.z, x_1435.w);
        let x_1438 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec20;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1445.xy, x_1445.z);
        u_xlat58.x = x_1447;
        let x_1450 : f32 = u_xlat18.w;
        let x_1452 : f32 = u_xlat58.x;
        let x_1454 : f32 = u_xlat83;
        u_xlat83 = ((x_1450 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat16;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec21;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat58.x = x_1469;
        let x_1472 : f32 = u_xlat19.x;
        let x_1474 : f32 = u_xlat58.x;
        let x_1476 : f32 = u_xlat83;
        u_xlat83 = ((x_1472 * x_1474) + x_1476);
        let x_1479 : vec4<f32> = u_xlat16;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.z, x_1479.w);
        let x_1482 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec22;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat58.x = x_1491;
        let x_1494 : f32 = u_xlat19.y;
        let x_1496 : f32 = u_xlat58.x;
        let x_1498 : f32 = u_xlat83;
        u_xlat83 = ((x_1494 * x_1496) + x_1498);
        let x_1501 : vec2<f32> = u_xlat34;
        let x_1503 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec23;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1510.xy, x_1510.z);
        u_xlat58.x = x_1512;
        let x_1515 : f32 = u_xlat19.z;
        let x_1517 : f32 = u_xlat58.x;
        let x_1519 : f32 = u_xlat83;
        u_xlat83 = ((x_1515 * x_1517) + x_1519);
        let x_1522 : vec2<f32> = u_xlat66;
        let x_1524 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec24;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1531.xy, x_1531.z);
        u_xlat58.x = x_1533;
        let x_1536 : f32 = u_xlat19.w;
        let x_1538 : f32 = u_xlat58.x;
        let x_1540 : f32 = u_xlat83;
        u_xlat83 = ((x_1536 * x_1538) + x_1540);
        let x_1543 : vec4<f32> = u_xlat11;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.x, x_1543.y);
        let x_1546 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec25;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1553.xy, x_1553.z);
        u_xlat58.x = x_1555;
        let x_1558 : f32 = u_xlat7.x;
        let x_1560 : f32 = u_xlat58.x;
        let x_1562 : f32 = u_xlat83;
        u_xlat83 = ((x_1558 * x_1560) + x_1562);
        let x_1565 : vec4<f32> = u_xlat11;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.z, x_1565.w);
        let x_1568 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec26;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1575.xy, x_1575.z);
        u_xlat58.x = x_1577;
        let x_1580 : f32 = u_xlat7.y;
        let x_1582 : f32 = u_xlat58.x;
        let x_1584 : f32 = u_xlat83;
        u_xlat83 = ((x_1580 * x_1582) + x_1584);
        let x_1587 : vec2<f32> = u_xlat61;
        let x_1589 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec27;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1596.xy, x_1596.z);
        u_xlat58.x = x_1598;
        let x_1601 : f32 = u_xlat7.z;
        let x_1603 : f32 = u_xlat58.x;
        let x_1605 : f32 = u_xlat83;
        u_xlat83 = ((x_1601 * x_1603) + x_1605);
        let x_1608 : vec4<f32> = u_xlat6;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.x, x_1608.y);
        let x_1611 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec28;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1618.xy, x_1618.z);
        u_xlat6.x = x_1620;
        let x_1623 : f32 = u_xlat7.w;
        let x_1625 : f32 = u_xlat6.x;
        let x_1627 : f32 = u_xlat83;
        u_xlat57.x = ((x_1623 * x_1625) + x_1627);
      }
    }
  } else {
    let x_1632 : vec4<f32> = vs_TEXCOORD6;
    let x_1633 : vec2<f32> = vec2<f32>(x_1632.x, x_1632.y);
    let x_1635 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
    let x_1642 : vec3<f32> = txVec29;
    let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
    u_xlat57.x = x_1644;
  }
  let x_1647 : f32 = x_383.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1647) + 1.0f);
  let x_1651 : f32 = u_xlat57.x;
  let x_1653 : f32 = x_383.x_MainLightShadowParams.x;
  let x_1655 : f32 = u_xlat83;
  u_xlat57.x = ((x_1651 * x_1653) + x_1655);
  let x_1659 : f32 = vs_TEXCOORD6.z;
  u_xlatb83 = (0.0f >= x_1659);
  let x_1663 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (x_1663 >= 1.0f);
  let x_1665 : bool = u_xlatb83;
  let x_1666 : bool = u_xlatb6;
  u_xlatb83 = (x_1665 | x_1666);
  let x_1668 : bool = u_xlatb83;
  if (x_1668) {
    x_1669 = 1.0f;
  } else {
    let x_1674 : f32 = u_xlat57.x;
    x_1669 = x_1674;
  }
  let x_1675 : f32 = x_1669;
  u_xlat57.x = x_1675;
  let x_1677 : vec3<f32> = vs_TEXCOORD1;
  let x_1679 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1681 : vec3<f32> = (x_1677 + -(x_1679));
  let x_1682 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1681.x, x_1681.y, x_1681.z, x_1682.w);
  let x_1684 : vec4<f32> = u_xlat6;
  let x_1686 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1684.x, x_1684.y, x_1684.z), vec3<f32>(x_1686.x, x_1686.y, x_1686.z));
  let x_1689 : f32 = u_xlat83;
  let x_1691 : f32 = x_383.x_MainLightShadowParams.z;
  let x_1694 : f32 = x_383.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1689 * x_1691) + x_1694);
  let x_1698 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1698, 0.0f, 1.0f);
  let x_1702 : f32 = u_xlat57.x;
  u_xlat32 = (-(x_1702) + 1.0f);
  let x_1706 : f32 = u_xlat6.x;
  let x_1707 : f32 = u_xlat32;
  let x_1710 : f32 = u_xlat57.x;
  u_xlat57.x = ((x_1706 * x_1707) + x_1710);
  let x_1713 : vec3<f32> = u_xlat2;
  let x_1715 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(-(x_1713), vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1720 : f32 = u_xlat6.x;
  let x_1722 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1720 + x_1722);
  let x_1725 : vec4<f32> = u_xlat3;
  let x_1727 : vec4<f32> = u_xlat6;
  let x_1731 : vec3<f32> = u_xlat2;
  let x_1733 : vec3<f32> = ((vec3<f32>(x_1725.x, x_1725.y, x_1725.z) * -(vec3<f32>(x_1727.x, x_1727.x, x_1727.x))) + -(x_1731));
  let x_1734 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
  let x_1737 : vec4<f32> = u_xlat3;
  let x_1739 : vec3<f32> = u_xlat2;
  u_xlat84 = dot(vec3<f32>(x_1737.x, x_1737.y, x_1737.z), x_1739);
  let x_1741 : f32 = u_xlat84;
  u_xlat84 = clamp(x_1741, 0.0f, 1.0f);
  let x_1743 : f32 = u_xlat84;
  u_xlat84 = (-(x_1743) + 1.0f);
  let x_1746 : f32 = u_xlat84;
  let x_1747 : f32 = u_xlat84;
  u_xlat84 = (x_1746 * x_1747);
  let x_1749 : f32 = u_xlat84;
  let x_1750 : f32 = u_xlat84;
  u_xlat84 = (x_1749 * x_1750);
  let x_1752 : f32 = u_xlat80;
  u_xlat7.x = ((-(x_1752) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1759 : f32 = u_xlat80;
  let x_1761 : f32 = u_xlat7.x;
  u_xlat80 = (x_1759 * x_1761);
  let x_1763 : f32 = u_xlat80;
  u_xlat80 = (x_1763 * 6.0f);
  let x_1774 : vec4<f32> = u_xlat6;
  let x_1776 : f32 = u_xlat80;
  let x_1777 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1774.x, x_1774.y, x_1774.z), x_1776);
  u_xlat7 = x_1777;
  let x_1779 : f32 = u_xlat7.w;
  u_xlat80 = (x_1779 + -1.0f);
  let x_1783 : f32 = x_96.unity_SpecCube0_HDR.w;
  let x_1784 : f32 = u_xlat80;
  u_xlat80 = ((x_1783 * x_1784) + 1.0f);
  let x_1787 : f32 = u_xlat80;
  u_xlat80 = max(x_1787, 0.0f);
  let x_1789 : f32 = u_xlat80;
  u_xlat80 = log2(x_1789);
  let x_1791 : f32 = u_xlat80;
  let x_1793 : f32 = x_96.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1791 * x_1793);
  let x_1795 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1795);
  let x_1797 : f32 = u_xlat80;
  let x_1799 : f32 = x_96.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1797 * x_1799);
  let x_1801 : vec4<f32> = u_xlat7;
  let x_1803 : f32 = u_xlat80;
  let x_1805 : vec3<f32> = (vec3<f32>(x_1801.x, x_1801.y, x_1801.z) * vec3<f32>(x_1803, x_1803, x_1803));
  let x_1806 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
  let x_1808 : f32 = u_xlat82;
  let x_1810 : f32 = u_xlat82;
  let x_1814 : vec2<f32> = ((vec2<f32>(x_1808, x_1808) * vec2<f32>(x_1810, x_1810)) + vec2<f32>(-1.0f, 1.0f));
  let x_1815 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1814.x, x_1814.y, x_1815.z, x_1815.w);
  let x_1818 : f32 = u_xlat7.y;
  u_xlat80 = (1.0f / x_1818);
  let x_1820 : vec4<f32> = u_xlat0;
  let x_1823 : f32 = u_xlat81;
  u_xlat33 = (-(vec3<f32>(x_1820.x, x_1820.y, x_1820.z)) + vec3<f32>(x_1823, x_1823, x_1823));
  let x_1826 : f32 = u_xlat84;
  let x_1828 : vec3<f32> = u_xlat33;
  let x_1830 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_1826, x_1826, x_1826) * x_1828) + vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
  let x_1833 : f32 = u_xlat80;
  let x_1835 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_1833, x_1833, x_1833) * x_1835);
  let x_1837 : vec4<f32> = u_xlat6;
  let x_1839 : vec3<f32> = u_xlat33;
  let x_1840 : vec3<f32> = (vec3<f32>(x_1837.x, x_1837.y, x_1837.z) * x_1839);
  let x_1841 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
  let x_1843 : vec3<f32> = u_xlat4;
  let x_1844 : vec3<f32> = u_xlat27;
  let x_1846 : vec4<f32> = u_xlat6;
  u_xlat4 = ((x_1843 * x_1844) + vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
  let x_1850 : f32 = u_xlat57.x;
  let x_1852 : f32 = x_96.unity_LightData.z;
  u_xlat80 = (x_1850 * x_1852);
  let x_1854 : vec4<f32> = u_xlat3;
  let x_1857 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat81 = dot(vec3<f32>(x_1854.x, x_1854.y, x_1854.z), vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
  let x_1860 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1860, 0.0f, 1.0f);
  let x_1862 : f32 = u_xlat80;
  let x_1863 : f32 = u_xlat81;
  u_xlat80 = (x_1862 * x_1863);
  let x_1865 : f32 = u_xlat80;
  let x_1868 : vec4<f32> = x_45.x_MainLightColor;
  let x_1870 : vec3<f32> = (vec3<f32>(x_1865, x_1865, x_1865) * vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
  let x_1871 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
  let x_1873 : vec3<f32> = u_xlat2;
  let x_1875 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat33 = (x_1873 + vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : vec3<f32> = u_xlat33;
  let x_1879 : vec3<f32> = u_xlat33;
  u_xlat80 = dot(x_1878, x_1879);
  let x_1881 : f32 = u_xlat80;
  u_xlat80 = max(x_1881, 1.17549435e-38f);
  let x_1884 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1884);
  let x_1886 : f32 = u_xlat80;
  let x_1888 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_1886, x_1886, x_1886) * x_1888);
  let x_1890 : vec4<f32> = u_xlat3;
  let x_1892 : vec3<f32> = u_xlat33;
  u_xlat80 = dot(vec3<f32>(x_1890.x, x_1890.y, x_1890.z), x_1892);
  let x_1894 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1894, 0.0f, 1.0f);
  let x_1897 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1899 : vec3<f32> = u_xlat33;
  u_xlat81 = dot(vec3<f32>(x_1897.x, x_1897.y, x_1897.z), x_1899);
  let x_1901 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1901, 0.0f, 1.0f);
  let x_1903 : f32 = u_xlat80;
  let x_1904 : f32 = u_xlat80;
  u_xlat80 = (x_1903 * x_1904);
  let x_1906 : f32 = u_xlat80;
  let x_1908 : f32 = u_xlat7.x;
  u_xlat80 = ((x_1906 * x_1908) + 1.00001001358032226562f);
  let x_1912 : f32 = u_xlat81;
  let x_1913 : f32 = u_xlat81;
  u_xlat81 = (x_1912 * x_1913);
  let x_1915 : f32 = u_xlat80;
  let x_1916 : f32 = u_xlat80;
  u_xlat80 = (x_1915 * x_1916);
  let x_1918 : f32 = u_xlat81;
  u_xlat81 = max(x_1918, 0.10000000149011611938f);
  let x_1921 : f32 = u_xlat80;
  let x_1922 : f32 = u_xlat81;
  u_xlat80 = (x_1921 * x_1922);
  let x_1924 : f32 = u_xlat31;
  let x_1925 : f32 = u_xlat80;
  u_xlat80 = (x_1924 * x_1925);
  let x_1928 : f32 = u_xlat5.x;
  let x_1929 : f32 = u_xlat80;
  u_xlat80 = (x_1928 / x_1929);
  let x_1931 : vec4<f32> = u_xlat0;
  let x_1933 : f32 = u_xlat80;
  let x_1936 : vec3<f32> = u_xlat27;
  u_xlat33 = ((vec3<f32>(x_1931.x, x_1931.y, x_1931.z) * vec3<f32>(x_1933, x_1933, x_1933)) + x_1936);
  let x_1939 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1941 : f32 = x_96.unity_LightData.y;
  u_xlat80 = min(x_1939, x_1941);
  let x_1945 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_1945));
  let x_1948 : f32 = u_xlat83;
  let x_1951 : f32 = x_383.x_AdditionalShadowFadeParams.x;
  let x_1954 : f32 = x_383.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_1948 * x_1951) + x_1954);
  let x_1956 : f32 = u_xlat81;
  u_xlat81 = clamp(x_1956, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1968 : u32 = u_xlatu_loop_1;
    let x_1969 : u32 = u_xlatu80;
    if ((x_1968 < x_1969)) {
    } else {
      break;
    }
    let x_1972 : u32 = u_xlatu_loop_1;
    u_xlatu57 = (x_1972 >> 2u);
    let x_1976 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_1976 & 3u));
    let x_1979 : u32 = u_xlatu57;
    let x_1982 : vec4<f32> = x_96.unity_LightIndices[bitcast<i32>(x_1979)];
    let x_1992 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1997 : vec4<u32> = indexable[x_1992];
    u_xlat57.x = dot(x_1982, bitcast<vec4<f32>>(x_1997));
    let x_2003 : f32 = u_xlat57.x;
    u_xlati57 = i32(x_2003);
    let x_2005 : vec3<f32> = vs_TEXCOORD1;
    let x_2016 : i32 = u_xlati57;
    let x_2018 : vec4<f32> = x_2015.x_AdditionalLightsPosition[x_2016];
    let x_2021 : i32 = u_xlati57;
    let x_2023 : vec4<f32> = x_2015.x_AdditionalLightsPosition[x_2021];
    let x_2025 : vec3<f32> = ((-(x_2005) * vec3<f32>(x_2018.w, x_2018.w, x_2018.w)) + vec3<f32>(x_2023.x, x_2023.y, x_2023.z));
    let x_2026 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
    let x_2028 : vec4<f32> = u_xlat9;
    let x_2030 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2028.x, x_2028.y, x_2028.z), vec3<f32>(x_2030.x, x_2030.y, x_2030.z));
    let x_2033 : f32 = u_xlat83;
    u_xlat83 = max(x_2033, 0.00006103515625f);
    let x_2036 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2036);
    let x_2038 : f32 = u_xlat84;
    let x_2040 : vec4<f32> = u_xlat9;
    let x_2042 : vec3<f32> = (vec3<f32>(x_2038, x_2038, x_2038) * vec3<f32>(x_2040.x, x_2040.y, x_2040.z));
    let x_2043 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
    let x_2046 : f32 = u_xlat83;
    u_xlat86 = (1.0f / x_2046);
    let x_2048 : f32 = u_xlat83;
    let x_2049 : i32 = u_xlati57;
    let x_2051 : f32 = x_2015.x_AdditionalLightsAttenuation[x_2049].x;
    u_xlat83 = (x_2048 * x_2051);
    let x_2053 : f32 = u_xlat83;
    let x_2055 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2053) * x_2055) + 1.0f);
    let x_2058 : f32 = u_xlat83;
    u_xlat83 = max(x_2058, 0.0f);
    let x_2060 : f32 = u_xlat83;
    let x_2061 : f32 = u_xlat83;
    u_xlat83 = (x_2060 * x_2061);
    let x_2063 : f32 = u_xlat83;
    let x_2064 : f32 = u_xlat86;
    u_xlat83 = (x_2063 * x_2064);
    let x_2066 : i32 = u_xlati57;
    let x_2068 : vec4<f32> = x_2015.x_AdditionalLightsSpotDir[x_2066];
    let x_2070 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2068.x, x_2068.y, x_2068.z), vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
    let x_2073 : f32 = u_xlat86;
    let x_2074 : i32 = u_xlati57;
    let x_2076 : f32 = x_2015.x_AdditionalLightsAttenuation[x_2074].z;
    let x_2078 : i32 = u_xlati57;
    let x_2080 : f32 = x_2015.x_AdditionalLightsAttenuation[x_2078].w;
    u_xlat86 = ((x_2073 * x_2076) + x_2080);
    let x_2082 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2082, 0.0f, 1.0f);
    let x_2084 : f32 = u_xlat86;
    let x_2085 : f32 = u_xlat86;
    u_xlat86 = (x_2084 * x_2085);
    let x_2087 : f32 = u_xlat83;
    let x_2088 : f32 = u_xlat86;
    u_xlat83 = (x_2087 * x_2088);
    let x_2092 : i32 = u_xlati57;
    let x_2094 : f32 = x_383.x_AdditionalShadowParams[x_2092].w;
    u_xlati86 = i32(x_2094);
    let x_2097 : i32 = u_xlati86;
    u_xlatb87 = (x_2097 >= 0i);
    let x_2099 : bool = u_xlatb87;
    if (x_2099) {
      let x_2103 : i32 = u_xlati57;
      let x_2105 : f32 = x_383.x_AdditionalShadowParams[x_2103].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2105, x_2105, x_2105, x_2105))));
      let x_2110 : bool = u_xlatb87;
      if (x_2110) {
        let x_2115 : vec4<f32> = u_xlat10;
        let x_2118 : vec4<f32> = u_xlat10;
        let x_2121 : vec4<bool> = (abs(vec4<f32>(x_2115.z, x_2115.z, x_2115.y, x_2115.z)) >= abs(vec4<f32>(x_2118.x, x_2118.y, x_2118.x, x_2118.x)));
        let x_2123 : vec3<bool> = vec3<bool>(x_2121.x, x_2121.y, x_2121.z);
        let x_2124 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2123.x, x_2123.y, x_2123.z, x_2124.w);
        let x_2127 : bool = u_xlatb11.y;
        let x_2129 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2127 & x_2129);
        let x_2131 : vec4<f32> = u_xlat10;
        let x_2134 : vec4<bool> = (-(vec4<f32>(x_2131.z, x_2131.y, x_2131.z, x_2131.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2135 : vec3<bool> = vec3<bool>(x_2134.x, x_2134.y, x_2134.w);
        let x_2136 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2135.x, x_2135.y, x_2136.z, x_2135.z);
        let x_2139 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2139);
        let x_2144 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2144);
        let x_2150 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2150);
        let x_2153 : bool = u_xlatb11.z;
        if (x_2153) {
          let x_2158 : f32 = u_xlat11.y;
          x_2154 = x_2158;
        } else {
          let x_2160 : f32 = u_xlat88;
          x_2154 = x_2160;
        }
        let x_2161 : f32 = x_2154;
        u_xlat88 = x_2161;
        let x_2163 : bool = u_xlatb87;
        if (x_2163) {
          let x_2168 : f32 = u_xlat11.x;
          x_2164 = x_2168;
        } else {
          let x_2170 : f32 = u_xlat88;
          x_2164 = x_2170;
        }
        let x_2171 : f32 = x_2164;
        u_xlat87 = x_2171;
        let x_2172 : i32 = u_xlati57;
        let x_2174 : f32 = x_383.x_AdditionalShadowParams[x_2172].w;
        u_xlat88 = trunc(x_2174);
        let x_2176 : f32 = u_xlat87;
        let x_2177 : f32 = u_xlat88;
        u_xlat87 = (x_2176 + x_2177);
        let x_2179 : f32 = u_xlat87;
        u_xlati86 = i32(x_2179);
      }
      let x_2181 : i32 = u_xlati86;
      u_xlati86 = (x_2181 << bitcast<u32>(2i));
      let x_2183 : vec3<f32> = vs_TEXCOORD1;
      let x_2186 : i32 = u_xlati86;
      let x_2189 : i32 = u_xlati86;
      let x_2193 : vec4<f32> = x_383.x_AdditionalLightsWorldToShadow[((x_2186 + 1i) / 4i)][((x_2189 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2183.y, x_2183.y, x_2183.y, x_2183.y) * x_2193);
      let x_2195 : i32 = u_xlati86;
      let x_2197 : i32 = u_xlati86;
      let x_2200 : vec4<f32> = x_383.x_AdditionalLightsWorldToShadow[(x_2195 / 4i)][(x_2197 % 4i)];
      let x_2201 : vec3<f32> = vs_TEXCOORD1;
      let x_2204 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2200 * vec4<f32>(x_2201.x, x_2201.x, x_2201.x, x_2201.x)) + x_2204);
      let x_2206 : i32 = u_xlati86;
      let x_2209 : i32 = u_xlati86;
      let x_2213 : vec4<f32> = x_383.x_AdditionalLightsWorldToShadow[((x_2206 + 2i) / 4i)][((x_2209 + 2i) % 4i)];
      let x_2214 : vec3<f32> = vs_TEXCOORD1;
      let x_2217 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2213 * vec4<f32>(x_2214.z, x_2214.z, x_2214.z, x_2214.z)) + x_2217);
      let x_2219 : vec4<f32> = u_xlat11;
      let x_2220 : i32 = u_xlati86;
      let x_2223 : i32 = u_xlati86;
      let x_2227 : vec4<f32> = x_383.x_AdditionalLightsWorldToShadow[((x_2220 + 3i) / 4i)][((x_2223 + 3i) % 4i)];
      u_xlat11 = (x_2219 + x_2227);
      let x_2229 : vec4<f32> = u_xlat11;
      let x_2231 : vec4<f32> = u_xlat11;
      let x_2233 : vec3<f32> = (vec3<f32>(x_2229.x, x_2229.y, x_2229.z) / vec3<f32>(x_2231.w, x_2231.w, x_2231.w));
      let x_2234 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
      let x_2237 : i32 = u_xlati57;
      let x_2239 : f32 = x_383.x_AdditionalShadowParams[x_2237].y;
      u_xlatb86 = (0.0f < x_2239);
      let x_2241 : bool = u_xlatb86;
      if (x_2241) {
        let x_2244 : i32 = u_xlati57;
        let x_2246 : f32 = x_383.x_AdditionalShadowParams[x_2244].y;
        u_xlatb86 = (1.0f == x_2246);
        let x_2248 : bool = u_xlatb86;
        if (x_2248) {
          let x_2251 : vec4<f32> = u_xlat11;
          let x_2254 : vec4<f32> = x_383.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2251.x, x_2251.y, x_2251.x, x_2251.y) + x_2254);
          let x_2257 : vec4<f32> = u_xlat12;
          let x_2258 : vec2<f32> = vec2<f32>(x_2257.x, x_2257.y);
          let x_2260 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2258.x, x_2258.y, x_2260);
          let x_2268 : vec3<f32> = txVec30;
          let x_2270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2268.xy, x_2268.z);
          u_xlat13.x = x_2270;
          let x_2273 : vec4<f32> = u_xlat12;
          let x_2274 : vec2<f32> = vec2<f32>(x_2273.z, x_2273.w);
          let x_2276 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2274.x, x_2274.y, x_2276);
          let x_2283 : vec3<f32> = txVec31;
          let x_2285 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2283.xy, x_2283.z);
          u_xlat13.y = x_2285;
          let x_2287 : vec4<f32> = u_xlat11;
          let x_2291 : vec4<f32> = x_383.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2287.x, x_2287.y, x_2287.x, x_2287.y) + x_2291);
          let x_2294 : vec4<f32> = u_xlat12;
          let x_2295 : vec2<f32> = vec2<f32>(x_2294.x, x_2294.y);
          let x_2297 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2295.x, x_2295.y, x_2297);
          let x_2304 : vec3<f32> = txVec32;
          let x_2306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2304.xy, x_2304.z);
          u_xlat13.z = x_2306;
          let x_2309 : vec4<f32> = u_xlat12;
          let x_2310 : vec2<f32> = vec2<f32>(x_2309.z, x_2309.w);
          let x_2312 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2310.x, x_2310.y, x_2312);
          let x_2319 : vec3<f32> = txVec33;
          let x_2321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2319.xy, x_2319.z);
          u_xlat13.w = x_2321;
          let x_2323 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2323, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2326 : i32 = u_xlati57;
          let x_2328 : f32 = x_383.x_AdditionalShadowParams[x_2326].y;
          u_xlatb87 = (2.0f == x_2328);
          let x_2330 : bool = u_xlatb87;
          if (x_2330) {
            let x_2333 : vec4<f32> = u_xlat11;
            let x_2337 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2340 : vec2<f32> = ((vec2<f32>(x_2333.x, x_2333.y) * vec2<f32>(x_2337.z, x_2337.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2341 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2340.x, x_2340.y, x_2341.z, x_2341.w);
            let x_2343 : vec4<f32> = u_xlat12;
            let x_2345 : vec2<f32> = floor(vec2<f32>(x_2343.x, x_2343.y));
            let x_2346 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2345.x, x_2345.y, x_2346.z, x_2346.w);
            let x_2349 : vec4<f32> = u_xlat11;
            let x_2352 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2355 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2349.x, x_2349.y) * vec2<f32>(x_2352.z, x_2352.w)) + -(vec2<f32>(x_2355.x, x_2355.y)));
            let x_2359 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2359.x, x_2359.x, x_2359.y, x_2359.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2362 : vec4<f32> = u_xlat13;
            let x_2364 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2362.x, x_2362.x, x_2362.z, x_2362.z) * vec4<f32>(x_2364.x, x_2364.x, x_2364.z, x_2364.z));
            let x_2367 : vec4<f32> = u_xlat14;
            let x_2369 : vec2<f32> = (vec2<f32>(x_2367.y, x_2367.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2370 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2369.x, x_2370.y, x_2369.y, x_2370.w);
            let x_2372 : vec4<f32> = u_xlat14;
            let x_2375 : vec2<f32> = u_xlat64;
            let x_2377 : vec2<f32> = ((vec2<f32>(x_2372.x, x_2372.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2375));
            let x_2378 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2377.x, x_2377.y, x_2378.z, x_2378.w);
            let x_2380 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2380) + vec2<f32>(1.0f, 1.0f));
            let x_2383 : vec2<f32> = u_xlat64;
            let x_2384 : vec2<f32> = min(x_2383, vec2<f32>(0.0f, 0.0f));
            let x_2385 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2384.x, x_2384.y, x_2385.z, x_2385.w);
            let x_2387 : vec4<f32> = u_xlat15;
            let x_2390 : vec4<f32> = u_xlat15;
            let x_2393 : vec2<f32> = u_xlat66;
            let x_2394 : vec2<f32> = ((-(vec2<f32>(x_2387.x, x_2387.y)) * vec2<f32>(x_2390.x, x_2390.y)) + x_2393);
            let x_2395 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2394.x, x_2394.y, x_2395.z, x_2395.w);
            let x_2397 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2397, vec2<f32>(0.0f, 0.0f));
            let x_2399 : vec2<f32> = u_xlat64;
            let x_2401 : vec2<f32> = u_xlat64;
            let x_2403 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2399) * x_2401) + vec2<f32>(x_2403.y, x_2403.w));
            let x_2406 : vec4<f32> = u_xlat15;
            let x_2408 : vec2<f32> = (vec2<f32>(x_2406.x, x_2406.y) + vec2<f32>(1.0f, 1.0f));
            let x_2409 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2408.x, x_2408.y, x_2409.z, x_2409.w);
            let x_2411 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2411 + vec2<f32>(1.0f, 1.0f));
            let x_2413 : vec4<f32> = u_xlat14;
            let x_2415 : vec2<f32> = (vec2<f32>(x_2413.x, x_2413.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2416 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2415.x, x_2415.y, x_2416.z, x_2416.w);
            let x_2418 : vec2<f32> = u_xlat66;
            let x_2419 : vec2<f32> = (x_2418 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2420 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2419.x, x_2419.y, x_2420.z, x_2420.w);
            let x_2422 : vec4<f32> = u_xlat15;
            let x_2424 : vec2<f32> = (vec2<f32>(x_2422.x, x_2422.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2425 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2424.x, x_2424.y, x_2425.z, x_2425.w);
            let x_2427 : vec2<f32> = u_xlat64;
            let x_2428 : vec2<f32> = (x_2427 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2429 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2428.x, x_2428.y, x_2429.z, x_2429.w);
            let x_2431 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2431.y, x_2431.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2435 : f32 = u_xlat15.x;
            u_xlat16.z = x_2435;
            let x_2438 : f32 = u_xlat64.x;
            u_xlat16.w = x_2438;
            let x_2441 : f32 = u_xlat17.x;
            u_xlat14.z = x_2441;
            let x_2444 : f32 = u_xlat13.x;
            u_xlat14.w = x_2444;
            let x_2446 : vec4<f32> = u_xlat14;
            let x_2448 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2446.z, x_2446.w, x_2446.x, x_2446.z) + vec4<f32>(x_2448.z, x_2448.w, x_2448.x, x_2448.z));
            let x_2452 : f32 = u_xlat16.y;
            u_xlat15.z = x_2452;
            let x_2455 : f32 = u_xlat64.y;
            u_xlat15.w = x_2455;
            let x_2458 : f32 = u_xlat14.y;
            u_xlat17.z = x_2458;
            let x_2461 : f32 = u_xlat13.z;
            u_xlat17.w = x_2461;
            let x_2463 : vec4<f32> = u_xlat15;
            let x_2465 : vec4<f32> = u_xlat17;
            let x_2467 : vec3<f32> = (vec3<f32>(x_2463.z, x_2463.y, x_2463.w) + vec3<f32>(x_2465.z, x_2465.y, x_2465.w));
            let x_2468 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2467.x, x_2467.y, x_2467.z, x_2468.w);
            let x_2470 : vec4<f32> = u_xlat14;
            let x_2472 : vec4<f32> = u_xlat18;
            let x_2474 : vec3<f32> = (vec3<f32>(x_2470.x, x_2470.z, x_2470.w) / vec3<f32>(x_2472.z, x_2472.w, x_2472.y));
            let x_2475 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
            let x_2477 : vec4<f32> = u_xlat14;
            let x_2479 : vec3<f32> = (vec3<f32>(x_2477.x, x_2477.y, x_2477.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2480 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2479.x, x_2479.y, x_2479.z, x_2480.w);
            let x_2482 : vec4<f32> = u_xlat17;
            let x_2484 : vec4<f32> = u_xlat13;
            let x_2486 : vec3<f32> = (vec3<f32>(x_2482.z, x_2482.y, x_2482.w) / vec3<f32>(x_2484.x, x_2484.y, x_2484.z));
            let x_2487 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
            let x_2489 : vec4<f32> = u_xlat15;
            let x_2491 : vec3<f32> = (vec3<f32>(x_2489.x, x_2489.y, x_2489.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2492 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2491.x, x_2491.y, x_2491.z, x_2492.w);
            let x_2494 : vec4<f32> = u_xlat14;
            let x_2497 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2499 : vec3<f32> = (vec3<f32>(x_2494.y, x_2494.x, x_2494.z) * vec3<f32>(x_2497.x, x_2497.x, x_2497.x));
            let x_2500 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2499.x, x_2499.y, x_2499.z, x_2500.w);
            let x_2502 : vec4<f32> = u_xlat15;
            let x_2505 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2507 : vec3<f32> = (vec3<f32>(x_2502.x, x_2502.y, x_2502.z) * vec3<f32>(x_2505.y, x_2505.y, x_2505.y));
            let x_2508 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
            let x_2511 : f32 = u_xlat15.x;
            u_xlat14.w = x_2511;
            let x_2513 : vec4<f32> = u_xlat12;
            let x_2516 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2519 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2513.x, x_2513.y, x_2513.x, x_2513.y) * vec4<f32>(x_2516.x, x_2516.y, x_2516.x, x_2516.y)) + vec4<f32>(x_2519.y, x_2519.w, x_2519.x, x_2519.w));
            let x_2522 : vec4<f32> = u_xlat12;
            let x_2525 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2528 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2522.x, x_2522.y) * vec2<f32>(x_2525.x, x_2525.y)) + vec2<f32>(x_2528.z, x_2528.w));
            let x_2532 : f32 = u_xlat14.y;
            u_xlat15.w = x_2532;
            let x_2534 : vec4<f32> = u_xlat15;
            let x_2535 : vec2<f32> = vec2<f32>(x_2534.y, x_2534.z);
            let x_2536 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2536.x, x_2535.x, x_2536.z, x_2535.y);
            let x_2538 : vec4<f32> = u_xlat12;
            let x_2541 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2544 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2538.x, x_2538.y, x_2538.x, x_2538.y) * vec4<f32>(x_2541.x, x_2541.y, x_2541.x, x_2541.y)) + vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2544.y));
            let x_2547 : vec4<f32> = u_xlat12;
            let x_2550 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2553 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2547.x, x_2547.y, x_2547.x, x_2547.y) * vec4<f32>(x_2550.x, x_2550.y, x_2550.x, x_2550.y)) + vec4<f32>(x_2553.w, x_2553.y, x_2553.w, x_2553.z));
            let x_2556 : vec4<f32> = u_xlat12;
            let x_2559 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2562 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2556.x, x_2556.y, x_2556.x, x_2556.y) * vec4<f32>(x_2559.x, x_2559.y, x_2559.x, x_2559.y)) + vec4<f32>(x_2562.x, x_2562.w, x_2562.z, x_2562.w));
            let x_2565 : vec4<f32> = u_xlat13;
            let x_2567 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2565.x, x_2565.x, x_2565.x, x_2565.y) * vec4<f32>(x_2567.z, x_2567.w, x_2567.y, x_2567.z));
            let x_2571 : vec4<f32> = u_xlat13;
            let x_2573 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2571.y, x_2571.y, x_2571.z, x_2571.z) * x_2573);
            let x_2576 : f32 = u_xlat13.z;
            let x_2578 : f32 = u_xlat18.y;
            u_xlat87 = (x_2576 * x_2578);
            let x_2581 : vec4<f32> = u_xlat16;
            let x_2582 : vec2<f32> = vec2<f32>(x_2581.x, x_2581.y);
            let x_2584 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2582.x, x_2582.y, x_2584);
            let x_2591 : vec3<f32> = txVec34;
            let x_2593 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2591.xy, x_2591.z);
            u_xlat88 = x_2593;
            let x_2595 : vec4<f32> = u_xlat16;
            let x_2596 : vec2<f32> = vec2<f32>(x_2595.z, x_2595.w);
            let x_2598 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2596.x, x_2596.y, x_2598);
            let x_2606 : vec3<f32> = txVec35;
            let x_2608 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2606.xy, x_2606.z);
            u_xlat89 = x_2608;
            let x_2609 : f32 = u_xlat89;
            let x_2611 : f32 = u_xlat19.y;
            u_xlat89 = (x_2609 * x_2611);
            let x_2614 : f32 = u_xlat19.x;
            let x_2615 : f32 = u_xlat88;
            let x_2617 : f32 = u_xlat89;
            u_xlat88 = ((x_2614 * x_2615) + x_2617);
            let x_2620 : vec2<f32> = u_xlat64;
            let x_2622 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2620.x, x_2620.y, x_2622);
            let x_2629 : vec3<f32> = txVec36;
            let x_2631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2629.xy, x_2629.z);
            u_xlat89 = x_2631;
            let x_2633 : f32 = u_xlat19.z;
            let x_2634 : f32 = u_xlat89;
            let x_2636 : f32 = u_xlat88;
            u_xlat88 = ((x_2633 * x_2634) + x_2636);
            let x_2639 : vec4<f32> = u_xlat15;
            let x_2640 : vec2<f32> = vec2<f32>(x_2639.x, x_2639.y);
            let x_2642 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2640.x, x_2640.y, x_2642);
            let x_2649 : vec3<f32> = txVec37;
            let x_2651 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2649.xy, x_2649.z);
            u_xlat89 = x_2651;
            let x_2653 : f32 = u_xlat19.w;
            let x_2654 : f32 = u_xlat89;
            let x_2656 : f32 = u_xlat88;
            u_xlat88 = ((x_2653 * x_2654) + x_2656);
            let x_2659 : vec4<f32> = u_xlat17;
            let x_2660 : vec2<f32> = vec2<f32>(x_2659.x, x_2659.y);
            let x_2662 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2660.x, x_2660.y, x_2662);
            let x_2669 : vec3<f32> = txVec38;
            let x_2671 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2669.xy, x_2669.z);
            u_xlat89 = x_2671;
            let x_2673 : f32 = u_xlat20.x;
            let x_2674 : f32 = u_xlat89;
            let x_2676 : f32 = u_xlat88;
            u_xlat88 = ((x_2673 * x_2674) + x_2676);
            let x_2679 : vec4<f32> = u_xlat17;
            let x_2680 : vec2<f32> = vec2<f32>(x_2679.z, x_2679.w);
            let x_2682 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2680.x, x_2680.y, x_2682);
            let x_2689 : vec3<f32> = txVec39;
            let x_2691 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2689.xy, x_2689.z);
            u_xlat89 = x_2691;
            let x_2693 : f32 = u_xlat20.y;
            let x_2694 : f32 = u_xlat89;
            let x_2696 : f32 = u_xlat88;
            u_xlat88 = ((x_2693 * x_2694) + x_2696);
            let x_2699 : vec4<f32> = u_xlat15;
            let x_2700 : vec2<f32> = vec2<f32>(x_2699.z, x_2699.w);
            let x_2702 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2700.x, x_2700.y, x_2702);
            let x_2709 : vec3<f32> = txVec40;
            let x_2711 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2709.xy, x_2709.z);
            u_xlat89 = x_2711;
            let x_2713 : f32 = u_xlat20.z;
            let x_2714 : f32 = u_xlat89;
            let x_2716 : f32 = u_xlat88;
            u_xlat88 = ((x_2713 * x_2714) + x_2716);
            let x_2719 : vec4<f32> = u_xlat14;
            let x_2720 : vec2<f32> = vec2<f32>(x_2719.x, x_2719.y);
            let x_2722 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2720.x, x_2720.y, x_2722);
            let x_2729 : vec3<f32> = txVec41;
            let x_2731 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2729.xy, x_2729.z);
            u_xlat89 = x_2731;
            let x_2733 : f32 = u_xlat20.w;
            let x_2734 : f32 = u_xlat89;
            let x_2736 : f32 = u_xlat88;
            u_xlat88 = ((x_2733 * x_2734) + x_2736);
            let x_2739 : vec4<f32> = u_xlat14;
            let x_2740 : vec2<f32> = vec2<f32>(x_2739.z, x_2739.w);
            let x_2742 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2740.x, x_2740.y, x_2742);
            let x_2749 : vec3<f32> = txVec42;
            let x_2751 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2749.xy, x_2749.z);
            u_xlat89 = x_2751;
            let x_2752 : f32 = u_xlat87;
            let x_2753 : f32 = u_xlat89;
            let x_2755 : f32 = u_xlat88;
            u_xlat86 = ((x_2752 * x_2753) + x_2755);
          } else {
            let x_2758 : vec4<f32> = u_xlat11;
            let x_2761 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2764 : vec2<f32> = ((vec2<f32>(x_2758.x, x_2758.y) * vec2<f32>(x_2761.z, x_2761.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2765 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2764.x, x_2764.y, x_2765.z, x_2765.w);
            let x_2767 : vec4<f32> = u_xlat12;
            let x_2769 : vec2<f32> = floor(vec2<f32>(x_2767.x, x_2767.y));
            let x_2770 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2769.x, x_2769.y, x_2770.z, x_2770.w);
            let x_2772 : vec4<f32> = u_xlat11;
            let x_2775 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2778 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2772.x, x_2772.y) * vec2<f32>(x_2775.z, x_2775.w)) + -(vec2<f32>(x_2778.x, x_2778.y)));
            let x_2782 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2782.x, x_2782.x, x_2782.y, x_2782.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2785 : vec4<f32> = u_xlat13;
            let x_2787 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2785.x, x_2785.x, x_2785.z, x_2785.z) * vec4<f32>(x_2787.x, x_2787.x, x_2787.z, x_2787.z));
            let x_2790 : vec4<f32> = u_xlat14;
            let x_2792 : vec2<f32> = (vec2<f32>(x_2790.y, x_2790.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2793 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2793.x, x_2792.x, x_2793.z, x_2792.y);
            let x_2795 : vec4<f32> = u_xlat14;
            let x_2798 : vec2<f32> = u_xlat64;
            let x_2800 : vec2<f32> = ((vec2<f32>(x_2795.x, x_2795.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2798));
            let x_2801 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2800.x, x_2801.y, x_2800.y, x_2801.w);
            let x_2803 : vec2<f32> = u_xlat64;
            let x_2805 : vec2<f32> = (-(x_2803) + vec2<f32>(1.0f, 1.0f));
            let x_2806 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2805.x, x_2805.y, x_2806.z, x_2806.w);
            let x_2808 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2808, vec2<f32>(0.0f, 0.0f));
            let x_2810 : vec2<f32> = u_xlat66;
            let x_2812 : vec2<f32> = u_xlat66;
            let x_2814 : vec4<f32> = u_xlat14;
            let x_2816 : vec2<f32> = ((-(x_2810) * x_2812) + vec2<f32>(x_2814.x, x_2814.y));
            let x_2817 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2816.x, x_2816.y, x_2817.z, x_2817.w);
            let x_2819 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2819, vec2<f32>(0.0f, 0.0f));
            let x_2822 : vec2<f32> = u_xlat66;
            let x_2824 : vec2<f32> = u_xlat66;
            let x_2826 : vec4<f32> = u_xlat13;
            let x_2828 : vec2<f32> = ((-(x_2822) * x_2824) + vec2<f32>(x_2826.y, x_2826.w));
            let x_2829 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2828.x, x_2829.y, x_2828.y);
            let x_2831 : vec4<f32> = u_xlat14;
            let x_2833 : vec2<f32> = (vec2<f32>(x_2831.x, x_2831.y) + vec2<f32>(2.0f, 2.0f));
            let x_2834 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2833.x, x_2833.y, x_2834.z, x_2834.w);
            let x_2836 : vec3<f32> = u_xlat39;
            let x_2838 : vec2<f32> = (vec2<f32>(x_2836.x, x_2836.z) + vec2<f32>(2.0f, 2.0f));
            let x_2839 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2839.x, x_2838.x, x_2839.z, x_2838.y);
            let x_2842 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2842 * 0.08163200318813323975f);
            let x_2845 : vec4<f32> = u_xlat13;
            let x_2847 : vec3<f32> = (vec3<f32>(x_2845.z, x_2845.x, x_2845.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2848 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2847.x, x_2847.y, x_2847.z, x_2848.w);
            let x_2850 : vec4<f32> = u_xlat14;
            let x_2852 : vec2<f32> = (vec2<f32>(x_2850.x, x_2850.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2853 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2852.x, x_2852.y, x_2853.z, x_2853.w);
            let x_2856 : f32 = u_xlat17.y;
            u_xlat16.x = x_2856;
            let x_2858 : vec2<f32> = u_xlat64;
            let x_2861 : vec2<f32> = ((vec2<f32>(x_2858.x, x_2858.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2862 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2862.x, x_2861.x, x_2862.z, x_2861.y);
            let x_2864 : vec2<f32> = u_xlat64;
            let x_2867 : vec2<f32> = ((vec2<f32>(x_2864.x, x_2864.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2868 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2867.x, x_2868.y, x_2867.y, x_2868.w);
            let x_2871 : f32 = u_xlat13.x;
            u_xlat14.y = x_2871;
            let x_2874 : f32 = u_xlat15.y;
            u_xlat14.w = x_2874;
            let x_2876 : vec4<f32> = u_xlat14;
            let x_2877 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2876 + x_2877);
            let x_2879 : vec2<f32> = u_xlat64;
            let x_2882 : vec2<f32> = ((vec2<f32>(x_2879.y, x_2879.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2883 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2883.x, x_2882.x, x_2883.z, x_2882.y);
            let x_2885 : vec2<f32> = u_xlat64;
            let x_2888 : vec2<f32> = ((vec2<f32>(x_2885.y, x_2885.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2889 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2888.x, x_2889.y, x_2888.y, x_2889.w);
            let x_2892 : f32 = u_xlat13.y;
            u_xlat15.y = x_2892;
            let x_2894 : vec4<f32> = u_xlat15;
            let x_2895 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2894 + x_2895);
            let x_2897 : vec4<f32> = u_xlat14;
            let x_2898 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2897 / x_2898);
            let x_2900 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2900 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2902 : vec4<f32> = u_xlat15;
            let x_2903 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2902 / x_2903);
            let x_2905 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2905 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2907 : vec4<f32> = u_xlat14;
            let x_2910 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2907.w, x_2907.x, x_2907.y, x_2907.z) * vec4<f32>(x_2910.x, x_2910.x, x_2910.x, x_2910.x));
            let x_2913 : vec4<f32> = u_xlat15;
            let x_2916 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2913.x, x_2913.w, x_2913.y, x_2913.z) * vec4<f32>(x_2916.y, x_2916.y, x_2916.y, x_2916.y));
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2920 : vec3<f32> = vec3<f32>(x_2919.y, x_2919.z, x_2919.w);
            let x_2921 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2920.x, x_2921.y, x_2920.y, x_2920.z);
            let x_2924 : f32 = u_xlat15.x;
            u_xlat17.y = x_2924;
            let x_2926 : vec4<f32> = u_xlat12;
            let x_2929 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2932 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2926.x, x_2926.y, x_2926.x, x_2926.y) * vec4<f32>(x_2929.x, x_2929.y, x_2929.x, x_2929.y)) + vec4<f32>(x_2932.x, x_2932.y, x_2932.z, x_2932.y));
            let x_2935 : vec4<f32> = u_xlat12;
            let x_2938 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2941 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2935.x, x_2935.y) * vec2<f32>(x_2938.x, x_2938.y)) + vec2<f32>(x_2941.w, x_2941.y));
            let x_2945 : f32 = u_xlat17.y;
            u_xlat14.y = x_2945;
            let x_2948 : f32 = u_xlat15.z;
            u_xlat17.y = x_2948;
            let x_2950 : vec4<f32> = u_xlat12;
            let x_2953 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2956 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_2950.x, x_2950.y, x_2950.x, x_2950.y) * vec4<f32>(x_2953.x, x_2953.y, x_2953.x, x_2953.y)) + vec4<f32>(x_2956.x, x_2956.y, x_2956.z, x_2956.y));
            let x_2959 : vec4<f32> = u_xlat12;
            let x_2962 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2965 : vec4<f32> = u_xlat17;
            let x_2967 : vec2<f32> = ((vec2<f32>(x_2959.x, x_2959.y) * vec2<f32>(x_2962.x, x_2962.y)) + vec2<f32>(x_2965.w, x_2965.y));
            let x_2968 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2971 : f32 = u_xlat17.y;
            u_xlat14.z = x_2971;
            let x_2974 : vec4<f32> = u_xlat12;
            let x_2977 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2980 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_2974.x, x_2974.y, x_2974.x, x_2974.y) * vec4<f32>(x_2977.x, x_2977.y, x_2977.x, x_2977.y)) + vec4<f32>(x_2980.x, x_2980.y, x_2980.x, x_2980.z));
            let x_2984 : f32 = u_xlat15.w;
            u_xlat17.y = x_2984;
            let x_2987 : vec4<f32> = u_xlat12;
            let x_2990 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_2993 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_2987.x, x_2987.y, x_2987.x, x_2987.y) * vec4<f32>(x_2990.x, x_2990.y, x_2990.x, x_2990.y)) + vec4<f32>(x_2993.x, x_2993.y, x_2993.z, x_2993.y));
            let x_2997 : vec4<f32> = u_xlat12;
            let x_3000 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_3003 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_2997.x, x_2997.y) * vec2<f32>(x_3000.x, x_3000.y)) + vec2<f32>(x_3003.w, x_3003.y));
            let x_3007 : f32 = u_xlat17.y;
            u_xlat14.w = x_3007;
            let x_3010 : vec4<f32> = u_xlat12;
            let x_3013 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_3016 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3010.x, x_3010.y) * vec2<f32>(x_3013.x, x_3013.y)) + vec2<f32>(x_3016.x, x_3016.w));
            let x_3019 : vec4<f32> = u_xlat17;
            let x_3020 : vec3<f32> = vec3<f32>(x_3019.x, x_3019.z, x_3019.w);
            let x_3021 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3020.x, x_3021.y, x_3020.y, x_3020.z);
            let x_3023 : vec4<f32> = u_xlat12;
            let x_3026 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_3029 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3023.x, x_3023.y, x_3023.x, x_3023.y) * vec4<f32>(x_3026.x, x_3026.y, x_3026.x, x_3026.y)) + vec4<f32>(x_3029.x, x_3029.y, x_3029.z, x_3029.y));
            let x_3033 : vec4<f32> = u_xlat12;
            let x_3036 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_3039 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3033.x, x_3033.y) * vec2<f32>(x_3036.x, x_3036.y)) + vec2<f32>(x_3039.w, x_3039.y));
            let x_3043 : f32 = u_xlat14.x;
            u_xlat15.x = x_3043;
            let x_3045 : vec4<f32> = u_xlat12;
            let x_3048 : vec4<f32> = x_383.x_AdditionalShadowmapSize;
            let x_3051 : vec4<f32> = u_xlat15;
            let x_3053 : vec2<f32> = ((vec2<f32>(x_3045.x, x_3045.y) * vec2<f32>(x_3048.x, x_3048.y)) + vec2<f32>(x_3051.x, x_3051.y));
            let x_3054 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3053.x, x_3053.y, x_3054.z, x_3054.w);
            let x_3057 : vec4<f32> = u_xlat13;
            let x_3059 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3057.x, x_3057.x, x_3057.x, x_3057.x) * x_3059);
            let x_3062 : vec4<f32> = u_xlat13;
            let x_3064 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3062.y, x_3062.y, x_3062.y, x_3062.y) * x_3064);
            let x_3067 : vec4<f32> = u_xlat13;
            let x_3069 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3067.z, x_3067.z, x_3067.z, x_3067.z) * x_3069);
            let x_3071 : vec4<f32> = u_xlat13;
            let x_3073 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3071.w, x_3071.w, x_3071.w, x_3071.w) * x_3073);
            let x_3076 : vec4<f32> = u_xlat18;
            let x_3077 : vec2<f32> = vec2<f32>(x_3076.x, x_3076.y);
            let x_3079 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
            let x_3086 : vec3<f32> = txVec43;
            let x_3088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3086.xy, x_3086.z);
            u_xlat87 = x_3088;
            let x_3090 : vec4<f32> = u_xlat18;
            let x_3091 : vec2<f32> = vec2<f32>(x_3090.z, x_3090.w);
            let x_3093 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3091.x, x_3091.y, x_3093);
            let x_3100 : vec3<f32> = txVec44;
            let x_3102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3100.xy, x_3100.z);
            u_xlat88 = x_3102;
            let x_3103 : f32 = u_xlat88;
            let x_3105 : f32 = u_xlat23.y;
            u_xlat88 = (x_3103 * x_3105);
            let x_3108 : f32 = u_xlat23.x;
            let x_3109 : f32 = u_xlat87;
            let x_3111 : f32 = u_xlat88;
            u_xlat87 = ((x_3108 * x_3109) + x_3111);
            let x_3114 : vec2<f32> = u_xlat64;
            let x_3116 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3114.x, x_3114.y, x_3116);
            let x_3123 : vec3<f32> = txVec45;
            let x_3125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3123.xy, x_3123.z);
            u_xlat88 = x_3125;
            let x_3127 : f32 = u_xlat23.z;
            let x_3128 : f32 = u_xlat88;
            let x_3130 : f32 = u_xlat87;
            u_xlat87 = ((x_3127 * x_3128) + x_3130);
            let x_3133 : vec4<f32> = u_xlat21;
            let x_3134 : vec2<f32> = vec2<f32>(x_3133.x, x_3133.y);
            let x_3136 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3134.x, x_3134.y, x_3136);
            let x_3143 : vec3<f32> = txVec46;
            let x_3145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3143.xy, x_3143.z);
            u_xlat88 = x_3145;
            let x_3147 : f32 = u_xlat23.w;
            let x_3148 : f32 = u_xlat88;
            let x_3150 : f32 = u_xlat87;
            u_xlat87 = ((x_3147 * x_3148) + x_3150);
            let x_3153 : vec4<f32> = u_xlat19;
            let x_3154 : vec2<f32> = vec2<f32>(x_3153.x, x_3153.y);
            let x_3156 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec47;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat88 = x_3165;
            let x_3167 : f32 = u_xlat24.x;
            let x_3168 : f32 = u_xlat88;
            let x_3170 : f32 = u_xlat87;
            u_xlat87 = ((x_3167 * x_3168) + x_3170);
            let x_3173 : vec4<f32> = u_xlat19;
            let x_3174 : vec2<f32> = vec2<f32>(x_3173.z, x_3173.w);
            let x_3176 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3174.x, x_3174.y, x_3176);
            let x_3183 : vec3<f32> = txVec48;
            let x_3185 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3183.xy, x_3183.z);
            u_xlat88 = x_3185;
            let x_3187 : f32 = u_xlat24.y;
            let x_3188 : f32 = u_xlat88;
            let x_3190 : f32 = u_xlat87;
            u_xlat87 = ((x_3187 * x_3188) + x_3190);
            let x_3193 : vec4<f32> = u_xlat20;
            let x_3194 : vec2<f32> = vec2<f32>(x_3193.x, x_3193.y);
            let x_3196 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3194.x, x_3194.y, x_3196);
            let x_3203 : vec3<f32> = txVec49;
            let x_3205 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3203.xy, x_3203.z);
            u_xlat88 = x_3205;
            let x_3207 : f32 = u_xlat24.z;
            let x_3208 : f32 = u_xlat88;
            let x_3210 : f32 = u_xlat87;
            u_xlat87 = ((x_3207 * x_3208) + x_3210);
            let x_3213 : vec4<f32> = u_xlat21;
            let x_3214 : vec2<f32> = vec2<f32>(x_3213.z, x_3213.w);
            let x_3216 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3214.x, x_3214.y, x_3216);
            let x_3223 : vec3<f32> = txVec50;
            let x_3225 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3223.xy, x_3223.z);
            u_xlat88 = x_3225;
            let x_3227 : f32 = u_xlat24.w;
            let x_3228 : f32 = u_xlat88;
            let x_3230 : f32 = u_xlat87;
            u_xlat87 = ((x_3227 * x_3228) + x_3230);
            let x_3233 : vec4<f32> = u_xlat22;
            let x_3234 : vec2<f32> = vec2<f32>(x_3233.x, x_3233.y);
            let x_3236 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3234.x, x_3234.y, x_3236);
            let x_3243 : vec3<f32> = txVec51;
            let x_3245 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3243.xy, x_3243.z);
            u_xlat88 = x_3245;
            let x_3247 : f32 = u_xlat25.x;
            let x_3248 : f32 = u_xlat88;
            let x_3250 : f32 = u_xlat87;
            u_xlat87 = ((x_3247 * x_3248) + x_3250);
            let x_3253 : vec4<f32> = u_xlat22;
            let x_3254 : vec2<f32> = vec2<f32>(x_3253.z, x_3253.w);
            let x_3256 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3254.x, x_3254.y, x_3256);
            let x_3263 : vec3<f32> = txVec52;
            let x_3265 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3263.xy, x_3263.z);
            u_xlat88 = x_3265;
            let x_3267 : f32 = u_xlat25.y;
            let x_3268 : f32 = u_xlat88;
            let x_3270 : f32 = u_xlat87;
            u_xlat87 = ((x_3267 * x_3268) + x_3270);
            let x_3273 : vec2<f32> = u_xlat40;
            let x_3275 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
            let x_3282 : vec3<f32> = txVec53;
            let x_3284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
            u_xlat88 = x_3284;
            let x_3286 : f32 = u_xlat25.z;
            let x_3287 : f32 = u_xlat88;
            let x_3289 : f32 = u_xlat87;
            u_xlat87 = ((x_3286 * x_3287) + x_3289);
            let x_3292 : vec2<f32> = u_xlat72;
            let x_3294 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec54;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat88 = x_3303;
            let x_3305 : f32 = u_xlat25.w;
            let x_3306 : f32 = u_xlat88;
            let x_3308 : f32 = u_xlat87;
            u_xlat87 = ((x_3305 * x_3306) + x_3308);
            let x_3311 : vec4<f32> = u_xlat17;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.x, x_3311.y);
            let x_3314 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec55;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat88 = x_3323;
            let x_3325 : f32 = u_xlat13.x;
            let x_3326 : f32 = u_xlat88;
            let x_3328 : f32 = u_xlat87;
            u_xlat87 = ((x_3325 * x_3326) + x_3328);
            let x_3331 : vec4<f32> = u_xlat17;
            let x_3332 : vec2<f32> = vec2<f32>(x_3331.z, x_3331.w);
            let x_3334 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec56;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat88 = x_3343;
            let x_3345 : f32 = u_xlat13.y;
            let x_3346 : f32 = u_xlat88;
            let x_3348 : f32 = u_xlat87;
            u_xlat87 = ((x_3345 * x_3346) + x_3348);
            let x_3351 : vec2<f32> = u_xlat67;
            let x_3353 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3351.x, x_3351.y, x_3353);
            let x_3360 : vec3<f32> = txVec57;
            let x_3362 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3360.xy, x_3360.z);
            u_xlat88 = x_3362;
            let x_3364 : f32 = u_xlat13.z;
            let x_3365 : f32 = u_xlat88;
            let x_3367 : f32 = u_xlat87;
            u_xlat87 = ((x_3364 * x_3365) + x_3367);
            let x_3370 : vec4<f32> = u_xlat12;
            let x_3371 : vec2<f32> = vec2<f32>(x_3370.x, x_3370.y);
            let x_3373 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3371.x, x_3371.y, x_3373);
            let x_3380 : vec3<f32> = txVec58;
            let x_3382 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3380.xy, x_3380.z);
            u_xlat88 = x_3382;
            let x_3384 : f32 = u_xlat13.w;
            let x_3385 : f32 = u_xlat88;
            let x_3387 : f32 = u_xlat87;
            u_xlat86 = ((x_3384 * x_3385) + x_3387);
          }
        }
      } else {
        let x_3391 : vec4<f32> = u_xlat11;
        let x_3392 : vec2<f32> = vec2<f32>(x_3391.x, x_3391.y);
        let x_3394 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3392.x, x_3392.y, x_3394);
        let x_3401 : vec3<f32> = txVec59;
        let x_3403 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3401.xy, x_3401.z);
        u_xlat86 = x_3403;
      }
      let x_3404 : i32 = u_xlati57;
      let x_3406 : f32 = x_383.x_AdditionalShadowParams[x_3404].x;
      u_xlat87 = (1.0f + -(x_3406));
      let x_3409 : f32 = u_xlat86;
      let x_3410 : i32 = u_xlati57;
      let x_3412 : f32 = x_383.x_AdditionalShadowParams[x_3410].x;
      let x_3414 : f32 = u_xlat87;
      u_xlat86 = ((x_3409 * x_3412) + x_3414);
      let x_3417 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3417);
      let x_3421 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3421 >= 1.0f);
      let x_3423 : bool = u_xlatb87;
      let x_3424 : bool = u_xlatb88;
      u_xlatb87 = (x_3423 | x_3424);
      let x_3426 : bool = u_xlatb87;
      let x_3427 : f32 = u_xlat86;
      u_xlat86 = select(x_3427, 1.0f, x_3426);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3430 : f32 = u_xlat86;
    u_xlat87 = (-(x_3430) + 1.0f);
    let x_3433 : f32 = u_xlat81;
    let x_3434 : f32 = u_xlat87;
    let x_3436 : f32 = u_xlat86;
    u_xlat86 = ((x_3433 * x_3434) + x_3436);
    let x_3438 : f32 = u_xlat83;
    let x_3439 : f32 = u_xlat86;
    u_xlat83 = (x_3438 * x_3439);
    let x_3441 : vec4<f32> = u_xlat3;
    let x_3443 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3441.x, x_3441.y, x_3441.z), vec3<f32>(x_3443.x, x_3443.y, x_3443.z));
    let x_3446 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3446, 0.0f, 1.0f);
    let x_3448 : f32 = u_xlat83;
    let x_3449 : f32 = u_xlat86;
    u_xlat83 = (x_3448 * x_3449);
    let x_3451 : f32 = u_xlat83;
    let x_3453 : i32 = u_xlati57;
    let x_3455 : vec4<f32> = x_2015.x_AdditionalLightsColor[x_3453];
    let x_3457 : vec3<f32> = (vec3<f32>(x_3451, x_3451, x_3451) * vec3<f32>(x_3455.x, x_3455.y, x_3455.z));
    let x_3458 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3457.x, x_3457.y, x_3457.z, x_3458.w);
    let x_3460 : vec4<f32> = u_xlat9;
    let x_3462 : f32 = u_xlat84;
    let x_3465 : vec3<f32> = u_xlat2;
    let x_3466 : vec3<f32> = ((vec3<f32>(x_3460.x, x_3460.y, x_3460.z) * vec3<f32>(x_3462, x_3462, x_3462)) + x_3465);
    let x_3467 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3466.x, x_3466.y, x_3466.z, x_3467.w);
    let x_3469 : vec4<f32> = u_xlat9;
    let x_3471 : vec4<f32> = u_xlat9;
    u_xlat57.x = dot(vec3<f32>(x_3469.x, x_3469.y, x_3469.z), vec3<f32>(x_3471.x, x_3471.y, x_3471.z));
    let x_3476 : f32 = u_xlat57.x;
    u_xlat57.x = max(x_3476, 1.17549435e-38f);
    let x_3480 : f32 = u_xlat57.x;
    u_xlat57.x = inverseSqrt(x_3480);
    let x_3483 : vec2<f32> = u_xlat57;
    let x_3485 : vec4<f32> = u_xlat9;
    let x_3487 : vec3<f32> = (vec3<f32>(x_3483.x, x_3483.x, x_3483.x) * vec3<f32>(x_3485.x, x_3485.y, x_3485.z));
    let x_3488 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3487.x, x_3487.y, x_3487.z, x_3488.w);
    let x_3490 : vec4<f32> = u_xlat3;
    let x_3492 : vec4<f32> = u_xlat9;
    u_xlat57.x = dot(vec3<f32>(x_3490.x, x_3490.y, x_3490.z), vec3<f32>(x_3492.x, x_3492.y, x_3492.z));
    let x_3497 : f32 = u_xlat57.x;
    u_xlat57.x = clamp(x_3497, 0.0f, 1.0f);
    let x_3500 : vec4<f32> = u_xlat10;
    let x_3502 : vec4<f32> = u_xlat9;
    u_xlat57.y = dot(vec3<f32>(x_3500.x, x_3500.y, x_3500.z), vec3<f32>(x_3502.x, x_3502.y, x_3502.z));
    let x_3507 : f32 = u_xlat57.y;
    u_xlat57.y = clamp(x_3507, 0.0f, 1.0f);
    let x_3510 : vec2<f32> = u_xlat57;
    let x_3511 : vec2<f32> = u_xlat57;
    u_xlat57 = (x_3510 * x_3511);
    let x_3514 : f32 = u_xlat57.x;
    let x_3516 : f32 = u_xlat7.x;
    u_xlat57.x = ((x_3514 * x_3516) + 1.00001001358032226562f);
    let x_3521 : f32 = u_xlat57.x;
    let x_3523 : f32 = u_xlat57.x;
    u_xlat57.x = (x_3521 * x_3523);
    let x_3527 : f32 = u_xlat57.y;
    u_xlat83 = max(x_3527, 0.10000000149011611938f);
    let x_3529 : f32 = u_xlat83;
    let x_3531 : f32 = u_xlat57.x;
    u_xlat57.x = (x_3529 * x_3531);
    let x_3534 : f32 = u_xlat31;
    let x_3536 : f32 = u_xlat57.x;
    u_xlat57.x = (x_3534 * x_3536);
    let x_3540 : f32 = u_xlat5.x;
    let x_3542 : f32 = u_xlat57.x;
    u_xlat57.x = (x_3540 / x_3542);
    let x_3545 : vec4<f32> = u_xlat0;
    let x_3547 : vec2<f32> = u_xlat57;
    let x_3550 : vec3<f32> = u_xlat27;
    let x_3551 : vec3<f32> = ((vec3<f32>(x_3545.x, x_3545.y, x_3545.z) * vec3<f32>(x_3547.x, x_3547.x, x_3547.x)) + x_3550);
    let x_3552 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3551.x, x_3551.y, x_3551.z, x_3552.w);
    let x_3554 : vec4<f32> = u_xlat9;
    let x_3556 : vec4<f32> = u_xlat11;
    let x_3559 : vec4<f32> = u_xlat8;
    let x_3561 : vec3<f32> = ((vec3<f32>(x_3554.x, x_3554.y, x_3554.z) * vec3<f32>(x_3556.x, x_3556.y, x_3556.z)) + vec3<f32>(x_3559.x, x_3559.y, x_3559.z));
    let x_3562 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3561.x, x_3561.y, x_3561.z, x_3562.w);

    continuing {
      let x_3564 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3564 + bitcast<u32>(1i));
    }
  }
  let x_3566 : vec3<f32> = u_xlat33;
  let x_3567 : vec4<f32> = u_xlat6;
  let x_3570 : vec3<f32> = u_xlat4;
  let x_3571 : vec3<f32> = ((x_3566 * vec3<f32>(x_3567.x, x_3567.y, x_3567.z)) + x_3570);
  let x_3572 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3571.x, x_3571.y, x_3571.z, x_3572.w);
  let x_3574 : vec4<f32> = u_xlat8;
  let x_3576 : vec4<f32> = u_xlat0;
  let x_3578 : vec3<f32> = (vec3<f32>(x_3574.x, x_3574.y, x_3574.z) + vec3<f32>(x_3576.x, x_3576.y, x_3576.z));
  let x_3579 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3578.x, x_3578.y, x_3578.z, x_3579.w);
  let x_3581 : f32 = u_xlat78;
  let x_3582 : f32 = u_xlat78;
  u_xlat78 = (x_3581 * -(x_3582));
  let x_3585 : f32 = u_xlat78;
  u_xlat78 = exp2(x_3585);
  let x_3587 : vec4<f32> = u_xlat0;
  let x_3590 : vec4<f32> = x_45.unity_FogColor;
  let x_3593 : vec3<f32> = (vec3<f32>(x_3587.x, x_3587.y, x_3587.z) + -(vec3<f32>(x_3590.x, x_3590.y, x_3590.z)));
  let x_3594 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3593.x, x_3593.y, x_3593.z, x_3594.w);
  let x_3598 : f32 = u_xlat78;
  let x_3600 : vec4<f32> = u_xlat0;
  let x_3604 : vec4<f32> = x_45.unity_FogColor;
  let x_3606 : vec3<f32> = ((vec3<f32>(x_3598, x_3598, x_3598) * vec3<f32>(x_3600.x, x_3600.y, x_3600.z)) + vec3<f32>(x_3604.x, x_3604.y, x_3604.z));
  let x_3607 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3606.x, x_3606.y, x_3606.z, x_3607.w);
  let x_3611 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_3611 == 1.0f);
  let x_3613 : bool = u_xlatb0;
  if (x_3613) {
    let x_3618 : f32 = u_xlat1.x;
    x_3614 = x_3618;
  } else {
    x_3614 = 1.0f;
  }
  let x_3620 : f32 = x_3614;
  SV_Target0.w = x_3620;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


