diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ScreenParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  glstate_matrix_projection : mat4x4<f32>,
  /* @offset(144) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(208) */
  x_FaceTex_ST : vec4<f32>,
  /* @offset(224) */
  x_FaceColor : vec4<f32>,
  /* @offset(240) */
  x_VertexOffsetX : f32,
  /* @offset(244) */
  x_VertexOffsetY : f32,
  /* @offset(256) */
  x_ClipRect : vec4<f32>,
  /* @offset(272) */
  x_MaskSoftnessX : f32,
  /* @offset(276) */
  x_MaskSoftnessY : f32,
}

var<private> u_xlat0 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_28 : VGlobals;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = in_POSITION0.w;
  u_xlat0.x = (x_17 * 0.5f);
  let x_23 : vec2<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_28.x_ScreenParams;
  u_xlat0 = (vec2<f32>(x_23.x, x_23.x) / vec2<f32>(x_33.x, x_33.y));
  let x_37 : vec4<f32> = in_POSITION0;
  let x_42 : f32 = x_28.x_VertexOffsetX;
  let x_45 : f32 = x_28.x_VertexOffsetY;
  u_xlat6 = (vec2<f32>(x_37.x, x_37.y) + vec2<f32>(x_42, x_45));
  let x_48 : vec2<f32> = u_xlat0;
  let x_49 : vec2<f32> = u_xlat6;
  u_xlat0 = (x_48 + x_49);
  let x_53 : vec2<f32> = u_xlat0;
  let x_57 : vec4<f32> = x_28.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_53.y, x_53.y, x_53.y, x_53.y) * x_57);
  let x_60 : vec4<f32> = x_28.unity_ObjectToWorld[0i];
  let x_61 : vec2<f32> = u_xlat0;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_60 * vec4<f32>(x_61.x, x_61.x, x_61.x, x_61.x)) + x_64);
  let x_68 : vec4<f32> = x_28.unity_ObjectToWorld[2i];
  let x_69 : vec4<f32> = in_POSITION0;
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_68 * vec4<f32>(x_69.z, x_69.z, x_69.z, x_69.z)) + x_72);
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = x_28.unity_ObjectToWorld[3i];
  u_xlat1 = (x_74 + x_77);
  let x_80 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = x_28.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_80.y, x_80.y, x_80.y, x_80.y) * x_83);
  let x_86 : vec4<f32> = x_28.unity_MatrixVP[0i];
  let x_87 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_86 * vec4<f32>(x_87.x, x_87.x, x_87.x, x_87.x)) + x_90);
  let x_93 : vec4<f32> = x_28.unity_MatrixVP[2i];
  let x_94 : vec4<f32> = u_xlat1;
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_93 * vec4<f32>(x_94.z, x_94.z, x_94.z, x_94.z)) + x_97);
  let x_100 : vec4<f32> = x_28.unity_MatrixVP[3i];
  let x_101 : vec4<f32> = u_xlat1;
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_100 * vec4<f32>(x_101.w, x_101.w, x_101.w, x_101.w)) + x_104);
  let x_106 : vec4<f32> = u_xlat1;
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec2<f32>(x_106.x, x_106.y) / vec2<f32>(x_108.w, x_108.w));
  let x_112 : vec4<f32> = x_28.x_ScreenParams;
  let x_115 : vec2<f32> = (vec2<f32>(x_112.x, x_112.y) * vec2<f32>(0.5f, 0.5f));
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
  let x_118 : vec2<f32> = u_xlat6;
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_118 * vec2<f32>(x_119.x, x_119.y));
  let x_122 : vec2<f32> = u_xlat6;
  u_xlat6 = round(x_122);
  let x_124 : vec2<f32> = u_xlat6;
  let x_125 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_124 / vec2<f32>(x_125.x, x_125.y));
  let x_133 : vec4<f32> = u_xlat1;
  let x_135 : vec2<f32> = u_xlat6;
  let x_136 : vec2<f32> = (vec2<f32>(x_133.w, x_133.w) * x_135);
  let x_139 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_136.x, x_136.y, x_139.z, x_139.w);
  let x_141 : vec4<f32> = u_xlat1;
  let x_142 : vec2<f32> = vec2<f32>(x_141.z, x_141.w);
  let x_144 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_144.x, x_144.y, x_142.x, x_142.y);
  let x_148 : vec4<f32> = in_COLOR0;
  let x_151 : vec4<f32> = x_28.x_FaceColor;
  vs_COLOR0 = (x_148 * x_151);
  let x_156 : f32 = in_TEXCOORD1.x;
  u_xlat6.x = (x_156 * 0.000244140625f);
  let x_161 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_161);
  let x_165 : f32 = u_xlat6.x;
  let x_170 : f32 = in_TEXCOORD1.x;
  u_xlat6.y = ((-(x_165) * 4096.0f) + x_170);
  let x_173 : vec2<f32> = u_xlat6;
  let x_176 : vec4<f32> = x_28.x_FaceTex_ST;
  u_xlat6 = (x_173 * vec2<f32>(x_176.x, x_176.y));
  let x_181 : vec2<f32> = u_xlat6;
  let x_186 : vec4<f32> = x_28.x_FaceTex_ST;
  vs_TEXCOORD1 = ((x_181 * vec2<f32>(0.001953125f, 0.001953125f)) + vec2<f32>(x_186.z, x_186.w));
  let x_191 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_191;
  let x_194 : vec4<f32> = x_28.x_ClipRect;
  u_xlat2 = max(x_194, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_198, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_202 : vec2<f32> = u_xlat0;
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_202 * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_206.x, x_206.y)));
  let x_211 : vec4<f32> = u_xlat2;
  let x_214 : vec2<f32> = u_xlat0;
  let x_215 : vec2<f32> = (-(vec2<f32>(x_211.z, x_211.w)) + x_214);
  let x_216 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_215.x, x_215.y, x_216.z, x_216.w);
  let x_219 : f32 = x_28.x_ScreenParams.x;
  let x_221 : f32 = x_28.glstate_matrix_projection[0i].x;
  u_xlat6.x = (x_219 * x_221);
  let x_225 : f32 = x_28.x_ScreenParams.y;
  let x_227 : f32 = x_28.glstate_matrix_projection[1i].y;
  u_xlat6.y = (x_225 * x_227);
  let x_230 : vec4<f32> = u_xlat1;
  let x_232 : vec2<f32> = u_xlat6;
  u_xlat0 = (vec2<f32>(x_230.w, x_230.w) / abs(x_232));
  let x_237 : f32 = x_28.x_MaskSoftnessX;
  let x_240 : f32 = x_28.x_MaskSoftnessY;
  let x_245 : vec2<f32> = u_xlat0;
  u_xlat0 = ((vec2<f32>(x_237, x_240) * vec2<f32>(0.25f, 0.25f)) + x_245);
  let x_247 : vec2<f32> = u_xlat0;
  let x_248 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / x_247);
  let x_249 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_249.x, x_249.y, x_248.x, x_248.y);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2);
}


