struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_SRGBRead : u32,
  x_SRGBWrite : u32,
}

@group(0) @binding(0) var x_SourceTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : vec2<bool>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_116 : f32;
  var x_128 : f32;
  var x_141 : f32;
  var x_155 : vec3<f32>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_197 : f32;
  var x_209 : f32;
  var x_221 : f32;
  var x_235 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_27.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_SourceTex, sampler_LinearClamp, x_23, x_33);
  u_xlat0 = x_34;
  let x_42 : u32 = x_27.x_SRGBRead;
  let x_45 : u32 = x_27.x_SRGBWrite;
  let x_47 : u32 = x_27.x_SRGBRead;
  let x_49 : u32 = x_27.x_SRGBRead;
  let x_56 : vec4<bool> = (bitcast<vec4<i32>>(vec4<u32>(x_42, x_45, x_47, x_49)) != vec4<i32>(0i, 0i, 0i, 0i));
  u_xlatb1 = vec2<bool>(x_56.x, x_56.y);
  let x_61 : bool = u_xlatb1.y;
  let x_63 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_61 & x_63);
  let x_67 : bool = u_xlatb1.x;
  if (x_67) {
    let x_72 : vec4<f32> = u_xlat0;
    SV_Target0 = x_72;
    return;
  }
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_83.x, x_83.y, x_83.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_88 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_88 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(abs(x_92));
  let x_95 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_95 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_99 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_99);
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_107.x, x_107.y, x_107.z, x_107.x));
  u_xlatb3 = vec3<bool>(x_109.x, x_109.y, x_109.z);
  let x_112 : vec3<f32> = u_xlat1;
  hlslcc_movcTemp = x_112;
  let x_114 : bool = u_xlatb3.x;
  if (x_114) {
    let x_120 : f32 = u_xlat1.x;
    x_116 = x_120;
  } else {
    let x_123 : f32 = u_xlat2.x;
    x_116 = x_123;
  }
  let x_124 : f32 = x_116;
  hlslcc_movcTemp.x = x_124;
  let x_127 : bool = u_xlatb3.y;
  if (x_127) {
    let x_132 : f32 = u_xlat1.y;
    x_128 = x_132;
  } else {
    let x_135 : f32 = u_xlat2.y;
    x_128 = x_135;
  }
  let x_136 : f32 = x_128;
  hlslcc_movcTemp.y = x_136;
  let x_140 : bool = u_xlatb3.z;
  if (x_140) {
    let x_145 : f32 = u_xlat1.z;
    x_141 = x_145;
  } else {
    let x_148 : f32 = u_xlat2.z;
    x_141 = x_148;
  }
  let x_149 : f32 = x_141;
  hlslcc_movcTemp.z = x_149;
  let x_151 : vec3<f32> = hlslcc_movcTemp;
  u_xlat1 = x_151;
  let x_153 : u32 = x_27.x_SRGBRead;
  if ((x_153 != 0u)) {
    let x_158 : vec3<f32> = u_xlat1;
    x_155 = x_158;
  } else {
    let x_160 : vec4<f32> = u_xlat0;
    x_155 = vec3<f32>(x_160.x, x_160.y, x_160.z);
  }
  let x_162 : vec3<f32> = x_155;
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat2 = log2(abs(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_174 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_178 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_178);
  let x_180 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_180 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_189 : vec4<f32> = u_xlat0;
  let x_191 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_189.x, x_189.y, x_189.z, x_189.x));
  u_xlatb3 = vec3<bool>(x_191.x, x_191.y, x_191.z);
  let x_194 : vec3<f32> = u_xlat1;
  hlslcc_movcTemp_1 = x_194;
  let x_196 : bool = u_xlatb3.x;
  if (x_196) {
    let x_201 : f32 = u_xlat1.x;
    x_197 = x_201;
  } else {
    let x_204 : f32 = u_xlat2.x;
    x_197 = x_204;
  }
  let x_205 : f32 = x_197;
  hlslcc_movcTemp_1.x = x_205;
  let x_208 : bool = u_xlatb3.y;
  if (x_208) {
    let x_213 : f32 = u_xlat1.y;
    x_209 = x_213;
  } else {
    let x_216 : f32 = u_xlat2.y;
    x_209 = x_216;
  }
  let x_217 : f32 = x_209;
  hlslcc_movcTemp_1.y = x_217;
  let x_220 : bool = u_xlatb3.z;
  if (x_220) {
    let x_225 : f32 = u_xlat1.z;
    x_221 = x_225;
  } else {
    let x_228 : f32 = u_xlat2.z;
    x_221 = x_228;
  }
  let x_229 : f32 = x_221;
  hlslcc_movcTemp_1.z = x_229;
  let x_231 : vec3<f32> = hlslcc_movcTemp_1;
  u_xlat1 = x_231;
  let x_233 : u32 = x_27.x_SRGBWrite;
  if ((x_233 != 0u)) {
    let x_238 : vec3<f32> = u_xlat1;
    x_235 = x_238;
  } else {
    let x_240 : vec4<f32> = u_xlat0;
    x_235 = vec3<f32>(x_240.x, x_240.y, x_240.z);
  }
  let x_242 : vec3<f32> = x_235;
  let x_243 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_247 : f32 = u_xlat0.w;
  SV_Target0.w = x_247;
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

