struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_WavingTint : vec4<f32>,
  x_WaveAndDistance : vec4<f32>,
  x_CameraPosition : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_25 : vec2<f32> = (vec2<f32>(x_13.x, x_13.z) * vec2<f32>(x_23.y, x_23.y));
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_26.z, x_26.w);
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_29.y, x_29.y, x_29.y, x_29.y) * vec4<f32>(0.006f, 0.02f, 0.02f, 0.050000001f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_36.x, x_36.x, x_36.x, x_36.x) * vec4<f32>(0.012f, 0.02f, 0.059999999f, 0.024f)) + x_43);
  let x_46 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_46.x, x_46.x, x_46.x, x_46.x) * vec4<f32>(1.200000048f, 2.0f, 1.600000024f, 4.800000191f)) + x_54);
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_56);
  let x_58 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_58 * vec4<f32>(6.408848763f, 6.408848763f, 6.408848763f, 6.408848763f)) + vec4<f32>(-3.141592741f, -3.141592741f, -3.141592741f, -3.141592741f));
  let x_65 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_65 * x_66);
  let x_69 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_69 * x_70);
  let x_72 : vec4<f32> = u_xlat2;
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_72 * vec4<f32>(-0.161616161f, -0.161616161f, -0.161616161f, -0.161616161f)) + x_76);
  let x_78 : vec4<f32> = u_xlat1;
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_78 * x_79);
  let x_81 : vec4<f32> = u_xlat1;
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_81 * x_82);
  let x_84 : vec4<f32> = u_xlat2;
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_84 * vec4<f32>(0.0083333f, 0.0083333f, 0.0083333f, 0.0083333f)) + x_88);
  let x_90 : vec4<f32> = u_xlat1;
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_90 * vec4<f32>(-0.00019841f, -0.00019841f, -0.00019841f, -0.00019841f)) + x_94);
  let x_96 : vec4<f32> = u_xlat0;
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_96 * x_97);
  let x_99 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_99 * x_100);
  let x_107 : f32 = in_COLOR0.w;
  let x_111 : f32 = x_18.x_WaveAndDistance.z;
  u_xlat1.x = (x_107 * x_111);
  let x_116 : vec4<f32> = u_xlat0;
  let x_117 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_116 * vec4<f32>(x_117.x, x_117.x, x_117.x, x_117.x));
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_120, vec4<f32>(0.674199879f, 0.674199879f, 0.269679934f, 0.134839967f));
  let x_128 : f32 = u_xlat0.x;
  u_xlat0.x = (x_128 * 0.699999988f);
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_132, vec4<f32>(0.024f, 0.039999999f, -0.119999997f, 0.096000001f));
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_139, vec4<f32>(0.006f, 0.02f, -0.02f, 0.100000001f));
  let x_145 : vec4<f32> = u_xlat2;
  let x_149 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_152 : vec4<f32> = in_POSITION0;
  let x_154 : vec2<f32> = ((-(vec2<f32>(x_145.x, x_145.z)) * vec2<f32>(x_149.z, x_149.z)) + vec2<f32>(x_152.x, x_152.z));
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_155.y, x_154.y, x_155.w);
  let x_157 : vec4<f32> = in_POSITION0;
  let x_162 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat2 = (vec4<f32>(x_157.y, x_157.y, x_157.y, x_157.y) * x_162);
  let x_165 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_166 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_165 * vec4<f32>(x_166.x, x_166.x, x_166.x, x_166.x)) + x_169);
  let x_173 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_174 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_173 * vec4<f32>(x_174.z, x_174.z, x_174.z, x_174.z)) + x_177);
  let x_182 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat3 = (vec3<f32>(x_182.x, x_182.y, x_182.z) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_191 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_192 : vec4<f32> = in_POSITION0;
  let x_195 : vec4<f32> = u_xlat2;
  vs_TEXCOORD1 = ((x_191 * vec4<f32>(x_192.w, x_192.w, x_192.w, x_192.w)) + x_195);
  let x_197 : vec3<f32> = u_xlat3;
  let x_200 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_197.y, x_197.y, x_197.y, x_197.y) * x_200);
  let x_203 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_204 : vec3<f32> = u_xlat3;
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_203 * vec4<f32>(x_204.x, x_204.x, x_204.x, x_204.x)) + x_207);
  let x_210 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_211 : vec3<f32> = u_xlat3;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_210 * vec4<f32>(x_211.z, x_211.z, x_211.z, x_211.z)) + x_214);
  let x_221 : vec4<f32> = u_xlat2;
  let x_223 : vec4<f32> = x_18.unity_MatrixVP[3i];
  gl_Position = (x_221 + x_223);
  let x_227 : f32 = in_POSITION0.y;
  u_xlat1.y = x_227;
  let x_229 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = x_18.x_CameraPosition;
  u_xlat3 = (vec3<f32>(x_229.x, x_229.y, x_229.z) + -(vec3<f32>(x_233.x, x_233.y, x_233.z)));
  let x_237 : vec3<f32> = u_xlat3;
  let x_238 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_237, x_238);
  let x_242 : f32 = u_xlat3.x;
  let x_245 : f32 = x_18.x_WaveAndDistance.w;
  u_xlat3.x = (-(x_242) + x_245);
  let x_250 : vec4<f32> = x_18.x_CameraPosition;
  let x_252 : vec3<f32> = u_xlat3;
  vs_COLOR0.w = dot(vec2<f32>(x_250.w, x_250.w), vec2<f32>(x_252.x, x_252.x));
  let x_258 : f32 = vs_COLOR0.w;
  vs_COLOR0.w = clamp(x_258, 0.0f, 1.0f);
  let x_264 : vec4<f32> = x_18.x_WavingTint;
  u_xlat3 = (vec3<f32>(x_264.x, x_264.y, x_264.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_269 : vec4<f32> = u_xlat0;
  let x_271 : vec3<f32> = u_xlat3;
  let x_275 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.x, x_269.x) * x_271) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = in_COLOR0;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) + vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_295 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_295.x, x_295.y);
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_COLOR0, vs_TEXCOORD0);
}

