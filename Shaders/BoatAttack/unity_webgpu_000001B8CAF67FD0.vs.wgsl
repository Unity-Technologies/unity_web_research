struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_TreeBillboardCameraPos : vec4<f32>,
  x_TreeBillboardDistances : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlatb9 : bool;
  var u_xlat4 : vec2<f32>;
  var x_55 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb3 : bool;
  var x_214 : f32;
  var u_xlatb0 : bool;
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
    x_55 = vec2<f32>(0.0f, 0.0f);
  } else {
    let x_63 : vec2<f32> = in_TEXCOORD1;
    x_55 = x_63;
  }
  let x_64 : vec2<f32> = x_55;
  u_xlat4 = x_64;
  let x_65 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = u_xlat1;
  let x_69 : vec3<f32> = (vec3<f32>(x_65.x, x_65.y, x_65.z) / vec3<f32>(x_67.x, x_67.x, x_67.x));
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : f32 = u_xlat1.x;
  let x_76 : f32 = x_18.x_TreeBillboardDistances.z;
  u_xlat9 = (x_73 + -(x_76));
  let x_80 : vec4<f32> = u_xlat0;
  let x_84 : vec3<f32> = (vec3<f32>(x_80.x, x_80.y, x_80.z) * vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_87 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = u_xlat2;
  let x_94 : vec3<f32> = ((vec3<f32>(x_87.y, x_87.z, x_87.x) * vec3<f32>(1.0f, 0.0f, 0.0f)) + -(vec3<f32>(x_91.x, x_91.y, x_91.z)));
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat0;
  let x_99 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_97.x, x_97.z), vec2<f32>(x_99.x, x_99.z));
  let x_104 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_104);
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = u_xlat1;
  let x_111 : vec3<f32> = (vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.x, x_109.x, x_109.x));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat0;
  let x_116 : vec2<f32> = u_xlat4;
  let x_119 : vec4<f32> = in_POSITION0;
  let x_121 : vec3<f32> = ((vec3<f32>(x_114.x, x_114.y, x_114.z) * vec3<f32>(x_116.x, x_116.x, x_116.x)) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec2<f32> = u_xlat4;
  let x_128 : vec4<f32> = u_xlat0;
  let x_130 : vec3<f32> = ((vec3<f32>(x_124.y, x_124.y, x_124.y) * vec3<f32>(0.0f, 1.0f, 0.0f)) + vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_133.y, x_133.y, x_133.y, x_133.y) * x_137);
  let x_141 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_142 : vec4<f32> = u_xlat0;
  let x_145 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_141 * vec4<f32>(x_142.x, x_142.x, x_142.x, x_142.x)) + x_145);
  let x_149 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_150 : vec4<f32> = u_xlat0;
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_149 * vec4<f32>(x_150.z, x_150.z, x_150.z, x_150.z)) + x_153);
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_155 + x_157);
  let x_159 : vec4<f32> = u_xlat1;
  let x_162 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_159.y, x_159.y, x_159.y, x_159.y) * x_162);
  let x_165 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_166 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_165 * vec4<f32>(x_166.x, x_166.x, x_166.x, x_166.x)) + x_169);
  let x_172 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_173 : vec4<f32> = u_xlat1;
  let x_176 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_172 * vec4<f32>(x_173.z, x_173.z, x_173.z, x_173.z)) + x_176);
  let x_179 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_180 : vec4<f32> = u_xlat1;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_179 * vec4<f32>(x_180.w, x_180.w, x_180.w, x_180.w)) + x_183);
  let x_190 : vec4<f32> = u_xlat1;
  gl_Position = x_190;
  let x_195 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_195;
  let x_196 : f32 = u_xlat9;
  let x_199 : f32 = x_18.x_TreeBillboardDistances.w;
  u_xlat0.x = (x_196 / x_199);
  let x_203 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_203, 0.0f, 1.0f);
  let x_208 : f32 = x_18.x_TreeBillboardDistances.w;
  let x_209 : f32 = u_xlat9;
  u_xlatb3 = (x_208 < x_209);
  let x_213 : bool = u_xlatb3;
  if (x_213) {
    x_214 = 1.0f;
  } else {
    let x_219 : f32 = u_xlat0.x;
    x_214 = x_219;
  }
  let x_220 : f32 = x_214;
  vs_TEXCOORD0.z = x_220;
  let x_227 : f32 = in_TEXCOORD0.y;
  u_xlatb0 = (0.0f < x_227);
  let x_229 : bool = u_xlatb0;
  vs_TEXCOORD0.y = select(0.0f, 1.0f, x_229);
  let x_233 : f32 = in_TEXCOORD0.x;
  vs_TEXCOORD0.x = x_233;
  let x_236 : f32 = u_xlat1.y;
  let x_238 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.x = (x_236 * x_238);
  let x_242 : f32 = u_xlat0.x;
  u_xlat0.w = (x_242 * 0.5f);
  let x_246 : vec4<f32> = u_xlat1;
  let x_249 : vec2<f32> = (vec2<f32>(x_246.x, x_246.w) * vec2<f32>(0.5f, 0.5f));
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_250.y, x_249.y, x_250.w);
  let x_254 : vec4<f32> = u_xlat1;
  let x_255 : vec2<f32> = vec2<f32>(x_254.z, x_254.w);
  let x_256 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_256.x, x_256.y, x_255.x, x_255.y);
  let x_258 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = u_xlat0;
  let x_262 : vec2<f32> = (vec2<f32>(x_258.z, x_258.z) + vec2<f32>(x_260.x, x_260.w));
  let x_263 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
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

