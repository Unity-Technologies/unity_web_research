diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(16) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(80) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(144) */
  x_TreeBillboardCameraPos : vec4<f32>,
  /* @offset(160) */
  x_TreeBillboardDistances : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlat9 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlat4 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_56 : vec2<f32>;
  var x_216 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.x_TreeBillboardCameraPos;
  let x_26 : vec3<f32> = (vec3<f32>(x_13.y, x_13.z, x_13.x) + -(vec3<f32>(x_23.y, x_23.z, x_23.x)));
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_31.x, x_31.y, x_31.z), vec3<f32>(x_33.x, x_33.y, x_33.z));
  let x_37 : f32 = u_xlat9;
  u_xlat1.x = sqrt(x_37);
  let x_48 : f32 = x_18.x_TreeBillboardDistances.x;
  let x_49 : f32 = u_xlat9;
  u_xlatb9 = (x_48 < x_49);
  let x_54 : bool = u_xlatb9;
  if (x_54) {
    x_56 = vec2<f32>(0.0f, 0.0f);
  } else {
    let x_64 : vec2<f32> = in_TEXCOORD1;
    x_56 = x_64;
  }
  let x_65 : vec2<f32> = x_56;
  u_xlat4 = x_65;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat1;
  let x_70 : vec3<f32> = (vec3<f32>(x_66.x, x_66.y, x_66.z) / vec3<f32>(x_68.x, x_68.x, x_68.x));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : f32 = u_xlat1.x;
  let x_77 : f32 = x_18.x_TreeBillboardDistances.z;
  u_xlat9 = (x_74 + -(x_77));
  let x_81 : vec4<f32> = u_xlat0;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_88 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat2;
  let x_95 : vec3<f32> = ((vec3<f32>(x_88.y, x_88.z, x_88.x) * vec3<f32>(1.0f, 0.0f, 0.0f)) + -(vec3<f32>(x_92.x, x_92.y, x_92.z)));
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_98 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_98.x, x_98.z), vec2<f32>(x_100.x, x_100.z));
  let x_105 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_105);
  let x_108 : vec4<f32> = u_xlat0;
  let x_110 : vec4<f32> = u_xlat1;
  let x_112 : vec3<f32> = (vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(x_110.x, x_110.x, x_110.x));
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_115 : vec4<f32> = u_xlat0;
  let x_117 : vec2<f32> = u_xlat4;
  let x_120 : vec4<f32> = in_POSITION0;
  let x_122 : vec3<f32> = ((vec3<f32>(x_115.x, x_115.y, x_115.z) * vec3<f32>(x_117.x, x_117.x, x_117.x)) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec2<f32> = u_xlat4;
  let x_129 : vec4<f32> = u_xlat0;
  let x_131 : vec3<f32> = ((vec3<f32>(x_125.y, x_125.y, x_125.y) * vec3<f32>(0.0f, 1.0f, 0.0f)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_138 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_138);
  let x_142 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_142 * vec4<f32>(x_143.x, x_143.x, x_143.x, x_143.x)) + x_146);
  let x_150 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_156 + x_158);
  let x_160 : vec4<f32> = u_xlat1;
  let x_163 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_160.y, x_160.y, x_160.y, x_160.y) * x_163);
  let x_166 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_167 : vec4<f32> = u_xlat1;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_166 * vec4<f32>(x_167.x, x_167.x, x_167.x, x_167.x)) + x_170);
  let x_173 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_174 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_173 * vec4<f32>(x_174.z, x_174.z, x_174.z, x_174.z)) + x_177);
  let x_180 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_181 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_180 * vec4<f32>(x_181.w, x_181.w, x_181.w, x_181.w)) + x_184);
  let x_191 : vec4<f32> = u_xlat1;
  gl_Position = x_191;
  let x_196 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_196;
  let x_197 : f32 = u_xlat9;
  let x_200 : f32 = x_18.x_TreeBillboardDistances.w;
  u_xlat0.x = (x_197 / x_200);
  let x_204 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_204, 0.0f, 1.0f);
  let x_209 : f32 = x_18.x_TreeBillboardDistances.w;
  let x_210 : f32 = u_xlat9;
  u_xlatb3 = (x_209 < x_210);
  let x_214 : bool = u_xlatb3;
  if (x_214) {
    x_216 = 1.0f;
  } else {
    let x_221 : f32 = u_xlat0.x;
    x_216 = x_221;
  }
  let x_222 : f32 = x_216;
  vs_TEXCOORD0.z = x_222;
  let x_229 : f32 = in_TEXCOORD0.y;
  u_xlatb0 = (0.0f < x_229);
  let x_231 : bool = u_xlatb0;
  vs_TEXCOORD0.y = select(0.0f, 1.0f, x_231);
  let x_235 : f32 = in_TEXCOORD0.x;
  vs_TEXCOORD0.x = x_235;
  let x_238 : f32 = u_xlat1.y;
  let x_240 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.x = (x_238 * x_240);
  let x_244 : f32 = u_xlat0.x;
  u_xlat0.w = (x_244 * 0.5f);
  let x_248 : vec4<f32> = u_xlat1;
  let x_251 : vec2<f32> = (vec2<f32>(x_248.x, x_248.w) * vec2<f32>(0.5f, 0.5f));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_252.y, x_251.y, x_252.w);
  let x_255 : vec4<f32> = u_xlat1;
  let x_256 : vec2<f32> = vec2<f32>(x_255.z, x_255.w);
  let x_257 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_257.x, x_257.y, x_256.x, x_256.y);
  let x_259 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec2<f32> = (vec2<f32>(x_259.z, x_259.z) + vec2<f32>(x_261.x, x_261.w));
  let x_264 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0);
}


