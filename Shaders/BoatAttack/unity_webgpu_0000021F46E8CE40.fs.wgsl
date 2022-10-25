struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_PointClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(1) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(3) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_75 : f32;
  var x_88 : f32;
  var x_101 : f32;
  var x_129 : f32;
  var x_141 : f32;
  var x_153 : f32;
  var u_xlat9 : f32;
  var u_xlatb9 : bool;
  var x_256 : f32;
  var x_269 : f32;
  var x_281 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat1 = log2(abs(x_38));
  let x_41 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_41 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_45 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_45);
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_47 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_55 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_55 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_66 : vec3<f32> = u_xlat0;
  let x_69 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_66.x, x_66.y, x_66.z, x_66.x));
  u_xlatb0 = vec3<bool>(x_69.x, x_69.y, x_69.z);
  let x_73 : bool = u_xlatb0.x;
  if (x_73) {
    let x_79 : f32 = u_xlat2.x;
    x_75 = x_79;
  } else {
    let x_82 : f32 = u_xlat1.x;
    x_75 = x_82;
  }
  let x_83 : f32 = x_75;
  u_xlat0.x = x_83;
  let x_87 : bool = u_xlatb0.y;
  if (x_87) {
    let x_92 : f32 = u_xlat2.y;
    x_88 = x_92;
  } else {
    let x_95 : f32 = u_xlat1.y;
    x_88 = x_95;
  }
  let x_96 : f32 = x_88;
  u_xlat0.y = x_96;
  let x_100 : bool = u_xlatb0.z;
  if (x_100) {
    let x_105 : f32 = u_xlat2.z;
    x_101 = x_105;
  } else {
    let x_108 : f32 = u_xlat1.z;
    x_101 = x_108;
  }
  let x_109 : f32 = x_101;
  u_xlat0.z = x_109;
  let x_111 : vec3<f32> = u_xlat0;
  u_xlat1 = log2(abs(x_111));
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_114 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_116 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_116);
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_118 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_121 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_121 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_123 : vec3<f32> = u_xlat0;
  let x_125 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_123.x, x_123.y, x_123.z, x_123.x));
  u_xlatb0 = vec3<bool>(x_125.x, x_125.y, x_125.z);
  let x_128 : bool = u_xlatb0.x;
  if (x_128) {
    let x_133 : f32 = u_xlat2.x;
    x_129 = x_133;
  } else {
    let x_136 : f32 = u_xlat1.x;
    x_129 = x_136;
  }
  let x_137 : f32 = x_129;
  u_xlat0.x = x_137;
  let x_140 : bool = u_xlatb0.y;
  if (x_140) {
    let x_145 : f32 = u_xlat2.y;
    x_141 = x_145;
  } else {
    let x_148 : f32 = u_xlat1.y;
    x_141 = x_148;
  }
  let x_149 : f32 = x_141;
  u_xlat0.y = x_149;
  let x_152 : bool = u_xlatb0.z;
  if (x_152) {
    let x_157 : f32 = u_xlat2.z;
    x_153 = x_157;
  } else {
    let x_160 : f32 = u_xlat1.z;
    x_153 = x_160;
  }
  let x_161 : f32 = x_153;
  u_xlat0.z = x_161;
  let x_163 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : vec4<f32> = x_27.x_Dithering_Params;
  let x_171 : vec4<f32> = x_27.x_Dithering_Params;
  let x_173 : vec2<f32> = ((x_163 * vec2<f32>(x_167.x, x_167.y)) + vec2<f32>(x_171.z, x_171.w));
  let x_174 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_173.x, x_173.y, x_174.z);
  let x_182 : vec3<f32> = u_xlat1;
  let x_185 : f32 = x_27.x_GlobalMipBias.x;
  let x_186 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_182.x, x_182.y), x_185);
  u_xlat9 = x_186.w;
  let x_189 : f32 = u_xlat9;
  u_xlat9 = ((x_189 * 2.0f) + -1.0f);
  let x_194 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_194)) + 1.0f);
  let x_201 : f32 = u_xlat9;
  u_xlatb9 = (x_201 >= 0.0f);
  let x_203 : bool = u_xlatb9;
  u_xlat9 = select(-1.0f, 1.0f, x_203);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_206);
  let x_210 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_210) + 1.0f);
  let x_214 : f32 = u_xlat9;
  let x_216 : f32 = u_xlat1.x;
  u_xlat9 = (x_214 * x_216);
  let x_218 : f32 = u_xlat9;
  let x_223 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_218, x_218, x_218) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_223);
  let x_225 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_225 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_229 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_229 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_233 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(abs(x_233));
  let x_236 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_236 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_240 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_240);
  let x_242 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_242 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_248 : vec3<f32> = u_xlat0;
  let x_250 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_248.x, x_248.y, x_248.z, x_248.x));
  u_xlatb0 = vec3<bool>(x_250.x, x_250.y, x_250.z);
  let x_255 : bool = u_xlatb0.x;
  if (x_255) {
    let x_260 : f32 = u_xlat2.x;
    x_256 = x_260;
  } else {
    let x_263 : f32 = u_xlat1.x;
    x_256 = x_263;
  }
  let x_264 : f32 = x_256;
  SV_Target0.x = x_264;
  let x_268 : bool = u_xlatb0.y;
  if (x_268) {
    let x_273 : f32 = u_xlat2.y;
    x_269 = x_273;
  } else {
    let x_276 : f32 = u_xlat1.y;
    x_269 = x_276;
  }
  let x_277 : f32 = x_269;
  SV_Target0.y = x_277;
  let x_280 : bool = u_xlatb0.z;
  if (x_280) {
    let x_285 : f32 = u_xlat2.z;
    x_281 = x_285;
  } else {
    let x_288 : f32 = u_xlat1.z;
    x_281 = x_288;
  }
  let x_289 : f32 = x_281;
  SV_Target0.z = x_289;
  SV_Target0.w = 1.0f;
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

