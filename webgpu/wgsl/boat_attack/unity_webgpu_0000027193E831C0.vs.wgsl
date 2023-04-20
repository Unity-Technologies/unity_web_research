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
  /* @offset(64) */
  x_ShadowBias : vec4<f32>,
  /* @offset(80) */
  x_LightPosition : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_71 : VGlobals;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec3<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_74 : vec3<f32> = x_71.x_LightPosition;
  u_xlat1 = (-(vec3<f32>(x_66.x, x_66.y, x_66.z)) + x_74);
  let x_78 : vec3<f32> = u_xlat1;
  let x_79 : vec3<f32> = u_xlat1;
  u_xlat9 = dot(x_78, x_79);
  let x_81 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_81);
  let x_83 : f32 = u_xlat9;
  let x_85 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_83, x_83, x_83) * x_85);
  let x_88 : vec3<f32> = u_xlat1;
  let x_90 : vec4<f32> = x_71.x_ShadowBias;
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat2 = ((x_88 * vec3<f32>(x_90.x, x_90.x, x_90.x)) + vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_98 : vec4<f32> = u_xlat0;
  vs_INTERP1 = vec3<f32>(x_98.x, x_98.y, x_98.z);
  let x_101 : vec3<f32> = in_NORMAL0;
  let x_103 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_101, vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_108 : vec3<f32> = in_NORMAL0;
  let x_110 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_108, vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_115 : vec3<f32> = in_NORMAL0;
  let x_117 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_115, vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_121 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_121.x, x_121.y, x_121.z), vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : f32 = u_xlat9;
  u_xlat9 = max(x_126, 1.17549435e-38f);
  let x_129 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_129);
  let x_131 : f32 = u_xlat9;
  let x_133 : vec4<f32> = u_xlat0;
  let x_135 : vec3<f32> = (vec3<f32>(x_131, x_131, x_131) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_138 : vec3<f32> = u_xlat1;
  let x_139 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(x_138, vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : f32 = u_xlat9;
  u_xlat9 = clamp(x_142, 0.0f, 1.0f);
  let x_146 : f32 = u_xlat9;
  u_xlat9 = (-(x_146) + 1.0f);
  let x_149 : f32 = u_xlat9;
  let x_152 : f32 = x_71.x_ShadowBias.y;
  u_xlat9 = (x_149 * x_152);
  let x_154 : vec4<f32> = u_xlat0;
  let x_156 : f32 = u_xlat9;
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(x_156, x_156, x_156)) + x_159);
  let x_162 : vec4<f32> = u_xlat0;
  vs_INTERP2 = vec3<f32>(x_162.x, x_162.y, x_162.z);
  let x_164 : vec3<f32> = u_xlat1;
  let x_167 : vec4<f32> = x_71.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_164.y, x_164.y, x_164.y, x_164.y) * x_167);
  let x_170 : vec4<f32> = x_71.unity_MatrixVP[0i];
  let x_171 : vec3<f32> = u_xlat1;
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_170 * vec4<f32>(x_171.x, x_171.x, x_171.x, x_171.x)) + x_174);
  let x_177 : vec4<f32> = x_71.unity_MatrixVP[2i];
  let x_178 : vec3<f32> = u_xlat1;
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_177 * vec4<f32>(x_178.z, x_178.z, x_178.z, x_178.z)) + x_181);
  let x_183 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = x_71.unity_MatrixVP[3i];
  u_xlat0 = (x_183 + x_185);
  let x_192 : f32 = u_xlat0.z;
  gl_Position.z = min(x_192, 1.0f);
  let x_196 : vec4<f32> = u_xlat0;
  let x_197 : vec3<f32> = vec3<f32>(x_196.x, x_196.y, x_196.w);
  let x_200 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_197.x, x_197.y, x_200.z, x_197.z);
  let x_205 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP0 = x_205;
  return;
}

struct main_out {
  @location(1)
  vs_INTERP1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_INTERP0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_INTERP1, gl_Position, vs_INTERP0);
}


