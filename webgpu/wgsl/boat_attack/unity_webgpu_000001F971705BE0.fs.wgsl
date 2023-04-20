diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(12) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec2<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(2) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : f32;

@group(1) @binding(2) var<uniform> x_60 : UnityPerMaterial;

var<private> u_xlat2 : f32;

var<private> u_xlat3 : f32;

var<private> u_xlatb2 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_PointRepeat : sampler;

var<private> u_xlatb1 : bool;

@group(1) @binding(1) var<uniform> x_171 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_121 : f32;
  var x_176 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD1;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0.x = x_51.w;
  let x_57 : f32 = u_xlat0.x;
  let x_63 : f32 = x_60.x_BaseColor.w;
  u_xlat1 = (x_57 * x_63);
  let x_66 : f32 = u_xlat0.x;
  let x_68 : f32 = x_60.x_BaseColor.w;
  let x_72 : f32 = x_60.x_Cutoff;
  u_xlat0.x = ((x_66 * x_68) + -(x_72));
  let x_77 : f32 = u_xlat1;
  u_xlat2 = dpdxCoarse(x_77);
  let x_80 : f32 = u_xlat1;
  u_xlat3 = dpdyCoarse(x_80);
  let x_82 : f32 = u_xlat3;
  let x_84 : f32 = u_xlat2;
  u_xlat2 = (abs(x_82) + abs(x_84));
  let x_87 : f32 = u_xlat2;
  u_xlat2 = max(x_87, 0.00009999999747378752f);
  let x_91 : f32 = u_xlat0.x;
  let x_92 : f32 = u_xlat2;
  u_xlat0.x = (x_91 / x_92);
  let x_96 : f32 = u_xlat0.x;
  u_xlat0.x = (x_96 + 0.5f);
  let x_101 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_101, 0.0f, 1.0f);
  let x_109 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_109 == 0.0f));
  let x_112 : f32 = u_xlat1;
  let x_114 : f32 = x_60.x_Cutoff;
  u_xlatb3 = (x_112 >= x_114);
  let x_116 : bool = u_xlatb3;
  let x_117 : f32 = u_xlat1;
  u_xlat1 = select(0.0f, x_117, x_116);
  let x_119 : bool = u_xlatb2;
  if (x_119) {
    let x_125 : f32 = u_xlat0.x;
    x_121 = x_125;
  } else {
    let x_127 : f32 = u_xlat1;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_137 : f32 = u_xlat0.x;
  u_xlatb0 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb0;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec4<f32> = hlslcc_FragCoord;
  let x_151 : f32 = x_44.x_DitheringTextureInvSize;
  u_xlat0 = (vec2<f32>(x_147.x, x_147.y) * vec2<f32>(x_151, x_151));
  let x_159 : vec2<f32> = u_xlat0;
  let x_161 : f32 = x_44.x_GlobalMipBias.x;
  let x_162 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, x_159, x_161);
  u_xlat0.x = x_162.w;
  let x_173 : f32 = x_171.unity_LODFade.x;
  u_xlatb1 = (x_173 >= 0.0f);
  let x_175 : bool = u_xlatb1;
  if (x_175) {
    let x_180 : f32 = u_xlat0.x;
    x_176 = abs(x_180);
  } else {
    let x_184 : f32 = u_xlat0.x;
    x_176 = -(abs(x_184));
  }
  let x_187 : f32 = x_176;
  u_xlat0.x = x_187;
  let x_190 : f32 = u_xlat0.x;
  let x_193 : f32 = x_171.unity_LODFade.x;
  u_xlat0.x = (-(x_190) + x_193);
  let x_197 : f32 = u_xlat0.x;
  u_xlatb0 = (x_197 < 0.0f);
  let x_199 : bool = u_xlatb0;
  if (((select(0i, 1i, x_199) * -1i) != 0i)) {
    discard;
  }
  let x_208 : vec3<f32> = vs_TEXCOORD2;
  let x_209 : vec3<f32> = vs_TEXCOORD2;
  u_xlat0.x = dot(x_208, x_209);
  let x_213 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_213);
  let x_218 : vec2<f32> = u_xlat0;
  let x_220 : vec3<f32> = vs_TEXCOORD2;
  let x_221 : vec3<f32> = (vec3<f32>(x_218.x, x_218.x, x_218.x) * x_220);
  let x_222 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD1_param : vec2<f32>, @location(1) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


