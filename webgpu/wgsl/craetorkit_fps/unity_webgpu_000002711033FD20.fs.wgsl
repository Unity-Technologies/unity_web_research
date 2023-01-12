struct PGlobals {
  x_Params : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_180 : PGlobals;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec2<f32>;
  var u_xlat10 : f32;
  var u_xlatb1 : bool;
  var u_xlat5 : vec2<f32>;
  var u_xlat13 : f32;
  var x_108 : f32;
  var u_xlat3 : vec3<f32>;
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
    let x_112 : f32 = u_xlat5.x;
    x_108 = x_112;
  } else {
    let x_116 : f32 = u_xlat5.y;
    x_108 = x_116;
  }
  let x_117 : f32 = x_108;
  u_xlat1.x = x_117;
  let x_121 : f32 = u_xlat1.x;
  let x_124 : f32 = u_xlat13;
  u_xlat3.x = ((x_121 * 1.61047399f) + x_124);
  let x_128 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_128, 0.0f, 1.0f);
  let x_131 : f32 = u_xlat12;
  let x_135 : f32 = u_xlat2.x;
  u_xlat5.x = ((x_131 * -0.050440215f) + x_135);
  let x_138 : f32 = u_xlat12;
  let x_142 : f32 = u_xlat2.y;
  u_xlat12 = ((x_138 * -0.00292370259f) + -(x_142));
  let x_146 : f32 = u_xlat1.x;
  let x_149 : f32 = u_xlat12;
  u_xlat3.z = ((x_146 * 14.273845673f) + x_149);
  let x_154 : f32 = u_xlat3.z;
  u_xlat3.z = clamp(x_154, 0.0f, 1.0f);
  let x_158 : f32 = u_xlat1.x;
  let x_163 : f32 = u_xlat5.x;
  u_xlat3.y = ((-(x_158) * 2.532641888f) + x_163);
  let x_167 : f32 = u_xlat3.y;
  u_xlat3.y = clamp(x_167, 0.0f, 1.0f);
  let x_170 : vec3<f32> = u_xlat0;
  let x_172 : vec3<f32> = u_xlat3;
  let x_173 : vec3<f32> = (-(x_170) + x_172);
  let x_174 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_185 : vec4<f32> = x_180.x_Params;
  let x_187 : vec4<f32> = u_xlat1;
  let x_190 : vec3<f32> = u_xlat0;
  let x_191 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.x, x_185.x) * vec3<f32>(x_187.x, x_187.y, x_187.z)) + x_190);
  let x_192 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
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

