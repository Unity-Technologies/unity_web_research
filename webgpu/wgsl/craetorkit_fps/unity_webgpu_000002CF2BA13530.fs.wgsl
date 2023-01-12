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

@group(1) @binding(0) var<uniform> x_48 : PGlobals;

@group(0) @binding(0) var<storage, read> x_71 : x_WaveformBuffer;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlatu0 : vec3<u32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
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
  let x_37 : vec3<u32> = u_xlatu0;
  let x_39 : vec2<f32> = vec2<f32>(vec2<u32>(x_37.x, x_37.y));
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_39.x, x_39.y, x_40.z, x_40.w);
  let x_45 : f32 = u_xlat0.x;
  let x_54 : f32 = x_48.x_Params.y;
  let x_57 : f32 = u_xlat0.y;
  u_xlat0.x = ((x_45 * x_54) + x_57);
  let x_61 : f32 = u_xlat0.x;
  u_xlatu0.x = u32(x_61);
  let x_73 : u32 = u_xlatu0.x;
  let x_76 : u32 = x_71.x_WaveformBuffer_buf[x_73].value[0i];
  let x_78 : u32 = u_xlatu0.x;
  let x_81 : u32 = x_71.x_WaveformBuffer_buf[x_78].value[1i];
  let x_83 : u32 = u_xlatu0.x;
  let x_86 : u32 = x_71.x_WaveformBuffer_buf[x_83].value[2i];
  u_xlatu0 = vec3<u32>(x_76, x_81, x_86);
  let x_88 : vec3<u32> = u_xlatu0;
  let x_89 : vec3<f32> = vec3<f32>(x_88);
  let x_90 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_94.y, x_94.y, x_94.y) * vec3<f32>(0.02f, 1.100000024f, 0.050000001f));
  let x_101 : vec4<f32> = u_xlat0;
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = ((vec3<f32>(x_101.x, x_101.x, x_101.x) * vec3<f32>(1.399999976f, 0.029999999f, 0.02f)) + x_107);
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_108.z);
  let x_111 : vec4<f32> = u_xlat0;
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec3<f32> = ((vec3<f32>(x_111.z, x_111.z, x_111.z) * vec3<f32>(0.0f, 0.25f, 1.5f)) + vec3<f32>(x_118.x, x_118.y, x_118.w));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_123 : vec4<f32> = u_xlat0;
  let x_127 : vec3<f32> = x_48.x_Params;
  let x_132 : vec3<f32> = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_127.z, x_127.z, x_127.z)) + vec3<f32>(-0.004f, -0.004f, -0.004f));
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_135 : vec4<f32> = u_xlat0;
  let x_138 : vec3<f32> = max(vec3<f32>(x_135.x, x_135.y, x_135.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_139 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(6.199999809f, 6.199999809f, 6.199999809f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_149.x, x_149.y, x_149.z) * x_151);
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(6.199999809f, 6.199999809f, 6.199999809f)) + vec3<f32>(1.700000048f, 1.700000048f, 1.700000048f));
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : vec3<f32> = u_xlat2;
  let x_166 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * x_162) + vec3<f32>(0.059999999f, 0.059999999f, 0.059999999f));
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec3<f32> = u_xlat1;
  let x_170 : vec4<f32> = u_xlat0;
  let x_172 : vec3<f32> = (x_169 / vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat0;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_184 : vec4<f32> = u_xlat0;
  let x_187 : vec3<f32> = min(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_188 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
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

