diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(144) */
  unity_FogParams : vec4<f32>,
  /* @offset(160) */
  x_TreeBillboardCameraRight : vec3<f32>,
  /* @offset(176) */
  x_TreeBillboardCameraUp : vec4<f32>,
  /* @offset(192) */
  x_TreeBillboardCameraFront : vec4<f32>,
  /* @offset(208) */
  x_TreeBillboardCameraPos : vec4<f32>,
  /* @offset(224) */
  x_TreeBillboardDistances : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlatb0 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD1 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_64 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.x_TreeBillboardCameraPos;
  let x_26 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) + -(vec3<f32>(x_23.x, x_23.y, x_23.z)));
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_44 : f32 = x_18.x_TreeBillboardDistances.x;
  let x_46 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 < x_46);
  let x_52 : vec2<f32> = in_TEXCOORD1;
  let x_53 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_52.x, x_52.y, x_53.z, x_53.w);
  let x_59 : f32 = in_TEXCOORD0.y;
  u_xlat1.z = x_59;
  let x_62 : bool = u_xlatb0;
  if (x_62) {
    x_64 = vec3<f32>(0.0f, 0.0f, 0.0f);
  } else {
    let x_70 : vec4<f32> = u_xlat1;
    x_64 = vec3<f32>(x_70.x, x_70.y, x_70.z);
  }
  let x_72 : vec3<f32> = x_64;
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_77 : f32 = u_xlat0.y;
  let x_80 : f32 = u_xlat0.z;
  u_xlat4 = (-(x_77) + x_80);
  let x_85 : f32 = x_18.x_TreeBillboardCameraPos.w;
  let x_86 : f32 = u_xlat4;
  let x_89 : f32 = u_xlat0.y;
  u_xlat2 = ((x_85 * x_86) + x_89);
  let x_93 : f32 = x_18.x_TreeBillboardCameraRight.x;
  let x_95 : f32 = x_18.x_TreeBillboardCameraRight.y;
  let x_97 : f32 = x_18.x_TreeBillboardCameraRight.z;
  let x_99 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = in_POSITION0;
  let x_104 : vec3<f32> = ((vec3<f32>(x_93, x_95, x_97) * vec3<f32>(x_99.x, x_99.x, x_99.x)) + vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_107 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = x_18.x_TreeBillboardCameraFront;
  let x_114 : vec3<f32> = (abs(vec3<f32>(x_107.x, x_107.x, x_107.x)) * vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_115.y, x_114.y, x_114.z);
  let x_119 : vec4<f32> = x_18.x_TreeBillboardCameraUp;
  let x_121 : f32 = u_xlat2;
  let x_124 : vec4<f32> = u_xlat1;
  let x_126 : vec3<f32> = ((vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(x_121, x_121, x_121)) + vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_127 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_129 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = x_18.x_TreeBillboardCameraUp;
  let x_135 : vec4<f32> = u_xlat1;
  let x_137 : vec3<f32> = ((vec3<f32>(x_129.x, x_129.z, x_129.w) * vec3<f32>(x_132.w, x_132.w, x_132.w)) + vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
  let x_140 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_140.y, x_140.y, x_140.y, x_140.y) * x_144);
  let x_148 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_149 : vec4<f32> = u_xlat0;
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_148 * vec4<f32>(x_149.x, x_149.x, x_149.x, x_149.x)) + x_152);
  let x_156 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_156 * vec4<f32>(x_157.z, x_157.z, x_157.z, x_157.z)) + x_160);
  let x_162 : vec4<f32> = u_xlat0;
  let x_165 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_162 + x_165);
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_167.y, x_167.y, x_167.y, x_167.y) * x_170);
  let x_173 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_174 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_173 * vec4<f32>(x_174.x, x_174.x, x_174.x, x_174.x)) + x_177);
  let x_180 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_181 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_180 * vec4<f32>(x_181.z, x_181.z, x_181.z, x_181.z)) + x_184);
  let x_187 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_188 : vec4<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_187 * vec4<f32>(x_188.w, x_188.w, x_188.w, x_188.w)) + x_191);
  let x_197 : vec4<f32> = u_xlat0;
  gl_Position = x_197;
  let x_201 : f32 = u_xlat0.z;
  let x_203 : f32 = x_18.x_ProjectionParams.y;
  u_xlat0.x = (x_201 / x_203);
  let x_207 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_207) + 1.0f);
  let x_213 : f32 = u_xlat0.x;
  let x_215 : f32 = x_18.x_ProjectionParams.z;
  u_xlat0.x = (x_213 * x_215);
  let x_219 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_219, 0.0f);
  let x_223 : f32 = u_xlat0.x;
  let x_225 : f32 = x_18.unity_FogParams.x;
  u_xlat0.x = (x_223 * x_225);
  let x_229 : f32 = u_xlat0.x;
  let x_231 : f32 = u_xlat0.x;
  u_xlat0.x = (x_229 * -(x_231));
  let x_238 : f32 = u_xlat0.x;
  vs_TEXCOORD1 = exp2(x_238);
  let x_242 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_242;
  let x_244 : f32 = in_TEXCOORD0.y;
  u_xlatb0 = (0.0f < x_244);
  let x_248 : bool = u_xlatb0;
  vs_TEXCOORD0.y = select(0.0f, 1.0f, x_248);
  let x_252 : f32 = in_TEXCOORD0.x;
  vs_TEXCOORD0.x = x_252;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : f32,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD0);
}


