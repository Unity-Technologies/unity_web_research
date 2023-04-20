diagnostic(off, derivative_uniformity);

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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_20 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_53 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_93 : UnityPerMaterial;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_29 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_30 : vec4<f32> = in_POSITION0;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_29 * vec4<f32>(x_30.x, x_30.x, x_30.x, x_30.x)) + x_33);
  let x_37 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_38 : vec4<f32> = in_POSITION0;
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_37 * vec4<f32>(x_38.z, x_38.z, x_38.z, x_38.z)) + x_41);
  let x_43 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat0 = (x_43 + x_46);
  let x_49 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_53.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_49.y, x_49.y, x_49.y, x_49.y) * x_55);
  let x_58 : vec4<f32> = x_53.unity_MatrixVP[0i];
  let x_59 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_58 * vec4<f32>(x_59.x, x_59.x, x_59.x, x_59.x)) + x_62);
  let x_65 : vec4<f32> = x_53.unity_MatrixVP[2i];
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_65 * vec4<f32>(x_66.z, x_66.z, x_66.z, x_66.z)) + x_69);
  let x_77 : vec4<f32> = x_53.unity_MatrixVP[3i];
  let x_78 : vec4<f32> = u_xlat0;
  let x_81 : vec4<f32> = u_xlat1;
  gl_Position = ((x_77 * vec4<f32>(x_78.w, x_78.w, x_78.w, x_78.w)) + x_81);
  let x_90 : vec2<f32> = in_TEXCOORD0;
  let x_95 : vec4<f32> = x_93.x_BaseMap_ST;
  let x_99 : vec4<f32> = x_93.x_BaseMap_ST;
  vs_TEXCOORD1 = ((x_90 * vec2<f32>(x_95.x, x_95.y)) + vec2<f32>(x_99.z, x_99.w));
  let x_105 : vec3<f32> = in_NORMAL0;
  let x_107 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_105, vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_113 : vec3<f32> = in_NORMAL0;
  let x_115 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_113, vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_119 : vec3<f32> = in_NORMAL0;
  let x_121 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_119, vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat6;
  u_xlat6 = max(x_131, 1.17549435e-38f);
  let x_134 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_134);
  let x_138 : f32 = u_xlat6;
  let x_140 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = (vec3<f32>(x_138, x_138, x_138) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_144 : vec4<f32> = in_TANGENT0;
  let x_147 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_149 : vec3<f32> = (vec3<f32>(x_144.y, x_144.y, x_144.y) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_155 : vec4<f32> = in_TANGENT0;
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.x, x_155.x, x_155.x)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_166 : vec4<f32> = in_TANGENT0;
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.z, x_166.z, x_166.z)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : f32 = u_xlat6;
  u_xlat6 = max(x_179, 1.17549435e-38f);
  let x_181 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_181);
  let x_184 : f32 = u_xlat6;
  let x_186 : vec4<f32> = u_xlat0;
  let x_188 : vec3<f32> = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_197 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlatb0 = (x_197 >= 0.0f);
  let x_200 : bool = u_xlatb0;
  u_xlat0.x = select(-1.0f, 1.0f, x_200);
  let x_206 : f32 = u_xlat0.x;
  let x_209 : f32 = in_TANGENT0.w;
  vs_TEXCOORD4.w = (x_206 * x_209);
  vs_TEXCOORD5 = vec3<f32>(0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD4);
}


