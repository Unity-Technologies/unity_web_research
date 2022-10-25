struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_SourceTexArraySlice : u32,
  x_SRGBRead : u32,
  x_SRGBWrite : u32,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_SourceTex : texture_2d_array<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : vec2<bool>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_126 : f32;
  var x_138 : f32;
  var x_150 : f32;
  var x_164 : vec3<f32>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_206 : f32;
  var x_218 : f32;
  var x_230 : f32;
  var x_244 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : u32 = x_14.x_SourceTexArraySlice;
  u_xlat0.z = f32(x_19);
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_40 : vec4<f32> = u_xlat0;
  let x_46 : f32 = x_14.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_SourceTex, sampler_LinearClamp, vec3<f32>(x_40.x, x_40.y, x_40.z).xy, i32(round(vec3<f32>(x_40.x, x_40.y, x_40.z).z)), x_46);
  u_xlat0 = x_47;
  let x_54 : u32 = x_14.x_SRGBRead;
  let x_57 : u32 = x_14.x_SRGBWrite;
  let x_59 : u32 = x_14.x_SRGBRead;
  let x_61 : u32 = x_14.x_SRGBRead;
  let x_68 : vec4<bool> = (bitcast<vec4<i32>>(vec4<u32>(x_54, x_57, x_59, x_61)) != vec4<i32>(0i, 0i, 0i, 0i));
  u_xlatb1 = vec2<bool>(x_68.x, x_68.y);
  let x_73 : bool = u_xlatb1.y;
  let x_75 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_73 & x_75);
  let x_79 : bool = u_xlatb1.x;
  if (x_79) {
    let x_84 : vec4<f32> = u_xlat0;
    SV_Target0 = x_84;
    return;
  }
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_88.x, x_88.y, x_88.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_94.x, x_94.y, x_94.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_99 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_103 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(abs(x_103));
  let x_106 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_106 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_110 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_110);
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_118.x, x_118.y, x_118.z, x_118.x));
  u_xlatb3 = vec3<bool>(x_120.x, x_120.y, x_120.z);
  let x_123 : vec3<f32> = u_xlat1;
  hlslcc_movcTemp = x_123;
  let x_125 : bool = u_xlatb3.x;
  if (x_125) {
    let x_130 : f32 = u_xlat1.x;
    x_126 = x_130;
  } else {
    let x_133 : f32 = u_xlat2.x;
    x_126 = x_133;
  }
  let x_134 : f32 = x_126;
  hlslcc_movcTemp.x = x_134;
  let x_137 : bool = u_xlatb3.y;
  if (x_137) {
    let x_142 : f32 = u_xlat1.y;
    x_138 = x_142;
  } else {
    let x_145 : f32 = u_xlat2.y;
    x_138 = x_145;
  }
  let x_146 : f32 = x_138;
  hlslcc_movcTemp.y = x_146;
  let x_149 : bool = u_xlatb3.z;
  if (x_149) {
    let x_154 : f32 = u_xlat1.z;
    x_150 = x_154;
  } else {
    let x_157 : f32 = u_xlat2.z;
    x_150 = x_157;
  }
  let x_158 : f32 = x_150;
  hlslcc_movcTemp.z = x_158;
  let x_160 : vec3<f32> = hlslcc_movcTemp;
  u_xlat1 = x_160;
  let x_162 : u32 = x_14.x_SRGBRead;
  if ((x_162 != 0u)) {
    let x_167 : vec3<f32> = u_xlat1;
    x_164 = x_167;
  } else {
    let x_169 : vec4<f32> = u_xlat0;
    x_164 = vec3<f32>(x_169.x, x_169.y, x_169.z);
  }
  let x_171 : vec3<f32> = x_164;
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat2 = log2(abs(vec3<f32>(x_179.x, x_179.y, x_179.z)));
  let x_183 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_183 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_187 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_187);
  let x_189 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_189 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_198.x, x_198.y, x_198.z, x_198.x));
  u_xlatb3 = vec3<bool>(x_200.x, x_200.y, x_200.z);
  let x_203 : vec3<f32> = u_xlat1;
  hlslcc_movcTemp_1 = x_203;
  let x_205 : bool = u_xlatb3.x;
  if (x_205) {
    let x_210 : f32 = u_xlat1.x;
    x_206 = x_210;
  } else {
    let x_213 : f32 = u_xlat2.x;
    x_206 = x_213;
  }
  let x_214 : f32 = x_206;
  hlslcc_movcTemp_1.x = x_214;
  let x_217 : bool = u_xlatb3.y;
  if (x_217) {
    let x_222 : f32 = u_xlat1.y;
    x_218 = x_222;
  } else {
    let x_225 : f32 = u_xlat2.y;
    x_218 = x_225;
  }
  let x_226 : f32 = x_218;
  hlslcc_movcTemp_1.y = x_226;
  let x_229 : bool = u_xlatb3.z;
  if (x_229) {
    let x_234 : f32 = u_xlat1.z;
    x_230 = x_234;
  } else {
    let x_237 : f32 = u_xlat2.z;
    x_230 = x_237;
  }
  let x_238 : f32 = x_230;
  hlslcc_movcTemp_1.z = x_238;
  let x_240 : vec3<f32> = hlslcc_movcTemp_1;
  u_xlat1 = x_240;
  let x_242 : u32 = x_14.x_SRGBWrite;
  if ((x_242 != 0u)) {
    let x_247 : vec3<f32> = u_xlat1;
    x_244 = x_247;
  } else {
    let x_249 : vec4<f32> = u_xlat0;
    x_244 = vec3<f32>(x_249.x, x_249.y, x_249.z);
  }
  let x_251 : vec3<f32> = x_244;
  let x_252 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_256 : f32 = u_xlat0.w;
  SV_Target0.w = x_256;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

