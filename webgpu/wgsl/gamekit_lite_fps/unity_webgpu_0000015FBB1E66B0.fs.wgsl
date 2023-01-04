struct PGlobals {
  x_Params : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec2<f32>;

var<private> u_xlat10 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_181 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_109 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_27 : vec3<f32> = u_xlat0;
  u_xlat0 = x_27;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_28, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat12 = dot(x_36, vec3<f32>(2.432510138f, 11.468845367f, 1.760492444f));
  let x_44 : f32 = u_xlat12;
  u_xlat1 = (vec4<f32>(x_44, x_44, x_44, x_44) * vec4<f32>(0.00778222037f, 5.98477382e-05f, -0.000328985829f, 0.232164323f));
  let x_54 : f32 = u_xlat12;
  u_xlat2 = (vec2<f32>(x_54, x_54) * vec2<f32>(0.137866527f, 0.009331364f));
  let x_60 : vec3<f32> = u_xlat0;
  u_xlat12 = dot(x_60, vec3<f32>(6.501978397f, 11.032030106f, 1.223840952f));
  let x_67 : f32 = u_xlat12;
  u_xlat10 = (x_67 * 0.00778222037f);
  let x_72 : f32 = u_xlat1.x;
  let x_73 : f32 = u_xlat10;
  u_xlat1.x = (x_72 / x_73);
  let x_80 : f32 = u_xlat1.x;
  u_xlatb1 = (x_80 < 0.834949017f);
  let x_84 : f32 = u_xlat12;
  let x_90 : vec4<f32> = u_xlat1;
  u_xlat5 = ((vec2<f32>(x_84, x_84) * vec2<f32>(-4.58941759e-06f, 0.000198408336f)) + vec2<f32>(x_90.y, x_90.z));
  let x_94 : f32 = u_xlat12;
  let x_99 : f32 = u_xlat1.w;
  u_xlat13 = ((x_94 * 0.239932507f) + -(x_99));
  let x_102 : vec2<f32> = u_xlat5;
  u_xlat5 = (x_102 * vec2<f32>(98.843185425f, -58.805137634f));
  let x_107 : bool = u_xlatb1;
  if (x_107) {
    let x_113 : f32 = u_xlat5.x;
    x_109 = x_113;
  } else {
    let x_117 : f32 = u_xlat5.y;
    x_109 = x_117;
  }
  let x_118 : f32 = x_109;
  u_xlat1.x = x_118;
  let x_122 : f32 = u_xlat1.x;
  let x_125 : f32 = u_xlat13;
  u_xlat3.x = ((x_122 * 1.61047399f) + x_125);
  let x_129 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_129, 0.0f, 1.0f);
  let x_132 : f32 = u_xlat12;
  let x_136 : f32 = u_xlat2.x;
  u_xlat5.x = ((x_132 * -0.050440215f) + x_136);
  let x_139 : f32 = u_xlat12;
  let x_143 : f32 = u_xlat2.y;
  u_xlat12 = ((x_139 * -0.00292370259f) + -(x_143));
  let x_147 : f32 = u_xlat1.x;
  let x_150 : f32 = u_xlat12;
  u_xlat3.z = ((x_147 * 14.273845673f) + x_150);
  let x_155 : f32 = u_xlat3.z;
  u_xlat3.z = clamp(x_155, 0.0f, 1.0f);
  let x_159 : f32 = u_xlat1.x;
  let x_164 : f32 = u_xlat5.x;
  u_xlat3.y = ((-(x_159) * 2.532641888f) + x_164);
  let x_168 : f32 = u_xlat3.y;
  u_xlat3.y = clamp(x_168, 0.0f, 1.0f);
  let x_171 : vec3<f32> = u_xlat0;
  let x_173 : vec3<f32> = u_xlat3;
  let x_174 : vec3<f32> = (-(x_171) + x_173);
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_186 : vec4<f32> = x_181.x_Params;
  let x_188 : vec4<f32> = u_xlat1;
  let x_191 : vec3<f32> = u_xlat0;
  let x_192 : vec3<f32> = ((vec3<f32>(x_186.x, x_186.x, x_186.x) * vec3<f32>(x_188.x, x_188.y, x_188.z)) + x_191);
  let x_193 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

