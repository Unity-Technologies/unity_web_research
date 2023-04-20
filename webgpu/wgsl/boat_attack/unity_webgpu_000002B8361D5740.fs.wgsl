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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_96 : UnityPerDraw;

var<private> u_xlatb78 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_193 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlatb32 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatb58 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : bool;

var<private> u_xlat30 : f32;

var<private> u_xlat56 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatu8 : u32;

var<private> u_xlati34 : i32;

var<private> u_xlati8 : i32;

@group(1) @binding(1) var<uniform> x_2161 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati61 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb61 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

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

var<private> u_xlatb8 : bool;

var<private> u_xlatu30 : u32;

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
  var x_1838 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2322 : f32;
  var x_2332 : f32;
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
  var x_3603 : f32;
  var x_3804 : f32;
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
    let x_172 : vec3<f32> = u_xlat3;
    x_167 = x_172;
  }
  let x_173 : vec3<f32> = x_167;
  u_xlat2 = x_173;
  let x_175 : vec3<f32> = vs_TEXCOORD2;
  let x_176 : vec3<f32> = vs_TEXCOORD2;
  u_xlat78 = dot(x_175, x_176);
  let x_178 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_178);
  let x_180 : f32 = u_xlat78;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_180, x_180, x_180) * x_182);
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_195 : vec4<f32> = x_193.x_CascadeShadowSplitSpheres0;
  let x_198 : vec3<f32> = (x_185 + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec3<f32> = vs_TEXCOORD1;
  let x_204 : vec4<f32> = x_193.x_CascadeShadowSplitSpheres1;
  let x_207 : vec3<f32> = (x_202 + -(vec3<f32>(x_204.x, x_204.y, x_204.z)));
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec3<f32> = vs_TEXCOORD1;
  let x_214 : vec4<f32> = x_193.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_211 + -(vec3<f32>(x_214.x, x_214.y, x_214.z)));
  let x_219 : vec3<f32> = vs_TEXCOORD1;
  let x_221 : vec4<f32> = x_193.x_CascadeShadowSplitSpheres3;
  let x_224 : vec3<f32> = (x_219 + -(vec3<f32>(x_221.x, x_221.y, x_221.z)));
  let x_225 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat4;
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec4<f32> = u_xlat5;
  let x_235 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec3<f32> = u_xlat6;
  let x_240 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_239, x_240);
  let x_243 : vec4<f32> = u_xlat7;
  let x_245 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_252 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = x_193.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_252 < x_255);
  let x_258 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_258);
  let x_262 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_262);
  let x_266 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_266);
  let x_270 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_270);
  let x_274 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_274);
  let x_280 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_280);
  let x_284 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_284);
  let x_287 : vec4<f32> = u_xlat4;
  let x_289 : vec4<f32> = u_xlat5;
  let x_291 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + vec3<f32>(x_289.y, x_289.z, x_289.w));
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat4;
  let x_297 : vec3<f32> = max(vec3<f32>(x_294.x, x_294.y, x_294.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_298.x, x_297.x, x_297.y, x_297.z);
  let x_300 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_300, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_306 : f32 = u_xlat78;
  u_xlat78 = (-(x_306) + 4.0f);
  let x_311 : f32 = u_xlat78;
  u_xlatu78 = u32(x_311);
  let x_315 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_315) << bitcast<u32>(2i));
  let x_318 : vec3<f32> = vs_TEXCOORD1;
  let x_320 : i32 = u_xlati78;
  let x_323 : i32 = u_xlati78;
  let x_327 : vec4<f32> = x_193.x_MainLightWorldToShadow[((x_320 + 1i) / 4i)][((x_323 + 1i) % 4i)];
  let x_329 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : i32 = u_xlati78;
  let x_334 : i32 = u_xlati78;
  let x_337 : vec4<f32> = x_193.x_MainLightWorldToShadow[(x_332 / 4i)][(x_334 % 4i)];
  let x_339 : vec3<f32> = vs_TEXCOORD1;
  let x_342 : vec4<f32> = u_xlat4;
  let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.x, x_339.x)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : i32 = u_xlati78;
  let x_350 : i32 = u_xlati78;
  let x_354 : vec4<f32> = x_193.x_MainLightWorldToShadow[((x_347 + 2i) / 4i)][((x_350 + 2i) % 4i)];
  let x_356 : vec3<f32> = vs_TEXCOORD1;
  let x_359 : vec4<f32> = u_xlat4;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.z, x_356.z, x_356.z)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat4;
  let x_366 : i32 = u_xlati78;
  let x_369 : i32 = u_xlati78;
  let x_373 : vec4<f32> = x_193.x_MainLightWorldToShadow[((x_366 + 3i) / 4i)][((x_369 + 3i) % 4i)];
  let x_375 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) + vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_379 : f32 = vs_TEXCOORD1.y;
  let x_381 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat78 = (x_379 * x_381);
  let x_384 : f32 = x_45.unity_MatrixV[0i].z;
  let x_386 : f32 = vs_TEXCOORD1.x;
  let x_388 : f32 = u_xlat78;
  u_xlat78 = ((x_384 * x_386) + x_388);
  let x_391 : f32 = x_45.unity_MatrixV[2i].z;
  let x_393 : f32 = vs_TEXCOORD1.z;
  let x_395 : f32 = u_xlat78;
  u_xlat78 = ((x_391 * x_393) + x_395);
  let x_397 : f32 = u_xlat78;
  let x_399 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat78 = (x_397 + x_399);
  let x_401 : f32 = u_xlat78;
  let x_404 : f32 = x_45.x_ProjectionParams.y;
  u_xlat78 = (-(x_401) + -(x_404));
  let x_407 : f32 = u_xlat78;
  u_xlat78 = max(x_407, 0.0f);
  let x_409 : f32 = u_xlat78;
  let x_412 : f32 = x_45.unity_FogParams.x;
  u_xlat78 = (x_409 * x_412);
  let x_420 : vec2<f32> = vs_TEXCOORD8;
  let x_422 : f32 = x_45.x_GlobalMipBias.x;
  let x_423 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_420, x_422);
  u_xlat5 = x_423;
  let x_428 : vec2<f32> = vs_TEXCOORD8;
  let x_430 : f32 = x_45.x_GlobalMipBias.x;
  let x_431 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_428, x_430);
  u_xlat6 = vec3<f32>(x_431.x, x_431.y, x_431.z);
  let x_433 : vec4<f32> = u_xlat5;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec3<f32> = u_xlat3;
  let x_441 : vec4<f32> = u_xlat5;
  u_xlat80 = dot(x_440, vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : f32 = u_xlat80;
  u_xlat80 = (x_444 + 0.5f);
  let x_447 : f32 = u_xlat80;
  let x_449 : vec3<f32> = u_xlat6;
  let x_450 : vec3<f32> = (vec3<f32>(x_447, x_447, x_447) * x_449);
  let x_451 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = u_xlat5.w;
  u_xlat80 = max(x_454, 0.00009999999747378752f);
  let x_457 : vec4<f32> = u_xlat5;
  let x_459 : f32 = u_xlat80;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.x, x_457.y, x_457.z) / vec3<f32>(x_459, x_459, x_459));
  let x_462 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_465 : f32 = x_58.x_Metallic;
  u_xlat80 = ((-(x_465) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_471 : f32 = u_xlat80;
  let x_474 : f32 = x_58.x_Smoothness;
  u_xlat81 = (-(x_471) + x_474);
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : f32 = u_xlat80;
  u_xlat27 = (vec3<f32>(x_477.y, x_477.z, x_477.w) * vec3<f32>(x_479, x_479, x_479));
  let x_482 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = x_58.x_BaseColor;
  let x_490 : vec3<f32> = ((vec3<f32>(x_482.x, x_482.y, x_482.z) * vec3<f32>(x_485.x, x_485.y, x_485.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_494 : f32 = x_58.x_Metallic;
  let x_496 : f32 = x_58.x_Metallic;
  let x_498 : f32 = x_58.x_Metallic;
  let x_499 : vec3<f32> = vec3<f32>(x_494, x_496, x_498);
  let x_504 : vec4<f32> = u_xlat0;
  let x_509 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_504.x, x_504.y, x_504.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_510 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_513 : f32 = x_58.x_Smoothness;
  u_xlat80 = (-(x_513) + 1.0f);
  let x_517 : f32 = u_xlat80;
  let x_518 : f32 = u_xlat80;
  u_xlat82 = (x_517 * x_518);
  let x_520 : f32 = u_xlat82;
  u_xlat82 = max(x_520, 0.0078125f);
  let x_524 : f32 = u_xlat82;
  let x_525 : f32 = u_xlat82;
  u_xlat83 = (x_524 * x_525);
  let x_527 : f32 = u_xlat81;
  u_xlat81 = (x_527 + 1.0f);
  let x_529 : f32 = u_xlat81;
  u_xlat81 = clamp(x_529, 0.0f, 1.0f);
  let x_531 : f32 = u_xlat82;
  u_xlat6.x = ((x_531 * 4.0f) + 2.0f);
  let x_538 : f32 = x_193.x_MainLightShadowParams.y;
  u_xlatb32 = (0.0f < x_538);
  let x_540 : bool = u_xlatb32;
  if (x_540) {
    let x_544 : f32 = x_193.x_MainLightShadowParams.y;
    u_xlatb32 = (x_544 == 1.0f);
    let x_546 : bool = u_xlatb32;
    if (x_546) {
      let x_549 : vec4<f32> = u_xlat4;
      let x_552 : vec4<f32> = x_193.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y) + x_552);
      let x_555 : vec4<f32> = u_xlat7;
      let x_556 : vec2<f32> = vec2<f32>(x_555.x, x_555.y);
      let x_558 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_556.x, x_556.y, x_558);
      let x_571 : vec3<f32> = txVec0;
      let x_573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_571.xy, x_571.z);
      u_xlat8.x = x_573;
      let x_576 : vec4<f32> = u_xlat7;
      let x_577 : vec2<f32> = vec2<f32>(x_576.z, x_576.w);
      let x_579 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_577.x, x_577.y, x_579);
      let x_586 : vec3<f32> = txVec1;
      let x_588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_586.xy, x_586.z);
      u_xlat8.y = x_588;
      let x_590 : vec4<f32> = u_xlat4;
      let x_593 : vec4<f32> = x_193.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_590.x, x_590.y, x_590.x, x_590.y) + x_593);
      let x_596 : vec4<f32> = u_xlat7;
      let x_597 : vec2<f32> = vec2<f32>(x_596.x, x_596.y);
      let x_599 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_597.x, x_597.y, x_599);
      let x_606 : vec3<f32> = txVec2;
      let x_608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_606.xy, x_606.z);
      u_xlat8.z = x_608;
      let x_611 : vec4<f32> = u_xlat7;
      let x_612 : vec2<f32> = vec2<f32>(x_611.z, x_611.w);
      let x_614 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_612.x, x_612.y, x_614);
      let x_621 : vec3<f32> = txVec3;
      let x_623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_621.xy, x_621.z);
      u_xlat8.w = x_623;
      let x_626 : vec4<f32> = u_xlat8;
      u_xlat32.x = dot(x_626, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_634 : f32 = x_193.x_MainLightShadowParams.y;
      u_xlatb58 = (x_634 == 2.0f);
      let x_636 : bool = u_xlatb58;
      if (x_636) {
        let x_641 : vec4<f32> = u_xlat4;
        let x_644 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_641.x, x_641.y) * vec2<f32>(x_644.z, x_644.w)) + vec2<f32>(0.5f, 0.5f));
        let x_649 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_649);
        let x_651 : vec4<f32> = u_xlat4;
        let x_654 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_657 : vec2<f32> = u_xlat58;
        let x_659 : vec2<f32> = ((vec2<f32>(x_651.x, x_651.y) * vec2<f32>(x_654.z, x_654.w)) + -(x_657));
        let x_660 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_662 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_662.x, x_662.x, x_662.y, x_662.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_667 : vec4<f32> = u_xlat8;
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_667.x, x_667.x, x_667.z, x_667.z) * vec4<f32>(x_669.x, x_669.x, x_669.z, x_669.z));
        let x_673 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_673.y, x_673.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_678 : vec4<f32> = u_xlat9;
        let x_681 : vec4<f32> = u_xlat7;
        let x_684 : vec2<f32> = ((vec2<f32>(x_678.x, x_678.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_681.x, x_681.y)));
        let x_685 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_684.x, x_685.y, x_684.y, x_685.w);
        let x_687 : vec4<f32> = u_xlat7;
        let x_691 : vec2<f32> = (-(vec2<f32>(x_687.x, x_687.y)) + vec2<f32>(1.0f, 1.0f));
        let x_692 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_695 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_695.x, x_695.y), vec2<f32>(0.0f, 0.0f));
        let x_699 : vec2<f32> = u_xlat61;
        let x_701 : vec2<f32> = u_xlat61;
        let x_703 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_699) * x_701) + vec2<f32>(x_703.x, x_703.y));
        let x_706 : vec4<f32> = u_xlat7;
        let x_708 : vec2<f32> = max(vec2<f32>(x_706.x, x_706.y), vec2<f32>(0.0f, 0.0f));
        let x_709 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
        let x_711 : vec4<f32> = u_xlat7;
        let x_714 : vec4<f32> = u_xlat7;
        let x_717 : vec4<f32> = u_xlat8;
        let x_719 : vec2<f32> = ((-(vec2<f32>(x_711.x, x_711.y)) * vec2<f32>(x_714.x, x_714.y)) + vec2<f32>(x_717.y, x_717.w));
        let x_720 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
        let x_722 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_722 + vec2<f32>(1.0f, 1.0f));
        let x_724 : vec4<f32> = u_xlat7;
        let x_726 : vec2<f32> = (vec2<f32>(x_724.x, x_724.y) + vec2<f32>(1.0f, 1.0f));
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_730 : vec4<f32> = u_xlat8;
        let x_734 : vec2<f32> = (vec2<f32>(x_730.x, x_730.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_735 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_738 : vec4<f32> = u_xlat9;
        let x_740 : vec2<f32> = (vec2<f32>(x_738.x, x_738.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_741 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
        let x_743 : vec2<f32> = u_xlat61;
        let x_744 : vec2<f32> = (x_743 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_745 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_748 : vec4<f32> = u_xlat7;
        let x_750 : vec2<f32> = (vec2<f32>(x_748.x, x_748.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_751 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
        let x_753 : vec4<f32> = u_xlat8;
        let x_755 : vec2<f32> = (vec2<f32>(x_753.y, x_753.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_756 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_759 : f32 = u_xlat9.x;
        u_xlat10.z = x_759;
        let x_762 : f32 = u_xlat7.x;
        u_xlat10.w = x_762;
        let x_765 : f32 = u_xlat12.x;
        u_xlat11.z = x_765;
        let x_768 : f32 = u_xlat59.x;
        u_xlat11.w = x_768;
        let x_770 : vec4<f32> = u_xlat10;
        let x_772 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_770.z, x_770.w, x_770.x, x_770.z) + vec4<f32>(x_772.z, x_772.w, x_772.x, x_772.z));
        let x_776 : f32 = u_xlat10.y;
        u_xlat9.z = x_776;
        let x_779 : f32 = u_xlat7.y;
        u_xlat9.w = x_779;
        let x_782 : f32 = u_xlat11.y;
        u_xlat12.z = x_782;
        let x_785 : f32 = u_xlat59.y;
        u_xlat12.w = x_785;
        let x_787 : vec4<f32> = u_xlat9;
        let x_789 : vec4<f32> = u_xlat12;
        let x_791 : vec3<f32> = (vec3<f32>(x_787.z, x_787.y, x_787.w) + vec3<f32>(x_789.z, x_789.y, x_789.w));
        let x_792 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
        let x_794 : vec4<f32> = u_xlat11;
        let x_796 : vec4<f32> = u_xlat8;
        let x_798 : vec3<f32> = (vec3<f32>(x_794.x, x_794.z, x_794.w) / vec3<f32>(x_796.z, x_796.w, x_796.y));
        let x_799 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
        let x_801 : vec4<f32> = u_xlat9;
        let x_806 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_807 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat12;
        let x_811 : vec4<f32> = u_xlat7;
        let x_813 : vec3<f32> = (vec3<f32>(x_809.z, x_809.y, x_809.w) / vec3<f32>(x_811.x, x_811.y, x_811.z));
        let x_814 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat10;
        let x_818 : vec3<f32> = (vec3<f32>(x_816.x, x_816.y, x_816.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_819 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
        let x_821 : vec4<f32> = u_xlat9;
        let x_824 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_826 : vec3<f32> = (vec3<f32>(x_821.y, x_821.x, x_821.z) * vec3<f32>(x_824.x, x_824.x, x_824.x));
        let x_827 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat10;
        let x_832 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_834 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(x_832.y, x_832.y, x_832.y));
        let x_835 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_838 : f32 = u_xlat10.x;
        u_xlat9.w = x_838;
        let x_840 : vec2<f32> = u_xlat58;
        let x_843 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_846 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_840.x, x_840.y, x_840.x, x_840.y) * vec4<f32>(x_843.x, x_843.y, x_843.x, x_843.y)) + vec4<f32>(x_846.y, x_846.w, x_846.x, x_846.w));
        let x_849 : vec2<f32> = u_xlat58;
        let x_851 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_854 : vec4<f32> = u_xlat9;
        let x_856 : vec2<f32> = ((x_849 * vec2<f32>(x_851.x, x_851.y)) + vec2<f32>(x_854.z, x_854.w));
        let x_857 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_856.x, x_856.y, x_857.z, x_857.w);
        let x_860 : f32 = u_xlat9.y;
        u_xlat10.w = x_860;
        let x_862 : vec4<f32> = u_xlat10;
        let x_863 : vec2<f32> = vec2<f32>(x_862.y, x_862.z);
        let x_864 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_864.x, x_863.x, x_864.z, x_863.y);
        let x_867 : vec2<f32> = u_xlat58;
        let x_870 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_873 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_867.x, x_867.y, x_867.x, x_867.y) * vec4<f32>(x_870.x, x_870.y, x_870.x, x_870.y)) + vec4<f32>(x_873.x, x_873.y, x_873.z, x_873.y));
        let x_876 : vec2<f32> = u_xlat58;
        let x_879 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_882 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_876.x, x_876.y, x_876.x, x_876.y) * vec4<f32>(x_879.x, x_879.y, x_879.x, x_879.y)) + vec4<f32>(x_882.w, x_882.y, x_882.w, x_882.z));
        let x_885 : vec2<f32> = u_xlat58;
        let x_888 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_891 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_885.x, x_885.y, x_885.x, x_885.y) * vec4<f32>(x_888.x, x_888.y, x_888.x, x_888.y)) + vec4<f32>(x_891.x, x_891.w, x_891.z, x_891.w));
        let x_895 : vec4<f32> = u_xlat7;
        let x_897 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_895.x, x_895.x, x_895.x, x_895.y) * vec4<f32>(x_897.z, x_897.w, x_897.y, x_897.z));
        let x_901 : vec4<f32> = u_xlat7;
        let x_903 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_901.y, x_901.y, x_901.z, x_901.z) * x_903);
        let x_906 : f32 = u_xlat7.z;
        let x_908 : f32 = u_xlat8.y;
        u_xlat58.x = (x_906 * x_908);
        let x_912 : vec4<f32> = u_xlat11;
        let x_913 : vec2<f32> = vec2<f32>(x_912.x, x_912.y);
        let x_915 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_913.x, x_913.y, x_915);
        let x_923 : vec3<f32> = txVec4;
        let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_923.xy, x_923.z);
        u_xlat84 = x_925;
        let x_927 : vec4<f32> = u_xlat11;
        let x_928 : vec2<f32> = vec2<f32>(x_927.z, x_927.w);
        let x_930 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec5;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_937.xy, x_937.z);
        u_xlat7.x = x_939;
        let x_942 : f32 = u_xlat7.x;
        let x_944 : f32 = u_xlat14.y;
        u_xlat7.x = (x_942 * x_944);
        let x_948 : f32 = u_xlat14.x;
        let x_949 : f32 = u_xlat84;
        let x_952 : f32 = u_xlat7.x;
        u_xlat84 = ((x_948 * x_949) + x_952);
        let x_955 : vec4<f32> = u_xlat12;
        let x_956 : vec2<f32> = vec2<f32>(x_955.x, x_955.y);
        let x_958 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_956.x, x_956.y, x_958);
        let x_965 : vec3<f32> = txVec6;
        let x_967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_965.xy, x_965.z);
        u_xlat7.x = x_967;
        let x_970 : f32 = u_xlat14.z;
        let x_972 : f32 = u_xlat7.x;
        let x_974 : f32 = u_xlat84;
        u_xlat84 = ((x_970 * x_972) + x_974);
        let x_977 : vec4<f32> = u_xlat10;
        let x_978 : vec2<f32> = vec2<f32>(x_977.x, x_977.y);
        let x_980 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_978.x, x_978.y, x_980);
        let x_987 : vec3<f32> = txVec7;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_987.xy, x_987.z);
        u_xlat7.x = x_989;
        let x_992 : f32 = u_xlat14.w;
        let x_994 : f32 = u_xlat7.x;
        let x_996 : f32 = u_xlat84;
        u_xlat84 = ((x_992 * x_994) + x_996);
        let x_999 : vec4<f32> = u_xlat13;
        let x_1000 : vec2<f32> = vec2<f32>(x_999.x, x_999.y);
        let x_1002 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
        let x_1009 : vec3<f32> = txVec8;
        let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1009.xy, x_1009.z);
        u_xlat7.x = x_1011;
        let x_1014 : f32 = u_xlat15.x;
        let x_1016 : f32 = u_xlat7.x;
        let x_1018 : f32 = u_xlat84;
        u_xlat84 = ((x_1014 * x_1016) + x_1018);
        let x_1021 : vec4<f32> = u_xlat13;
        let x_1022 : vec2<f32> = vec2<f32>(x_1021.z, x_1021.w);
        let x_1024 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1022.x, x_1022.y, x_1024);
        let x_1031 : vec3<f32> = txVec9;
        let x_1033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1031.xy, x_1031.z);
        u_xlat7.x = x_1033;
        let x_1036 : f32 = u_xlat15.y;
        let x_1038 : f32 = u_xlat7.x;
        let x_1040 : f32 = u_xlat84;
        u_xlat84 = ((x_1036 * x_1038) + x_1040);
        let x_1043 : vec4<f32> = u_xlat10;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.z, x_1043.w);
        let x_1046 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1053 : vec3<f32> = txVec10;
        let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1053.xy, x_1053.z);
        u_xlat7.x = x_1055;
        let x_1058 : f32 = u_xlat15.z;
        let x_1060 : f32 = u_xlat7.x;
        let x_1062 : f32 = u_xlat84;
        u_xlat84 = ((x_1058 * x_1060) + x_1062);
        let x_1065 : vec4<f32> = u_xlat9;
        let x_1066 : vec2<f32> = vec2<f32>(x_1065.x, x_1065.y);
        let x_1068 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1066.x, x_1066.y, x_1068);
        let x_1075 : vec3<f32> = txVec11;
        let x_1077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1075.xy, x_1075.z);
        u_xlat7.x = x_1077;
        let x_1080 : f32 = u_xlat15.w;
        let x_1082 : f32 = u_xlat7.x;
        let x_1084 : f32 = u_xlat84;
        u_xlat84 = ((x_1080 * x_1082) + x_1084);
        let x_1087 : vec4<f32> = u_xlat9;
        let x_1088 : vec2<f32> = vec2<f32>(x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec12;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
        u_xlat7.x = x_1099;
        let x_1102 : f32 = u_xlat58.x;
        let x_1104 : f32 = u_xlat7.x;
        let x_1106 : f32 = u_xlat84;
        u_xlat32.x = ((x_1102 * x_1104) + x_1106);
      } else {
        let x_1110 : vec4<f32> = u_xlat4;
        let x_1113 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.z, x_1113.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1117 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1117);
        let x_1119 : vec4<f32> = u_xlat4;
        let x_1122 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1125 : vec2<f32> = u_xlat58;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1122.z, x_1122.w)) + -(x_1125));
        let x_1128 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1130 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1130.x, x_1130.x, x_1130.y, x_1130.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1133 : vec4<f32> = u_xlat8;
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1133.x, x_1133.x, x_1133.z, x_1133.z) * vec4<f32>(x_1135.x, x_1135.x, x_1135.z, x_1135.z));
        let x_1138 : vec4<f32> = u_xlat9;
        let x_1142 : vec2<f32> = (vec2<f32>(x_1138.y, x_1138.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1143.x, x_1142.x, x_1143.z, x_1142.y);
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1148 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1145.x, x_1145.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1148.x, x_1148.y)));
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1155 : vec2<f32> = (-(vec2<f32>(x_1152.x, x_1152.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1155.x, x_1156.y, x_1155.y, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = min(vec2<f32>(x_1158.x, x_1158.y), vec2<f32>(0.0f, 0.0f));
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat9;
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1171 : vec2<f32> = ((-(vec2<f32>(x_1163.x, x_1163.y)) * vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(x_1169.x, x_1169.z));
        let x_1172 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat7;
        let x_1176 : vec2<f32> = max(vec2<f32>(x_1174.x, x_1174.y), vec2<f32>(0.0f, 0.0f));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1182 : vec4<f32> = u_xlat9;
        let x_1185 : vec4<f32> = u_xlat8;
        let x_1187 : vec2<f32> = ((-(vec2<f32>(x_1179.x, x_1179.y)) * vec2<f32>(x_1182.x, x_1182.y)) + vec2<f32>(x_1185.y, x_1185.w));
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1188.x, x_1187.x, x_1188.z, x_1187.y);
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1190 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1194 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1194 * 0.08163200318813323975f);
        let x_1198 : vec2<f32> = u_xlat59;
        let x_1201 : vec2<f32> = (vec2<f32>(x_1198.y, x_1198.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1202 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1204.x, x_1204.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1208 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1208 * 0.08163200318813323975f);
        let x_1212 : f32 = u_xlat11.y;
        u_xlat9.x = x_1212;
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1221 : vec2<f32> = ((vec2<f32>(x_1214.x, x_1214.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1222 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1222.x, x_1221.x, x_1222.z, x_1221.y);
        let x_1224 : vec4<f32> = u_xlat7;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1229 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1228.x, x_1229.y, x_1228.y, x_1229.w);
        let x_1232 : f32 = u_xlat59.x;
        u_xlat8.y = x_1232;
        let x_1235 : f32 = u_xlat10.y;
        u_xlat8.w = x_1235;
        let x_1237 : vec4<f32> = u_xlat8;
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1237 + x_1238);
        let x_1240 : vec4<f32> = u_xlat7;
        let x_1243 : vec2<f32> = ((vec2<f32>(x_1240.y, x_1240.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1244 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1244.x, x_1243.x, x_1244.z, x_1243.y);
        let x_1246 : vec4<f32> = u_xlat7;
        let x_1249 : vec2<f32> = ((vec2<f32>(x_1246.y, x_1246.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1250 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1249.x, x_1250.y, x_1249.y, x_1250.w);
        let x_1253 : f32 = u_xlat59.y;
        u_xlat10.y = x_1253;
        let x_1255 : vec4<f32> = u_xlat10;
        let x_1256 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1255 + x_1256);
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1259 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1258 / x_1259);
        let x_1261 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1261 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1267 : vec4<f32> = u_xlat10;
        let x_1268 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1267 / x_1268);
        let x_1270 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1270 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1275 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1272.w, x_1272.x, x_1272.y, x_1272.z) * vec4<f32>(x_1275.x, x_1275.x, x_1275.x, x_1275.x));
        let x_1278 : vec4<f32> = u_xlat10;
        let x_1281 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1278.x, x_1278.w, x_1278.y, x_1278.z) * vec4<f32>(x_1281.y, x_1281.y, x_1281.y, x_1281.y));
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1285 : vec3<f32> = vec3<f32>(x_1284.y, x_1284.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1285.z);
        let x_1289 : f32 = u_xlat10.x;
        u_xlat11.y = x_1289;
        let x_1291 : vec2<f32> = u_xlat58;
        let x_1294 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1297.y));
        let x_1300 : vec2<f32> = u_xlat58;
        let x_1302 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat11;
        let x_1307 : vec2<f32> = ((x_1300 * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.w, x_1305.y));
        let x_1308 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1311 : f32 = u_xlat11.y;
        u_xlat8.y = x_1311;
        let x_1314 : f32 = u_xlat10.z;
        u_xlat11.y = x_1314;
        let x_1316 : vec2<f32> = u_xlat58;
        let x_1319 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y) * vec4<f32>(x_1319.x, x_1319.y, x_1319.x, x_1319.y)) + vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1322.y));
        let x_1326 : vec2<f32> = u_xlat58;
        let x_1328 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1331 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_1326 * vec2<f32>(x_1328.x, x_1328.y)) + vec2<f32>(x_1331.w, x_1331.y));
        let x_1335 : f32 = u_xlat11.y;
        u_xlat8.z = x_1335;
        let x_1337 : vec2<f32> = u_xlat58;
        let x_1340 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y) * vec4<f32>(x_1340.x, x_1340.y, x_1340.x, x_1340.y)) + vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.z));
        let x_1347 : f32 = u_xlat10.w;
        u_xlat11.y = x_1347;
        let x_1350 : vec2<f32> = u_xlat58;
        let x_1353 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1350.x, x_1350.y, x_1350.x, x_1350.y) * vec4<f32>(x_1353.x, x_1353.y, x_1353.x, x_1353.y)) + vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1356.y));
        let x_1360 : vec2<f32> = u_xlat58;
        let x_1362 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat11;
        let x_1367 : vec2<f32> = ((x_1360 * vec2<f32>(x_1362.x, x_1362.y)) + vec2<f32>(x_1365.w, x_1365.y));
        let x_1368 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1367.x, x_1367.y, x_1368.z);
        let x_1371 : f32 = u_xlat11.y;
        u_xlat8.w = x_1371;
        let x_1374 : vec2<f32> = u_xlat58;
        let x_1376 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat8;
        let x_1381 : vec2<f32> = ((x_1374 * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.x, x_1379.w));
        let x_1382 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1382.w);
        let x_1384 : vec4<f32> = u_xlat11;
        let x_1385 : vec3<f32> = vec3<f32>(x_1384.x, x_1384.z, x_1384.w);
        let x_1386 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1385.x, x_1386.y, x_1385.y, x_1385.z);
        let x_1388 : vec2<f32> = u_xlat58;
        let x_1391 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1388.x, x_1388.y, x_1388.x, x_1388.y) * vec4<f32>(x_1391.x, x_1391.y, x_1391.x, x_1391.y)) + vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1394.y));
        let x_1398 : vec2<f32> = u_xlat58;
        let x_1400 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1403 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_1398 * vec2<f32>(x_1400.x, x_1400.y)) + vec2<f32>(x_1403.w, x_1403.y));
        let x_1407 : f32 = u_xlat8.x;
        u_xlat10.x = x_1407;
        let x_1409 : vec2<f32> = u_xlat58;
        let x_1411 : vec4<f32> = x_193.x_MainLightShadowmapSize;
        let x_1414 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_1409 * vec2<f32>(x_1411.x, x_1411.y)) + vec2<f32>(x_1414.x, x_1414.y));
        let x_1418 : vec4<f32> = u_xlat7;
        let x_1420 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1418.x, x_1418.x, x_1418.x, x_1418.x) * x_1420);
        let x_1423 : vec4<f32> = u_xlat7;
        let x_1425 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1423.y, x_1423.y, x_1423.y, x_1423.y) * x_1425);
        let x_1428 : vec4<f32> = u_xlat7;
        let x_1430 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1428.z, x_1428.z, x_1428.z, x_1428.z) * x_1430);
        let x_1432 : vec4<f32> = u_xlat7;
        let x_1434 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1432.w, x_1432.w, x_1432.w, x_1432.w) * x_1434);
        let x_1437 : vec4<f32> = u_xlat12;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec13;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat8.x = x_1449;
        let x_1452 : vec4<f32> = u_xlat12;
        let x_1453 : vec2<f32> = vec2<f32>(x_1452.z, x_1452.w);
        let x_1455 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
        let x_1463 : vec3<f32> = txVec14;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1463.xy, x_1463.z);
        u_xlat86 = x_1465;
        let x_1466 : f32 = u_xlat86;
        let x_1468 : f32 = u_xlat18.y;
        u_xlat86 = (x_1466 * x_1468);
        let x_1471 : f32 = u_xlat18.x;
        let x_1473 : f32 = u_xlat8.x;
        let x_1475 : f32 = u_xlat86;
        u_xlat8.x = ((x_1471 * x_1473) + x_1475);
        let x_1479 : vec4<f32> = u_xlat13;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.x, x_1479.y);
        let x_1482 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec15;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1489.xy, x_1489.z);
        u_xlat86 = x_1491;
        let x_1493 : f32 = u_xlat18.z;
        let x_1494 : f32 = u_xlat86;
        let x_1497 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1493 * x_1494) + x_1497);
        let x_1501 : vec4<f32> = u_xlat15;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec16;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1511.xy, x_1511.z);
        u_xlat86 = x_1513;
        let x_1515 : f32 = u_xlat18.w;
        let x_1516 : f32 = u_xlat86;
        let x_1519 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1515 * x_1516) + x_1519);
        let x_1523 : vec4<f32> = u_xlat14;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.x, x_1523.y);
        let x_1526 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec17;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1533.xy, x_1533.z);
        u_xlat86 = x_1535;
        let x_1537 : f32 = u_xlat19.x;
        let x_1538 : f32 = u_xlat86;
        let x_1541 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1537 * x_1538) + x_1541);
        let x_1545 : vec4<f32> = u_xlat14;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.z, x_1545.w);
        let x_1548 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec18;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1555.xy, x_1555.z);
        u_xlat86 = x_1557;
        let x_1559 : f32 = u_xlat19.y;
        let x_1560 : f32 = u_xlat86;
        let x_1563 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1559 * x_1560) + x_1563);
        let x_1567 : vec2<f32> = u_xlat65;
        let x_1569 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec19;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1576.xy, x_1576.z);
        u_xlat86 = x_1578;
        let x_1580 : f32 = u_xlat19.z;
        let x_1581 : f32 = u_xlat86;
        let x_1584 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1580 * x_1581) + x_1584);
        let x_1588 : vec4<f32> = u_xlat15;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec20;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1598.xy, x_1598.z);
        u_xlat86 = x_1600;
        let x_1602 : f32 = u_xlat19.w;
        let x_1603 : f32 = u_xlat86;
        let x_1606 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1602 * x_1603) + x_1606);
        let x_1610 : vec4<f32> = u_xlat16;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.x, x_1610.y);
        let x_1613 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec21;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1620.xy, x_1620.z);
        u_xlat86 = x_1622;
        let x_1624 : f32 = u_xlat20.x;
        let x_1625 : f32 = u_xlat86;
        let x_1628 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1624 * x_1625) + x_1628);
        let x_1632 : vec4<f32> = u_xlat16;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.z, x_1632.w);
        let x_1635 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec22;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1642.xy, x_1642.z);
        u_xlat86 = x_1644;
        let x_1646 : f32 = u_xlat20.y;
        let x_1647 : f32 = u_xlat86;
        let x_1650 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1646 * x_1647) + x_1650);
        let x_1654 : vec3<f32> = u_xlat34;
        let x_1655 : vec2<f32> = vec2<f32>(x_1654.x, x_1654.y);
        let x_1657 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec23;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1664.xy, x_1664.z);
        u_xlat34.x = x_1666;
        let x_1669 : f32 = u_xlat20.z;
        let x_1671 : f32 = u_xlat34.x;
        let x_1674 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1669 * x_1671) + x_1674);
        let x_1678 : vec4<f32> = u_xlat17;
        let x_1679 : vec2<f32> = vec2<f32>(x_1678.x, x_1678.y);
        let x_1681 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec24;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
        u_xlat34.x = x_1690;
        let x_1693 : f32 = u_xlat20.w;
        let x_1695 : f32 = u_xlat34.x;
        let x_1698 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1693 * x_1695) + x_1698);
        let x_1702 : vec4<f32> = u_xlat11;
        let x_1703 : vec2<f32> = vec2<f32>(x_1702.x, x_1702.y);
        let x_1705 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1703.x, x_1703.y, x_1705);
        let x_1712 : vec3<f32> = txVec25;
        let x_1714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1712.xy, x_1712.z);
        u_xlat34.x = x_1714;
        let x_1717 : f32 = u_xlat7.x;
        let x_1719 : f32 = u_xlat34.x;
        let x_1722 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_1717 * x_1719) + x_1722);
        let x_1726 : vec4<f32> = u_xlat11;
        let x_1727 : vec2<f32> = vec2<f32>(x_1726.z, x_1726.w);
        let x_1729 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
        let x_1736 : vec3<f32> = txVec26;
        let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1736.xy, x_1736.z);
        u_xlat8.x = x_1738;
        let x_1741 : f32 = u_xlat7.y;
        let x_1743 : f32 = u_xlat8.x;
        let x_1746 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1741 * x_1743) + x_1746);
        let x_1750 : vec2<f32> = u_xlat62;
        let x_1752 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
        let x_1760 : vec3<f32> = txVec27;
        let x_1762 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1760.xy, x_1760.z);
        u_xlat33.x = x_1762;
        let x_1765 : f32 = u_xlat7.z;
        let x_1767 : f32 = u_xlat33.x;
        let x_1770 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1765 * x_1767) + x_1770);
        let x_1774 : vec2<f32> = u_xlat58;
        let x_1776 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1774.x, x_1774.y, x_1776);
        let x_1783 : vec3<f32> = txVec28;
        let x_1785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1783.xy, x_1783.z);
        u_xlat58.x = x_1785;
        let x_1788 : f32 = u_xlat7.w;
        let x_1790 : f32 = u_xlat58.x;
        let x_1793 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_1788 * x_1790) + x_1793);
      }
    }
  } else {
    let x_1798 : vec4<f32> = u_xlat4;
    let x_1799 : vec2<f32> = vec2<f32>(x_1798.x, x_1798.y);
    let x_1801 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1799.x, x_1799.y, x_1801);
    let x_1808 : vec3<f32> = txVec29;
    let x_1810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1808.xy, x_1808.z);
    u_xlat32.x = x_1810;
  }
  let x_1813 : f32 = x_193.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1813) + 1.0f);
  let x_1818 : f32 = u_xlat32.x;
  let x_1820 : f32 = x_193.x_MainLightShadowParams.x;
  let x_1823 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1818 * x_1820) + x_1823);
  let x_1828 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1828);
  let x_1832 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1832 >= 1.0f);
  let x_1834 : bool = u_xlatb56;
  let x_1835 : bool = u_xlatb30;
  u_xlatb30 = (x_1834 | x_1835);
  let x_1837 : bool = u_xlatb30;
  if (x_1837) {
    x_1838 = 1.0f;
  } else {
    let x_1843 : f32 = u_xlat4.x;
    x_1838 = x_1843;
  }
  let x_1844 : f32 = x_1838;
  u_xlat4.x = x_1844;
  let x_1846 : vec3<f32> = vs_TEXCOORD1;
  let x_1848 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat32 = (x_1846 + -(x_1848));
  let x_1852 : vec3<f32> = u_xlat32;
  let x_1853 : vec3<f32> = u_xlat32;
  u_xlat30 = dot(x_1852, x_1853);
  let x_1856 : f32 = u_xlat30;
  let x_1858 : f32 = x_193.x_MainLightShadowParams.z;
  let x_1861 : f32 = x_193.x_MainLightShadowParams.w;
  u_xlat56 = ((x_1856 * x_1858) + x_1861);
  let x_1863 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1863, 0.0f, 1.0f);
  let x_1866 : f32 = u_xlat4.x;
  u_xlat32.x = (-(x_1866) + 1.0f);
  let x_1870 : f32 = u_xlat56;
  let x_1872 : f32 = u_xlat32.x;
  let x_1875 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1870 * x_1872) + x_1875);
  let x_1878 : vec3<f32> = u_xlat2;
  let x_1880 : vec3<f32> = u_xlat3;
  u_xlat56 = dot(-(x_1878), x_1880);
  let x_1882 : f32 = u_xlat56;
  let x_1883 : f32 = u_xlat56;
  u_xlat56 = (x_1882 + x_1883);
  let x_1885 : vec3<f32> = u_xlat3;
  let x_1886 : f32 = u_xlat56;
  let x_1890 : vec3<f32> = u_xlat2;
  u_xlat32 = ((x_1885 * -(vec3<f32>(x_1886, x_1886, x_1886))) + -(x_1890));
  let x_1893 : vec3<f32> = u_xlat3;
  let x_1894 : vec3<f32> = u_xlat2;
  u_xlat56 = dot(x_1893, x_1894);
  let x_1896 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1896, 0.0f, 1.0f);
  let x_1898 : f32 = u_xlat56;
  u_xlat56 = (-(x_1898) + 1.0f);
  let x_1901 : f32 = u_xlat56;
  let x_1902 : f32 = u_xlat56;
  u_xlat56 = (x_1901 * x_1902);
  let x_1904 : f32 = u_xlat56;
  let x_1905 : f32 = u_xlat56;
  u_xlat56 = (x_1904 * x_1905);
  let x_1907 : f32 = u_xlat80;
  u_xlat7.x = ((-(x_1907) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1914 : f32 = u_xlat80;
  let x_1916 : f32 = u_xlat7.x;
  u_xlat80 = (x_1914 * x_1916);
  let x_1918 : f32 = u_xlat80;
  u_xlat80 = (x_1918 * 6.0f);
  let x_1929 : vec3<f32> = u_xlat32;
  let x_1930 : f32 = u_xlat80;
  let x_1931 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1929, x_1930);
  u_xlat7 = x_1931;
  let x_1933 : f32 = u_xlat7.w;
  u_xlat80 = (x_1933 + -1.0f);
  let x_1936 : f32 = x_96.unity_SpecCube0_HDR.w;
  let x_1937 : f32 = u_xlat80;
  u_xlat80 = ((x_1936 * x_1937) + 1.0f);
  let x_1940 : f32 = u_xlat80;
  u_xlat80 = max(x_1940, 0.0f);
  let x_1942 : f32 = u_xlat80;
  u_xlat80 = log2(x_1942);
  let x_1944 : f32 = u_xlat80;
  let x_1946 : f32 = x_96.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1944 * x_1946);
  let x_1948 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1948);
  let x_1950 : f32 = u_xlat80;
  let x_1952 : f32 = x_96.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1950 * x_1952);
  let x_1954 : vec4<f32> = u_xlat7;
  let x_1956 : f32 = u_xlat80;
  u_xlat32 = (vec3<f32>(x_1954.x, x_1954.y, x_1954.z) * vec3<f32>(x_1956, x_1956, x_1956));
  let x_1959 : f32 = u_xlat82;
  let x_1961 : f32 = u_xlat82;
  let x_1965 : vec2<f32> = ((vec2<f32>(x_1959, x_1959) * vec2<f32>(x_1961, x_1961)) + vec2<f32>(-1.0f, 1.0f));
  let x_1966 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1965.x, x_1965.y, x_1966.z, x_1966.w);
  let x_1969 : f32 = u_xlat7.y;
  u_xlat80 = (1.0f / x_1969);
  let x_1971 : vec4<f32> = u_xlat0;
  let x_1974 : f32 = u_xlat81;
  u_xlat33 = (-(vec3<f32>(x_1971.x, x_1971.y, x_1971.z)) + vec3<f32>(x_1974, x_1974, x_1974));
  let x_1977 : f32 = u_xlat56;
  let x_1979 : vec3<f32> = u_xlat33;
  let x_1981 : vec4<f32> = u_xlat0;
  u_xlat33 = ((vec3<f32>(x_1977, x_1977, x_1977) * x_1979) + vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1984 : f32 = u_xlat80;
  let x_1986 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_1984, x_1984, x_1984) * x_1986);
  let x_1988 : vec3<f32> = u_xlat32;
  let x_1989 : vec3<f32> = u_xlat33;
  u_xlat32 = (x_1988 * x_1989);
  let x_1991 : vec4<f32> = u_xlat5;
  let x_1993 : vec3<f32> = u_xlat27;
  let x_1995 : vec3<f32> = u_xlat32;
  let x_1996 : vec3<f32> = ((vec3<f32>(x_1991.x, x_1991.y, x_1991.z) * x_1993) + x_1995);
  let x_1997 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1997.w);
  let x_2000 : f32 = u_xlat4.x;
  let x_2002 : f32 = x_96.unity_LightData.z;
  u_xlat80 = (x_2000 * x_2002);
  let x_2004 : vec3<f32> = u_xlat3;
  let x_2006 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat81 = dot(x_2004, vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2009 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2009, 0.0f, 1.0f);
  let x_2011 : f32 = u_xlat80;
  let x_2012 : f32 = u_xlat81;
  u_xlat80 = (x_2011 * x_2012);
  let x_2014 : f32 = u_xlat80;
  let x_2017 : vec4<f32> = x_45.x_MainLightColor;
  let x_2019 : vec3<f32> = (vec3<f32>(x_2014, x_2014, x_2014) * vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
  let x_2020 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2019.x, x_2020.y, x_2019.y, x_2019.z);
  let x_2022 : vec3<f32> = u_xlat2;
  let x_2024 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat32 = (x_2022 + vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
  let x_2027 : vec3<f32> = u_xlat32;
  let x_2028 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_2027, x_2028);
  let x_2030 : f32 = u_xlat80;
  u_xlat80 = max(x_2030, 1.17549435e-38f);
  let x_2033 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_2033);
  let x_2035 : f32 = u_xlat80;
  let x_2037 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2035, x_2035, x_2035) * x_2037);
  let x_2039 : vec3<f32> = u_xlat3;
  let x_2040 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_2039, x_2040);
  let x_2042 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2042, 0.0f, 1.0f);
  let x_2045 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2047 : vec3<f32> = u_xlat32;
  u_xlat81 = dot(vec3<f32>(x_2045.x, x_2045.y, x_2045.z), x_2047);
  let x_2049 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2049, 0.0f, 1.0f);
  let x_2051 : f32 = u_xlat80;
  let x_2052 : f32 = u_xlat80;
  u_xlat80 = (x_2051 * x_2052);
  let x_2054 : f32 = u_xlat80;
  let x_2056 : f32 = u_xlat7.x;
  u_xlat80 = ((x_2054 * x_2056) + 1.00001001358032226562f);
  let x_2060 : f32 = u_xlat81;
  let x_2061 : f32 = u_xlat81;
  u_xlat81 = (x_2060 * x_2061);
  let x_2063 : f32 = u_xlat80;
  let x_2064 : f32 = u_xlat80;
  u_xlat80 = (x_2063 * x_2064);
  let x_2066 : f32 = u_xlat81;
  u_xlat81 = max(x_2066, 0.10000000149011611938f);
  let x_2069 : f32 = u_xlat80;
  let x_2070 : f32 = u_xlat81;
  u_xlat80 = (x_2069 * x_2070);
  let x_2073 : f32 = u_xlat6.x;
  let x_2074 : f32 = u_xlat80;
  u_xlat80 = (x_2073 * x_2074);
  let x_2076 : f32 = u_xlat83;
  let x_2077 : f32 = u_xlat80;
  u_xlat80 = (x_2076 / x_2077);
  let x_2079 : vec4<f32> = u_xlat0;
  let x_2081 : f32 = u_xlat80;
  let x_2084 : vec3<f32> = u_xlat27;
  u_xlat32 = ((vec3<f32>(x_2079.x, x_2079.y, x_2079.z) * vec3<f32>(x_2081, x_2081, x_2081)) + x_2084);
  let x_2087 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2089 : f32 = x_96.unity_LightData.y;
  u_xlat80 = min(x_2087, x_2089);
  let x_2092 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2092));
  let x_2095 : f32 = u_xlat30;
  let x_2098 : f32 = x_193.x_AdditionalShadowFadeParams.x;
  let x_2101 : f32 = x_193.x_AdditionalShadowFadeParams.y;
  u_xlat81 = ((x_2095 * x_2098) + x_2101);
  let x_2103 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2103, 0.0f, 1.0f);
  u_xlat33.x = 0.0f;
  u_xlat33.y = 0.0f;
  u_xlat33.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2115 : u32 = u_xlatu_loop_1;
    let x_2116 : u32 = u_xlatu80;
    if ((x_2115 < x_2116)) {
    } else {
      break;
    }
    let x_2119 : u32 = u_xlatu_loop_1;
    u_xlatu8 = (x_2119 >> 2u);
    let x_2122 : u32 = u_xlatu_loop_1;
    u_xlati34 = bitcast<i32>((x_2122 & 3u));
    let x_2125 : u32 = u_xlatu8;
    let x_2128 : vec4<f32> = x_96.unity_LightIndices[bitcast<i32>(x_2125)];
    let x_2138 : i32 = u_xlati34;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2143 : vec4<u32> = indexable[x_2138];
    u_xlat8.x = dot(x_2128, bitcast<vec4<f32>>(x_2143));
    let x_2149 : f32 = u_xlat8.x;
    u_xlati8 = i32(x_2149);
    let x_2151 : vec3<f32> = vs_TEXCOORD1;
    let x_2162 : i32 = u_xlati8;
    let x_2164 : vec4<f32> = x_2161.x_AdditionalLightsPosition[x_2162];
    let x_2167 : i32 = u_xlati8;
    let x_2169 : vec4<f32> = x_2161.x_AdditionalLightsPosition[x_2167];
    u_xlat34 = ((-(x_2151) * vec3<f32>(x_2164.w, x_2164.w, x_2164.w)) + vec3<f32>(x_2169.x, x_2169.y, x_2169.z));
    let x_2172 : vec3<f32> = u_xlat34;
    let x_2173 : vec3<f32> = u_xlat34;
    u_xlat9.x = dot(x_2172, x_2173);
    let x_2177 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_2177, 0.00006103515625f);
    let x_2183 : f32 = u_xlat9.x;
    u_xlat35 = inverseSqrt(x_2183);
    let x_2185 : vec3<f32> = u_xlat34;
    let x_2186 : f32 = u_xlat35;
    let x_2188 : vec3<f32> = (x_2185 * vec3<f32>(x_2186, x_2186, x_2186));
    let x_2189 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2188.x, x_2188.y, x_2188.z, x_2189.w);
    let x_2192 : f32 = u_xlat9.x;
    u_xlat61.x = (1.0f / x_2192);
    let x_2196 : f32 = u_xlat9.x;
    let x_2197 : i32 = u_xlati8;
    let x_2199 : f32 = x_2161.x_AdditionalLightsAttenuation[x_2197].x;
    u_xlat9.x = (x_2196 * x_2199);
    let x_2203 : f32 = u_xlat9.x;
    let x_2206 : f32 = u_xlat9.x;
    u_xlat9.x = ((-(x_2203) * x_2206) + 1.0f);
    let x_2211 : f32 = u_xlat9.x;
    u_xlat9.x = max(x_2211, 0.0f);
    let x_2215 : f32 = u_xlat9.x;
    let x_2217 : f32 = u_xlat9.x;
    u_xlat9.x = (x_2215 * x_2217);
    let x_2221 : f32 = u_xlat9.x;
    let x_2223 : f32 = u_xlat61.x;
    u_xlat9.x = (x_2221 * x_2223);
    let x_2226 : i32 = u_xlati8;
    let x_2228 : vec4<f32> = x_2161.x_AdditionalLightsSpotDir[x_2226];
    let x_2230 : vec4<f32> = u_xlat10;
    u_xlat61.x = dot(vec3<f32>(x_2228.x, x_2228.y, x_2228.z), vec3<f32>(x_2230.x, x_2230.y, x_2230.z));
    let x_2235 : f32 = u_xlat61.x;
    let x_2236 : i32 = u_xlati8;
    let x_2238 : f32 = x_2161.x_AdditionalLightsAttenuation[x_2236].z;
    let x_2240 : i32 = u_xlati8;
    let x_2242 : f32 = x_2161.x_AdditionalLightsAttenuation[x_2240].w;
    u_xlat61.x = ((x_2235 * x_2238) + x_2242);
    let x_2246 : f32 = u_xlat61.x;
    u_xlat61.x = clamp(x_2246, 0.0f, 1.0f);
    let x_2250 : f32 = u_xlat61.x;
    let x_2252 : f32 = u_xlat61.x;
    u_xlat61.x = (x_2250 * x_2252);
    let x_2256 : f32 = u_xlat61.x;
    let x_2258 : f32 = u_xlat9.x;
    u_xlat9.x = (x_2256 * x_2258);
    let x_2263 : i32 = u_xlati8;
    let x_2265 : f32 = x_193.x_AdditionalShadowParams[x_2263].w;
    u_xlati61 = i32(x_2265);
    let x_2268 : i32 = u_xlati61;
    u_xlatb87 = (x_2268 >= 0i);
    let x_2270 : bool = u_xlatb87;
    if (x_2270) {
      let x_2274 : i32 = u_xlati8;
      let x_2276 : f32 = x_193.x_AdditionalShadowParams[x_2274].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2276, x_2276, x_2276, x_2276))));
      let x_2280 : bool = u_xlatb87;
      if (x_2280) {
        let x_2284 : vec4<f32> = u_xlat10;
        let x_2287 : vec4<f32> = u_xlat10;
        let x_2290 : vec4<bool> = (abs(vec4<f32>(x_2284.z, x_2284.z, x_2284.y, x_2284.z)) >= abs(vec4<f32>(x_2287.x, x_2287.y, x_2287.x, x_2287.x)));
        let x_2292 : vec3<bool> = vec3<bool>(x_2290.x, x_2290.y, x_2290.z);
        let x_2293 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
        let x_2296 : bool = u_xlatb11.y;
        let x_2298 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2296 & x_2298);
        let x_2300 : vec4<f32> = u_xlat10;
        let x_2303 : vec4<bool> = (-(vec4<f32>(x_2300.z, x_2300.y, x_2300.z, x_2300.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2304 : vec3<bool> = vec3<bool>(x_2303.x, x_2303.y, x_2303.w);
        let x_2305 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2304.x, x_2304.y, x_2305.z, x_2304.z);
        let x_2308 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2308);
        let x_2313 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2313);
        let x_2318 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2318);
        let x_2321 : bool = u_xlatb11.z;
        if (x_2321) {
          let x_2326 : f32 = u_xlat11.y;
          x_2322 = x_2326;
        } else {
          let x_2328 : f32 = u_xlat88;
          x_2322 = x_2328;
        }
        let x_2329 : f32 = x_2322;
        u_xlat88 = x_2329;
        let x_2331 : bool = u_xlatb87;
        if (x_2331) {
          let x_2336 : f32 = u_xlat11.x;
          x_2332 = x_2336;
        } else {
          let x_2338 : f32 = u_xlat88;
          x_2332 = x_2338;
        }
        let x_2339 : f32 = x_2332;
        u_xlat87 = x_2339;
        let x_2340 : i32 = u_xlati8;
        let x_2342 : f32 = x_193.x_AdditionalShadowParams[x_2340].w;
        u_xlat88 = trunc(x_2342);
        let x_2344 : f32 = u_xlat87;
        let x_2345 : f32 = u_xlat88;
        u_xlat87 = (x_2344 + x_2345);
        let x_2347 : f32 = u_xlat87;
        u_xlati61 = i32(x_2347);
      }
      let x_2349 : i32 = u_xlati61;
      u_xlati61 = (x_2349 << bitcast<u32>(2i));
      let x_2351 : vec3<f32> = vs_TEXCOORD1;
      let x_2354 : i32 = u_xlati61;
      let x_2357 : i32 = u_xlati61;
      let x_2361 : vec4<f32> = x_193.x_AdditionalLightsWorldToShadow[((x_2354 + 1i) / 4i)][((x_2357 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2351.y, x_2351.y, x_2351.y, x_2351.y) * x_2361);
      let x_2363 : i32 = u_xlati61;
      let x_2365 : i32 = u_xlati61;
      let x_2368 : vec4<f32> = x_193.x_AdditionalLightsWorldToShadow[(x_2363 / 4i)][(x_2365 % 4i)];
      let x_2369 : vec3<f32> = vs_TEXCOORD1;
      let x_2372 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2368 * vec4<f32>(x_2369.x, x_2369.x, x_2369.x, x_2369.x)) + x_2372);
      let x_2374 : i32 = u_xlati61;
      let x_2377 : i32 = u_xlati61;
      let x_2381 : vec4<f32> = x_193.x_AdditionalLightsWorldToShadow[((x_2374 + 2i) / 4i)][((x_2377 + 2i) % 4i)];
      let x_2382 : vec3<f32> = vs_TEXCOORD1;
      let x_2385 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2381 * vec4<f32>(x_2382.z, x_2382.z, x_2382.z, x_2382.z)) + x_2385);
      let x_2387 : vec4<f32> = u_xlat11;
      let x_2388 : i32 = u_xlati61;
      let x_2391 : i32 = u_xlati61;
      let x_2395 : vec4<f32> = x_193.x_AdditionalLightsWorldToShadow[((x_2388 + 3i) / 4i)][((x_2391 + 3i) % 4i)];
      u_xlat11 = (x_2387 + x_2395);
      let x_2397 : vec4<f32> = u_xlat11;
      let x_2399 : vec4<f32> = u_xlat11;
      let x_2401 : vec3<f32> = (vec3<f32>(x_2397.x, x_2397.y, x_2397.z) / vec3<f32>(x_2399.w, x_2399.w, x_2399.w));
      let x_2402 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
      let x_2405 : i32 = u_xlati8;
      let x_2407 : f32 = x_193.x_AdditionalShadowParams[x_2405].y;
      u_xlatb61 = (0.0f < x_2407);
      let x_2409 : bool = u_xlatb61;
      if (x_2409) {
        let x_2412 : i32 = u_xlati8;
        let x_2414 : f32 = x_193.x_AdditionalShadowParams[x_2412].y;
        u_xlatb61 = (1.0f == x_2414);
        let x_2416 : bool = u_xlatb61;
        if (x_2416) {
          let x_2419 : vec4<f32> = u_xlat11;
          let x_2422 : vec4<f32> = x_193.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2419.x, x_2419.y, x_2419.x, x_2419.y) + x_2422);
          let x_2425 : vec4<f32> = u_xlat12;
          let x_2426 : vec2<f32> = vec2<f32>(x_2425.x, x_2425.y);
          let x_2428 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2426.x, x_2426.y, x_2428);
          let x_2436 : vec3<f32> = txVec30;
          let x_2438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2436.xy, x_2436.z);
          u_xlat13.x = x_2438;
          let x_2441 : vec4<f32> = u_xlat12;
          let x_2442 : vec2<f32> = vec2<f32>(x_2441.z, x_2441.w);
          let x_2444 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2442.x, x_2442.y, x_2444);
          let x_2451 : vec3<f32> = txVec31;
          let x_2453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2451.xy, x_2451.z);
          u_xlat13.y = x_2453;
          let x_2455 : vec4<f32> = u_xlat11;
          let x_2459 : vec4<f32> = x_193.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2455.x, x_2455.y, x_2455.x, x_2455.y) + x_2459);
          let x_2462 : vec4<f32> = u_xlat12;
          let x_2463 : vec2<f32> = vec2<f32>(x_2462.x, x_2462.y);
          let x_2465 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2463.x, x_2463.y, x_2465);
          let x_2472 : vec3<f32> = txVec32;
          let x_2474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2472.xy, x_2472.z);
          u_xlat13.z = x_2474;
          let x_2477 : vec4<f32> = u_xlat12;
          let x_2478 : vec2<f32> = vec2<f32>(x_2477.z, x_2477.w);
          let x_2480 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2478.x, x_2478.y, x_2480);
          let x_2487 : vec3<f32> = txVec33;
          let x_2489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2487.xy, x_2487.z);
          u_xlat13.w = x_2489;
          let x_2491 : vec4<f32> = u_xlat13;
          u_xlat61.x = dot(x_2491, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2495 : i32 = u_xlati8;
          let x_2497 : f32 = x_193.x_AdditionalShadowParams[x_2495].y;
          u_xlatb87 = (2.0f == x_2497);
          let x_2499 : bool = u_xlatb87;
          if (x_2499) {
            let x_2502 : vec4<f32> = u_xlat11;
            let x_2506 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2509 : vec2<f32> = ((vec2<f32>(x_2502.x, x_2502.y) * vec2<f32>(x_2506.z, x_2506.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2510 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2509.x, x_2509.y, x_2510.z, x_2510.w);
            let x_2512 : vec4<f32> = u_xlat12;
            let x_2514 : vec2<f32> = floor(vec2<f32>(x_2512.x, x_2512.y));
            let x_2515 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2514.x, x_2514.y, x_2515.z, x_2515.w);
            let x_2518 : vec4<f32> = u_xlat11;
            let x_2521 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2524 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2518.x, x_2518.y) * vec2<f32>(x_2521.z, x_2521.w)) + -(vec2<f32>(x_2524.x, x_2524.y)));
            let x_2528 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2528.x, x_2528.x, x_2528.y, x_2528.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2531 : vec4<f32> = u_xlat13;
            let x_2533 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2531.x, x_2531.x, x_2531.z, x_2531.z) * vec4<f32>(x_2533.x, x_2533.x, x_2533.z, x_2533.z));
            let x_2536 : vec4<f32> = u_xlat14;
            let x_2538 : vec2<f32> = (vec2<f32>(x_2536.y, x_2536.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2539 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2538.x, x_2539.y, x_2538.y, x_2539.w);
            let x_2541 : vec4<f32> = u_xlat14;
            let x_2544 : vec2<f32> = u_xlat64;
            let x_2546 : vec2<f32> = ((vec2<f32>(x_2541.x, x_2541.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2544));
            let x_2547 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2546.x, x_2546.y, x_2547.z, x_2547.w);
            let x_2550 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2550) + vec2<f32>(1.0f, 1.0f));
            let x_2553 : vec2<f32> = u_xlat64;
            let x_2554 : vec2<f32> = min(x_2553, vec2<f32>(0.0f, 0.0f));
            let x_2555 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2554.x, x_2554.y, x_2555.z, x_2555.w);
            let x_2557 : vec4<f32> = u_xlat15;
            let x_2560 : vec4<f32> = u_xlat15;
            let x_2563 : vec2<f32> = u_xlat66;
            let x_2564 : vec2<f32> = ((-(vec2<f32>(x_2557.x, x_2557.y)) * vec2<f32>(x_2560.x, x_2560.y)) + x_2563);
            let x_2565 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2564.x, x_2564.y, x_2565.z, x_2565.w);
            let x_2567 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2567, vec2<f32>(0.0f, 0.0f));
            let x_2569 : vec2<f32> = u_xlat64;
            let x_2571 : vec2<f32> = u_xlat64;
            let x_2573 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2569) * x_2571) + vec2<f32>(x_2573.y, x_2573.w));
            let x_2576 : vec4<f32> = u_xlat15;
            let x_2578 : vec2<f32> = (vec2<f32>(x_2576.x, x_2576.y) + vec2<f32>(1.0f, 1.0f));
            let x_2579 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2578.x, x_2578.y, x_2579.z, x_2579.w);
            let x_2581 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2581 + vec2<f32>(1.0f, 1.0f));
            let x_2583 : vec4<f32> = u_xlat14;
            let x_2585 : vec2<f32> = (vec2<f32>(x_2583.x, x_2583.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2586 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2585.x, x_2585.y, x_2586.z, x_2586.w);
            let x_2588 : vec2<f32> = u_xlat66;
            let x_2589 : vec2<f32> = (x_2588 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2590 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2589.x, x_2589.y, x_2590.z, x_2590.w);
            let x_2592 : vec4<f32> = u_xlat15;
            let x_2594 : vec2<f32> = (vec2<f32>(x_2592.x, x_2592.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2595 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2594.x, x_2594.y, x_2595.z, x_2595.w);
            let x_2597 : vec2<f32> = u_xlat64;
            let x_2598 : vec2<f32> = (x_2597 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2599 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2598.x, x_2598.y, x_2599.z, x_2599.w);
            let x_2601 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2601.y, x_2601.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2605 : f32 = u_xlat15.x;
            u_xlat16.z = x_2605;
            let x_2608 : f32 = u_xlat64.x;
            u_xlat16.w = x_2608;
            let x_2611 : f32 = u_xlat17.x;
            u_xlat14.z = x_2611;
            let x_2614 : f32 = u_xlat13.x;
            u_xlat14.w = x_2614;
            let x_2616 : vec4<f32> = u_xlat14;
            let x_2618 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2616.z, x_2616.w, x_2616.x, x_2616.z) + vec4<f32>(x_2618.z, x_2618.w, x_2618.x, x_2618.z));
            let x_2622 : f32 = u_xlat16.y;
            u_xlat15.z = x_2622;
            let x_2625 : f32 = u_xlat64.y;
            u_xlat15.w = x_2625;
            let x_2628 : f32 = u_xlat14.y;
            u_xlat17.z = x_2628;
            let x_2631 : f32 = u_xlat13.z;
            u_xlat17.w = x_2631;
            let x_2633 : vec4<f32> = u_xlat15;
            let x_2635 : vec4<f32> = u_xlat17;
            let x_2637 : vec3<f32> = (vec3<f32>(x_2633.z, x_2633.y, x_2633.w) + vec3<f32>(x_2635.z, x_2635.y, x_2635.w));
            let x_2638 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2637.x, x_2637.y, x_2637.z, x_2638.w);
            let x_2640 : vec4<f32> = u_xlat14;
            let x_2642 : vec4<f32> = u_xlat18;
            let x_2644 : vec3<f32> = (vec3<f32>(x_2640.x, x_2640.z, x_2640.w) / vec3<f32>(x_2642.z, x_2642.w, x_2642.y));
            let x_2645 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
            let x_2647 : vec4<f32> = u_xlat14;
            let x_2649 : vec3<f32> = (vec3<f32>(x_2647.x, x_2647.y, x_2647.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2650 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2649.x, x_2649.y, x_2649.z, x_2650.w);
            let x_2652 : vec4<f32> = u_xlat17;
            let x_2654 : vec4<f32> = u_xlat13;
            let x_2656 : vec3<f32> = (vec3<f32>(x_2652.z, x_2652.y, x_2652.w) / vec3<f32>(x_2654.x, x_2654.y, x_2654.z));
            let x_2657 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
            let x_2659 : vec4<f32> = u_xlat15;
            let x_2661 : vec3<f32> = (vec3<f32>(x_2659.x, x_2659.y, x_2659.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2662 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2661.x, x_2661.y, x_2661.z, x_2662.w);
            let x_2664 : vec4<f32> = u_xlat14;
            let x_2667 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2669 : vec3<f32> = (vec3<f32>(x_2664.y, x_2664.x, x_2664.z) * vec3<f32>(x_2667.x, x_2667.x, x_2667.x));
            let x_2670 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2669.x, x_2669.y, x_2669.z, x_2670.w);
            let x_2672 : vec4<f32> = u_xlat15;
            let x_2675 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2677 : vec3<f32> = (vec3<f32>(x_2672.x, x_2672.y, x_2672.z) * vec3<f32>(x_2675.y, x_2675.y, x_2675.y));
            let x_2678 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2677.x, x_2677.y, x_2677.z, x_2678.w);
            let x_2681 : f32 = u_xlat15.x;
            u_xlat14.w = x_2681;
            let x_2683 : vec4<f32> = u_xlat12;
            let x_2686 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2689 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2683.x, x_2683.y, x_2683.x, x_2683.y) * vec4<f32>(x_2686.x, x_2686.y, x_2686.x, x_2686.y)) + vec4<f32>(x_2689.y, x_2689.w, x_2689.x, x_2689.w));
            let x_2692 : vec4<f32> = u_xlat12;
            let x_2695 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2698 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2692.x, x_2692.y) * vec2<f32>(x_2695.x, x_2695.y)) + vec2<f32>(x_2698.z, x_2698.w));
            let x_2702 : f32 = u_xlat14.y;
            u_xlat15.w = x_2702;
            let x_2704 : vec4<f32> = u_xlat15;
            let x_2705 : vec2<f32> = vec2<f32>(x_2704.y, x_2704.z);
            let x_2706 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2706.x, x_2705.x, x_2706.z, x_2705.y);
            let x_2708 : vec4<f32> = u_xlat12;
            let x_2711 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2714 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2708.x, x_2708.y, x_2708.x, x_2708.y) * vec4<f32>(x_2711.x, x_2711.y, x_2711.x, x_2711.y)) + vec4<f32>(x_2714.x, x_2714.y, x_2714.z, x_2714.y));
            let x_2717 : vec4<f32> = u_xlat12;
            let x_2720 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2723 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2717.x, x_2717.y, x_2717.x, x_2717.y) * vec4<f32>(x_2720.x, x_2720.y, x_2720.x, x_2720.y)) + vec4<f32>(x_2723.w, x_2723.y, x_2723.w, x_2723.z));
            let x_2726 : vec4<f32> = u_xlat12;
            let x_2729 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2732 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2726.x, x_2726.y, x_2726.x, x_2726.y) * vec4<f32>(x_2729.x, x_2729.y, x_2729.x, x_2729.y)) + vec4<f32>(x_2732.x, x_2732.w, x_2732.z, x_2732.w));
            let x_2735 : vec4<f32> = u_xlat13;
            let x_2737 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2735.x, x_2735.x, x_2735.x, x_2735.y) * vec4<f32>(x_2737.z, x_2737.w, x_2737.y, x_2737.z));
            let x_2740 : vec4<f32> = u_xlat13;
            let x_2742 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2740.y, x_2740.y, x_2740.z, x_2740.z) * x_2742);
            let x_2745 : f32 = u_xlat13.z;
            let x_2747 : f32 = u_xlat18.y;
            u_xlat87 = (x_2745 * x_2747);
            let x_2750 : vec4<f32> = u_xlat16;
            let x_2751 : vec2<f32> = vec2<f32>(x_2750.x, x_2750.y);
            let x_2753 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2751.x, x_2751.y, x_2753);
            let x_2760 : vec3<f32> = txVec34;
            let x_2762 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2760.xy, x_2760.z);
            u_xlat88 = x_2762;
            let x_2764 : vec4<f32> = u_xlat16;
            let x_2765 : vec2<f32> = vec2<f32>(x_2764.z, x_2764.w);
            let x_2767 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2765.x, x_2765.y, x_2767);
            let x_2775 : vec3<f32> = txVec35;
            let x_2777 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2775.xy, x_2775.z);
            u_xlat89 = x_2777;
            let x_2778 : f32 = u_xlat89;
            let x_2780 : f32 = u_xlat19.y;
            u_xlat89 = (x_2778 * x_2780);
            let x_2783 : f32 = u_xlat19.x;
            let x_2784 : f32 = u_xlat88;
            let x_2786 : f32 = u_xlat89;
            u_xlat88 = ((x_2783 * x_2784) + x_2786);
            let x_2789 : vec2<f32> = u_xlat64;
            let x_2791 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2789.x, x_2789.y, x_2791);
            let x_2798 : vec3<f32> = txVec36;
            let x_2800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2798.xy, x_2798.z);
            u_xlat89 = x_2800;
            let x_2802 : f32 = u_xlat19.z;
            let x_2803 : f32 = u_xlat89;
            let x_2805 : f32 = u_xlat88;
            u_xlat88 = ((x_2802 * x_2803) + x_2805);
            let x_2808 : vec4<f32> = u_xlat15;
            let x_2809 : vec2<f32> = vec2<f32>(x_2808.x, x_2808.y);
            let x_2811 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2809.x, x_2809.y, x_2811);
            let x_2818 : vec3<f32> = txVec37;
            let x_2820 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2818.xy, x_2818.z);
            u_xlat89 = x_2820;
            let x_2822 : f32 = u_xlat19.w;
            let x_2823 : f32 = u_xlat89;
            let x_2825 : f32 = u_xlat88;
            u_xlat88 = ((x_2822 * x_2823) + x_2825);
            let x_2828 : vec4<f32> = u_xlat17;
            let x_2829 : vec2<f32> = vec2<f32>(x_2828.x, x_2828.y);
            let x_2831 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2829.x, x_2829.y, x_2831);
            let x_2838 : vec3<f32> = txVec38;
            let x_2840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2838.xy, x_2838.z);
            u_xlat89 = x_2840;
            let x_2842 : f32 = u_xlat20.x;
            let x_2843 : f32 = u_xlat89;
            let x_2845 : f32 = u_xlat88;
            u_xlat88 = ((x_2842 * x_2843) + x_2845);
            let x_2848 : vec4<f32> = u_xlat17;
            let x_2849 : vec2<f32> = vec2<f32>(x_2848.z, x_2848.w);
            let x_2851 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2849.x, x_2849.y, x_2851);
            let x_2858 : vec3<f32> = txVec39;
            let x_2860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2858.xy, x_2858.z);
            u_xlat89 = x_2860;
            let x_2862 : f32 = u_xlat20.y;
            let x_2863 : f32 = u_xlat89;
            let x_2865 : f32 = u_xlat88;
            u_xlat88 = ((x_2862 * x_2863) + x_2865);
            let x_2868 : vec4<f32> = u_xlat15;
            let x_2869 : vec2<f32> = vec2<f32>(x_2868.z, x_2868.w);
            let x_2871 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2869.x, x_2869.y, x_2871);
            let x_2878 : vec3<f32> = txVec40;
            let x_2880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2878.xy, x_2878.z);
            u_xlat89 = x_2880;
            let x_2882 : f32 = u_xlat20.z;
            let x_2883 : f32 = u_xlat89;
            let x_2885 : f32 = u_xlat88;
            u_xlat88 = ((x_2882 * x_2883) + x_2885);
            let x_2888 : vec4<f32> = u_xlat14;
            let x_2889 : vec2<f32> = vec2<f32>(x_2888.x, x_2888.y);
            let x_2891 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2889.x, x_2889.y, x_2891);
            let x_2898 : vec3<f32> = txVec41;
            let x_2900 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2898.xy, x_2898.z);
            u_xlat89 = x_2900;
            let x_2902 : f32 = u_xlat20.w;
            let x_2903 : f32 = u_xlat89;
            let x_2905 : f32 = u_xlat88;
            u_xlat88 = ((x_2902 * x_2903) + x_2905);
            let x_2908 : vec4<f32> = u_xlat14;
            let x_2909 : vec2<f32> = vec2<f32>(x_2908.z, x_2908.w);
            let x_2911 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2909.x, x_2909.y, x_2911);
            let x_2918 : vec3<f32> = txVec42;
            let x_2920 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2918.xy, x_2918.z);
            u_xlat89 = x_2920;
            let x_2921 : f32 = u_xlat87;
            let x_2922 : f32 = u_xlat89;
            let x_2924 : f32 = u_xlat88;
            u_xlat61.x = ((x_2921 * x_2922) + x_2924);
          } else {
            let x_2928 : vec4<f32> = u_xlat11;
            let x_2931 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2934 : vec2<f32> = ((vec2<f32>(x_2928.x, x_2928.y) * vec2<f32>(x_2931.z, x_2931.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2935 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2934.x, x_2934.y, x_2935.z, x_2935.w);
            let x_2937 : vec4<f32> = u_xlat12;
            let x_2939 : vec2<f32> = floor(vec2<f32>(x_2937.x, x_2937.y));
            let x_2940 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2939.x, x_2939.y, x_2940.z, x_2940.w);
            let x_2942 : vec4<f32> = u_xlat11;
            let x_2945 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_2948 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2942.x, x_2942.y) * vec2<f32>(x_2945.z, x_2945.w)) + -(vec2<f32>(x_2948.x, x_2948.y)));
            let x_2952 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2952.x, x_2952.x, x_2952.y, x_2952.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2955 : vec4<f32> = u_xlat13;
            let x_2957 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2955.x, x_2955.x, x_2955.z, x_2955.z) * vec4<f32>(x_2957.x, x_2957.x, x_2957.z, x_2957.z));
            let x_2960 : vec4<f32> = u_xlat14;
            let x_2962 : vec2<f32> = (vec2<f32>(x_2960.y, x_2960.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2963 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2963.x, x_2962.x, x_2963.z, x_2962.y);
            let x_2965 : vec4<f32> = u_xlat14;
            let x_2968 : vec2<f32> = u_xlat64;
            let x_2970 : vec2<f32> = ((vec2<f32>(x_2965.x, x_2965.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2968));
            let x_2971 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2970.x, x_2971.y, x_2970.y, x_2971.w);
            let x_2973 : vec2<f32> = u_xlat64;
            let x_2975 : vec2<f32> = (-(x_2973) + vec2<f32>(1.0f, 1.0f));
            let x_2976 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2975.x, x_2975.y, x_2976.z, x_2976.w);
            let x_2978 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2978, vec2<f32>(0.0f, 0.0f));
            let x_2980 : vec2<f32> = u_xlat66;
            let x_2982 : vec2<f32> = u_xlat66;
            let x_2984 : vec4<f32> = u_xlat14;
            let x_2986 : vec2<f32> = ((-(x_2980) * x_2982) + vec2<f32>(x_2984.x, x_2984.y));
            let x_2987 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2986.x, x_2986.y, x_2987.z, x_2987.w);
            let x_2989 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2989, vec2<f32>(0.0f, 0.0f));
            let x_2992 : vec2<f32> = u_xlat66;
            let x_2994 : vec2<f32> = u_xlat66;
            let x_2996 : vec4<f32> = u_xlat13;
            let x_2998 : vec2<f32> = ((-(x_2992) * x_2994) + vec2<f32>(x_2996.y, x_2996.w));
            let x_2999 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2998.x, x_2999.y, x_2998.y);
            let x_3001 : vec4<f32> = u_xlat14;
            let x_3004 : vec2<f32> = (vec2<f32>(x_3001.x, x_3001.y) + vec2<f32>(2.0f, 2.0f));
            let x_3005 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3004.x, x_3004.y, x_3005.z, x_3005.w);
            let x_3007 : vec3<f32> = u_xlat39;
            let x_3009 : vec2<f32> = (vec2<f32>(x_3007.x, x_3007.z) + vec2<f32>(2.0f, 2.0f));
            let x_3010 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3010.x, x_3009.x, x_3010.z, x_3009.y);
            let x_3013 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3013 * 0.08163200318813323975f);
            let x_3016 : vec4<f32> = u_xlat13;
            let x_3019 : vec3<f32> = (vec3<f32>(x_3016.z, x_3016.x, x_3016.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3020 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3020.w);
            let x_3022 : vec4<f32> = u_xlat14;
            let x_3024 : vec2<f32> = (vec2<f32>(x_3022.x, x_3022.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3025 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3024.x, x_3024.y, x_3025.z, x_3025.w);
            let x_3028 : f32 = u_xlat17.y;
            u_xlat16.x = x_3028;
            let x_3030 : vec2<f32> = u_xlat64;
            let x_3033 : vec2<f32> = ((vec2<f32>(x_3030.x, x_3030.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3034 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3034.x, x_3033.x, x_3034.z, x_3033.y);
            let x_3036 : vec2<f32> = u_xlat64;
            let x_3039 : vec2<f32> = ((vec2<f32>(x_3036.x, x_3036.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3040 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3039.x, x_3040.y, x_3039.y, x_3040.w);
            let x_3043 : f32 = u_xlat13.x;
            u_xlat14.y = x_3043;
            let x_3046 : f32 = u_xlat15.y;
            u_xlat14.w = x_3046;
            let x_3048 : vec4<f32> = u_xlat14;
            let x_3049 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3048 + x_3049);
            let x_3051 : vec2<f32> = u_xlat64;
            let x_3054 : vec2<f32> = ((vec2<f32>(x_3051.y, x_3051.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3055 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3055.x, x_3054.x, x_3055.z, x_3054.y);
            let x_3057 : vec2<f32> = u_xlat64;
            let x_3060 : vec2<f32> = ((vec2<f32>(x_3057.y, x_3057.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3061 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3060.x, x_3061.y, x_3060.y, x_3061.w);
            let x_3064 : f32 = u_xlat13.y;
            u_xlat15.y = x_3064;
            let x_3066 : vec4<f32> = u_xlat15;
            let x_3067 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3066 + x_3067);
            let x_3069 : vec4<f32> = u_xlat14;
            let x_3070 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3069 / x_3070);
            let x_3072 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3072 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3074 : vec4<f32> = u_xlat15;
            let x_3075 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3074 / x_3075);
            let x_3077 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3077 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3079 : vec4<f32> = u_xlat14;
            let x_3082 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3079.w, x_3079.x, x_3079.y, x_3079.z) * vec4<f32>(x_3082.x, x_3082.x, x_3082.x, x_3082.x));
            let x_3085 : vec4<f32> = u_xlat15;
            let x_3088 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3085.x, x_3085.w, x_3085.y, x_3085.z) * vec4<f32>(x_3088.y, x_3088.y, x_3088.y, x_3088.y));
            let x_3091 : vec4<f32> = u_xlat14;
            let x_3092 : vec3<f32> = vec3<f32>(x_3091.y, x_3091.z, x_3091.w);
            let x_3093 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3092.x, x_3093.y, x_3092.y, x_3092.z);
            let x_3096 : f32 = u_xlat15.x;
            u_xlat17.y = x_3096;
            let x_3098 : vec4<f32> = u_xlat12;
            let x_3101 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3104 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3098.x, x_3098.y, x_3098.x, x_3098.y) * vec4<f32>(x_3101.x, x_3101.y, x_3101.x, x_3101.y)) + vec4<f32>(x_3104.x, x_3104.y, x_3104.z, x_3104.y));
            let x_3107 : vec4<f32> = u_xlat12;
            let x_3110 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3113 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3107.x, x_3107.y) * vec2<f32>(x_3110.x, x_3110.y)) + vec2<f32>(x_3113.w, x_3113.y));
            let x_3117 : f32 = u_xlat17.y;
            u_xlat14.y = x_3117;
            let x_3120 : f32 = u_xlat15.z;
            u_xlat17.y = x_3120;
            let x_3122 : vec4<f32> = u_xlat12;
            let x_3125 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3128 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3122.x, x_3122.y, x_3122.x, x_3122.y) * vec4<f32>(x_3125.x, x_3125.y, x_3125.x, x_3125.y)) + vec4<f32>(x_3128.x, x_3128.y, x_3128.z, x_3128.y));
            let x_3131 : vec4<f32> = u_xlat12;
            let x_3134 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3137 : vec4<f32> = u_xlat17;
            let x_3139 : vec2<f32> = ((vec2<f32>(x_3131.x, x_3131.y) * vec2<f32>(x_3134.x, x_3134.y)) + vec2<f32>(x_3137.w, x_3137.y));
            let x_3140 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3139.x, x_3139.y, x_3140.z, x_3140.w);
            let x_3143 : f32 = u_xlat17.y;
            u_xlat14.z = x_3143;
            let x_3146 : vec4<f32> = u_xlat12;
            let x_3149 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3152 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3146.x, x_3146.y, x_3146.x, x_3146.y) * vec4<f32>(x_3149.x, x_3149.y, x_3149.x, x_3149.y)) + vec4<f32>(x_3152.x, x_3152.y, x_3152.x, x_3152.z));
            let x_3156 : f32 = u_xlat15.w;
            u_xlat17.y = x_3156;
            let x_3159 : vec4<f32> = u_xlat12;
            let x_3162 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3165 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3159.x, x_3159.y, x_3159.x, x_3159.y) * vec4<f32>(x_3162.x, x_3162.y, x_3162.x, x_3162.y)) + vec4<f32>(x_3165.x, x_3165.y, x_3165.z, x_3165.y));
            let x_3169 : vec4<f32> = u_xlat12;
            let x_3172 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3175 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3169.x, x_3169.y) * vec2<f32>(x_3172.x, x_3172.y)) + vec2<f32>(x_3175.w, x_3175.y));
            let x_3179 : f32 = u_xlat17.y;
            u_xlat14.w = x_3179;
            let x_3182 : vec4<f32> = u_xlat12;
            let x_3185 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3188 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3182.x, x_3182.y) * vec2<f32>(x_3185.x, x_3185.y)) + vec2<f32>(x_3188.x, x_3188.w));
            let x_3191 : vec4<f32> = u_xlat17;
            let x_3192 : vec3<f32> = vec3<f32>(x_3191.x, x_3191.z, x_3191.w);
            let x_3193 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3192.x, x_3193.y, x_3192.y, x_3192.z);
            let x_3195 : vec4<f32> = u_xlat12;
            let x_3198 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3201 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3195.x, x_3195.y, x_3195.x, x_3195.y) * vec4<f32>(x_3198.x, x_3198.y, x_3198.x, x_3198.y)) + vec4<f32>(x_3201.x, x_3201.y, x_3201.z, x_3201.y));
            let x_3205 : vec4<f32> = u_xlat12;
            let x_3208 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3211 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3205.x, x_3205.y) * vec2<f32>(x_3208.x, x_3208.y)) + vec2<f32>(x_3211.w, x_3211.y));
            let x_3215 : f32 = u_xlat14.x;
            u_xlat15.x = x_3215;
            let x_3217 : vec4<f32> = u_xlat12;
            let x_3220 : vec4<f32> = x_193.x_AdditionalShadowmapSize;
            let x_3223 : vec4<f32> = u_xlat15;
            let x_3225 : vec2<f32> = ((vec2<f32>(x_3217.x, x_3217.y) * vec2<f32>(x_3220.x, x_3220.y)) + vec2<f32>(x_3223.x, x_3223.y));
            let x_3226 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3225.x, x_3225.y, x_3226.z, x_3226.w);
            let x_3229 : vec4<f32> = u_xlat13;
            let x_3231 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3229.x, x_3229.x, x_3229.x, x_3229.x) * x_3231);
            let x_3234 : vec4<f32> = u_xlat13;
            let x_3236 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3234.y, x_3234.y, x_3234.y, x_3234.y) * x_3236);
            let x_3239 : vec4<f32> = u_xlat13;
            let x_3241 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3239.z, x_3239.z, x_3239.z, x_3239.z) * x_3241);
            let x_3243 : vec4<f32> = u_xlat13;
            let x_3245 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3243.w, x_3243.w, x_3243.w, x_3243.w) * x_3245);
            let x_3248 : vec4<f32> = u_xlat18;
            let x_3249 : vec2<f32> = vec2<f32>(x_3248.x, x_3248.y);
            let x_3251 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3249.x, x_3249.y, x_3251);
            let x_3258 : vec3<f32> = txVec43;
            let x_3260 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3258.xy, x_3258.z);
            u_xlat87 = x_3260;
            let x_3262 : vec4<f32> = u_xlat18;
            let x_3263 : vec2<f32> = vec2<f32>(x_3262.z, x_3262.w);
            let x_3265 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3263.x, x_3263.y, x_3265);
            let x_3272 : vec3<f32> = txVec44;
            let x_3274 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3272.xy, x_3272.z);
            u_xlat88 = x_3274;
            let x_3275 : f32 = u_xlat88;
            let x_3277 : f32 = u_xlat23.y;
            u_xlat88 = (x_3275 * x_3277);
            let x_3280 : f32 = u_xlat23.x;
            let x_3281 : f32 = u_xlat87;
            let x_3283 : f32 = u_xlat88;
            u_xlat87 = ((x_3280 * x_3281) + x_3283);
            let x_3286 : vec2<f32> = u_xlat64;
            let x_3288 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3286.x, x_3286.y, x_3288);
            let x_3295 : vec3<f32> = txVec45;
            let x_3297 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3295.xy, x_3295.z);
            u_xlat88 = x_3297;
            let x_3299 : f32 = u_xlat23.z;
            let x_3300 : f32 = u_xlat88;
            let x_3302 : f32 = u_xlat87;
            u_xlat87 = ((x_3299 * x_3300) + x_3302);
            let x_3305 : vec4<f32> = u_xlat21;
            let x_3306 : vec2<f32> = vec2<f32>(x_3305.x, x_3305.y);
            let x_3308 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3306.x, x_3306.y, x_3308);
            let x_3315 : vec3<f32> = txVec46;
            let x_3317 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3315.xy, x_3315.z);
            u_xlat88 = x_3317;
            let x_3319 : f32 = u_xlat23.w;
            let x_3320 : f32 = u_xlat88;
            let x_3322 : f32 = u_xlat87;
            u_xlat87 = ((x_3319 * x_3320) + x_3322);
            let x_3325 : vec4<f32> = u_xlat19;
            let x_3326 : vec2<f32> = vec2<f32>(x_3325.x, x_3325.y);
            let x_3328 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3326.x, x_3326.y, x_3328);
            let x_3335 : vec3<f32> = txVec47;
            let x_3337 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3335.xy, x_3335.z);
            u_xlat88 = x_3337;
            let x_3339 : f32 = u_xlat24.x;
            let x_3340 : f32 = u_xlat88;
            let x_3342 : f32 = u_xlat87;
            u_xlat87 = ((x_3339 * x_3340) + x_3342);
            let x_3345 : vec4<f32> = u_xlat19;
            let x_3346 : vec2<f32> = vec2<f32>(x_3345.z, x_3345.w);
            let x_3348 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3346.x, x_3346.y, x_3348);
            let x_3355 : vec3<f32> = txVec48;
            let x_3357 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3355.xy, x_3355.z);
            u_xlat88 = x_3357;
            let x_3359 : f32 = u_xlat24.y;
            let x_3360 : f32 = u_xlat88;
            let x_3362 : f32 = u_xlat87;
            u_xlat87 = ((x_3359 * x_3360) + x_3362);
            let x_3365 : vec4<f32> = u_xlat20;
            let x_3366 : vec2<f32> = vec2<f32>(x_3365.x, x_3365.y);
            let x_3368 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3366.x, x_3366.y, x_3368);
            let x_3375 : vec3<f32> = txVec49;
            let x_3377 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3375.xy, x_3375.z);
            u_xlat88 = x_3377;
            let x_3379 : f32 = u_xlat24.z;
            let x_3380 : f32 = u_xlat88;
            let x_3382 : f32 = u_xlat87;
            u_xlat87 = ((x_3379 * x_3380) + x_3382);
            let x_3385 : vec4<f32> = u_xlat21;
            let x_3386 : vec2<f32> = vec2<f32>(x_3385.z, x_3385.w);
            let x_3388 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3386.x, x_3386.y, x_3388);
            let x_3395 : vec3<f32> = txVec50;
            let x_3397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3395.xy, x_3395.z);
            u_xlat88 = x_3397;
            let x_3399 : f32 = u_xlat24.w;
            let x_3400 : f32 = u_xlat88;
            let x_3402 : f32 = u_xlat87;
            u_xlat87 = ((x_3399 * x_3400) + x_3402);
            let x_3405 : vec4<f32> = u_xlat22;
            let x_3406 : vec2<f32> = vec2<f32>(x_3405.x, x_3405.y);
            let x_3408 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3406.x, x_3406.y, x_3408);
            let x_3415 : vec3<f32> = txVec51;
            let x_3417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3415.xy, x_3415.z);
            u_xlat88 = x_3417;
            let x_3419 : f32 = u_xlat25.x;
            let x_3420 : f32 = u_xlat88;
            let x_3422 : f32 = u_xlat87;
            u_xlat87 = ((x_3419 * x_3420) + x_3422);
            let x_3425 : vec4<f32> = u_xlat22;
            let x_3426 : vec2<f32> = vec2<f32>(x_3425.z, x_3425.w);
            let x_3428 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3426.x, x_3426.y, x_3428);
            let x_3435 : vec3<f32> = txVec52;
            let x_3437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3435.xy, x_3435.z);
            u_xlat88 = x_3437;
            let x_3439 : f32 = u_xlat25.y;
            let x_3440 : f32 = u_xlat88;
            let x_3442 : f32 = u_xlat87;
            u_xlat87 = ((x_3439 * x_3440) + x_3442);
            let x_3445 : vec2<f32> = u_xlat40;
            let x_3447 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3445.x, x_3445.y, x_3447);
            let x_3454 : vec3<f32> = txVec53;
            let x_3456 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3454.xy, x_3454.z);
            u_xlat88 = x_3456;
            let x_3458 : f32 = u_xlat25.z;
            let x_3459 : f32 = u_xlat88;
            let x_3461 : f32 = u_xlat87;
            u_xlat87 = ((x_3458 * x_3459) + x_3461);
            let x_3464 : vec2<f32> = u_xlat72;
            let x_3466 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3464.x, x_3464.y, x_3466);
            let x_3473 : vec3<f32> = txVec54;
            let x_3475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3473.xy, x_3473.z);
            u_xlat88 = x_3475;
            let x_3477 : f32 = u_xlat25.w;
            let x_3478 : f32 = u_xlat88;
            let x_3480 : f32 = u_xlat87;
            u_xlat87 = ((x_3477 * x_3478) + x_3480);
            let x_3483 : vec4<f32> = u_xlat17;
            let x_3484 : vec2<f32> = vec2<f32>(x_3483.x, x_3483.y);
            let x_3486 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3484.x, x_3484.y, x_3486);
            let x_3493 : vec3<f32> = txVec55;
            let x_3495 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3493.xy, x_3493.z);
            u_xlat88 = x_3495;
            let x_3497 : f32 = u_xlat13.x;
            let x_3498 : f32 = u_xlat88;
            let x_3500 : f32 = u_xlat87;
            u_xlat87 = ((x_3497 * x_3498) + x_3500);
            let x_3503 : vec4<f32> = u_xlat17;
            let x_3504 : vec2<f32> = vec2<f32>(x_3503.z, x_3503.w);
            let x_3506 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3504.x, x_3504.y, x_3506);
            let x_3513 : vec3<f32> = txVec56;
            let x_3515 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3513.xy, x_3513.z);
            u_xlat88 = x_3515;
            let x_3517 : f32 = u_xlat13.y;
            let x_3518 : f32 = u_xlat88;
            let x_3520 : f32 = u_xlat87;
            u_xlat87 = ((x_3517 * x_3518) + x_3520);
            let x_3523 : vec2<f32> = u_xlat67;
            let x_3525 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3523.x, x_3523.y, x_3525);
            let x_3532 : vec3<f32> = txVec57;
            let x_3534 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3532.xy, x_3532.z);
            u_xlat88 = x_3534;
            let x_3536 : f32 = u_xlat13.z;
            let x_3537 : f32 = u_xlat88;
            let x_3539 : f32 = u_xlat87;
            u_xlat87 = ((x_3536 * x_3537) + x_3539);
            let x_3542 : vec4<f32> = u_xlat12;
            let x_3543 : vec2<f32> = vec2<f32>(x_3542.x, x_3542.y);
            let x_3545 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3543.x, x_3543.y, x_3545);
            let x_3552 : vec3<f32> = txVec58;
            let x_3554 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3552.xy, x_3552.z);
            u_xlat88 = x_3554;
            let x_3556 : f32 = u_xlat13.w;
            let x_3557 : f32 = u_xlat88;
            let x_3559 : f32 = u_xlat87;
            u_xlat61.x = ((x_3556 * x_3557) + x_3559);
          }
        }
      } else {
        let x_3564 : vec4<f32> = u_xlat11;
        let x_3565 : vec2<f32> = vec2<f32>(x_3564.x, x_3564.y);
        let x_3567 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3565.x, x_3565.y, x_3567);
        let x_3574 : vec3<f32> = txVec59;
        let x_3576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3574.xy, x_3574.z);
        u_xlat61.x = x_3576;
      }
      let x_3578 : i32 = u_xlati8;
      let x_3580 : f32 = x_193.x_AdditionalShadowParams[x_3578].x;
      u_xlat87 = (1.0f + -(x_3580));
      let x_3584 : f32 = u_xlat61.x;
      let x_3585 : i32 = u_xlati8;
      let x_3587 : f32 = x_193.x_AdditionalShadowParams[x_3585].x;
      let x_3589 : f32 = u_xlat87;
      u_xlat61.x = ((x_3584 * x_3587) + x_3589);
      let x_3593 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3593);
      let x_3597 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3597 >= 1.0f);
      let x_3599 : bool = u_xlatb87;
      let x_3600 : bool = u_xlatb88;
      u_xlatb87 = (x_3599 | x_3600);
      let x_3602 : bool = u_xlatb87;
      if (x_3602) {
        x_3603 = 1.0f;
      } else {
        let x_3608 : f32 = u_xlat61.x;
        x_3603 = x_3608;
      }
      let x_3609 : f32 = x_3603;
      u_xlat61.x = x_3609;
    } else {
      u_xlat61.x = 1.0f;
    }
    let x_3614 : f32 = u_xlat61.x;
    u_xlat87 = (-(x_3614) + 1.0f);
    let x_3617 : f32 = u_xlat81;
    let x_3618 : f32 = u_xlat87;
    let x_3621 : f32 = u_xlat61.x;
    u_xlat61.x = ((x_3617 * x_3618) + x_3621);
    let x_3625 : f32 = u_xlat61.x;
    let x_3627 : f32 = u_xlat9.x;
    u_xlat9.x = (x_3625 * x_3627);
    let x_3630 : vec3<f32> = u_xlat3;
    let x_3631 : vec4<f32> = u_xlat10;
    u_xlat61.x = dot(x_3630, vec3<f32>(x_3631.x, x_3631.y, x_3631.z));
    let x_3636 : f32 = u_xlat61.x;
    u_xlat61.x = clamp(x_3636, 0.0f, 1.0f);
    let x_3640 : f32 = u_xlat61.x;
    let x_3642 : f32 = u_xlat9.x;
    u_xlat9.x = (x_3640 * x_3642);
    let x_3645 : vec4<f32> = u_xlat9;
    let x_3647 : i32 = u_xlati8;
    let x_3649 : vec4<f32> = x_2161.x_AdditionalLightsColor[x_3647];
    let x_3651 : vec3<f32> = (vec3<f32>(x_3645.x, x_3645.x, x_3645.x) * vec3<f32>(x_3649.x, x_3649.y, x_3649.z));
    let x_3652 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3651.x, x_3652.y, x_3651.y, x_3651.z);
    let x_3654 : vec3<f32> = u_xlat34;
    let x_3655 : f32 = u_xlat35;
    let x_3658 : vec3<f32> = u_xlat2;
    let x_3659 : vec3<f32> = ((x_3654 * vec3<f32>(x_3655, x_3655, x_3655)) + x_3658);
    let x_3660 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3659.x, x_3659.y, x_3659.z, x_3660.w);
    let x_3662 : vec4<f32> = u_xlat8;
    let x_3664 : vec4<f32> = u_xlat8;
    u_xlat86 = dot(vec3<f32>(x_3662.x, x_3662.y, x_3662.z), vec3<f32>(x_3664.x, x_3664.y, x_3664.z));
    let x_3667 : f32 = u_xlat86;
    u_xlat86 = max(x_3667, 1.17549435e-38f);
    let x_3669 : f32 = u_xlat86;
    u_xlat86 = inverseSqrt(x_3669);
    let x_3671 : f32 = u_xlat86;
    let x_3673 : vec4<f32> = u_xlat8;
    let x_3675 : vec3<f32> = (vec3<f32>(x_3671, x_3671, x_3671) * vec3<f32>(x_3673.x, x_3673.y, x_3673.z));
    let x_3676 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3675.x, x_3675.y, x_3675.z, x_3676.w);
    let x_3678 : vec3<f32> = u_xlat3;
    let x_3679 : vec4<f32> = u_xlat8;
    u_xlat8.w = dot(x_3678, vec3<f32>(x_3679.x, x_3679.y, x_3679.z));
    let x_3684 : f32 = u_xlat8.w;
    u_xlat8.w = clamp(x_3684, 0.0f, 1.0f);
    let x_3687 : vec4<f32> = u_xlat10;
    let x_3689 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(vec3<f32>(x_3687.x, x_3687.y, x_3687.z), vec3<f32>(x_3689.x, x_3689.y, x_3689.z));
    let x_3694 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3694, 0.0f, 1.0f);
    let x_3697 : vec4<f32> = u_xlat8;
    let x_3699 : vec4<f32> = u_xlat8;
    let x_3701 : vec2<f32> = (vec2<f32>(x_3697.x, x_3697.w) * vec2<f32>(x_3699.x, x_3699.w));
    let x_3702 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3701.x, x_3701.y, x_3702.z, x_3702.w);
    let x_3705 : f32 = u_xlat8.y;
    let x_3707 : f32 = u_xlat7.x;
    u_xlat34.x = ((x_3705 * x_3707) + 1.00001001358032226562f);
    let x_3712 : f32 = u_xlat34.x;
    let x_3714 : f32 = u_xlat34.x;
    u_xlat34.x = (x_3712 * x_3714);
    let x_3718 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3718, 0.10000000149011611938f);
    let x_3722 : f32 = u_xlat8.x;
    let x_3724 : f32 = u_xlat34.x;
    u_xlat8.x = (x_3722 * x_3724);
    let x_3728 : f32 = u_xlat6.x;
    let x_3730 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3728 * x_3730);
    let x_3733 : f32 = u_xlat83;
    let x_3735 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3733 / x_3735);
    let x_3738 : vec4<f32> = u_xlat0;
    let x_3740 : vec4<f32> = u_xlat8;
    let x_3743 : vec3<f32> = u_xlat27;
    let x_3744 : vec3<f32> = ((vec3<f32>(x_3738.x, x_3738.y, x_3738.z) * vec3<f32>(x_3740.x, x_3740.x, x_3740.x)) + x_3743);
    let x_3745 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3744.x, x_3744.y, x_3744.z, x_3745.w);
    let x_3747 : vec4<f32> = u_xlat8;
    let x_3749 : vec4<f32> = u_xlat9;
    let x_3752 : vec3<f32> = u_xlat33;
    u_xlat33 = ((vec3<f32>(x_3747.x, x_3747.y, x_3747.z) * vec3<f32>(x_3749.x, x_3749.z, x_3749.w)) + x_3752);

    continuing {
      let x_3754 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3754 + bitcast<u32>(1i));
    }
  }
  let x_3756 : vec3<f32> = u_xlat32;
  let x_3757 : vec4<f32> = u_xlat4;
  let x_3760 : vec4<f32> = u_xlat5;
  let x_3762 : vec3<f32> = ((x_3756 * vec3<f32>(x_3757.x, x_3757.z, x_3757.w)) + vec3<f32>(x_3760.x, x_3760.y, x_3760.z));
  let x_3763 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3762.x, x_3762.y, x_3762.z, x_3763.w);
  let x_3765 : vec3<f32> = u_xlat33;
  let x_3766 : vec4<f32> = u_xlat0;
  let x_3768 : vec3<f32> = (x_3765 + vec3<f32>(x_3766.x, x_3766.y, x_3766.z));
  let x_3769 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3768.x, x_3768.y, x_3768.z, x_3769.w);
  let x_3771 : f32 = u_xlat78;
  let x_3772 : f32 = u_xlat78;
  u_xlat78 = (x_3771 * -(x_3772));
  let x_3775 : f32 = u_xlat78;
  u_xlat78 = exp2(x_3775);
  let x_3777 : vec4<f32> = u_xlat0;
  let x_3780 : vec4<f32> = x_45.unity_FogColor;
  let x_3783 : vec3<f32> = (vec3<f32>(x_3777.x, x_3777.y, x_3777.z) + -(vec3<f32>(x_3780.x, x_3780.y, x_3780.z)));
  let x_3784 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3783.x, x_3783.y, x_3783.z, x_3784.w);
  let x_3788 : f32 = u_xlat78;
  let x_3790 : vec4<f32> = u_xlat0;
  let x_3794 : vec4<f32> = x_45.unity_FogColor;
  let x_3796 : vec3<f32> = ((vec3<f32>(x_3788, x_3788, x_3788) * vec3<f32>(x_3790.x, x_3790.y, x_3790.z)) + vec3<f32>(x_3794.x, x_3794.y, x_3794.z));
  let x_3797 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3796.x, x_3796.y, x_3796.z, x_3797.w);
  let x_3801 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_3801 == 1.0f);
  let x_3803 : bool = u_xlatb0;
  if (x_3803) {
    let x_3808 : f32 = u_xlat1.x;
    x_3804 = x_3808;
  } else {
    x_3804 = 1.0f;
  }
  let x_3810 : f32 = x_3804;
  SV_Target0.w = x_3810;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}


