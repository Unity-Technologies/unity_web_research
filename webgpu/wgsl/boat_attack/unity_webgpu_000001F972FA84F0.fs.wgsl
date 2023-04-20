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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(160) */
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

var<private> u_xlat75 : f32;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_96 : UnityPerDraw;

var<private> u_xlatb75 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_208 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlatb6 : bool;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb54 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat54 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlatu81 : u32;

var<private> u_xlati8 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2122 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlati10 : i32;

var<private> u_xlatb35 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(5) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat85 : f32;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlatb60 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu78 : u32;

var<private> u_xlatb81 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_155 : f32;
  var x_167 : f32;
  var x_179 : f32;
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
  var x_1791 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2270 : f32;
  var x_2283 : f32;
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
  var x_3616 : f32;
  var x_3777 : f32;
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
  u_xlat75 = x_87.w;
  let x_98 : f32 = x_96.unity_LODFade.x;
  u_xlatb2 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb2;
  if (x_101) {
    let x_106 : f32 = u_xlat75;
    x_103 = abs(x_106);
  } else {
    let x_109 : f32 = u_xlat75;
    x_103 = -(abs(x_109));
  }
  let x_112 : f32 = x_103;
  u_xlat75 = x_112;
  let x_113 : f32 = u_xlat75;
  let x_116 : f32 = x_96.unity_LODFade.x;
  u_xlat75 = (-(x_113) + x_116);
  let x_119 : f32 = u_xlat75;
  u_xlatb75 = (x_119 < 0.0f);
  let x_121 : bool = u_xlatb75;
  if (((select(0i, 1i, x_121) * -1i) != 0i)) {
    discard;
  }
  let x_132 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb75 = (x_132 == 0.0f);
  let x_136 : vec3<f32> = vs_TEXCOORD1;
  let x_141 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_136) + x_141);
  let x_144 : vec3<f32> = u_xlat2;
  let x_145 : vec3<f32> = u_xlat2;
  u_xlat77 = dot(x_144, x_145);
  let x_147 : f32 = u_xlat77;
  u_xlat77 = inverseSqrt(x_147);
  let x_149 : f32 = u_xlat77;
  let x_151 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_149, x_149, x_149) * x_151);
  let x_154 : bool = u_xlatb75;
  if (x_154) {
    let x_159 : f32 = u_xlat2.x;
    x_155 = x_159;
  } else {
    let x_163 : f32 = x_45.unity_MatrixV[0i].z;
    x_155 = x_163;
  }
  let x_164 : f32 = x_155;
  u_xlat3.x = x_164;
  let x_166 : bool = u_xlatb75;
  if (x_166) {
    let x_172 : f32 = u_xlat2.y;
    x_167 = x_172;
  } else {
    let x_175 : f32 = x_45.unity_MatrixV[1i].z;
    x_167 = x_175;
  }
  let x_176 : f32 = x_167;
  u_xlat3.y = x_176;
  let x_178 : bool = u_xlatb75;
  if (x_178) {
    let x_183 : f32 = u_xlat2.z;
    x_179 = x_183;
  } else {
    let x_186 : f32 = x_45.unity_MatrixV[2i].z;
    x_179 = x_186;
  }
  let x_187 : f32 = x_179;
  u_xlat3.z = x_187;
  let x_190 : vec3<f32> = vs_TEXCOORD2;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  u_xlat75 = dot(x_190, x_191);
  let x_193 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_193);
  let x_195 : f32 = u_xlat75;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_195, x_195, x_195) * x_197);
  let x_200 : vec3<f32> = vs_TEXCOORD1;
  let x_210 : vec4<f32> = x_208.x_CascadeShadowSplitSpheres0;
  let x_213 : vec3<f32> = (x_200 + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : vec3<f32> = vs_TEXCOORD1;
  let x_219 : vec4<f32> = x_208.x_CascadeShadowSplitSpheres1;
  let x_222 : vec3<f32> = (x_217 + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_223 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : vec3<f32> = vs_TEXCOORD1;
  let x_229 : vec4<f32> = x_208.x_CascadeShadowSplitSpheres2;
  let x_232 : vec3<f32> = (x_226 + -(vec3<f32>(x_229.x, x_229.y, x_229.z)));
  let x_233 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_208.x_CascadeShadowSplitSpheres3;
  let x_241 : vec3<f32> = (x_236 + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_250 : vec4<f32> = u_xlat5;
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_256 : vec4<f32> = u_xlat6;
  let x_258 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_262 : vec4<f32> = u_xlat7;
  let x_264 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_271 : vec4<f32> = u_xlat4;
  let x_273 : vec4<f32> = x_208.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_271 < x_273);
  let x_276 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_276);
  let x_280 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_280);
  let x_284 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_284);
  let x_288 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_288);
  let x_292 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_292);
  let x_298 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_298);
  let x_302 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_302);
  let x_305 : vec4<f32> = u_xlat4;
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.x, x_305.y, x_305.z) + vec3<f32>(x_307.y, x_307.z, x_307.w));
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat4;
  let x_315 : vec3<f32> = max(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_316.x, x_315.x, x_315.y, x_315.z);
  let x_318 : vec4<f32> = u_xlat5;
  u_xlat75 = dot(x_318, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_324 : f32 = u_xlat75;
  u_xlat75 = (-(x_324) + 4.0f);
  let x_329 : f32 = u_xlat75;
  u_xlatu75 = u32(x_329);
  let x_333 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_333) << bitcast<u32>(2i));
  let x_336 : vec3<f32> = vs_TEXCOORD1;
  let x_338 : i32 = u_xlati75;
  let x_341 : i32 = u_xlati75;
  let x_345 : vec4<f32> = x_208.x_MainLightWorldToShadow[((x_338 + 1i) / 4i)][((x_341 + 1i) % 4i)];
  let x_347 : vec3<f32> = (vec3<f32>(x_336.y, x_336.y, x_336.y) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : i32 = u_xlati75;
  let x_352 : i32 = u_xlati75;
  let x_355 : vec4<f32> = x_208.x_MainLightWorldToShadow[(x_350 / 4i)][(x_352 % 4i)];
  let x_357 : vec3<f32> = vs_TEXCOORD1;
  let x_360 : vec4<f32> = u_xlat4;
  let x_362 : vec3<f32> = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.x, x_357.x)) + vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : i32 = u_xlati75;
  let x_368 : i32 = u_xlati75;
  let x_372 : vec4<f32> = x_208.x_MainLightWorldToShadow[((x_365 + 2i) / 4i)][((x_368 + 2i) % 4i)];
  let x_374 : vec3<f32> = vs_TEXCOORD1;
  let x_377 : vec4<f32> = u_xlat4;
  let x_379 : vec3<f32> = ((vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374.z, x_374.z, x_374.z)) + vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat4;
  let x_384 : i32 = u_xlati75;
  let x_387 : i32 = u_xlati75;
  let x_391 : vec4<f32> = x_208.x_MainLightWorldToShadow[((x_384 + 3i) / 4i)][((x_387 + 3i) % 4i)];
  let x_393 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) + vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_402 : vec2<f32> = vs_TEXCOORD8;
  let x_404 : f32 = x_45.x_GlobalMipBias.x;
  let x_405 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_402, x_404);
  u_xlat5 = x_405;
  let x_410 : vec2<f32> = vs_TEXCOORD8;
  let x_412 : f32 = x_45.x_GlobalMipBias.x;
  let x_413 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_410, x_412);
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.z);
  let x_415 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat5;
  let x_421 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec3<f32> = u_xlat2;
  let x_425 : vec4<f32> = u_xlat5;
  u_xlat75 = dot(x_424, vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : f32 = u_xlat75;
  u_xlat75 = (x_428 + 0.5f);
  let x_431 : f32 = u_xlat75;
  let x_433 : vec4<f32> = u_xlat6;
  let x_435 : vec3<f32> = (vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : f32 = u_xlat5.w;
  u_xlat75 = max(x_439, 0.00009999999747378752f);
  let x_442 : vec4<f32> = u_xlat5;
  let x_444 : f32 = u_xlat75;
  let x_446 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) / vec3<f32>(x_444, x_444, x_444));
  let x_447 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_450 : f32 = x_58.x_Metallic;
  u_xlat75 = ((-(x_450) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_455 : f32 = u_xlat75;
  let x_458 : f32 = x_58.x_Smoothness;
  u_xlat77 = (-(x_455) + x_458);
  let x_461 : f32 = u_xlat75;
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat26 = (vec3<f32>(x_461, x_461, x_461) * vec3<f32>(x_463.y, x_463.z, x_463.w));
  let x_466 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = x_58.x_BaseColor;
  let x_474 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(x_469.x, x_469.y, x_469.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_478 : f32 = x_58.x_Metallic;
  let x_480 : f32 = x_58.x_Metallic;
  let x_482 : f32 = x_58.x_Metallic;
  let x_483 : vec3<f32> = vec3<f32>(x_478, x_480, x_482);
  let x_488 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_488.x, x_488.y, x_488.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_497 : f32 = x_58.x_Smoothness;
  u_xlat75 = (-(x_497) + 1.0f);
  let x_501 : f32 = u_xlat75;
  let x_502 : f32 = u_xlat75;
  u_xlat78 = (x_501 * x_502);
  let x_504 : f32 = u_xlat78;
  u_xlat78 = max(x_504, 0.0078125f);
  let x_508 : f32 = u_xlat78;
  let x_509 : f32 = u_xlat78;
  u_xlat79 = (x_508 * x_509);
  let x_511 : f32 = u_xlat77;
  u_xlat77 = (x_511 + 1.0f);
  let x_513 : f32 = u_xlat77;
  u_xlat77 = clamp(x_513, 0.0f, 1.0f);
  let x_516 : f32 = u_xlat78;
  u_xlat80 = ((x_516 * 4.0f) + 2.0f);
  let x_522 : f32 = x_208.x_MainLightShadowParams.y;
  u_xlatb6 = (0.0f < x_522);
  let x_524 : bool = u_xlatb6;
  if (x_524) {
    let x_528 : f32 = x_208.x_MainLightShadowParams.y;
    u_xlatb6 = (x_528 == 1.0f);
    let x_530 : bool = u_xlatb6;
    if (x_530) {
      let x_533 : vec4<f32> = u_xlat4;
      let x_536 : vec4<f32> = x_208.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_533.x, x_533.y, x_533.x, x_533.y) + x_536);
      let x_540 : vec4<f32> = u_xlat6;
      let x_541 : vec2<f32> = vec2<f32>(x_540.x, x_540.y);
      let x_543 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_541.x, x_541.y, x_543);
      let x_555 : vec3<f32> = txVec0;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_555.xy, x_555.z);
      u_xlat7.x = x_557;
      let x_560 : vec4<f32> = u_xlat6;
      let x_561 : vec2<f32> = vec2<f32>(x_560.z, x_560.w);
      let x_563 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_561.x, x_561.y, x_563);
      let x_570 : vec3<f32> = txVec1;
      let x_572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_570.xy, x_570.z);
      u_xlat7.y = x_572;
      let x_574 : vec4<f32> = u_xlat4;
      let x_577 : vec4<f32> = x_208.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_574.x, x_574.y, x_574.x, x_574.y) + x_577);
      let x_580 : vec4<f32> = u_xlat6;
      let x_581 : vec2<f32> = vec2<f32>(x_580.x, x_580.y);
      let x_583 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_581.x, x_581.y, x_583);
      let x_590 : vec3<f32> = txVec2;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_590.xy, x_590.z);
      u_xlat7.z = x_592;
      let x_595 : vec4<f32> = u_xlat6;
      let x_596 : vec2<f32> = vec2<f32>(x_595.z, x_595.w);
      let x_598 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_596.x, x_596.y, x_598);
      let x_605 : vec3<f32> = txVec3;
      let x_607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_605.xy, x_605.z);
      u_xlat7.w = x_607;
      let x_609 : vec4<f32> = u_xlat7;
      u_xlat6.x = dot(x_609, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_617 : f32 = x_208.x_MainLightShadowParams.y;
      u_xlatb31 = (x_617 == 2.0f);
      let x_619 : bool = u_xlatb31;
      if (x_619) {
        let x_624 : vec4<f32> = u_xlat4;
        let x_628 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_628.z, x_628.w)) + vec2<f32>(0.5f, 0.5f));
        let x_633 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_633);
        let x_635 : vec4<f32> = u_xlat4;
        let x_638 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_641 : vec2<f32> = u_xlat31;
        let x_643 : vec2<f32> = ((vec2<f32>(x_635.x, x_635.y) * vec2<f32>(x_638.z, x_638.w)) + -(x_641));
        let x_644 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
        let x_647 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_647.x, x_647.x, x_647.y, x_647.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_652 : vec4<f32> = u_xlat8;
        let x_654 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_652.x, x_652.x, x_652.z, x_652.z) * vec4<f32>(x_654.x, x_654.x, x_654.z, x_654.z));
        let x_658 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_658.y, x_658.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_663 : vec4<f32> = u_xlat9;
        let x_666 : vec4<f32> = u_xlat7;
        let x_669 : vec2<f32> = ((vec2<f32>(x_663.x, x_663.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_666.x, x_666.y)));
        let x_670 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_669.x, x_670.y, x_669.y, x_670.w);
        let x_672 : vec4<f32> = u_xlat7;
        let x_676 : vec2<f32> = (-(vec2<f32>(x_672.x, x_672.y)) + vec2<f32>(1.0f, 1.0f));
        let x_677 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_680.x, x_680.y), vec2<f32>(0.0f, 0.0f));
        let x_684 : vec2<f32> = u_xlat59;
        let x_686 : vec2<f32> = u_xlat59;
        let x_688 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_684) * x_686) + vec2<f32>(x_688.x, x_688.y));
        let x_691 : vec4<f32> = u_xlat7;
        let x_693 : vec2<f32> = max(vec2<f32>(x_691.x, x_691.y), vec2<f32>(0.0f, 0.0f));
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat7;
        let x_699 : vec4<f32> = u_xlat7;
        let x_702 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = ((-(vec2<f32>(x_696.x, x_696.y)) * vec2<f32>(x_699.x, x_699.y)) + vec2<f32>(x_702.y, x_702.w));
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
        let x_707 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_707 + vec2<f32>(1.0f, 1.0f));
        let x_709 : vec4<f32> = u_xlat7;
        let x_711 : vec2<f32> = (vec2<f32>(x_709.x, x_709.y) + vec2<f32>(1.0f, 1.0f));
        let x_712 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
        let x_715 : vec4<f32> = u_xlat8;
        let x_719 : vec2<f32> = (vec2<f32>(x_715.x, x_715.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_720 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
        let x_723 : vec4<f32> = u_xlat9;
        let x_725 : vec2<f32> = (vec2<f32>(x_723.x, x_723.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_726 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_728 : vec2<f32> = u_xlat59;
        let x_729 : vec2<f32> = (x_728 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_730 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_733 : vec4<f32> = u_xlat7;
        let x_735 : vec2<f32> = (vec2<f32>(x_733.x, x_733.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_736 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
        let x_738 : vec4<f32> = u_xlat8;
        let x_740 : vec2<f32> = (vec2<f32>(x_738.y, x_738.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_741 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
        let x_744 : f32 = u_xlat9.x;
        u_xlat10.z = x_744;
        let x_747 : f32 = u_xlat7.x;
        u_xlat10.w = x_747;
        let x_750 : f32 = u_xlat12.x;
        u_xlat11.z = x_750;
        let x_753 : f32 = u_xlat57.x;
        u_xlat11.w = x_753;
        let x_755 : vec4<f32> = u_xlat10;
        let x_757 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_755.z, x_755.w, x_755.x, x_755.z) + vec4<f32>(x_757.z, x_757.w, x_757.x, x_757.z));
        let x_761 : f32 = u_xlat10.y;
        u_xlat9.z = x_761;
        let x_764 : f32 = u_xlat7.y;
        u_xlat9.w = x_764;
        let x_767 : f32 = u_xlat11.y;
        u_xlat12.z = x_767;
        let x_770 : f32 = u_xlat57.y;
        u_xlat12.w = x_770;
        let x_772 : vec4<f32> = u_xlat9;
        let x_774 : vec4<f32> = u_xlat12;
        let x_776 : vec3<f32> = (vec3<f32>(x_772.z, x_772.y, x_772.w) + vec3<f32>(x_774.z, x_774.y, x_774.w));
        let x_777 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
        let x_779 : vec4<f32> = u_xlat11;
        let x_781 : vec4<f32> = u_xlat8;
        let x_783 : vec3<f32> = (vec3<f32>(x_779.x, x_779.z, x_779.w) / vec3<f32>(x_781.z, x_781.w, x_781.y));
        let x_784 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
        let x_786 : vec4<f32> = u_xlat9;
        let x_791 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_792 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
        let x_794 : vec4<f32> = u_xlat12;
        let x_796 : vec4<f32> = u_xlat7;
        let x_798 : vec3<f32> = (vec3<f32>(x_794.z, x_794.y, x_794.w) / vec3<f32>(x_796.x, x_796.y, x_796.z));
        let x_799 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
        let x_801 : vec4<f32> = u_xlat10;
        let x_803 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_804 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
        let x_806 : vec4<f32> = u_xlat9;
        let x_809 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_811 : vec3<f32> = (vec3<f32>(x_806.y, x_806.x, x_806.z) * vec3<f32>(x_809.x, x_809.x, x_809.x));
        let x_812 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
        let x_814 : vec4<f32> = u_xlat10;
        let x_817 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_819 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_817.y, x_817.y, x_817.y));
        let x_820 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_823 : f32 = u_xlat10.x;
        u_xlat9.w = x_823;
        let x_825 : vec2<f32> = u_xlat31;
        let x_828 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_825.x, x_825.y, x_825.x, x_825.y) * vec4<f32>(x_828.x, x_828.y, x_828.x, x_828.y)) + vec4<f32>(x_831.y, x_831.w, x_831.x, x_831.w));
        let x_834 : vec2<f32> = u_xlat31;
        let x_836 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_839 : vec4<f32> = u_xlat9;
        let x_841 : vec2<f32> = ((x_834 * vec2<f32>(x_836.x, x_836.y)) + vec2<f32>(x_839.z, x_839.w));
        let x_842 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_845 : f32 = u_xlat9.y;
        u_xlat10.w = x_845;
        let x_847 : vec4<f32> = u_xlat10;
        let x_848 : vec2<f32> = vec2<f32>(x_847.y, x_847.z);
        let x_849 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_849.x, x_848.x, x_849.z, x_848.y);
        let x_852 : vec2<f32> = u_xlat31;
        let x_855 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_858 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_852.x, x_852.y, x_852.x, x_852.y) * vec4<f32>(x_855.x, x_855.y, x_855.x, x_855.y)) + vec4<f32>(x_858.x, x_858.y, x_858.z, x_858.y));
        let x_861 : vec2<f32> = u_xlat31;
        let x_864 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_867 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y) * vec4<f32>(x_864.x, x_864.y, x_864.x, x_864.y)) + vec4<f32>(x_867.w, x_867.y, x_867.w, x_867.z));
        let x_870 : vec2<f32> = u_xlat31;
        let x_873 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_870.x, x_870.y, x_870.x, x_870.y) * vec4<f32>(x_873.x, x_873.y, x_873.x, x_873.y)) + vec4<f32>(x_876.x, x_876.w, x_876.z, x_876.w));
        let x_880 : vec4<f32> = u_xlat7;
        let x_882 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_880.x, x_880.x, x_880.x, x_880.y) * vec4<f32>(x_882.z, x_882.w, x_882.y, x_882.z));
        let x_886 : vec4<f32> = u_xlat7;
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_886.y, x_886.y, x_886.z, x_886.z) * x_888);
        let x_891 : f32 = u_xlat7.z;
        let x_893 : f32 = u_xlat8.y;
        u_xlat31.x = (x_891 * x_893);
        let x_897 : vec4<f32> = u_xlat11;
        let x_898 : vec2<f32> = vec2<f32>(x_897.x, x_897.y);
        let x_900 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_908 : vec3<f32> = txVec4;
        let x_910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_908.xy, x_908.z);
        u_xlat56 = x_910;
        let x_912 : vec4<f32> = u_xlat11;
        let x_913 : vec2<f32> = vec2<f32>(x_912.z, x_912.w);
        let x_915 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_913.x, x_913.y, x_915);
        let x_923 : vec3<f32> = txVec5;
        let x_925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_923.xy, x_923.z);
        u_xlat81 = x_925;
        let x_926 : f32 = u_xlat81;
        let x_928 : f32 = u_xlat14.y;
        u_xlat81 = (x_926 * x_928);
        let x_931 : f32 = u_xlat14.x;
        let x_932 : f32 = u_xlat56;
        let x_934 : f32 = u_xlat81;
        u_xlat56 = ((x_931 * x_932) + x_934);
        let x_937 : vec4<f32> = u_xlat12;
        let x_938 : vec2<f32> = vec2<f32>(x_937.x, x_937.y);
        let x_940 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_938.x, x_938.y, x_940);
        let x_947 : vec3<f32> = txVec6;
        let x_949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_947.xy, x_947.z);
        u_xlat81 = x_949;
        let x_951 : f32 = u_xlat14.z;
        let x_952 : f32 = u_xlat81;
        let x_954 : f32 = u_xlat56;
        u_xlat56 = ((x_951 * x_952) + x_954);
        let x_957 : vec4<f32> = u_xlat10;
        let x_958 : vec2<f32> = vec2<f32>(x_957.x, x_957.y);
        let x_960 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_958.x, x_958.y, x_960);
        let x_967 : vec3<f32> = txVec7;
        let x_969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_967.xy, x_967.z);
        u_xlat81 = x_969;
        let x_971 : f32 = u_xlat14.w;
        let x_972 : f32 = u_xlat81;
        let x_974 : f32 = u_xlat56;
        u_xlat56 = ((x_971 * x_972) + x_974);
        let x_977 : vec4<f32> = u_xlat13;
        let x_978 : vec2<f32> = vec2<f32>(x_977.x, x_977.y);
        let x_980 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_978.x, x_978.y, x_980);
        let x_987 : vec3<f32> = txVec8;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_987.xy, x_987.z);
        u_xlat81 = x_989;
        let x_991 : f32 = u_xlat15.x;
        let x_992 : f32 = u_xlat81;
        let x_994 : f32 = u_xlat56;
        u_xlat56 = ((x_991 * x_992) + x_994);
        let x_997 : vec4<f32> = u_xlat13;
        let x_998 : vec2<f32> = vec2<f32>(x_997.z, x_997.w);
        let x_1000 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_998.x, x_998.y, x_1000);
        let x_1007 : vec3<f32> = txVec9;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1007.xy, x_1007.z);
        u_xlat81 = x_1009;
        let x_1011 : f32 = u_xlat15.y;
        let x_1012 : f32 = u_xlat81;
        let x_1014 : f32 = u_xlat56;
        u_xlat56 = ((x_1011 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat10;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.z, x_1017.w);
        let x_1020 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec10;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1027.xy, x_1027.z);
        u_xlat81 = x_1029;
        let x_1031 : f32 = u_xlat15.z;
        let x_1032 : f32 = u_xlat81;
        let x_1034 : f32 = u_xlat56;
        u_xlat56 = ((x_1031 * x_1032) + x_1034);
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.x, x_1037.y);
        let x_1040 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
        let x_1047 : vec3<f32> = txVec11;
        let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1047.xy, x_1047.z);
        u_xlat81 = x_1049;
        let x_1051 : f32 = u_xlat15.w;
        let x_1052 : f32 = u_xlat81;
        let x_1054 : f32 = u_xlat56;
        u_xlat56 = ((x_1051 * x_1052) + x_1054);
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1058 : vec2<f32> = vec2<f32>(x_1057.z, x_1057.w);
        let x_1060 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
        let x_1067 : vec3<f32> = txVec12;
        let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1067.xy, x_1067.z);
        u_xlat81 = x_1069;
        let x_1071 : f32 = u_xlat31.x;
        let x_1072 : f32 = u_xlat81;
        let x_1074 : f32 = u_xlat56;
        u_xlat6.x = ((x_1071 * x_1072) + x_1074);
      } else {
        let x_1078 : vec4<f32> = u_xlat4;
        let x_1081 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat31 = ((vec2<f32>(x_1078.x, x_1078.y) * vec2<f32>(x_1081.z, x_1081.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1085 : vec2<f32> = u_xlat31;
        u_xlat31 = floor(x_1085);
        let x_1087 : vec4<f32> = u_xlat4;
        let x_1090 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1093 : vec2<f32> = u_xlat31;
        let x_1095 : vec2<f32> = ((vec2<f32>(x_1087.x, x_1087.y) * vec2<f32>(x_1090.z, x_1090.w)) + -(x_1093));
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1098.x, x_1098.x, x_1098.y, x_1098.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1101 : vec4<f32> = u_xlat8;
        let x_1103 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1101.x, x_1101.x, x_1101.z, x_1101.z) * vec4<f32>(x_1103.x, x_1103.x, x_1103.z, x_1103.z));
        let x_1106 : vec4<f32> = u_xlat9;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1106.y, x_1106.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1111 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1111.x, x_1110.x, x_1111.z, x_1110.y);
        let x_1113 : vec4<f32> = u_xlat9;
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1113.x, x_1113.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1116.x, x_1116.y)));
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1123 : vec2<f32> = (-(vec2<f32>(x_1120.x, x_1120.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1124 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1123.x, x_1124.y, x_1123.y, x_1124.w);
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1128 : vec2<f32> = min(vec2<f32>(x_1126.x, x_1126.y), vec2<f32>(0.0f, 0.0f));
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat9;
        let x_1134 : vec4<f32> = u_xlat9;
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1139 : vec2<f32> = ((-(vec2<f32>(x_1131.x, x_1131.y)) * vec2<f32>(x_1134.x, x_1134.y)) + vec2<f32>(x_1137.x, x_1137.z));
        let x_1140 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat7;
        let x_1144 : vec2<f32> = max(vec2<f32>(x_1142.x, x_1142.y), vec2<f32>(0.0f, 0.0f));
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1144.x, x_1144.y, x_1145.z, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat9;
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1153 : vec4<f32> = u_xlat8;
        let x_1155 : vec2<f32> = ((-(vec2<f32>(x_1147.x, x_1147.y)) * vec2<f32>(x_1150.x, x_1150.y)) + vec2<f32>(x_1153.y, x_1153.w));
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1156.x, x_1155.x, x_1156.z, x_1155.y);
        let x_1158 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1158 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1162 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1162 * 0.08163200318813323975f);
        let x_1166 : vec2<f32> = u_xlat57;
        let x_1169 : vec2<f32> = (vec2<f32>(x_1166.y, x_1166.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1170 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_1172.x, x_1172.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1176 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1176 * 0.08163200318813323975f);
        let x_1180 : f32 = u_xlat11.y;
        u_xlat9.x = x_1180;
        let x_1182 : vec4<f32> = u_xlat7;
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1182.x, x_1182.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1190 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1190.x, x_1189.x, x_1190.z, x_1189.y);
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1196 : vec2<f32> = ((vec2<f32>(x_1192.x, x_1192.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1196.x, x_1197.y, x_1196.y, x_1197.w);
        let x_1200 : f32 = u_xlat57.x;
        u_xlat8.y = x_1200;
        let x_1203 : f32 = u_xlat10.y;
        u_xlat8.w = x_1203;
        let x_1205 : vec4<f32> = u_xlat8;
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1205 + x_1206);
        let x_1208 : vec4<f32> = u_xlat7;
        let x_1211 : vec2<f32> = ((vec2<f32>(x_1208.y, x_1208.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1212 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1212.x, x_1211.x, x_1212.z, x_1211.y);
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1217 : vec2<f32> = ((vec2<f32>(x_1214.y, x_1214.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1218 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1217.x, x_1218.y, x_1217.y, x_1218.w);
        let x_1221 : f32 = u_xlat57.y;
        u_xlat10.y = x_1221;
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1224 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1223 + x_1224);
        let x_1226 : vec4<f32> = u_xlat8;
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1226 / x_1227);
        let x_1229 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1229 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1235 : vec4<f32> = u_xlat10;
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1235 / x_1236);
        let x_1238 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1238 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1240 : vec4<f32> = u_xlat8;
        let x_1243 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1240.w, x_1240.x, x_1240.y, x_1240.z) * vec4<f32>(x_1243.x, x_1243.x, x_1243.x, x_1243.x));
        let x_1246 : vec4<f32> = u_xlat10;
        let x_1249 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1246.x, x_1246.w, x_1246.y, x_1246.z) * vec4<f32>(x_1249.y, x_1249.y, x_1249.y, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat8;
        let x_1253 : vec3<f32> = vec3<f32>(x_1252.y, x_1252.z, x_1252.w);
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1253.x, x_1254.y, x_1253.y, x_1253.z);
        let x_1257 : f32 = u_xlat10.x;
        u_xlat11.y = x_1257;
        let x_1259 : vec2<f32> = u_xlat31;
        let x_1262 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) * vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y)) + vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1265.y));
        let x_1268 : vec2<f32> = u_xlat31;
        let x_1270 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat11;
        let x_1275 : vec2<f32> = ((x_1268 * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.w, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1279 : f32 = u_xlat11.y;
        u_xlat8.y = x_1279;
        let x_1282 : f32 = u_xlat10.z;
        u_xlat11.y = x_1282;
        let x_1284 : vec2<f32> = u_xlat31;
        let x_1287 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1284.x, x_1284.y, x_1284.x, x_1284.y) * vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y)) + vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1290.y));
        let x_1294 : vec2<f32> = u_xlat31;
        let x_1296 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat11;
        u_xlat63 = ((x_1294 * vec2<f32>(x_1296.x, x_1296.y)) + vec2<f32>(x_1299.w, x_1299.y));
        let x_1303 : f32 = u_xlat11.y;
        u_xlat8.z = x_1303;
        let x_1305 : vec2<f32> = u_xlat31;
        let x_1308 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y) * vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y)) + vec4<f32>(x_1311.x, x_1311.y, x_1311.x, x_1311.z));
        let x_1315 : f32 = u_xlat10.w;
        u_xlat11.y = x_1315;
        let x_1318 : vec2<f32> = u_xlat31;
        let x_1321 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1318.x, x_1318.y, x_1318.x, x_1318.y) * vec4<f32>(x_1321.x, x_1321.y, x_1321.x, x_1321.y)) + vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1324.y));
        let x_1328 : vec2<f32> = u_xlat31;
        let x_1330 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat11;
        u_xlat33 = ((x_1328 * vec2<f32>(x_1330.x, x_1330.y)) + vec2<f32>(x_1333.w, x_1333.y));
        let x_1337 : f32 = u_xlat11.y;
        u_xlat8.w = x_1337;
        let x_1340 : vec2<f32> = u_xlat31;
        let x_1342 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat8;
        let x_1347 : vec2<f32> = ((x_1340 * vec2<f32>(x_1342.x, x_1342.y)) + vec2<f32>(x_1345.x, x_1345.w));
        let x_1348 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
        let x_1350 : vec4<f32> = u_xlat11;
        let x_1351 : vec3<f32> = vec3<f32>(x_1350.x, x_1350.z, x_1350.w);
        let x_1352 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1351.x, x_1352.y, x_1351.y, x_1351.z);
        let x_1354 : vec2<f32> = u_xlat31;
        let x_1357 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1360 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1354.x, x_1354.y, x_1354.x, x_1354.y) * vec4<f32>(x_1357.x, x_1357.y, x_1357.x, x_1357.y)) + vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1360.y));
        let x_1364 : vec2<f32> = u_xlat31;
        let x_1366 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1369 : vec4<f32> = u_xlat10;
        u_xlat60 = ((x_1364 * vec2<f32>(x_1366.x, x_1366.y)) + vec2<f32>(x_1369.w, x_1369.y));
        let x_1373 : f32 = u_xlat8.x;
        u_xlat10.x = x_1373;
        let x_1375 : vec2<f32> = u_xlat31;
        let x_1377 : vec4<f32> = x_208.x_MainLightShadowmapSize;
        let x_1380 : vec4<f32> = u_xlat10;
        u_xlat31 = ((x_1375 * vec2<f32>(x_1377.x, x_1377.y)) + vec2<f32>(x_1380.x, x_1380.y));
        let x_1384 : vec4<f32> = u_xlat7;
        let x_1386 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1384.x, x_1384.x, x_1384.x, x_1384.x) * x_1386);
        let x_1389 : vec4<f32> = u_xlat7;
        let x_1391 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1389.y, x_1389.y, x_1389.y, x_1389.y) * x_1391);
        let x_1394 : vec4<f32> = u_xlat7;
        let x_1396 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1394.z, x_1394.z, x_1394.z, x_1394.z) * x_1396);
        let x_1398 : vec4<f32> = u_xlat7;
        let x_1400 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1398.w, x_1398.w, x_1398.w, x_1398.w) * x_1400);
        let x_1403 : vec4<f32> = u_xlat12;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec13;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat81 = x_1415;
        let x_1417 : vec4<f32> = u_xlat12;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.z, x_1417.w);
        let x_1420 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec14;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat8.x = x_1429;
        let x_1432 : f32 = u_xlat8.x;
        let x_1434 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1432 * x_1434);
        let x_1438 : f32 = u_xlat18.x;
        let x_1439 : f32 = u_xlat81;
        let x_1442 : f32 = u_xlat8.x;
        u_xlat81 = ((x_1438 * x_1439) + x_1442);
        let x_1445 : vec4<f32> = u_xlat13;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.x, x_1445.y);
        let x_1448 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec15;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1455.xy, x_1455.z);
        u_xlat8.x = x_1457;
        let x_1460 : f32 = u_xlat18.z;
        let x_1462 : f32 = u_xlat8.x;
        let x_1464 : f32 = u_xlat81;
        u_xlat81 = ((x_1460 * x_1462) + x_1464);
        let x_1467 : vec4<f32> = u_xlat15;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
        let x_1470 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec16;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1477.xy, x_1477.z);
        u_xlat8.x = x_1479;
        let x_1482 : f32 = u_xlat18.w;
        let x_1484 : f32 = u_xlat8.x;
        let x_1486 : f32 = u_xlat81;
        u_xlat81 = ((x_1482 * x_1484) + x_1486);
        let x_1489 : vec4<f32> = u_xlat14;
        let x_1490 : vec2<f32> = vec2<f32>(x_1489.x, x_1489.y);
        let x_1492 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1490.x, x_1490.y, x_1492);
        let x_1499 : vec3<f32> = txVec17;
        let x_1501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1499.xy, x_1499.z);
        u_xlat8.x = x_1501;
        let x_1504 : f32 = u_xlat19.x;
        let x_1506 : f32 = u_xlat8.x;
        let x_1508 : f32 = u_xlat81;
        u_xlat81 = ((x_1504 * x_1506) + x_1508);
        let x_1511 : vec4<f32> = u_xlat14;
        let x_1512 : vec2<f32> = vec2<f32>(x_1511.z, x_1511.w);
        let x_1514 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1512.x, x_1512.y, x_1514);
        let x_1521 : vec3<f32> = txVec18;
        let x_1523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1521.xy, x_1521.z);
        u_xlat8.x = x_1523;
        let x_1526 : f32 = u_xlat19.y;
        let x_1528 : f32 = u_xlat8.x;
        let x_1530 : f32 = u_xlat81;
        u_xlat81 = ((x_1526 * x_1528) + x_1530);
        let x_1533 : vec2<f32> = u_xlat63;
        let x_1535 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec19;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat8.x = x_1544;
        let x_1547 : f32 = u_xlat19.z;
        let x_1549 : f32 = u_xlat8.x;
        let x_1551 : f32 = u_xlat81;
        u_xlat81 = ((x_1547 * x_1549) + x_1551);
        let x_1554 : vec4<f32> = u_xlat15;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.z, x_1554.w);
        let x_1557 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec20;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1564.xy, x_1564.z);
        u_xlat8.x = x_1566;
        let x_1569 : f32 = u_xlat19.w;
        let x_1571 : f32 = u_xlat8.x;
        let x_1573 : f32 = u_xlat81;
        u_xlat81 = ((x_1569 * x_1571) + x_1573);
        let x_1576 : vec4<f32> = u_xlat16;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec21;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat8.x = x_1588;
        let x_1591 : f32 = u_xlat20.x;
        let x_1593 : f32 = u_xlat8.x;
        let x_1595 : f32 = u_xlat81;
        u_xlat81 = ((x_1591 * x_1593) + x_1595);
        let x_1598 : vec4<f32> = u_xlat16;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.z, x_1598.w);
        let x_1601 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec22;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1608.xy, x_1608.z);
        u_xlat8.x = x_1610;
        let x_1613 : f32 = u_xlat20.y;
        let x_1615 : f32 = u_xlat8.x;
        let x_1617 : f32 = u_xlat81;
        u_xlat81 = ((x_1613 * x_1615) + x_1617);
        let x_1620 : vec2<f32> = u_xlat33;
        let x_1622 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec23;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
        u_xlat8.x = x_1631;
        let x_1634 : f32 = u_xlat20.z;
        let x_1636 : f32 = u_xlat8.x;
        let x_1638 : f32 = u_xlat81;
        u_xlat81 = ((x_1634 * x_1636) + x_1638);
        let x_1641 : vec4<f32> = u_xlat17;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
        let x_1644 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec24;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1651.xy, x_1651.z);
        u_xlat8.x = x_1653;
        let x_1656 : f32 = u_xlat20.w;
        let x_1658 : f32 = u_xlat8.x;
        let x_1660 : f32 = u_xlat81;
        u_xlat81 = ((x_1656 * x_1658) + x_1660);
        let x_1663 : vec4<f32> = u_xlat11;
        let x_1664 : vec2<f32> = vec2<f32>(x_1663.x, x_1663.y);
        let x_1666 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1664.x, x_1664.y, x_1666);
        let x_1673 : vec3<f32> = txVec25;
        let x_1675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1673.xy, x_1673.z);
        u_xlat8.x = x_1675;
        let x_1678 : f32 = u_xlat7.x;
        let x_1680 : f32 = u_xlat8.x;
        let x_1682 : f32 = u_xlat81;
        u_xlat81 = ((x_1678 * x_1680) + x_1682);
        let x_1685 : vec4<f32> = u_xlat11;
        let x_1686 : vec2<f32> = vec2<f32>(x_1685.z, x_1685.w);
        let x_1688 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1686.x, x_1686.y, x_1688);
        let x_1695 : vec3<f32> = txVec26;
        let x_1697 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1695.xy, x_1695.z);
        u_xlat7.x = x_1697;
        let x_1700 : f32 = u_xlat7.y;
        let x_1702 : f32 = u_xlat7.x;
        let x_1704 : f32 = u_xlat81;
        u_xlat81 = ((x_1700 * x_1702) + x_1704);
        let x_1707 : vec2<f32> = u_xlat60;
        let x_1709 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1707.x, x_1707.y, x_1709);
        let x_1716 : vec3<f32> = txVec27;
        let x_1718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1716.xy, x_1716.z);
        u_xlat7.x = x_1718;
        let x_1721 : f32 = u_xlat7.z;
        let x_1723 : f32 = u_xlat7.x;
        let x_1725 : f32 = u_xlat81;
        u_xlat81 = ((x_1721 * x_1723) + x_1725);
        let x_1728 : vec2<f32> = u_xlat31;
        let x_1730 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1728.x, x_1728.y, x_1730);
        let x_1737 : vec3<f32> = txVec28;
        let x_1739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1737.xy, x_1737.z);
        u_xlat31.x = x_1739;
        let x_1742 : f32 = u_xlat7.w;
        let x_1744 : f32 = u_xlat31.x;
        let x_1746 : f32 = u_xlat81;
        u_xlat6.x = ((x_1742 * x_1744) + x_1746);
      }
    }
  } else {
    let x_1751 : vec4<f32> = u_xlat4;
    let x_1752 : vec2<f32> = vec2<f32>(x_1751.x, x_1751.y);
    let x_1754 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
    let x_1761 : vec3<f32> = txVec29;
    let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1761.xy, x_1761.z);
    u_xlat6.x = x_1763;
  }
  let x_1766 : f32 = x_208.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1766) + 1.0f);
  let x_1771 : f32 = u_xlat6.x;
  let x_1773 : f32 = x_208.x_MainLightShadowParams.x;
  let x_1776 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1771 * x_1773) + x_1776);
  let x_1781 : f32 = u_xlat4.z;
  u_xlatb29 = (0.0f >= x_1781);
  let x_1785 : f32 = u_xlat4.z;
  u_xlatb54 = (x_1785 >= 1.0f);
  let x_1787 : bool = u_xlatb54;
  let x_1788 : bool = u_xlatb29;
  u_xlatb29 = (x_1787 | x_1788);
  let x_1790 : bool = u_xlatb29;
  if (x_1790) {
    x_1791 = 1.0f;
  } else {
    let x_1796 : f32 = u_xlat4.x;
    x_1791 = x_1796;
  }
  let x_1797 : f32 = x_1791;
  u_xlat4.x = x_1797;
  let x_1799 : vec3<f32> = vs_TEXCOORD1;
  let x_1801 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1803 : vec3<f32> = (x_1799 + -(x_1801));
  let x_1804 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
  let x_1807 : vec4<f32> = u_xlat6;
  let x_1809 : vec4<f32> = u_xlat6;
  u_xlat29 = dot(vec3<f32>(x_1807.x, x_1807.y, x_1807.z), vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
  let x_1813 : f32 = u_xlat29;
  let x_1815 : f32 = x_208.x_MainLightShadowParams.z;
  let x_1818 : f32 = x_208.x_MainLightShadowParams.w;
  u_xlat54 = ((x_1813 * x_1815) + x_1818);
  let x_1820 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1820, 0.0f, 1.0f);
  let x_1823 : f32 = u_xlat4.x;
  u_xlat6.x = (-(x_1823) + 1.0f);
  let x_1827 : f32 = u_xlat54;
  let x_1829 : f32 = u_xlat6.x;
  let x_1832 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1827 * x_1829) + x_1832);
  let x_1835 : vec3<f32> = u_xlat3;
  let x_1837 : vec3<f32> = u_xlat2;
  u_xlat54 = dot(-(x_1835), x_1837);
  let x_1839 : f32 = u_xlat54;
  let x_1840 : f32 = u_xlat54;
  u_xlat54 = (x_1839 + x_1840);
  let x_1842 : vec3<f32> = u_xlat2;
  let x_1843 : f32 = u_xlat54;
  let x_1847 : vec3<f32> = u_xlat3;
  let x_1849 : vec3<f32> = ((x_1842 * -(vec3<f32>(x_1843, x_1843, x_1843))) + -(x_1847));
  let x_1850 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);
  let x_1852 : vec3<f32> = u_xlat2;
  let x_1853 : vec3<f32> = u_xlat3;
  u_xlat54 = dot(x_1852, x_1853);
  let x_1855 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1855, 0.0f, 1.0f);
  let x_1857 : f32 = u_xlat54;
  u_xlat54 = (-(x_1857) + 1.0f);
  let x_1860 : f32 = u_xlat54;
  let x_1861 : f32 = u_xlat54;
  u_xlat54 = (x_1860 * x_1861);
  let x_1863 : f32 = u_xlat54;
  let x_1864 : f32 = u_xlat54;
  u_xlat54 = (x_1863 * x_1864);
  let x_1866 : f32 = u_xlat75;
  u_xlat81 = ((-(x_1866) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1872 : f32 = u_xlat75;
  let x_1873 : f32 = u_xlat81;
  u_xlat75 = (x_1872 * x_1873);
  let x_1875 : f32 = u_xlat75;
  u_xlat75 = (x_1875 * 6.0f);
  let x_1886 : vec4<f32> = u_xlat6;
  let x_1888 : f32 = u_xlat75;
  let x_1889 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1886.x, x_1886.y, x_1886.z), x_1888);
  u_xlat6 = x_1889;
  let x_1891 : f32 = u_xlat6.w;
  u_xlat75 = (x_1891 + -1.0f);
  let x_1894 : f32 = x_96.unity_SpecCube0_HDR.w;
  let x_1895 : f32 = u_xlat75;
  u_xlat75 = ((x_1894 * x_1895) + 1.0f);
  let x_1898 : f32 = u_xlat75;
  u_xlat75 = max(x_1898, 0.0f);
  let x_1900 : f32 = u_xlat75;
  u_xlat75 = log2(x_1900);
  let x_1902 : f32 = u_xlat75;
  let x_1904 : f32 = x_96.unity_SpecCube0_HDR.y;
  u_xlat75 = (x_1902 * x_1904);
  let x_1906 : f32 = u_xlat75;
  u_xlat75 = exp2(x_1906);
  let x_1908 : f32 = u_xlat75;
  let x_1910 : f32 = x_96.unity_SpecCube0_HDR.x;
  u_xlat75 = (x_1908 * x_1910);
  let x_1912 : vec4<f32> = u_xlat6;
  let x_1914 : f32 = u_xlat75;
  let x_1916 : vec3<f32> = (vec3<f32>(x_1912.x, x_1912.y, x_1912.z) * vec3<f32>(x_1914, x_1914, x_1914));
  let x_1917 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
  let x_1919 : f32 = u_xlat78;
  let x_1921 : f32 = u_xlat78;
  let x_1925 : vec2<f32> = ((vec2<f32>(x_1919, x_1919) * vec2<f32>(x_1921, x_1921)) + vec2<f32>(-1.0f, 1.0f));
  let x_1926 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1925.x, x_1925.y, x_1926.z, x_1926.w);
  let x_1929 : f32 = u_xlat7.y;
  u_xlat75 = (1.0f / x_1929);
  let x_1932 : vec4<f32> = u_xlat0;
  let x_1935 : f32 = u_xlat77;
  u_xlat32 = (-(vec3<f32>(x_1932.x, x_1932.y, x_1932.z)) + vec3<f32>(x_1935, x_1935, x_1935));
  let x_1938 : f32 = u_xlat54;
  let x_1940 : vec3<f32> = u_xlat32;
  let x_1942 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_1938, x_1938, x_1938) * x_1940) + vec3<f32>(x_1942.x, x_1942.y, x_1942.z));
  let x_1945 : f32 = u_xlat75;
  let x_1947 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_1945, x_1945, x_1945) * x_1947);
  let x_1949 : vec4<f32> = u_xlat6;
  let x_1951 : vec3<f32> = u_xlat32;
  let x_1952 : vec3<f32> = (vec3<f32>(x_1949.x, x_1949.y, x_1949.z) * x_1951);
  let x_1953 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1952.x, x_1952.y, x_1952.z, x_1953.w);
  let x_1955 : vec4<f32> = u_xlat5;
  let x_1957 : vec3<f32> = u_xlat26;
  let x_1959 : vec4<f32> = u_xlat6;
  let x_1961 : vec3<f32> = ((vec3<f32>(x_1955.x, x_1955.y, x_1955.z) * x_1957) + vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
  let x_1962 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
  let x_1965 : f32 = u_xlat4.x;
  let x_1967 : f32 = x_96.unity_LightData.z;
  u_xlat75 = (x_1965 * x_1967);
  let x_1969 : vec3<f32> = u_xlat2;
  let x_1971 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat77 = dot(x_1969, vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : f32 = u_xlat77;
  u_xlat77 = clamp(x_1974, 0.0f, 1.0f);
  let x_1976 : f32 = u_xlat75;
  let x_1977 : f32 = u_xlat77;
  u_xlat75 = (x_1976 * x_1977);
  let x_1979 : f32 = u_xlat75;
  let x_1982 : vec4<f32> = x_45.x_MainLightColor;
  let x_1984 : vec3<f32> = (vec3<f32>(x_1979, x_1979, x_1979) * vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
  let x_1985 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
  let x_1987 : vec3<f32> = u_xlat3;
  let x_1989 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat32 = (x_1987 + vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
  let x_1992 : vec3<f32> = u_xlat32;
  let x_1993 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_1992, x_1993);
  let x_1995 : f32 = u_xlat75;
  u_xlat75 = max(x_1995, 1.17549435e-38f);
  let x_1998 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_1998);
  let x_2000 : f32 = u_xlat75;
  let x_2002 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2000, x_2000, x_2000) * x_2002);
  let x_2004 : vec3<f32> = u_xlat2;
  let x_2005 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_2004, x_2005);
  let x_2007 : f32 = u_xlat75;
  u_xlat75 = clamp(x_2007, 0.0f, 1.0f);
  let x_2010 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2012 : vec3<f32> = u_xlat32;
  u_xlat77 = dot(vec3<f32>(x_2010.x, x_2010.y, x_2010.z), x_2012);
  let x_2014 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2014, 0.0f, 1.0f);
  let x_2016 : f32 = u_xlat75;
  let x_2017 : f32 = u_xlat75;
  u_xlat75 = (x_2016 * x_2017);
  let x_2019 : f32 = u_xlat75;
  let x_2021 : f32 = u_xlat7.x;
  u_xlat75 = ((x_2019 * x_2021) + 1.00001001358032226562f);
  let x_2025 : f32 = u_xlat77;
  let x_2026 : f32 = u_xlat77;
  u_xlat77 = (x_2025 * x_2026);
  let x_2028 : f32 = u_xlat75;
  let x_2029 : f32 = u_xlat75;
  u_xlat75 = (x_2028 * x_2029);
  let x_2031 : f32 = u_xlat77;
  u_xlat77 = max(x_2031, 0.10000000149011611938f);
  let x_2034 : f32 = u_xlat75;
  let x_2035 : f32 = u_xlat77;
  u_xlat75 = (x_2034 * x_2035);
  let x_2037 : f32 = u_xlat80;
  let x_2038 : f32 = u_xlat75;
  u_xlat75 = (x_2037 * x_2038);
  let x_2040 : f32 = u_xlat79;
  let x_2041 : f32 = u_xlat75;
  u_xlat75 = (x_2040 / x_2041);
  let x_2043 : vec4<f32> = u_xlat0;
  let x_2045 : f32 = u_xlat75;
  let x_2048 : vec3<f32> = u_xlat26;
  u_xlat32 = ((vec3<f32>(x_2043.x, x_2043.y, x_2043.z) * vec3<f32>(x_2045, x_2045, x_2045)) + x_2048);
  let x_2051 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2053 : f32 = x_96.unity_LightData.y;
  u_xlat75 = min(x_2051, x_2053);
  let x_2055 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_2055));
  let x_2058 : f32 = u_xlat29;
  let x_2061 : f32 = x_208.x_AdditionalShadowFadeParams.x;
  let x_2064 : f32 = x_208.x_AdditionalShadowFadeParams.y;
  u_xlat77 = ((x_2058 * x_2061) + x_2064);
  let x_2066 : f32 = u_xlat77;
  u_xlat77 = clamp(x_2066, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2078 : u32 = u_xlatu_loop_1;
    let x_2079 : u32 = u_xlatu75;
    if ((x_2078 < x_2079)) {
    } else {
      break;
    }
    let x_2082 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2082 >> 2u);
    let x_2085 : u32 = u_xlatu_loop_1;
    u_xlati8 = bitcast<i32>((x_2085 & 3u));
    let x_2088 : u32 = u_xlatu81;
    let x_2091 : vec4<f32> = x_96.unity_LightIndices[bitcast<i32>(x_2088)];
    let x_2101 : i32 = u_xlati8;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2106 : vec4<u32> = indexable[x_2101];
    u_xlat81 = dot(x_2091, bitcast<vec4<f32>>(x_2106));
    let x_2110 : f32 = u_xlat81;
    u_xlati81 = i32(x_2110);
    let x_2112 : vec3<f32> = vs_TEXCOORD1;
    let x_2123 : i32 = u_xlati81;
    let x_2125 : vec4<f32> = x_2122.x_AdditionalLightsPosition[x_2123];
    let x_2128 : i32 = u_xlati81;
    let x_2130 : vec4<f32> = x_2122.x_AdditionalLightsPosition[x_2128];
    let x_2132 : vec3<f32> = ((-(x_2112) * vec3<f32>(x_2125.w, x_2125.w, x_2125.w)) + vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
    let x_2133 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
    let x_2136 : vec4<f32> = u_xlat8;
    let x_2138 : vec4<f32> = u_xlat8;
    u_xlat83 = dot(vec3<f32>(x_2136.x, x_2136.y, x_2136.z), vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
    let x_2141 : f32 = u_xlat83;
    u_xlat83 = max(x_2141, 0.00006103515625f);
    let x_2144 : f32 = u_xlat83;
    u_xlat9.x = inverseSqrt(x_2144);
    let x_2148 : vec4<f32> = u_xlat8;
    let x_2150 : vec4<f32> = u_xlat9;
    u_xlat34 = (vec3<f32>(x_2148.x, x_2148.y, x_2148.z) * vec3<f32>(x_2150.x, x_2150.x, x_2150.x));
    let x_2153 : f32 = u_xlat83;
    u_xlat10.x = (1.0f / x_2153);
    let x_2156 : f32 = u_xlat83;
    let x_2157 : i32 = u_xlati81;
    let x_2159 : f32 = x_2122.x_AdditionalLightsAttenuation[x_2157].x;
    u_xlat83 = (x_2156 * x_2159);
    let x_2161 : f32 = u_xlat83;
    let x_2163 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2161) * x_2163) + 1.0f);
    let x_2166 : f32 = u_xlat83;
    u_xlat83 = max(x_2166, 0.0f);
    let x_2168 : f32 = u_xlat83;
    let x_2169 : f32 = u_xlat83;
    u_xlat83 = (x_2168 * x_2169);
    let x_2171 : f32 = u_xlat83;
    let x_2173 : f32 = u_xlat10.x;
    u_xlat83 = (x_2171 * x_2173);
    let x_2175 : i32 = u_xlati81;
    let x_2177 : vec4<f32> = x_2122.x_AdditionalLightsSpotDir[x_2175];
    let x_2179 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(vec3<f32>(x_2177.x, x_2177.y, x_2177.z), x_2179);
    let x_2183 : f32 = u_xlat10.x;
    let x_2184 : i32 = u_xlati81;
    let x_2186 : f32 = x_2122.x_AdditionalLightsAttenuation[x_2184].z;
    let x_2188 : i32 = u_xlati81;
    let x_2190 : f32 = x_2122.x_AdditionalLightsAttenuation[x_2188].w;
    u_xlat10.x = ((x_2183 * x_2186) + x_2190);
    let x_2194 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_2194, 0.0f, 1.0f);
    let x_2198 : f32 = u_xlat10.x;
    let x_2200 : f32 = u_xlat10.x;
    u_xlat10.x = (x_2198 * x_2200);
    let x_2203 : f32 = u_xlat83;
    let x_2205 : f32 = u_xlat10.x;
    u_xlat83 = (x_2203 * x_2205);
    let x_2209 : i32 = u_xlati81;
    let x_2211 : f32 = x_208.x_AdditionalShadowParams[x_2209].w;
    u_xlati10 = i32(x_2211);
    let x_2216 : i32 = u_xlati10;
    u_xlatb35.x = (x_2216 >= 0i);
    let x_2220 : bool = u_xlatb35.x;
    if (x_2220) {
      let x_2224 : i32 = u_xlati81;
      let x_2226 : f32 = x_208.x_AdditionalShadowParams[x_2224].z;
      u_xlatb35.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2226, x_2226, x_2226, x_2226))));
      let x_2232 : bool = u_xlatb35.x;
      if (x_2232) {
        let x_2235 : vec3<f32> = u_xlat34;
        let x_2238 : vec3<f32> = u_xlat34;
        let x_2241 : vec4<bool> = (abs(vec4<f32>(x_2235.z, x_2235.z, x_2235.y, x_2235.y)) >= abs(vec4<f32>(x_2238.x, x_2238.y, x_2238.x, x_2238.x)));
        u_xlatb35 = vec3<bool>(x_2241.x, x_2241.y, x_2241.z);
        let x_2244 : bool = u_xlatb35.y;
        let x_2246 : bool = u_xlatb35.x;
        u_xlatb35.x = (x_2244 & x_2246);
        let x_2250 : vec3<f32> = u_xlat34;
        let x_2253 : vec4<bool> = (-(vec4<f32>(x_2250.z, x_2250.y, x_2250.x, x_2250.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_2253.x, x_2253.y, x_2253.z);
        let x_2256 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2256);
        let x_2261 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2261);
        let x_2265 : bool = u_xlatb11.z;
        u_xlat60.x = select(0.0f, 1.0f, x_2265);
        let x_2269 : bool = u_xlatb35.z;
        if (x_2269) {
          let x_2274 : f32 = u_xlat11.y;
          x_2270 = x_2274;
        } else {
          let x_2277 : f32 = u_xlat60.x;
          x_2270 = x_2277;
        }
        let x_2278 : f32 = x_2270;
        u_xlat60.x = x_2278;
        let x_2282 : bool = u_xlatb35.x;
        if (x_2282) {
          let x_2287 : f32 = u_xlat11.x;
          x_2283 = x_2287;
        } else {
          let x_2290 : f32 = u_xlat60.x;
          x_2283 = x_2290;
        }
        let x_2291 : f32 = x_2283;
        u_xlat35 = x_2291;
        let x_2292 : i32 = u_xlati81;
        let x_2294 : f32 = x_208.x_AdditionalShadowParams[x_2292].w;
        u_xlat60.x = trunc(x_2294);
        let x_2297 : f32 = u_xlat35;
        let x_2299 : f32 = u_xlat60.x;
        u_xlat35 = (x_2297 + x_2299);
        let x_2301 : f32 = u_xlat35;
        u_xlati10 = i32(x_2301);
      }
      let x_2303 : i32 = u_xlati10;
      u_xlati10 = (x_2303 << bitcast<u32>(2i));
      let x_2305 : vec3<f32> = vs_TEXCOORD1;
      let x_2308 : i32 = u_xlati10;
      let x_2311 : i32 = u_xlati10;
      let x_2315 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_2308 + 1i) / 4i)][((x_2311 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2305.y, x_2305.y, x_2305.y, x_2305.y) * x_2315);
      let x_2317 : i32 = u_xlati10;
      let x_2319 : i32 = u_xlati10;
      let x_2322 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[(x_2317 / 4i)][(x_2319 % 4i)];
      let x_2323 : vec3<f32> = vs_TEXCOORD1;
      let x_2326 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2322 * vec4<f32>(x_2323.x, x_2323.x, x_2323.x, x_2323.x)) + x_2326);
      let x_2328 : i32 = u_xlati10;
      let x_2331 : i32 = u_xlati10;
      let x_2335 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_2328 + 2i) / 4i)][((x_2331 + 2i) % 4i)];
      let x_2336 : vec3<f32> = vs_TEXCOORD1;
      let x_2339 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2335 * vec4<f32>(x_2336.z, x_2336.z, x_2336.z, x_2336.z)) + x_2339);
      let x_2341 : vec4<f32> = u_xlat11;
      let x_2342 : i32 = u_xlati10;
      let x_2345 : i32 = u_xlati10;
      let x_2349 : vec4<f32> = x_208.x_AdditionalLightsWorldToShadow[((x_2342 + 3i) / 4i)][((x_2345 + 3i) % 4i)];
      u_xlat10 = (x_2341 + x_2349);
      let x_2351 : vec4<f32> = u_xlat10;
      let x_2353 : vec4<f32> = u_xlat10;
      let x_2355 : vec3<f32> = (vec3<f32>(x_2351.x, x_2351.y, x_2351.z) / vec3<f32>(x_2353.w, x_2353.w, x_2353.w));
      let x_2356 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2355.x, x_2355.y, x_2355.z, x_2356.w);
      let x_2359 : i32 = u_xlati81;
      let x_2361 : f32 = x_208.x_AdditionalShadowParams[x_2359].y;
      u_xlatb85 = (0.0f < x_2361);
      let x_2363 : bool = u_xlatb85;
      if (x_2363) {
        let x_2366 : i32 = u_xlati81;
        let x_2368 : f32 = x_208.x_AdditionalShadowParams[x_2366].y;
        u_xlatb85 = (1.0f == x_2368);
        let x_2370 : bool = u_xlatb85;
        if (x_2370) {
          let x_2373 : vec4<f32> = u_xlat10;
          let x_2377 : vec4<f32> = x_208.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2373.x, x_2373.y, x_2373.x, x_2373.y) + x_2377);
          let x_2380 : vec4<f32> = u_xlat11;
          let x_2381 : vec2<f32> = vec2<f32>(x_2380.x, x_2380.y);
          let x_2383 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2381.x, x_2381.y, x_2383);
          let x_2391 : vec3<f32> = txVec30;
          let x_2393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2391.xy, x_2391.z);
          u_xlat12.x = x_2393;
          let x_2396 : vec4<f32> = u_xlat11;
          let x_2397 : vec2<f32> = vec2<f32>(x_2396.z, x_2396.w);
          let x_2399 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2397.x, x_2397.y, x_2399);
          let x_2406 : vec3<f32> = txVec31;
          let x_2408 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2406.xy, x_2406.z);
          u_xlat12.y = x_2408;
          let x_2410 : vec4<f32> = u_xlat10;
          let x_2414 : vec4<f32> = x_208.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2410.x, x_2410.y, x_2410.x, x_2410.y) + x_2414);
          let x_2417 : vec4<f32> = u_xlat11;
          let x_2418 : vec2<f32> = vec2<f32>(x_2417.x, x_2417.y);
          let x_2420 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
          let x_2427 : vec3<f32> = txVec32;
          let x_2429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
          u_xlat12.z = x_2429;
          let x_2432 : vec4<f32> = u_xlat11;
          let x_2433 : vec2<f32> = vec2<f32>(x_2432.z, x_2432.w);
          let x_2435 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2433.x, x_2433.y, x_2435);
          let x_2442 : vec3<f32> = txVec33;
          let x_2444 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2442.xy, x_2442.z);
          u_xlat12.w = x_2444;
          let x_2447 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(x_2447, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2450 : i32 = u_xlati81;
          let x_2452 : f32 = x_208.x_AdditionalShadowParams[x_2450].y;
          u_xlatb11.x = (2.0f == x_2452);
          let x_2456 : bool = u_xlatb11.x;
          if (x_2456) {
            let x_2459 : vec4<f32> = u_xlat10;
            let x_2463 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2466 : vec2<f32> = ((vec2<f32>(x_2459.x, x_2459.y) * vec2<f32>(x_2463.z, x_2463.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2467 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2466.x, x_2466.y, x_2467.z, x_2467.w);
            let x_2469 : vec4<f32> = u_xlat11;
            let x_2471 : vec2<f32> = floor(vec2<f32>(x_2469.x, x_2469.y));
            let x_2472 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2471.x, x_2471.y, x_2472.z, x_2472.w);
            let x_2475 : vec4<f32> = u_xlat10;
            let x_2478 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2481 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2475.x, x_2475.y) * vec2<f32>(x_2478.z, x_2478.w)) + -(vec2<f32>(x_2481.x, x_2481.y)));
            let x_2485 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2485.x, x_2485.x, x_2485.y, x_2485.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2488 : vec4<f32> = u_xlat12;
            let x_2490 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2488.x, x_2488.x, x_2488.z, x_2488.z) * vec4<f32>(x_2490.x, x_2490.x, x_2490.z, x_2490.z));
            let x_2493 : vec4<f32> = u_xlat13;
            let x_2495 : vec2<f32> = (vec2<f32>(x_2493.y, x_2493.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2496 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2495.x, x_2496.y, x_2495.y, x_2496.w);
            let x_2498 : vec4<f32> = u_xlat13;
            let x_2501 : vec2<f32> = u_xlat61;
            let x_2503 : vec2<f32> = ((vec2<f32>(x_2498.x, x_2498.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2501));
            let x_2504 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2503.x, x_2503.y, x_2504.z, x_2504.w);
            let x_2506 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2506) + vec2<f32>(1.0f, 1.0f));
            let x_2509 : vec2<f32> = u_xlat61;
            let x_2510 : vec2<f32> = min(x_2509, vec2<f32>(0.0f, 0.0f));
            let x_2511 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2510.x, x_2510.y, x_2511.z, x_2511.w);
            let x_2513 : vec4<f32> = u_xlat14;
            let x_2516 : vec4<f32> = u_xlat14;
            let x_2519 : vec2<f32> = u_xlat63;
            let x_2520 : vec2<f32> = ((-(vec2<f32>(x_2513.x, x_2513.y)) * vec2<f32>(x_2516.x, x_2516.y)) + x_2519);
            let x_2521 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2520.x, x_2520.y, x_2521.z, x_2521.w);
            let x_2523 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2523, vec2<f32>(0.0f, 0.0f));
            let x_2525 : vec2<f32> = u_xlat61;
            let x_2527 : vec2<f32> = u_xlat61;
            let x_2529 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2525) * x_2527) + vec2<f32>(x_2529.y, x_2529.w));
            let x_2532 : vec4<f32> = u_xlat14;
            let x_2534 : vec2<f32> = (vec2<f32>(x_2532.x, x_2532.y) + vec2<f32>(1.0f, 1.0f));
            let x_2535 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2534.x, x_2534.y, x_2535.z, x_2535.w);
            let x_2537 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2537 + vec2<f32>(1.0f, 1.0f));
            let x_2539 : vec4<f32> = u_xlat13;
            let x_2541 : vec2<f32> = (vec2<f32>(x_2539.x, x_2539.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2542 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2541.x, x_2541.y, x_2542.z, x_2542.w);
            let x_2544 : vec2<f32> = u_xlat63;
            let x_2545 : vec2<f32> = (x_2544 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2546 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2545.x, x_2545.y, x_2546.z, x_2546.w);
            let x_2548 : vec4<f32> = u_xlat14;
            let x_2550 : vec2<f32> = (vec2<f32>(x_2548.x, x_2548.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2551 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2550.x, x_2550.y, x_2551.z, x_2551.w);
            let x_2553 : vec2<f32> = u_xlat61;
            let x_2554 : vec2<f32> = (x_2553 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2555 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2554.x, x_2554.y, x_2555.z, x_2555.w);
            let x_2557 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2557.y, x_2557.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2561 : f32 = u_xlat14.x;
            u_xlat15.z = x_2561;
            let x_2564 : f32 = u_xlat61.x;
            u_xlat15.w = x_2564;
            let x_2567 : f32 = u_xlat16.x;
            u_xlat13.z = x_2567;
            let x_2570 : f32 = u_xlat12.x;
            u_xlat13.w = x_2570;
            let x_2572 : vec4<f32> = u_xlat13;
            let x_2574 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2572.z, x_2572.w, x_2572.x, x_2572.z) + vec4<f32>(x_2574.z, x_2574.w, x_2574.x, x_2574.z));
            let x_2578 : f32 = u_xlat15.y;
            u_xlat14.z = x_2578;
            let x_2581 : f32 = u_xlat61.y;
            u_xlat14.w = x_2581;
            let x_2584 : f32 = u_xlat13.y;
            u_xlat16.z = x_2584;
            let x_2587 : f32 = u_xlat12.z;
            u_xlat16.w = x_2587;
            let x_2589 : vec4<f32> = u_xlat14;
            let x_2591 : vec4<f32> = u_xlat16;
            let x_2593 : vec3<f32> = (vec3<f32>(x_2589.z, x_2589.y, x_2589.w) + vec3<f32>(x_2591.z, x_2591.y, x_2591.w));
            let x_2594 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
            let x_2596 : vec4<f32> = u_xlat13;
            let x_2598 : vec4<f32> = u_xlat17;
            let x_2600 : vec3<f32> = (vec3<f32>(x_2596.x, x_2596.z, x_2596.w) / vec3<f32>(x_2598.z, x_2598.w, x_2598.y));
            let x_2601 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2600.x, x_2600.y, x_2600.z, x_2601.w);
            let x_2603 : vec4<f32> = u_xlat13;
            let x_2605 : vec3<f32> = (vec3<f32>(x_2603.x, x_2603.y, x_2603.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2606 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
            let x_2608 : vec4<f32> = u_xlat16;
            let x_2610 : vec4<f32> = u_xlat12;
            let x_2612 : vec3<f32> = (vec3<f32>(x_2608.z, x_2608.y, x_2608.w) / vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
            let x_2613 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
            let x_2615 : vec4<f32> = u_xlat14;
            let x_2617 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.y, x_2615.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2618 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2617.x, x_2617.y, x_2617.z, x_2618.w);
            let x_2620 : vec4<f32> = u_xlat13;
            let x_2623 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2625 : vec3<f32> = (vec3<f32>(x_2620.y, x_2620.x, x_2620.z) * vec3<f32>(x_2623.x, x_2623.x, x_2623.x));
            let x_2626 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2625.x, x_2625.y, x_2625.z, x_2626.w);
            let x_2628 : vec4<f32> = u_xlat14;
            let x_2631 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2633 : vec3<f32> = (vec3<f32>(x_2628.x, x_2628.y, x_2628.z) * vec3<f32>(x_2631.y, x_2631.y, x_2631.y));
            let x_2634 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);
            let x_2637 : f32 = u_xlat14.x;
            u_xlat13.w = x_2637;
            let x_2639 : vec4<f32> = u_xlat11;
            let x_2642 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2645 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2639.x, x_2639.y, x_2639.x, x_2639.y) * vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.y)) + vec4<f32>(x_2645.y, x_2645.w, x_2645.x, x_2645.w));
            let x_2648 : vec4<f32> = u_xlat11;
            let x_2651 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2654 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2648.x, x_2648.y) * vec2<f32>(x_2651.x, x_2651.y)) + vec2<f32>(x_2654.z, x_2654.w));
            let x_2658 : f32 = u_xlat13.y;
            u_xlat14.w = x_2658;
            let x_2660 : vec4<f32> = u_xlat14;
            let x_2661 : vec2<f32> = vec2<f32>(x_2660.y, x_2660.z);
            let x_2662 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2662.x, x_2661.x, x_2662.z, x_2661.y);
            let x_2664 : vec4<f32> = u_xlat11;
            let x_2667 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2670 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2664.x, x_2664.y, x_2664.x, x_2664.y) * vec4<f32>(x_2667.x, x_2667.y, x_2667.x, x_2667.y)) + vec4<f32>(x_2670.x, x_2670.y, x_2670.z, x_2670.y));
            let x_2673 : vec4<f32> = u_xlat11;
            let x_2676 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2679 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2673.x, x_2673.y, x_2673.x, x_2673.y) * vec4<f32>(x_2676.x, x_2676.y, x_2676.x, x_2676.y)) + vec4<f32>(x_2679.w, x_2679.y, x_2679.w, x_2679.z));
            let x_2682 : vec4<f32> = u_xlat11;
            let x_2685 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2688 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2682.x, x_2682.y, x_2682.x, x_2682.y) * vec4<f32>(x_2685.x, x_2685.y, x_2685.x, x_2685.y)) + vec4<f32>(x_2688.x, x_2688.w, x_2688.z, x_2688.w));
            let x_2691 : vec4<f32> = u_xlat12;
            let x_2693 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2691.x, x_2691.x, x_2691.x, x_2691.y) * vec4<f32>(x_2693.z, x_2693.w, x_2693.y, x_2693.z));
            let x_2696 : vec4<f32> = u_xlat12;
            let x_2698 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2696.y, x_2696.y, x_2696.z, x_2696.z) * x_2698);
            let x_2701 : f32 = u_xlat12.z;
            let x_2703 : f32 = u_xlat17.y;
            u_xlat11.x = (x_2701 * x_2703);
            let x_2707 : vec4<f32> = u_xlat15;
            let x_2708 : vec2<f32> = vec2<f32>(x_2707.x, x_2707.y);
            let x_2710 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2708.x, x_2708.y, x_2710);
            let x_2718 : vec3<f32> = txVec34;
            let x_2720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2718.xy, x_2718.z);
            u_xlat36 = x_2720;
            let x_2722 : vec4<f32> = u_xlat15;
            let x_2723 : vec2<f32> = vec2<f32>(x_2722.z, x_2722.w);
            let x_2725 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2723.x, x_2723.y, x_2725);
            let x_2732 : vec3<f32> = txVec35;
            let x_2734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2732.xy, x_2732.z);
            u_xlat12.x = x_2734;
            let x_2737 : f32 = u_xlat12.x;
            let x_2739 : f32 = u_xlat18.y;
            u_xlat12.x = (x_2737 * x_2739);
            let x_2743 : f32 = u_xlat18.x;
            let x_2744 : f32 = u_xlat36;
            let x_2747 : f32 = u_xlat12.x;
            u_xlat36 = ((x_2743 * x_2744) + x_2747);
            let x_2750 : vec2<f32> = u_xlat61;
            let x_2752 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2750.x, x_2750.y, x_2752);
            let x_2759 : vec3<f32> = txVec36;
            let x_2761 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2759.xy, x_2759.z);
            u_xlat61.x = x_2761;
            let x_2764 : f32 = u_xlat18.z;
            let x_2766 : f32 = u_xlat61.x;
            let x_2768 : f32 = u_xlat36;
            u_xlat36 = ((x_2764 * x_2766) + x_2768);
            let x_2771 : vec4<f32> = u_xlat14;
            let x_2772 : vec2<f32> = vec2<f32>(x_2771.x, x_2771.y);
            let x_2774 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2772.x, x_2772.y, x_2774);
            let x_2781 : vec3<f32> = txVec37;
            let x_2783 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2781.xy, x_2781.z);
            u_xlat61.x = x_2783;
            let x_2786 : f32 = u_xlat18.w;
            let x_2788 : f32 = u_xlat61.x;
            let x_2790 : f32 = u_xlat36;
            u_xlat36 = ((x_2786 * x_2788) + x_2790);
            let x_2793 : vec4<f32> = u_xlat16;
            let x_2794 : vec2<f32> = vec2<f32>(x_2793.x, x_2793.y);
            let x_2796 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2794.x, x_2794.y, x_2796);
            let x_2803 : vec3<f32> = txVec38;
            let x_2805 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2803.xy, x_2803.z);
            u_xlat61.x = x_2805;
            let x_2808 : f32 = u_xlat19.x;
            let x_2810 : f32 = u_xlat61.x;
            let x_2812 : f32 = u_xlat36;
            u_xlat36 = ((x_2808 * x_2810) + x_2812);
            let x_2815 : vec4<f32> = u_xlat16;
            let x_2816 : vec2<f32> = vec2<f32>(x_2815.z, x_2815.w);
            let x_2818 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_2816.x, x_2816.y, x_2818);
            let x_2825 : vec3<f32> = txVec39;
            let x_2827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2825.xy, x_2825.z);
            u_xlat61.x = x_2827;
            let x_2830 : f32 = u_xlat19.y;
            let x_2832 : f32 = u_xlat61.x;
            let x_2834 : f32 = u_xlat36;
            u_xlat36 = ((x_2830 * x_2832) + x_2834);
            let x_2837 : vec4<f32> = u_xlat14;
            let x_2838 : vec2<f32> = vec2<f32>(x_2837.z, x_2837.w);
            let x_2840 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_2838.x, x_2838.y, x_2840);
            let x_2847 : vec3<f32> = txVec40;
            let x_2849 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2847.xy, x_2847.z);
            u_xlat61.x = x_2849;
            let x_2852 : f32 = u_xlat19.z;
            let x_2854 : f32 = u_xlat61.x;
            let x_2856 : f32 = u_xlat36;
            u_xlat36 = ((x_2852 * x_2854) + x_2856);
            let x_2859 : vec4<f32> = u_xlat13;
            let x_2860 : vec2<f32> = vec2<f32>(x_2859.x, x_2859.y);
            let x_2862 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_2860.x, x_2860.y, x_2862);
            let x_2869 : vec3<f32> = txVec41;
            let x_2871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2869.xy, x_2869.z);
            u_xlat61.x = x_2871;
            let x_2874 : f32 = u_xlat19.w;
            let x_2876 : f32 = u_xlat61.x;
            let x_2878 : f32 = u_xlat36;
            u_xlat36 = ((x_2874 * x_2876) + x_2878);
            let x_2881 : vec4<f32> = u_xlat13;
            let x_2882 : vec2<f32> = vec2<f32>(x_2881.z, x_2881.w);
            let x_2884 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_2882.x, x_2882.y, x_2884);
            let x_2891 : vec3<f32> = txVec42;
            let x_2893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2891.xy, x_2891.z);
            u_xlat61.x = x_2893;
            let x_2896 : f32 = u_xlat11.x;
            let x_2898 : f32 = u_xlat61.x;
            let x_2900 : f32 = u_xlat36;
            u_xlat85 = ((x_2896 * x_2898) + x_2900);
          } else {
            let x_2903 : vec4<f32> = u_xlat10;
            let x_2906 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2909 : vec2<f32> = ((vec2<f32>(x_2903.x, x_2903.y) * vec2<f32>(x_2906.z, x_2906.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2910 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2909.x, x_2909.y, x_2910.z, x_2910.w);
            let x_2912 : vec4<f32> = u_xlat11;
            let x_2914 : vec2<f32> = floor(vec2<f32>(x_2912.x, x_2912.y));
            let x_2915 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2914.x, x_2914.y, x_2915.z, x_2915.w);
            let x_2917 : vec4<f32> = u_xlat10;
            let x_2920 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_2923 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2917.x, x_2917.y) * vec2<f32>(x_2920.z, x_2920.w)) + -(vec2<f32>(x_2923.x, x_2923.y)));
            let x_2927 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2927.x, x_2927.x, x_2927.y, x_2927.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2930 : vec4<f32> = u_xlat12;
            let x_2932 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2930.x, x_2930.x, x_2930.z, x_2930.z) * vec4<f32>(x_2932.x, x_2932.x, x_2932.z, x_2932.z));
            let x_2935 : vec4<f32> = u_xlat13;
            let x_2937 : vec2<f32> = (vec2<f32>(x_2935.y, x_2935.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2938 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2938.x, x_2937.x, x_2938.z, x_2937.y);
            let x_2940 : vec4<f32> = u_xlat13;
            let x_2943 : vec2<f32> = u_xlat61;
            let x_2945 : vec2<f32> = ((vec2<f32>(x_2940.x, x_2940.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2943));
            let x_2946 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2945.x, x_2946.y, x_2945.y, x_2946.w);
            let x_2948 : vec2<f32> = u_xlat61;
            let x_2950 : vec2<f32> = (-(x_2948) + vec2<f32>(1.0f, 1.0f));
            let x_2951 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
            let x_2953 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_2953, vec2<f32>(0.0f, 0.0f));
            let x_2955 : vec2<f32> = u_xlat63;
            let x_2957 : vec2<f32> = u_xlat63;
            let x_2959 : vec4<f32> = u_xlat13;
            let x_2961 : vec2<f32> = ((-(x_2955) * x_2957) + vec2<f32>(x_2959.x, x_2959.y));
            let x_2962 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2961.x, x_2961.y, x_2962.z, x_2962.w);
            let x_2964 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_2964, vec2<f32>(0.0f, 0.0f));
            let x_2967 : vec2<f32> = u_xlat63;
            let x_2969 : vec2<f32> = u_xlat63;
            let x_2971 : vec4<f32> = u_xlat12;
            let x_2973 : vec2<f32> = ((-(x_2967) * x_2969) + vec2<f32>(x_2971.y, x_2971.w));
            let x_2974 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_2973.x, x_2974.y, x_2973.y);
            let x_2976 : vec4<f32> = u_xlat13;
            let x_2979 : vec2<f32> = (vec2<f32>(x_2976.x, x_2976.y) + vec2<f32>(2.0f, 2.0f));
            let x_2980 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2979.x, x_2979.y, x_2980.z, x_2980.w);
            let x_2982 : vec3<f32> = u_xlat37;
            let x_2984 : vec2<f32> = (vec2<f32>(x_2982.x, x_2982.z) + vec2<f32>(2.0f, 2.0f));
            let x_2985 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2985.x, x_2984.x, x_2985.z, x_2984.y);
            let x_2988 : f32 = u_xlat12.y;
            u_xlat15.z = (x_2988 * 0.08163200318813323975f);
            let x_2991 : vec4<f32> = u_xlat12;
            let x_2994 : vec3<f32> = (vec3<f32>(x_2991.z, x_2991.x, x_2991.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2995 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2994.x, x_2994.y, x_2994.z, x_2995.w);
            let x_2997 : vec4<f32> = u_xlat13;
            let x_2999 : vec2<f32> = (vec2<f32>(x_2997.x, x_2997.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3000 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2999.x, x_2999.y, x_3000.z, x_3000.w);
            let x_3003 : f32 = u_xlat16.y;
            u_xlat15.x = x_3003;
            let x_3005 : vec2<f32> = u_xlat61;
            let x_3008 : vec2<f32> = ((vec2<f32>(x_3005.x, x_3005.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3009 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3009.x, x_3008.x, x_3009.z, x_3008.y);
            let x_3011 : vec2<f32> = u_xlat61;
            let x_3014 : vec2<f32> = ((vec2<f32>(x_3011.x, x_3011.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3015 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3014.x, x_3015.y, x_3014.y, x_3015.w);
            let x_3018 : f32 = u_xlat12.x;
            u_xlat13.y = x_3018;
            let x_3021 : f32 = u_xlat14.y;
            u_xlat13.w = x_3021;
            let x_3023 : vec4<f32> = u_xlat13;
            let x_3024 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3023 + x_3024);
            let x_3026 : vec2<f32> = u_xlat61;
            let x_3029 : vec2<f32> = ((vec2<f32>(x_3026.y, x_3026.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3030 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3030.x, x_3029.x, x_3030.z, x_3029.y);
            let x_3032 : vec2<f32> = u_xlat61;
            let x_3035 : vec2<f32> = ((vec2<f32>(x_3032.y, x_3032.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3036 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3035.x, x_3036.y, x_3035.y, x_3036.w);
            let x_3039 : f32 = u_xlat12.y;
            u_xlat14.y = x_3039;
            let x_3041 : vec4<f32> = u_xlat14;
            let x_3042 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3041 + x_3042);
            let x_3044 : vec4<f32> = u_xlat13;
            let x_3045 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3044 / x_3045);
            let x_3047 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3047 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3049 : vec4<f32> = u_xlat14;
            let x_3050 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3049 / x_3050);
            let x_3052 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3052 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3054 : vec4<f32> = u_xlat13;
            let x_3057 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3054.w, x_3054.x, x_3054.y, x_3054.z) * vec4<f32>(x_3057.x, x_3057.x, x_3057.x, x_3057.x));
            let x_3060 : vec4<f32> = u_xlat14;
            let x_3063 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3060.x, x_3060.w, x_3060.y, x_3060.z) * vec4<f32>(x_3063.y, x_3063.y, x_3063.y, x_3063.y));
            let x_3066 : vec4<f32> = u_xlat13;
            let x_3067 : vec3<f32> = vec3<f32>(x_3066.y, x_3066.z, x_3066.w);
            let x_3068 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3067.x, x_3068.y, x_3067.y, x_3067.z);
            let x_3071 : f32 = u_xlat14.x;
            u_xlat16.y = x_3071;
            let x_3073 : vec4<f32> = u_xlat11;
            let x_3076 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3079 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3073.x, x_3073.y, x_3073.x, x_3073.y) * vec4<f32>(x_3076.x, x_3076.y, x_3076.x, x_3076.y)) + vec4<f32>(x_3079.x, x_3079.y, x_3079.z, x_3079.y));
            let x_3082 : vec4<f32> = u_xlat11;
            let x_3085 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3088 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3082.x, x_3082.y) * vec2<f32>(x_3085.x, x_3085.y)) + vec2<f32>(x_3088.w, x_3088.y));
            let x_3092 : f32 = u_xlat16.y;
            u_xlat13.y = x_3092;
            let x_3095 : f32 = u_xlat14.z;
            u_xlat16.y = x_3095;
            let x_3097 : vec4<f32> = u_xlat11;
            let x_3100 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3103 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3097.x, x_3097.y, x_3097.x, x_3097.y) * vec4<f32>(x_3100.x, x_3100.y, x_3100.x, x_3100.y)) + vec4<f32>(x_3103.x, x_3103.y, x_3103.z, x_3103.y));
            let x_3106 : vec4<f32> = u_xlat11;
            let x_3109 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3112 : vec4<f32> = u_xlat16;
            let x_3114 : vec2<f32> = ((vec2<f32>(x_3106.x, x_3106.y) * vec2<f32>(x_3109.x, x_3109.y)) + vec2<f32>(x_3112.w, x_3112.y));
            let x_3115 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3114.x, x_3114.y, x_3115.z, x_3115.w);
            let x_3118 : f32 = u_xlat16.y;
            u_xlat13.z = x_3118;
            let x_3120 : vec4<f32> = u_xlat11;
            let x_3123 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3126 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3120.x, x_3120.y, x_3120.x, x_3120.y) * vec4<f32>(x_3123.x, x_3123.y, x_3123.x, x_3123.y)) + vec4<f32>(x_3126.x, x_3126.y, x_3126.x, x_3126.z));
            let x_3130 : f32 = u_xlat14.w;
            u_xlat16.y = x_3130;
            let x_3133 : vec4<f32> = u_xlat11;
            let x_3136 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3139 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.y) * vec4<f32>(x_3136.x, x_3136.y, x_3136.x, x_3136.y)) + vec4<f32>(x_3139.x, x_3139.y, x_3139.z, x_3139.y));
            let x_3143 : vec4<f32> = u_xlat11;
            let x_3146 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3149 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3143.x, x_3143.y) * vec2<f32>(x_3146.x, x_3146.y)) + vec2<f32>(x_3149.w, x_3149.y));
            let x_3153 : f32 = u_xlat16.y;
            u_xlat13.w = x_3153;
            let x_3156 : vec4<f32> = u_xlat11;
            let x_3159 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3162 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3156.x, x_3156.y) * vec2<f32>(x_3159.x, x_3159.y)) + vec2<f32>(x_3162.x, x_3162.w));
            let x_3165 : vec4<f32> = u_xlat16;
            let x_3166 : vec3<f32> = vec3<f32>(x_3165.x, x_3165.z, x_3165.w);
            let x_3167 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3166.x, x_3167.y, x_3166.y, x_3166.z);
            let x_3169 : vec4<f32> = u_xlat11;
            let x_3172 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3175 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3169.x, x_3169.y, x_3169.x, x_3169.y) * vec4<f32>(x_3172.x, x_3172.y, x_3172.x, x_3172.y)) + vec4<f32>(x_3175.x, x_3175.y, x_3175.z, x_3175.y));
            let x_3179 : vec4<f32> = u_xlat11;
            let x_3182 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3185 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3179.x, x_3179.y) * vec2<f32>(x_3182.x, x_3182.y)) + vec2<f32>(x_3185.w, x_3185.y));
            let x_3189 : f32 = u_xlat13.x;
            u_xlat14.x = x_3189;
            let x_3191 : vec4<f32> = u_xlat11;
            let x_3194 : vec4<f32> = x_208.x_AdditionalShadowmapSize;
            let x_3197 : vec4<f32> = u_xlat14;
            let x_3199 : vec2<f32> = ((vec2<f32>(x_3191.x, x_3191.y) * vec2<f32>(x_3194.x, x_3194.y)) + vec2<f32>(x_3197.x, x_3197.y));
            let x_3200 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3199.x, x_3199.y, x_3200.z, x_3200.w);
            let x_3203 : vec4<f32> = u_xlat12;
            let x_3205 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3203.x, x_3203.x, x_3203.x, x_3203.x) * x_3205);
            let x_3208 : vec4<f32> = u_xlat12;
            let x_3210 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3208.y, x_3208.y, x_3208.y, x_3208.y) * x_3210);
            let x_3213 : vec4<f32> = u_xlat12;
            let x_3215 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3213.z, x_3213.z, x_3213.z, x_3213.z) * x_3215);
            let x_3217 : vec4<f32> = u_xlat12;
            let x_3219 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3217.w, x_3217.w, x_3217.w, x_3217.w) * x_3219);
            let x_3222 : vec4<f32> = u_xlat17;
            let x_3223 : vec2<f32> = vec2<f32>(x_3222.x, x_3222.y);
            let x_3225 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3223.x, x_3223.y, x_3225);
            let x_3232 : vec3<f32> = txVec43;
            let x_3234 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3232.xy, x_3232.z);
            u_xlat13.x = x_3234;
            let x_3237 : vec4<f32> = u_xlat17;
            let x_3238 : vec2<f32> = vec2<f32>(x_3237.z, x_3237.w);
            let x_3240 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3238.x, x_3238.y, x_3240);
            let x_3248 : vec3<f32> = txVec44;
            let x_3250 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3248.xy, x_3248.z);
            u_xlat88 = x_3250;
            let x_3251 : f32 = u_xlat88;
            let x_3253 : f32 = u_xlat22.y;
            u_xlat88 = (x_3251 * x_3253);
            let x_3256 : f32 = u_xlat22.x;
            let x_3258 : f32 = u_xlat13.x;
            let x_3260 : f32 = u_xlat88;
            u_xlat13.x = ((x_3256 * x_3258) + x_3260);
            let x_3264 : vec2<f32> = u_xlat61;
            let x_3266 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3264.x, x_3264.y, x_3266);
            let x_3273 : vec3<f32> = txVec45;
            let x_3275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3273.xy, x_3273.z);
            u_xlat61.x = x_3275;
            let x_3278 : f32 = u_xlat22.z;
            let x_3280 : f32 = u_xlat61.x;
            let x_3283 : f32 = u_xlat13.x;
            u_xlat61.x = ((x_3278 * x_3280) + x_3283);
            let x_3287 : vec4<f32> = u_xlat20;
            let x_3288 : vec2<f32> = vec2<f32>(x_3287.x, x_3287.y);
            let x_3290 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3288.x, x_3288.y, x_3290);
            let x_3298 : vec3<f32> = txVec46;
            let x_3300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3298.xy, x_3298.z);
            u_xlat86 = x_3300;
            let x_3302 : f32 = u_xlat22.w;
            let x_3303 : f32 = u_xlat86;
            let x_3306 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3302 * x_3303) + x_3306);
            let x_3310 : vec4<f32> = u_xlat18;
            let x_3311 : vec2<f32> = vec2<f32>(x_3310.x, x_3310.y);
            let x_3313 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3311.x, x_3311.y, x_3313);
            let x_3320 : vec3<f32> = txVec47;
            let x_3322 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3320.xy, x_3320.z);
            u_xlat86 = x_3322;
            let x_3324 : f32 = u_xlat23.x;
            let x_3325 : f32 = u_xlat86;
            let x_3328 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3324 * x_3325) + x_3328);
            let x_3332 : vec4<f32> = u_xlat18;
            let x_3333 : vec2<f32> = vec2<f32>(x_3332.z, x_3332.w);
            let x_3335 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3333.x, x_3333.y, x_3335);
            let x_3342 : vec3<f32> = txVec48;
            let x_3344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3342.xy, x_3342.z);
            u_xlat86 = x_3344;
            let x_3346 : f32 = u_xlat23.y;
            let x_3347 : f32 = u_xlat86;
            let x_3350 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3346 * x_3347) + x_3350);
            let x_3354 : vec4<f32> = u_xlat19;
            let x_3355 : vec2<f32> = vec2<f32>(x_3354.x, x_3354.y);
            let x_3357 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3355.x, x_3355.y, x_3357);
            let x_3364 : vec3<f32> = txVec49;
            let x_3366 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3364.xy, x_3364.z);
            u_xlat86 = x_3366;
            let x_3368 : f32 = u_xlat23.z;
            let x_3369 : f32 = u_xlat86;
            let x_3372 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3368 * x_3369) + x_3372);
            let x_3376 : vec4<f32> = u_xlat20;
            let x_3377 : vec2<f32> = vec2<f32>(x_3376.z, x_3376.w);
            let x_3379 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3377.x, x_3377.y, x_3379);
            let x_3386 : vec3<f32> = txVec50;
            let x_3388 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3386.xy, x_3386.z);
            u_xlat86 = x_3388;
            let x_3390 : f32 = u_xlat23.w;
            let x_3391 : f32 = u_xlat86;
            let x_3394 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3390 * x_3391) + x_3394);
            let x_3398 : vec4<f32> = u_xlat21;
            let x_3399 : vec2<f32> = vec2<f32>(x_3398.x, x_3398.y);
            let x_3401 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3399.x, x_3399.y, x_3401);
            let x_3408 : vec3<f32> = txVec51;
            let x_3410 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3408.xy, x_3408.z);
            u_xlat86 = x_3410;
            let x_3412 : f32 = u_xlat24.x;
            let x_3413 : f32 = u_xlat86;
            let x_3416 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3412 * x_3413) + x_3416);
            let x_3420 : vec4<f32> = u_xlat21;
            let x_3421 : vec2<f32> = vec2<f32>(x_3420.z, x_3420.w);
            let x_3423 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3421.x, x_3421.y, x_3423);
            let x_3430 : vec3<f32> = txVec52;
            let x_3432 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3430.xy, x_3430.z);
            u_xlat86 = x_3432;
            let x_3434 : f32 = u_xlat24.y;
            let x_3435 : f32 = u_xlat86;
            let x_3438 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3434 * x_3435) + x_3438);
            let x_3442 : vec2<f32> = u_xlat38;
            let x_3444 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3442.x, x_3442.y, x_3444);
            let x_3451 : vec3<f32> = txVec53;
            let x_3453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3451.xy, x_3451.z);
            u_xlat86 = x_3453;
            let x_3455 : f32 = u_xlat24.z;
            let x_3456 : f32 = u_xlat86;
            let x_3459 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3455 * x_3456) + x_3459);
            let x_3463 : vec2<f32> = u_xlat69;
            let x_3465 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3463.x, x_3463.y, x_3465);
            let x_3472 : vec3<f32> = txVec54;
            let x_3474 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3472.xy, x_3472.z);
            u_xlat86 = x_3474;
            let x_3476 : f32 = u_xlat24.w;
            let x_3477 : f32 = u_xlat86;
            let x_3480 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3476 * x_3477) + x_3480);
            let x_3484 : vec4<f32> = u_xlat16;
            let x_3485 : vec2<f32> = vec2<f32>(x_3484.x, x_3484.y);
            let x_3487 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3485.x, x_3485.y, x_3487);
            let x_3494 : vec3<f32> = txVec55;
            let x_3496 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3494.xy, x_3494.z);
            u_xlat86 = x_3496;
            let x_3498 : f32 = u_xlat12.x;
            let x_3499 : f32 = u_xlat86;
            let x_3502 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3498 * x_3499) + x_3502);
            let x_3506 : vec4<f32> = u_xlat16;
            let x_3507 : vec2<f32> = vec2<f32>(x_3506.z, x_3506.w);
            let x_3509 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3507.x, x_3507.y, x_3509);
            let x_3516 : vec3<f32> = txVec56;
            let x_3518 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3516.xy, x_3516.z);
            u_xlat86 = x_3518;
            let x_3520 : f32 = u_xlat12.y;
            let x_3521 : f32 = u_xlat86;
            let x_3524 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3520 * x_3521) + x_3524);
            let x_3528 : vec2<f32> = u_xlat64;
            let x_3530 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3528.x, x_3528.y, x_3530);
            let x_3537 : vec3<f32> = txVec57;
            let x_3539 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3537.xy, x_3537.z);
            u_xlat86 = x_3539;
            let x_3541 : f32 = u_xlat12.z;
            let x_3542 : f32 = u_xlat86;
            let x_3545 : f32 = u_xlat61.x;
            u_xlat61.x = ((x_3541 * x_3542) + x_3545);
            let x_3549 : vec4<f32> = u_xlat11;
            let x_3550 : vec2<f32> = vec2<f32>(x_3549.x, x_3549.y);
            let x_3552 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3550.x, x_3550.y, x_3552);
            let x_3559 : vec3<f32> = txVec58;
            let x_3561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3559.xy, x_3559.z);
            u_xlat11.x = x_3561;
            let x_3564 : f32 = u_xlat12.w;
            let x_3566 : f32 = u_xlat11.x;
            let x_3569 : f32 = u_xlat61.x;
            u_xlat85 = ((x_3564 * x_3566) + x_3569);
          }
        }
      } else {
        let x_3573 : vec4<f32> = u_xlat10;
        let x_3574 : vec2<f32> = vec2<f32>(x_3573.x, x_3573.y);
        let x_3576 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3574.x, x_3574.y, x_3576);
        let x_3583 : vec3<f32> = txVec59;
        let x_3585 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3583.xy, x_3583.z);
        u_xlat85 = x_3585;
      }
      let x_3586 : i32 = u_xlati81;
      let x_3588 : f32 = x_208.x_AdditionalShadowParams[x_3586].x;
      u_xlat10.x = (1.0f + -(x_3588));
      let x_3592 : f32 = u_xlat85;
      let x_3593 : i32 = u_xlati81;
      let x_3595 : f32 = x_208.x_AdditionalShadowParams[x_3593].x;
      let x_3598 : f32 = u_xlat10.x;
      u_xlat10.x = ((x_3592 * x_3595) + x_3598);
      let x_3602 : f32 = u_xlat10.z;
      u_xlatb35.x = (0.0f >= x_3602);
      let x_3607 : f32 = u_xlat10.z;
      u_xlatb60 = (x_3607 >= 1.0f);
      let x_3609 : bool = u_xlatb60;
      let x_3611 : bool = u_xlatb35.x;
      u_xlatb35.x = (x_3609 | x_3611);
      let x_3615 : bool = u_xlatb35.x;
      if (x_3615) {
        x_3616 = 1.0f;
      } else {
        let x_3621 : f32 = u_xlat10.x;
        x_3616 = x_3621;
      }
      let x_3622 : f32 = x_3616;
      u_xlat10.x = x_3622;
    } else {
      u_xlat10.x = 1.0f;
    }
    let x_3627 : f32 = u_xlat10.x;
    u_xlat35 = (-(x_3627) + 1.0f);
    let x_3630 : f32 = u_xlat77;
    let x_3631 : f32 = u_xlat35;
    let x_3634 : f32 = u_xlat10.x;
    u_xlat10.x = ((x_3630 * x_3631) + x_3634);
    let x_3637 : f32 = u_xlat83;
    let x_3639 : f32 = u_xlat10.x;
    u_xlat83 = (x_3637 * x_3639);
    let x_3641 : vec3<f32> = u_xlat2;
    let x_3642 : vec3<f32> = u_xlat34;
    u_xlat10.x = dot(x_3641, x_3642);
    let x_3646 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_3646, 0.0f, 1.0f);
    let x_3649 : f32 = u_xlat83;
    let x_3651 : f32 = u_xlat10.x;
    u_xlat83 = (x_3649 * x_3651);
    let x_3653 : f32 = u_xlat83;
    let x_3655 : i32 = u_xlati81;
    let x_3657 : vec4<f32> = x_2122.x_AdditionalLightsColor[x_3655];
    let x_3659 : vec3<f32> = (vec3<f32>(x_3653, x_3653, x_3653) * vec3<f32>(x_3657.x, x_3657.y, x_3657.z));
    let x_3660 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3659.x, x_3659.y, x_3659.z, x_3660.w);
    let x_3662 : vec4<f32> = u_xlat8;
    let x_3664 : vec4<f32> = u_xlat9;
    let x_3667 : vec3<f32> = u_xlat3;
    let x_3668 : vec3<f32> = ((vec3<f32>(x_3662.x, x_3662.y, x_3662.z) * vec3<f32>(x_3664.x, x_3664.x, x_3664.x)) + x_3667);
    let x_3669 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3668.x, x_3668.y, x_3668.z, x_3669.w);
    let x_3671 : vec4<f32> = u_xlat8;
    let x_3673 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(vec3<f32>(x_3671.x, x_3671.y, x_3671.z), vec3<f32>(x_3673.x, x_3673.y, x_3673.z));
    let x_3676 : f32 = u_xlat81;
    u_xlat81 = max(x_3676, 1.17549435e-38f);
    let x_3678 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_3678);
    let x_3680 : f32 = u_xlat81;
    let x_3682 : vec4<f32> = u_xlat8;
    let x_3684 : vec3<f32> = (vec3<f32>(x_3680, x_3680, x_3680) * vec3<f32>(x_3682.x, x_3682.y, x_3682.z));
    let x_3685 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3684.x, x_3684.y, x_3684.z, x_3685.w);
    let x_3687 : vec3<f32> = u_xlat2;
    let x_3688 : vec4<f32> = u_xlat8;
    u_xlat81 = dot(x_3687, vec3<f32>(x_3688.x, x_3688.y, x_3688.z));
    let x_3691 : f32 = u_xlat81;
    u_xlat81 = clamp(x_3691, 0.0f, 1.0f);
    let x_3693 : vec3<f32> = u_xlat34;
    let x_3694 : vec4<f32> = u_xlat8;
    u_xlat8.x = dot(x_3693, vec3<f32>(x_3694.x, x_3694.y, x_3694.z));
    let x_3699 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_3699, 0.0f, 1.0f);
    let x_3702 : f32 = u_xlat81;
    let x_3703 : f32 = u_xlat81;
    u_xlat81 = (x_3702 * x_3703);
    let x_3705 : f32 = u_xlat81;
    let x_3707 : f32 = u_xlat7.x;
    u_xlat81 = ((x_3705 * x_3707) + 1.00001001358032226562f);
    let x_3711 : f32 = u_xlat8.x;
    let x_3713 : f32 = u_xlat8.x;
    u_xlat8.x = (x_3711 * x_3713);
    let x_3716 : f32 = u_xlat81;
    let x_3717 : f32 = u_xlat81;
    u_xlat81 = (x_3716 * x_3717);
    let x_3720 : f32 = u_xlat8.x;
    u_xlat8.x = max(x_3720, 0.10000000149011611938f);
    let x_3723 : f32 = u_xlat81;
    let x_3725 : f32 = u_xlat8.x;
    u_xlat81 = (x_3723 * x_3725);
    let x_3727 : f32 = u_xlat80;
    let x_3728 : f32 = u_xlat81;
    u_xlat81 = (x_3727 * x_3728);
    let x_3730 : f32 = u_xlat79;
    let x_3731 : f32 = u_xlat81;
    u_xlat81 = (x_3730 / x_3731);
    let x_3733 : vec4<f32> = u_xlat0;
    let x_3735 : f32 = u_xlat81;
    let x_3738 : vec3<f32> = u_xlat26;
    let x_3739 : vec3<f32> = ((vec3<f32>(x_3733.x, x_3733.y, x_3733.z) * vec3<f32>(x_3735, x_3735, x_3735)) + x_3738);
    let x_3740 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3739.x, x_3739.y, x_3739.z, x_3740.w);
    let x_3742 : vec4<f32> = u_xlat8;
    let x_3744 : vec4<f32> = u_xlat10;
    let x_3747 : vec4<f32> = u_xlat4;
    let x_3749 : vec3<f32> = ((vec3<f32>(x_3742.x, x_3742.y, x_3742.z) * vec3<f32>(x_3744.x, x_3744.y, x_3744.z)) + vec3<f32>(x_3747.x, x_3747.y, x_3747.z));
    let x_3750 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3749.x, x_3749.y, x_3749.z, x_3750.w);

    continuing {
      let x_3752 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3752 + bitcast<u32>(1i));
    }
  }
  let x_3754 : vec3<f32> = u_xlat32;
  let x_3755 : vec4<f32> = u_xlat6;
  let x_3758 : vec4<f32> = u_xlat5;
  let x_3760 : vec3<f32> = ((x_3754 * vec3<f32>(x_3755.x, x_3755.y, x_3755.z)) + vec3<f32>(x_3758.x, x_3758.y, x_3758.z));
  let x_3761 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3761.w);
  let x_3765 : vec4<f32> = u_xlat4;
  let x_3767 : vec4<f32> = u_xlat0;
  let x_3769 : vec3<f32> = (vec3<f32>(x_3765.x, x_3765.y, x_3765.z) + vec3<f32>(x_3767.x, x_3767.y, x_3767.z));
  let x_3770 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3769.x, x_3769.y, x_3769.z, x_3770.w);
  let x_3774 : f32 = x_58.x_Surface;
  u_xlatb0 = (x_3774 == 1.0f);
  let x_3776 : bool = u_xlatb0;
  if (x_3776) {
    let x_3781 : f32 = u_xlat1.x;
    x_3777 = x_3781;
  } else {
    x_3777 = 1.0f;
  }
  let x_3783 : f32 = x_3777;
  SV_Target0.w = x_3783;
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


