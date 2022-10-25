struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_WavingTint : vec4<f32>,
  x_WaveAndDistance : vec4<f32>,
  x_CameraPosition : vec4<f32>,
  x_CameraRight : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraUp : vec3<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_52 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat4 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.x_CameraPosition;
  let x_26 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) + -(vec3<f32>(x_23.x, x_23.y, x_23.z)));
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_45 : f32 = x_18.x_WaveAndDistance.w;
  let x_47 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 < x_47);
  let x_49 : bool = u_xlatb0;
  if (x_49) {
    x_52 = vec2<f32>(0.0f, 0.0f);
  } else {
    let x_59 : vec4<f32> = in_TANGENT0;
    x_52 = vec2<f32>(x_59.x, x_59.y);
  }
  let x_61 : vec2<f32> = x_52;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_62.z, x_62.w);
  let x_64 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = x_18.x_CameraRight;
  let x_71 : vec4<f32> = in_POSITION0;
  let x_73 : vec3<f32> = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_69) + vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_74 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_74.y, x_73.y, x_73.z);
  let x_76 : vec4<f32> = u_xlat0;
  let x_80 : vec3<f32> = x_18.x_CameraUp;
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec3<f32> = ((vec3<f32>(x_76.y, x_76.y, x_76.y) * x_80) + vec3<f32>(x_82.x, x_82.z, x_82.w));
  let x_85 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_88 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_93 : vec2<f32> = (vec2<f32>(x_88.x, x_88.z) * vec2<f32>(x_91.y, x_91.y));
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_94.w);
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_97.y, x_97.y, x_97.y, x_97.y) * vec4<f32>(0.006f, 0.02f, 0.02f, 0.050000001f));
  let x_104 : vec4<f32> = u_xlat1;
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_104.x, x_104.x, x_104.x, x_104.x) * vec4<f32>(0.012f, 0.02f, 0.059999999f, 0.024f)) + x_111);
  let x_114 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_114.x, x_114.x, x_114.x, x_114.x) * vec4<f32>(1.200000048f, 2.0f, 1.600000024f, 4.800000191f)) + x_122);
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat1 = fract(x_124);
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_126 * vec4<f32>(6.408848763f, 6.408848763f, 6.408848763f, 6.408848763f)) + vec4<f32>(-3.141592741f, -3.141592741f, -3.141592741f, -3.141592741f));
  let x_133 : vec4<f32> = u_xlat1;
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_133 * x_134);
  let x_137 : vec4<f32> = u_xlat1;
  let x_138 : vec4<f32> = u_xlat2;
  u_xlat3 = (x_137 * x_138);
  let x_140 : vec4<f32> = u_xlat3;
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_140 * vec4<f32>(-0.161616161f, -0.161616161f, -0.161616161f, -0.161616161f)) + x_144);
  let x_146 : vec4<f32> = u_xlat2;
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_146 * x_147);
  let x_149 : vec4<f32> = u_xlat2;
  let x_150 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_149 * x_150);
  let x_152 : vec4<f32> = u_xlat3;
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_152 * vec4<f32>(0.0083333f, 0.0083333f, 0.0083333f, 0.0083333f)) + x_156);
  let x_158 : vec4<f32> = u_xlat2;
  let x_162 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_158 * vec4<f32>(-0.00019841f, -0.00019841f, -0.00019841f, -0.00019841f)) + x_162);
  let x_164 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_164 * x_165);
  let x_167 : vec4<f32> = u_xlat1;
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_167 * x_168);
  let x_170 : vec4<f32> = u_xlat1;
  let x_171 : vec4<f32> = in_TANGENT0;
  u_xlat2 = (x_170 * vec4<f32>(x_171.y, x_171.y, x_171.y, x_171.y));
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(x_175, vec4<f32>(0.674199879f, 0.674199879f, 0.269679934f, 0.134839967f));
  let x_181 : f32 = u_xlat12;
  u_xlat12 = (x_181 * 0.699999988f);
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_184, vec4<f32>(0.024f, 0.039999999f, -0.119999997f, 0.096000001f));
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_191, vec4<f32>(0.006f, 0.02f, -0.02f, 0.100000001f));
  let x_198 : vec4<f32> = u_xlat1;
  let x_202 : vec4<f32> = x_18.x_WaveAndDistance;
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec2<f32> = ((-(vec2<f32>(x_198.x, x_198.z)) * vec2<f32>(x_202.z, x_202.z)) + vec2<f32>(x_205.x, x_205.z));
  let x_208 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_207.x, x_208.y, x_207.y, x_208.w);
  let x_210 : vec4<f32> = u_xlat0;
  let x_215 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_210.y, x_210.y, x_210.y, x_210.y) * x_215);
  let x_217 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = x_18.x_CameraPosition;
  let x_223 : vec3<f32> = (vec3<f32>(x_217.x, x_217.y, x_217.z) + -(vec3<f32>(x_220.x, x_220.y, x_220.z)));
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat4 = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : f32 = u_xlat4;
  let x_235 : f32 = x_18.x_WaveAndDistance.w;
  u_xlat4 = (-(x_232) + x_235);
  let x_240 : vec4<f32> = x_18.x_CameraPosition;
  let x_242 : f32 = u_xlat4;
  vs_COLOR0.w = dot(vec2<f32>(x_240.w, x_240.w), vec2<f32>(x_242, x_242));
  let x_248 : f32 = vs_COLOR0.w;
  vs_COLOR0.w = clamp(x_248, 0.0f, 1.0f);
  let x_253 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_254 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_253 * vec4<f32>(x_254.x, x_254.x, x_254.x, x_254.x)) + x_257);
  let x_261 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_262 : vec4<f32> = u_xlat0;
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_261 * vec4<f32>(x_262.z, x_262.z, x_262.z, x_262.z)) + x_265);
  let x_267 : vec4<f32> = u_xlat1;
  let x_270 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_272 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) + vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_277 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_278 : vec4<f32> = in_POSITION0;
  let x_281 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = ((x_277 * vec4<f32>(x_278.w, x_278.w, x_278.w, x_278.w)) + x_281);
  let x_283 : vec4<f32> = u_xlat0;
  let x_286 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_283.y, x_283.y, x_283.y, x_283.y) * x_286);
  let x_289 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_290 : vec4<f32> = u_xlat0;
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_289 * vec4<f32>(x_290.x, x_290.x, x_290.x, x_290.x)) + x_293);
  let x_296 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_297 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_296 * vec4<f32>(x_297.z, x_297.z, x_297.z, x_297.z)) + x_300);
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec4<f32> = x_18.unity_MatrixVP[3i];
  gl_Position = (x_307 + x_309);
  let x_313 : vec4<f32> = x_18.x_WavingTint;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_318 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : f32 = u_xlat12;
  let x_322 : vec4<f32> = u_xlat0;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320, x_320, x_320) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat0;
  let x_333 : vec4<f32> = in_COLOR0;
  let x_335 : vec3<f32> = (vec3<f32>(x_330.x, x_330.y, x_330.z) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_348 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_348.x, x_348.y);
  return;
}

struct main_out {
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_COLOR0, vs_TEXCOORD1, gl_Position, vs_TEXCOORD0);
}

