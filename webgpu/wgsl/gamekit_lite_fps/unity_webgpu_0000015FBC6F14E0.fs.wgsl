struct PGlobals {
  x_Params : vec3<f32>,
}

type Arr = array<u32, 4u>;

struct x_WaveformBuffer_type {
  value : Arr,
}

type RTArr = array<x_WaveformBuffer_type>;

struct x_WaveformBuffer {
  x_WaveformBuffer_buf : RTArr,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu0 : vec3<u32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(1) var<storage, read> x_72 : x_WaveformBuffer;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec4<f32> = hlslcc_FragCoord;
  let x_33 : vec2<u32> = vec2<u32>(vec2<f32>(x_30.x, x_30.y));
  let x_34 : vec3<u32> = u_xlatu0;
  u_xlatu0 = vec3<u32>(x_33.x, x_33.y, x_34.z);
  let x_38 : vec3<u32> = u_xlatu0;
  let x_40 : vec2<f32> = vec2<f32>(vec2<u32>(x_38.x, x_38.y));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  let x_46 : f32 = u_xlat0.x;
  let x_55 : f32 = x_49.x_Params.y;
  let x_58 : f32 = u_xlat0.y;
  u_xlat0.x = ((x_46 * x_55) + x_58);
  let x_62 : f32 = u_xlat0.x;
  u_xlatu0.x = u32(x_62);
  let x_74 : u32 = u_xlatu0.x;
  let x_77 : u32 = x_72.x_WaveformBuffer_buf[x_74].value[0i];
  let x_79 : u32 = u_xlatu0.x;
  let x_82 : u32 = x_72.x_WaveformBuffer_buf[x_79].value[1i];
  let x_84 : u32 = u_xlatu0.x;
  let x_87 : u32 = x_72.x_WaveformBuffer_buf[x_84].value[2i];
  u_xlatu0 = vec3<u32>(x_77, x_82, x_87);
  let x_89 : vec3<u32> = u_xlatu0;
  let x_90 : vec3<f32> = vec3<f32>(x_89);
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_95.y, x_95.y, x_95.y) * vec3<f32>(0.02f, 1.100000024f, 0.050000001f));
  let x_102 : vec4<f32> = u_xlat0;
  let x_108 : vec3<f32> = u_xlat1;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.x, x_102.x) * vec3<f32>(1.399999976f, 0.029999999f, 0.02f)) + x_108);
  let x_110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_109.z);
  let x_112 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat0;
  let x_121 : vec3<f32> = ((vec3<f32>(x_112.z, x_112.z, x_112.z) * vec3<f32>(0.0f, 0.25f, 1.5f)) + vec3<f32>(x_119.x, x_119.y, x_119.w));
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = x_49.x_Params;
  let x_133 : vec3<f32> = ((vec3<f32>(x_124.x, x_124.y, x_124.z) * vec3<f32>(x_128.z, x_128.z, x_128.z)) + vec3<f32>(-0.004f, -0.004f, -0.004f));
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec4<f32> = u_xlat0;
  let x_139 : vec3<f32> = max(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_142 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(6.199999809f, 6.199999809f, 6.199999809f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_150 : vec4<f32> = u_xlat0;
  let x_152 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_150.x, x_150.y, x_150.z) * x_152);
  let x_155 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(6.199999809f, 6.199999809f, 6.199999809f)) + vec3<f32>(1.700000048f, 1.700000048f, 1.700000048f));
  let x_161 : vec4<f32> = u_xlat0;
  let x_163 : vec3<f32> = u_xlat2;
  let x_167 : vec3<f32> = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * x_163) + vec3<f32>(0.059999999f, 0.059999999f, 0.059999999f));
  let x_168 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec3<f32> = u_xlat1;
  let x_171 : vec4<f32> = u_xlat0;
  let x_173 : vec3<f32> = (x_170 / vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = u_xlat0;
  let x_180 : vec3<f32> = (vec3<f32>(x_176.x, x_176.y, x_176.z) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_185 : vec4<f32> = u_xlat0;
  let x_188 : vec3<f32> = min(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_189 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

