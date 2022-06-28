struct PGlobals {
  x_Params : vec4<f32>,
  x_ScaleOffsetRes : vec4<f32>,
}

type Arr = array<u32, 1u>;

struct x_HistogramBuffer_type {
  value : Arr,
}

type RTArr = array<x_HistogramBuffer_type>;

struct x_HistogramBuffer {
  x_HistogramBuffer_buf : RTArr,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_12 : PGlobals;

var<private> u_xlatb0 : bool;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : f32;

var<private> u_xlatu5 : u32;

@group(0) @binding(2) var<storage, read> x_85 : x_HistogramBuffer;

var<private> vs_TEXCOORD1 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(3) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD2 : f32;

var<private> u_xlat6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_124 : vec3<f32>;
  var x_189 : vec2<f32>;
  var x_212 : vec3<f32>;
  var x_278 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_12.x_Params;
  let x_20 : vec2<f32> = log2(vec2<f32>(x_18.z, x_18.w));
  let x_21 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_20.x, x_20.y, x_21.z, x_21.w);
  let x_23 : vec4<f32> = u_xlat0;
  let x_27 : vec4<f32> = x_12.x_ScaleOffsetRes;
  let x_31 : vec4<f32> = x_12.x_ScaleOffsetRes;
  let x_33 : vec2<f32> = ((vec2<f32>(x_23.x, x_23.y) * vec2<f32>(x_27.x, x_27.x)) + vec2<f32>(x_31.y, x_31.y));
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_33.x, x_33.y, x_34.z, x_34.w);
  let x_36 : vec4<f32> = u_xlat0;
  let x_42 : vec2<f32> = clamp(vec2<f32>(x_36.x, x_36.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_42.x, x_42.y, x_43.z, x_43.w);
  let x_52 : f32 = u_xlat0.x;
  let x_57 : f32 = vs_TEXCOORD0.x;
  u_xlatb0 = (x_52 < x_57);
  let x_61 : f32 = vs_TEXCOORD0.x;
  let x_64 : f32 = u_xlat0.y;
  u_xlatb5 = (x_61 < x_64);
  let x_66 : bool = u_xlatb5;
  let x_67 : bool = u_xlatb0;
  u_xlatb0 = (x_66 & x_67);
  let x_71 : f32 = vs_TEXCOORD0.x;
  u_xlat5 = (x_71 * 128.0f);
  let x_74 : f32 = u_xlat5;
  u_xlat5 = round(x_74);
  let x_78 : f32 = u_xlat5;
  u_xlatu5 = u32(x_78);
  let x_86 : u32 = u_xlatu5;
  let x_89 : u32 = x_85.x_HistogramBuffer_buf[x_86].value[0i];
  u_xlatu5 = x_89;
  let x_90 : u32 = u_xlatu5;
  u_xlat5 = f32(x_90);
  let x_92 : f32 = u_xlat5;
  let x_94 : f32 = vs_TEXCOORD1;
  u_xlat5 = (x_92 * x_94);
  let x_96 : f32 = u_xlat5;
  u_xlat5 = clamp(x_96, 0.0f, 1.0f);
  let x_98 : f32 = u_xlat5;
  let x_100 : f32 = vs_TEXCOORD0.y;
  u_xlatb5 = (x_98 >= x_100);
  let x_103 : bool = u_xlatb5;
  u_xlat10 = select(0.0f, 0.75f, x_103);
  let x_107 : bool = u_xlatb5;
  let x_119 : vec3<f32> = select(vec3<f32>(0.050000001f, 0.300000012f, 0.400000006f), vec3<f32>(0.100000001f, 0.600000024f, 0.800000012f), vec3<bool>(x_107, x_107, x_107));
  let x_120 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : bool = u_xlatb0;
  if (x_122) {
    let x_127 : vec4<f32> = u_xlat1;
    x_124 = vec3<f32>(x_127.x, x_127.y, x_127.z);
  } else {
    let x_130 : f32 = u_xlat10;
    x_124 = vec3<f32>(x_130, x_130, x_130);
  }
  let x_132 : vec3<f32> = x_124;
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_145 : vec2<f32> = vs_TEXCOORD0;
  let x_147 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_145.x, x_145.x, x_145.x));
  let x_148 : vec3<f32> = vec3<f32>(x_147.x, x_147.y, x_147.z);
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_151 : vec4<f32> = u_xlat1;
  let x_153 : vec2<f32> = vs_TEXCOORD0;
  let x_156 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) + -(vec3<f32>(x_153.y, x_153.y, x_153.y)));
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_161 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = x_12.x_ScaleOffsetRes;
  let x_168 : vec4<bool> = (abs(vec4<f32>(x_161.x, x_161.y, x_161.z, x_161.x)) < vec4<f32>(x_165.w, x_165.w, x_165.w, x_165.w));
  u_xlatb1 = vec3<bool>(x_168.x, x_168.y, x_168.z);
  let x_172 : bool = u_xlatb1.x;
  u_xlat2.x = select(0.0f, 1.0f, x_172);
  u_xlat2.y = 1.0f;
  u_xlat2.z = 0.0f;
  let x_178 : vec4<f32> = u_xlat2;
  let x_181 : vec2<f32> = (vec2<f32>(x_178.y, x_178.x) + vec2<f32>(0.0f, 1.0f));
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_181.x, x_182.y, x_182.z, x_181.y);
  let x_187 : bool = u_xlatb1.y;
  if (x_187) {
    let x_192 : vec4<f32> = u_xlat1;
    x_189 = vec2<f32>(x_192.x, x_192.w);
  } else {
    let x_195 : vec4<f32> = u_xlat2;
    x_189 = vec2<f32>(x_195.z, x_195.x);
  }
  let x_197 : vec2<f32> = x_189;
  let x_198 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_197.x, x_198.y, x_197.y);
  let x_201 : vec3<f32> = u_xlat8;
  let x_205 : vec2<f32> = (vec2<f32>(x_201.x, x_201.z) + vec2<f32>(0.5f, 1.0f));
  let x_206 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_205.x, x_206.y, x_205.y);
  u_xlat9.y = 1.0f;
  u_xlat8.y = 0.0f;
  let x_211 : bool = u_xlatb1.z;
  if (x_211) {
    let x_215 : vec3<f32> = u_xlat9;
    x_212 = x_215;
  } else {
    let x_217 : vec3<f32> = u_xlat8;
    x_212 = x_217;
  }
  let x_218 : vec3<f32> = x_212;
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_218.x, x_218.y, x_218.z);
  let x_221 : vec4<f32> = u_xlat2;
  let x_222 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_221, x_222);
  let x_226 : f32 = u_xlat1.x;
  u_xlatb1.x = !((x_226 == 0.0f));
  u_xlat0.w = 1.0f;
  let x_232 : bool = u_xlatb1.x;
  let x_233 : vec4<f32> = u_xlat2;
  let x_234 : vec4<f32> = u_xlat0;
  u_xlat0 = select(x_234, x_233, vec4<bool>(x_232, x_232, x_232, x_232));
  let x_238 : f32 = vs_TEXCOORD2;
  u_xlat1.x = log2(x_238);
  let x_242 : f32 = u_xlat1.x;
  let x_245 : f32 = x_12.x_ScaleOffsetRes.x;
  let x_248 : f32 = x_12.x_ScaleOffsetRes.y;
  u_xlat1.x = ((x_242 * x_245) + x_248);
  let x_252 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_252, 0.0f, 1.0f);
  let x_256 : f32 = u_xlat1.x;
  let x_259 : f32 = vs_TEXCOORD0.x;
  u_xlat1.x = (-(x_256) + x_259);
  let x_264 : f32 = x_12.x_ScaleOffsetRes.z;
  let x_266 : f32 = x_12.x_ScaleOffsetRes.z;
  u_xlat6 = (x_264 + x_266);
  let x_269 : f32 = u_xlat1.x;
  let x_271 : f32 = u_xlat6;
  u_xlatb1.x = (abs(x_269) < x_271);
  let x_277 : bool = u_xlatb1.x;
  if (x_277) {
    x_278 = vec3<f32>(0.75f, 0.100000001f, 1.0f);
  } else {
    let x_283 : vec4<f32> = u_xlat0;
    x_278 = vec3<f32>(x_283.x, x_283.y, x_283.z);
  }
  let x_285 : vec3<f32> = x_278;
  let x_286 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_289 : f32 = u_xlat0.w;
  SV_Target0.w = x_289;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : f32, @location(2) vs_TEXCOORD2_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

